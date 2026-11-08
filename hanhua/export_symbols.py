#!/usr/bin/env python3
"""Export the Faxanadu source symbol table for Ghidra.

Produces these files in the build directory:

  build/symbols.tsv          space <TAB> address <TAB> kind <TAB> name <TAB> segment
  build/symbols_aliases.tsv  space <TAB> address <TAB> name      (secondary labels)
  build/constants.tsv        name <TAB> value <TAB> section      (from src/DEFS.asm)
  build/constant_refs.tsv    space <TAB> address <TAB> name <TAB> value <TAB> size <TAB> section

The sections in `constants.tsv` are the comment headings of src/DEFS.asm ("Area",
"IScriptAction", ...): one Ghidra enum per section.  `constant_refs.tsv` lists every
place the source names a constant in a .byte/.word table, at the exact address of that
operand, so the enums can be applied to the right bytes.

`space` matches the Ghidra NES loader's address spaces: the overlay spaces
PRG00-PRG15 (segment PRG0-PRG15, and END_OF_ROM which lives in PRG15), plus
RAM for the ZEROPAGE / RAM / PPU / APU_IO segments.

`kind` is `code` when the label is followed by a 6502 instruction in the
source, and `data` when it is followed by a directive or a data macro
(bank_offset_16 / pointer).  Ghidra gets a function for every top-level code
label and a plain label for everything else.

The addresses come from the linker's debug file, so they are exactly the
addresses of the assembled image; nothing here is guessed from the source.

Usage:
    python3 hanhua/export_symbols.py [--build-dir build] [--src-dir src]
                                     [--ca65 ca65] [--ld65 ld65]

Written for Python 3.8+; no third-party modules.
"""

from __future__ import annotations

import argparse
import glob
import os
import re
import subprocess
import sys
from collections import Counter

MNEMONICS = set(
    """ADC AND ASL BCC BCS BEQ BIT BMI BNE BPL BRK BVC BVS CLC CLD CLI CLV CMP CPX CPY
    DEC DEX DEY EOR INC INX INY JMP JSR LDA LDX LDY LSR NOP ORA PHA PHP PLA PLP ROL ROR
    RTI RTS SBC SEC SED SEI STA STX STY TAX TAY TSX TXA TXS TYA""".split()
)

# linker segment -> Ghidra address space
RAM_SEGMENTS = {"ZEROPAGE", "RAM", "PPU", "APU_IO"}
# Segments that carry no addressable content of their own: linker bookkeeping
# and the iNES header.  (PRG15B / END_OF_ROM_B used to be skipped here as well,
# for the abandoned 512 KiB image where the fixed bank was emitted twice; that
# build and its files are gone, so the names are gone too.)
SKIP_SEGMENTS = {"CODE", "RODATA", "BSS", "DATA", "NULL", "HEADER",
                 # zh_version: hand-written code that lives inside an expanded
                 # PRG bank.  Its code is source code (not data), so it is
                 # exported as symbols directly; the "<seg>[3:]" space mapping
                 # below would choke on the "_CODE" suffix otherwise.
                 "PRG9_CODE"}

# Source file stem -> linker segment.  Every bank file is PRG<n>.asm except the
# fixed bank, which is PRG15_fixed.asm (bank 15 is the one MMC1 keeps mapped at
# $C000-$FFFF); its linker segment is still "PRG15".
FILE_SEGMENT = {"PRG15_fixed": "PRG15"}


def source_segment(path):
    """Linker segment name for a bank source file."""
    stem = os.path.basename(path)[:-4]
    return FILE_SEGMENT.get(stem, stem)

GLOBAL_LABEL = re.compile(r"^([A-Za-z_][A-Za-z0-9_]*):")
ANY_LABEL = re.compile(r"^\s*@?[A-Za-z_][A-Za-z0-9_]*:")
SEG_LINE = re.compile(r"^seg\t")
FIELD = re.compile(r"(\w+)=([^,]*)")  # dbg key=value pairs (values may be quoted)
SYM_LINE = re.compile(r'^sym\tid=(\d+),name="([^"]*)"(.*)$')
CONSTANT_LINE = re.compile(r"^([A-Za-z_][A-Za-z0-9_]*)\s*=\s*(.+?)\s*(?:;.*)?$")
DATA_LINE = re.compile(r"^\s*\.(byte|word)\s+(.+?)\s*(?:;.*)?$")
SPACE_OF_SEGMENT = {"ZEROPAGE": "RAM", "RAM": "RAM", "PPU": "RAM",
                    "APU_IO": "RAM", "END_OF_ROM": "PRG15"}


def build_debug_image(ca65, ld65, src_dir, build_dir):
    """Assemble with debug info and link, returning the .dbg path.

    Mirrors the Makefile: one object, one link.  The zh_version branch is a
    256 KiB image, the same size as the original cart, because MMC1 cannot map
    banks 16-31 into $8000-$BFFF; see src/ld65.cfg.
    """
    main = os.path.join(src_dir, "faxanadu.asm")
    obj = os.path.join(build_dir, "faxanadu_dbg.o")
    dbg = os.path.join(build_dir, "faxanadu.dbg")
    rom = os.path.join(build_dir, "faxanadu.nes")
    cfg = os.path.join(src_dir, "ld65.cfg")
    os.makedirs(build_dir, exist_ok=True)
    subprocess.run([ca65, "-g", main, "-o", obj], check=True)

    subprocess.run([ld65, "--dbgfile", dbg, "-o", rom, "-C", cfg, obj],
                   check=True)
    return dbg


def read_segments(dbg_path):
    """seg id -> segment name."""
    segs = {}
    with open(dbg_path, encoding="utf-8", errors="replace") as fh:
        for line in fh:
            if SEG_LINE.match(line):
                f = dict(FIELD.findall(line))
                segs[int(f["id"])] = f["name"].strip('"')
    return segs


def classify_sources(src_dir):
    """(segment, label) -> 'code' | 'data', from the source line after each label."""
    kinds = {}
    for path in sorted(glob.glob(os.path.join(src_dir, "PRG*.asm"))):
        segment = source_segment(path)
        lines = open(path, encoding="utf-8", errors="replace").read().splitlines()
        for i, line in enumerate(lines):
            m = GLOBAL_LABEL.match(line)
            if not m:
                continue
            label = m.group(1)
            j = i + 1
            while j < len(lines):
                stripped = lines[j].strip()
                if not stripped or stripped.startswith(";"):
                    j += 1
                    continue
                if ANY_LABEL.match(lines[j]):  # nested / cheap-local label
                    j += 1
                    continue
                break
            if j >= len(lines):
                continue
            body = lines[j].strip()
            while True:  # label on the same line as the instruction
                m2 = re.match(r"^(@?[A-Za-z_]\w*):(.*)$", body)
                if m2 and m2.group(2).strip():
                    body = m2.group(2).strip()
                else:
                    break
            token = body.split(None, 1)[0].upper() if body else ""
            kinds[(segment, label)] = "code" if token in MNEMONICS else "data"
    return kinds


def read_symbols(dbg_path, segments, kinds):
    """Yield (space, address, kind, name, segment) for every global label."""
    space_of = {"ZEROPAGE": "RAM", "RAM": "RAM", "PPU": "RAM", "APU_IO": "RAM"}
    out = []
    with open(dbg_path, encoding="utf-8", errors="replace") as fh:
        for line in fh:
            if not line.startswith("sym\t"):
                continue
            m = SYM_LINE.match(line.rstrip("\n"))
            if not m:
                continue
            name, rest = m.group(2), m.group(3)
            kv = dict(FIELD.findall(rest))
            if kv.get("type") != "lab" or "parent" in kv:
                continue  # equates and cheap local labels (@foo)
            segment = segments.get(int(kv["seg"]))
            if segment is None or segment in SKIP_SEGMENTS:
                continue
            if segment.startswith("PRG"):
                space = "PRG%02d" % int(segment[3:])
            elif segment == "END_OF_ROM":
                space = "PRG15"
            else:
                space = space_of.get(segment)
                if space is None:
                    continue
            kind = kinds.get((segment, name), "data")
            if not segment.startswith("PRG"):
                kind = "data"  # RAM / PPU / APU registers are never code
            out.append((space, int(kv["val"], 0), kind, name, segment))
    return out


def write_tables(rows, build_dir):
    seen, unique, aliases = set(), [], []
    for space, addr, kind, name, segment in sorted(rows, key=lambda r: (r[0], r[1])):
        key = (space, addr)
        if key in seen:
            aliases.append((space, addr, name))
            continue
        seen.add(key)
        unique.append((space, addr, kind, name, segment))

    symbols = os.path.join(build_dir, "symbols.tsv")
    with open(symbols, "w", encoding="utf-8") as fh:
        fh.write("# space\taddress\tkind\tname\tsource_segment\n")
        for space, addr, kind, name, segment in unique:
            fh.write("%s\t%04X\t%s\t%s\t%s\n" % (space, addr, kind, name, segment))

    alias_path = os.path.join(build_dir, "symbols_aliases.tsv")
    with open(alias_path, "w", encoding="utf-8") as fh:
        fh.write("# space\taddress\tname\t(secondary label for an address that "
                 "already has a primary source label)\n")
        for space, addr, name in sorted(aliases):
            fh.write("%s\t%04X\t%s\n" % (space, addr, name))
    return symbols, alias_path, unique, aliases


def read_source_instructions(src_dir, by_name, line_map):
    """Every 6502 instruction in the source, with the exact address and length it assembled to.

    Used by the Ghidra VerifyInstructions.java tool to check Ghidra's disassembly against the
    source instruction by instruction: same start address, same length, same mnemonic and
    same numeric operand values.
    """
    rows = []
    for path in sorted(glob.glob(os.path.join(src_dir, "PRG*.asm"))):
        file_id = by_name.get(os.path.basename(path))
        if file_id is None:
            continue
        for lineno, line in enumerate(open(path, encoding="utf-8", errors="replace"), 1):
            body = line.split(";")[0].strip()
            while True:  # labels may share the line with the instruction
                m = re.match(r"^(@?[A-Za-z_]\w*):(.*)$", body)
                if m and m.group(2).strip():
                    body = m.group(2).strip()
                else:
                    break
            if not body:
                continue
            token = body.split(None, 1)[0].upper()
            if token not in MNEMONICS:
                continue
            operands = body[len(token):].strip()
            for addr, size, segment in line_map.get((file_id, lineno), []):
                if segment in SKIP_SEGMENTS:
                    continue      # duplicate copy / expanded-bank code
                if segment.startswith("PRG") and segment[3:].isdigit():
                    space = "PRG%02d" % int(segment[3:])
                else:
                    space = SPACE_OF_SEGMENT.get(segment)
                if space is None:
                    continue
                rows.append((space, addr, size, token, operands,
                             os.path.basename(path), lineno))
    return rows


def write_source_instructions(rows, build_dir):
    path = os.path.join(build_dir, "source_instructions.tsv")
    with open(path, "w", encoding="utf-8") as fh:
        fh.write("# space\taddress\tsize\tmnemonic\toperands\tfile\tline\n")
        for space, addr, size, mnemonic, operands, fname, lineno in sorted(
                rows, key=lambda r: (r[0], r[1])):
            fh.write("%s\t%04X\t%d\t%s\t%s\t%s\t%d\n" % (
                space, addr, size, mnemonic, operands, fname, lineno))
    return path


def read_line_map(dbg_path):
    """(file id, line number) -> [(absolute address, size, segment), ...] from the dbg spans.

    This is what links a source line to the bytes it produced, so constants used in
    data tables can be placed at exact addresses.
    """
    files, segs, spans, records = {}, {}, {}, []
    with open(dbg_path, encoding="utf-8", errors="replace") as fh:
        for line in fh:
            if line.startswith("file\t"):
                f = dict(FIELD.findall(line))
                files[int(f["id"])] = f["name"].strip('"')
            elif line.startswith("seg\t"):
                f = dict(FIELD.findall(line))
                segs[int(f["id"])] = (f["name"].strip('"'), int(f["start"], 0))
            elif line.startswith("span\t"):
                f = dict(FIELD.findall(line))
                spans[int(f["id"])] = (int(f["seg"]), int(f["start"], 0), int(f["size"], 0))
            elif line.startswith("line\t"):
                f = dict(FIELD.findall(line))
                records.append((int(f["file"]), int(f["line"]), f.get("span", "")))
    by_name = {os.path.basename(v): k for k, v in files.items()}
    line_map = {}
    for file_id, lineno, span_field in records:
        if not span_field:
            continue
        entries = []
        for sid in span_field.split("+"):  # one line can expand into several spans
            if not sid:
                continue
            seg, start, size = spans[int(sid)]
            name, base = segs[seg]
            entries.append((base + start, size, name))
        if entries:
            line_map[(file_id, lineno)] = entries
    return by_name, line_map


def read_constants(src_dir):
    """name -> (value, section) for every `NAME = value` in src/DEFS.asm."""
    constants, section = {}, None
    path = os.path.join(src_dir, "DEFS.asm")
    for line in open(path, encoding="utf-8", errors="replace"):
        stripped = line.strip()
        if stripped.startswith(";"):
            title = stripped.strip(";= ").strip()
            if title and not title.startswith("XREFS") and len(title) < 60:
                section = title
            continue
        m = CONSTANT_LINE.match(line)
        if not m:
            continue
        raw = m.group(2).strip()
        if raw.startswith("$"):
            value = int(raw[1:], 16)
        elif raw.startswith("%"):
            value = int(raw[1:], 2)
        elif raw.isdigit():
            value = int(raw)
        else:
            continue
        constants[m.group(1)] = (value, section)
    return constants


def read_constant_refs(src_dir, by_name, line_map, constants):
    """Every .byte/.word operand that names a constant, with its own address."""
    refs, unmapped = [], 0
    for path in sorted(glob.glob(os.path.join(src_dir, "PRG*.asm"))):
        file_id = by_name.get(os.path.basename(path))
        if file_id is None:
            continue
        for lineno, line in enumerate(open(path, encoding="utf-8", errors="replace"), 1):
            m = DATA_LINE.match(line)
            if not m:
                continue
            operands = split_operands(m.group(2))
            if not any(o in constants for o in operands):
                continue
            spans = line_map.get((file_id, lineno))
            if not spans:
                unmapped += 1
                continue
            unit = 1 if m.group(1) == "byte" else 2
            for addr, size, segment in spans:
                if segment.startswith("PRG"):
                    space = "PRG%02d" % int(segment[3:])
                else:
                    space = SPACE_OF_SEGMENT.get(segment)
                if space is None:
                    continue
                for i, operand in enumerate(operands):
                    if operand in constants:
                        value, section = constants[operand]
                        refs.append((space, addr + i * unit, operand, value, unit, section or ""))
    return refs, unmapped


def write_constant_tables(constants, refs, build_dir):
    paths = os.path.join(build_dir, "constants.tsv")
    with open(paths, "w", encoding="utf-8") as fh:
        fh.write("# name\tvalue\tsection\n")
        for name in sorted(constants):
            value, section = constants[name]
            fh.write("%s\t%02X\t%s\n" % (name, value, section or ""))

    ref_path = os.path.join(build_dir, "constant_refs.tsv")
    with open(ref_path, "w", encoding="utf-8") as fh:
        fh.write("# space\taddress\tname\tvalue\tsize\tsection\n")
        for space, addr, name, value, size, section in sorted(refs, key=lambda r: (r[0], r[1], r[2])):
            fh.write("%s\t%04X\t%s\t%02X\t%d\t%s\n" % (space, addr, name, value, size, section))
    return paths, ref_path


DATA_PTR_LINE = re.compile(r"^\s*(bank_offset_16|pointer)\s+(\S+)")
DATA_BYTE_LINE = re.compile(r"^\s*\.byte\s+(.+?)\s*(?:;.*)?$")
DATA_WORD_LINE = re.compile(r"^\s*\.word\s+(.+?)\s*(?:;.*)?$")
TARGET_EXPR = re.compile(r"^([A-Za-z_@][A-Za-z0-9_]*)(?:\s*([+-])\s*(\$[0-9a-fA-F]+|\d+))?$")
CHEAP_LABEL = re.compile(r"^\s*(@[A-Za-z_][A-Za-z0-9_]*):(.*)$")
SKIP_DIRECTIVES = (".segment", ".reloc", ".INCLUDE", ".feature", ".export", ".import")


def split_operands(text):
    """Split a .byte/.word operand list on commas that are outside quotes."""
    parts, current, in_quote = [], [], False
    for ch in text:
        if ch == '"':
            in_quote = not in_quote
        if ch == "," and not in_quote:
            parts.append("".join(current))
            current = []
        else:
            current.append(ch)
    parts.append("".join(current))
    return [p for p in (x.strip() for x in parts) if p]


def operand_bytes(operand):
    """Bytes a single .byte operand assembles to (strings may be multi-byte)."""
    text = operand.strip()
    if text.startswith('"'):
        inner = text[1:-1] if text.endswith('"') else text[1:]
        return len(re.sub(r"\\.", "x", inner))   # \n and friends count as one byte
    return 1


def read_data_items(src_dir, by_name, rom, symbols):
    """Parse every data label into a typed table description.

    Returns (items, pointers, mismatches):
      items      (space, addr, name, length, shape)
      pointers   (space, entry_addr, item_name, kind, target_addr)  target read from the ROM
      mismatches (space, addr, name, entry_off, expected, actual)   source symbol vs ROM value
    """
    # only labels the source declares as data: a code label can still contain
    # embedded .byte/pointer lines (inline scripts), which are not tables of their own
    name_to_addr = {(seg, name): addr for _space, addr, kind, name, seg in symbols if kind == "data"}
    addrs_by_space = {}
    for space, addr, _kind, _name, _seg in symbols:
        addrs_by_space.setdefault(space, set()).add(addr)
    items, pointers, mismatches, clamped = [], [], [], []
    for path in sorted(glob.glob(os.path.join(src_dir, "PRG*.asm"))):
        segment = source_segment(path)
        lines = open(path, encoding="utf-8", errors="replace").read().splitlines()
        label_lines = [i for i, l in enumerate(lines) if GLOBAL_LABEL.match(l)]
        for k, i in enumerate(label_lines):
            name = GLOBAL_LABEL.match(lines[i]).group(1)
            addr = name_to_addr.get((segment, name))
            if addr is None:
                continue
            space = "PRG%02d" % int(segment[3:])
            end = label_lines[k + 1] if k + 1 < len(label_lines) else len(lines)
            offset, kinds, locals_, probes = 0, set(), {}, []
            for j in range(i + 1, end):
                raw = lines[j]
                stripped = raw.split(";")[0].strip()
                if not stripped or stripped.startswith(SKIP_DIRECTIVES):
                    continue
                m = CHEAP_LABEL.match(raw)
                if m:                                  # cheap local label: remember its offset
                    locals_[m.group(1)] = offset
                    stripped = m.group(2).split(";")[0].strip()
                    if not stripped:
                        continue
                m = DATA_PTR_LINE.match(stripped)
                if m:
                    kind = "bank" if m.group(1) == "bank_offset_16" else "abs"
                    kinds.add("ptr_" + kind)
                    probes.append((offset, m.group(2), kind))
                    offset += 2
                    continue
                m = DATA_BYTE_LINE.match(stripped)
                if m:
                    ops = split_operands(m.group(1))
                    if len(ops) == 1 and ops[0].strip().startswith('"'):
                        kinds.add("str")
                    else:
                        kinds.add("byte")
                    offset += sum(operand_bytes(o) for o in ops)
                    continue
                m = DATA_WORD_LINE.match(stripped)
                if m:
                    kinds.add("word")
                    offset += 2 * len(split_operands(m.group(1)))
                    continue
            if offset == 0 and not probes:
                continue
            # never let a table run past the next label: a sub-label can point into
            # the middle of a declared table (message blocks do this)
            limit = next((a for a in addrs_by_space[space] if a > addr), None)
            length = offset if limit is None else min(offset, limit - addr)
            if limit is not None and length != offset:
                clamped.append((space, addr, name, offset, limit - addr))
            shape = "+".join(sorted(kinds))
            items.append((space, addr, name, length, shape))
            for entry_off, target_text, kind in probes:
                entry_addr = addr + entry_off
                raw = rom[bank_file_offset(entry_addr, space)] | (rom[bank_file_offset(entry_addr, space) + 1] << 8)
                actual = (0x8000 + raw) & 0xFFFF if kind == "bank" else raw
                pointers.append((space, entry_addr, name, kind, actual))
                m2 = TARGET_EXPR.match(target_text)
                if m2:
                    base = m2.group(1)
                    expected = name_to_addr.get((space, base), locals_.get(base))
                    if expected is not None:
                        if base in locals_:
                            expected = addr + expected          # cheap local: item + offset
                        if m2.group(3):                         # SYMBOL(+|-)N, e.g. handler-1
                            delta = int(m2.group(3)[1:], 16) if m2.group(3).startswith("$") \
                                    else int(m2.group(3))
                            expected = expected - delta if m2.group(2) == "-" else expected + delta
                        if (expected & 0xFFFF) != actual:
                            mismatches.append((space, addr, name, entry_off, expected & 0xFFFF, actual))
    return items, pointers, mismatches, clamped


def bank_file_offset(addr, space):
    """ROM file offset of a PRG address inside the given overlay space.

    PRG banks are stored consecutively (bank 0 first) after the 16-byte iNES header,
    and every bank maps to $8000-$FFFF, so the bank number must come from the space.
    """
    bank = int(space[3:])
    return 16 + bank * 0x4000 + (addr & 0x3FFF)


def write_data_tables(items, pointers, build_dir):
    item_path = os.path.join(build_dir, "data_items.tsv")
    with open(item_path, "w", encoding="utf-8") as fh:
        fh.write("# space\taddress\tlength\tshape\tname\n")
        for space, addr, name, length, shape in sorted(items, key=lambda r: (r[0], r[1])):
            fh.write("%s\t%04X\t%d\t%s\t%s\n" % (space, addr, length, shape, name))
    ptr_path = os.path.join(build_dir, "data_pointers.tsv")
    with open(ptr_path, "w", encoding="utf-8") as fh:
        fh.write("# space\tentry_address\titem_name\tkind\ttarget_address\n")
        for space, entry, name, kind, target in sorted(pointers, key=lambda r: (r[0], r[1])):
            fh.write("%s\t%04X\t%s\t%s\t%04X\n" % (space, entry, name, kind, target))
    return item_path, ptr_path


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__,
                                     formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--build-dir", default="build")
    parser.add_argument("--src-dir", default="src")
    parser.add_argument("--ca65", default="ca65")
    parser.add_argument("--ld65", default="ld65")
    args = parser.parse_args(argv)

    dbg = build_debug_image(args.ca65, args.ld65, args.src_dir, args.build_dir)
    segments = read_segments(dbg)
    kinds = classify_sources(args.src_dir)
    rows = read_symbols(dbg, segments, kinds)
    symbols, alias_path, unique, aliases = write_tables(rows, args.build_dir)

    constants = read_constants(args.src_dir)
    by_name, line_map = read_line_map(dbg)
    refs, unmapped = read_constant_refs(args.src_dir, by_name, line_map, constants)
    const_path, ref_path = write_constant_tables(constants, refs, args.build_dir)
    instructions = read_source_instructions(args.src_dir, by_name, line_map)
    ins_path = write_source_instructions(instructions, args.build_dir)

    rom = open(os.path.join(args.build_dir, "faxanadu.nes"), "rb").read()
    items, pointers, cross, clamped = read_data_items(args.src_dir, by_name, rom, unique)
    item_path, ptr_path = write_data_tables(items, pointers, args.build_dir)

    per_space = Counter(r[0] for r in unique)
    per_segment = Counter(r[4] for r in unique)
    per_section = Counter((r[5] or "?") for r in refs)
    print("segments in image : %d" % len(segments))
    print("labels classified : %d code / %d data" % (
        sum(1 for v in kinds.values() if v == "code"),
        sum(1 for v in kinds.values() if v == "data")))
    print("exported symbols  : %d" % len(unique))
    print("  by space        : %s" % ", ".join("%s=%d" % kv for kv in sorted(per_space.items())))
    print("  by segment      : %s" % ", ".join("%s=%d" % kv for kv in sorted(per_segment.items())))
    print("alias labels      : %d" % len(aliases))
    print("constants         : %d in %d sections" % (len(constants), len({s for _, s in constants.values()})))
    print("constant refs     : %d operand(s) at %d addresses (unmapped lines: %d)" % (
        len(refs), len({(r[0], r[1]) for r in refs}), unmapped))
    print("  refs by section : %s" % ", ".join("%s=%d" % kv for kv in sorted(per_section.items())))
    per_ins = Counter(r[0] for r in instructions)
    print("source instructions: %d  (%s)" % (
        len(instructions), ", ".join("%s=%d" % kv for kv in sorted(per_ins.items()))))
    per_shape = Counter(r[4] for r in items)
    per_ptr = Counter(r[3] for r in pointers)
    print("data items        : %d  (%d bytes)  shapes: %s" % (
        len(items), sum(r[3] for r in items),
        ", ".join("%s=%d" % kv for kv in per_shape.most_common(6))))
    print("pointer entries   : %d  (%s)  source/ROM mismatches: %d" % (
        len(pointers), ", ".join("%s=%d" % kv for kv in sorted(per_ptr.items())), len(cross)))
    for c in cross[:8]:
        print("   MISMATCH %s:%04X %s entry+%d  source %04X != rom %04X" % c)
    print("data items clamped to the next label: %d %s" % (
        len(clamped), ["%s:%04X %s %d->%d" % c for c in clamped[:6]]))
    print("wrote %s, %s, %s, %s, %s, %s and %s" % (
        symbols, alias_path, const_path, ref_path, ins_path, item_path, ptr_path))


if __name__ == "__main__":
    sys.exit(main())
