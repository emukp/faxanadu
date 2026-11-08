#!/usr/bin/env python3
"""Text <-> message bytes for the zh_version dialogue engine.

This is the round-trip half of the translation flow:

    hanhua/textscn.tsv                (translation: label<TAB>text)
                |
                |  script_codec.py rebuild -> hanhua/text/chars_zh.txt
                |  font_gen.py            -> src/PRG9.asm   (the glyph bank)
                |  script_codec.py apply  -> src/PRG13.asm  (the message table)
                v
    build/faxanadu.nes
                |
                |  script_codec.py decode / verify  (reads the ROM back)
                v
    message text  (must equal the input - that is the lossless check)

`make translate` runs rebuild + font_gen + apply + assemble + verify in the one
order that works; run it after editing textscn.tsv.

Encoding (see src/PRG9_code.asm):

    $20-$7E          ASCII, one byte, half-width (1 tile column), original engine
    $80+ n , index   one full-width character: b1 = $80 | glyph-bank selector,
                     b2 = glyph index inside that bank (0-based, = line number in
                     chars_zh.txt)
    $FB..$FF         the original control codes (title / pause / space / newline / end)
    $FE newline, $FC pause, $FF end are emitted for "\\n", "[pause]", "[end]"

The glyph index comes from the character table, so the table MUST NOT be
reordered without re-encoding every message (encode and decode both read it, so
a reorder shows up as a decode mismatch, not as silent corruption).
`script_codec.py rebuild` rewrites the table from textscn.tsv and `make
translate` re-encodes every message right after, which is the only safe order.

Usage:
    python3 hanhua/script_codec.py encode --text "你好世界\\n汉化 OK 测试"
    python3 hanhua/script_codec.py decode --label MESSAGE_INTRO
    python3 hanhua/script_codec.py verify --label MESSAGE_INTRO --text "..."
"""

import argparse
import os
import sys

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
CHARS = os.path.join(REPO, "hanhua", "text", "chars_zh.txt")
TRANSLATION = os.path.join(REPO, "hanhua", "textscn.tsv")
ROM = os.path.join(REPO, "build", "faxanadu.nes")
SYMBOLS = os.path.join(REPO, "build", "symbols.tsv")

MESSAGE_BANK = 13          # zh_version: the message table still lives in bank 13
CHAR_END = 0xFF
CHAR_NEWLINE = 0xFE
CHAR_SPACE = 0xFD
CHAR_PLAYER_TITLE = 0xFB
CHAR_PAUSE = 0xFC
FIRST_HANZI_LEAD = 0x80    # b1 = $80 -> glyph bank 9


def read_chars(path=CHARS):
    """Glyph table -> [char]; index in this list IS the glyph index.

    The rules are DELIBERATELY the same as font_gen.read_chars, because the two
    must number the table identically - if they disagree by even one entry, every
    encoded message points at the wrong glyph (silently):

      * ';' at the start of a line is a comment
      * a completely EMPTY line is skipped (structural separator)
      * a WHITESPACE-ONLY line means "the space glyph"
      * any other line may hold several characters; each is appended in order
    """
    out = []
    for raw in open(path, encoding="utf-8"):
        line = raw.rstrip("\n")
        if line.lstrip().startswith(";"):
            continue
        if line == "":
            continue
        if line.strip() == "":
            if " " in out:
                raise SystemExit("%s: the space glyph appears more than once"
                                 % path)
            out.append(" ")
            continue
        for ch in line:
            if ch in out:
                raise SystemExit(
                    "%s: %r appears more than once in the glyph table - a repeated "
                    "line is dropped by one reader and kept by another, which "
                    "silently renumbers every later glyph" % (path, ch))
            out.append(ch)
    return out


def encode_text(text, chars):
    """Text -> message bytes.  Raises SystemExit on a character with no glyph."""
    table = {c: i for i, c in enumerate(chars)}
    out = []
    used = set()
    for ch in text:
        if ch == "\n":
            out.append(CHAR_NEWLINE)
            continue
        if ch in table:
            # EVERY character that has a glyph in the full-width table goes
            # through the full-width path, ASCII included: the half-width path
            # uses a different CHR page formula, so mixing the two inside one
            # message draws half-width characters into the other line's pages
            # (measured in R1).  See chars_zh.txt.
            index = table[ch]
            if index > 0x7FFF:
                sys.exit("glyph %r has index %d, which does not fit in the "
                         "15-bit index (b1 bits 0-6 plus b2)" % (ch, index))
            # b1 = $80 | (index >> 8): the low 7 bits of b1 carry index bits 8-14,
            # so one 16 KiB bank can hold up to 32768 glyphs - in practice the
            # byte budget of the bank is the limit (669 glyphs at 24 B each).
            out.append(FIRST_HANZI_LEAD | (index >> 8))
            out.append(index & 0xFF)
            used.add("full")
        elif ch == " ":
            out.append(0x20)              # ASCII space, half-width
            used.add("half")
        elif 0x20 <= ord(ch) < 0x7F:
            out.append(ord(ch))
            used.add("half")
        else:
            sys.exit("no glyph for %r (U+%04X) - add it to %s and regenerate the "
                     "font bank (hanhua/font_gen.py)" % (ch, ord(ch), CHARS))
    if len(used) > 1:
        sys.exit("message mixes full-width and half-width characters - add the "
                 "missing ASCII characters to %s instead (mixing draws them into "
                 "the other line's CHR pages)" % CHARS)
    out.append(CHAR_END)
    return out


def decode_bytes(data, chars):
    """Message bytes -> text.  Unknown lead bytes and control codes are shown."""
    out = []
    i = 0
    while i < len(data):
        b = data[i]
        if b == CHAR_END:
            out.append("[end]")
            i += 1
        elif b == CHAR_NEWLINE:
            out.append("\n")
            i += 1
        elif b == CHAR_PAUSE:
            out.append("[pause]")
            i += 1
        elif b == CHAR_SPACE:
            out.append("[space]")
            i += 1
        elif b == CHAR_PLAYER_TITLE:
            out.append("[title]")
            i += 1
        elif b >= FIRST_HANZI_LEAD and b != CHAR_END and i + 1 < len(data):
            index = ((b & 0x7F) << 8) | data[i + 1]
            out.append(chars[index] if index < len(chars) else "<glyph %d?>" % index)
            i += 2
        elif 0x20 <= b < 0x7F:
            out.append(chr(b))
            i += 1
        else:
            out.append("<$%02X>" % b)
            i += 1
    return "".join(out)


def label_address(label):
    address = None
    with open(SYMBOLS, encoding="utf-8") as fh:
        for line in fh:
            parts = line.rstrip("\n").split("\t")
            if len(parts) >= 4 and parts[3] == label:
                address = int(parts[1], 16)
    if address is None:
        sys.exit("%s not found in %s - run `make symbols`" % (label, SYMBOLS))
    return address


def read_message(label):
    """Bytes of a message, from its label to the first $FF (inclusive)."""
    address = label_address(label)
    rom = open(ROM, "rb").read()
    base = 16 + MESSAGE_BANK * 0x4000 + (address & 0x3FFF)
    out = []
    for i in range(4096):
        b = rom[base + i]
        out.append(b)
        if b == CHAR_END:
            break
    return out


def asm_lines(data, indent="    ", comment="; char"):
    """Format bytes the way the message tables in src/PRG13.asm are written."""
    lines = []
    for i in range(0, len(data), 8):
        chunk = data[i:i + 8]
        body = ",".join("$%02x" % b for b in chunk)
        lines.append("%s.byte %s%s" % (indent, body, " " * max(1, 34 - len(body)) + comment))
    return lines


def read_drafts(path):
    """Translation file (textscn.tsv) -> [(label, text)]; '\n' is a newline."""
    out = []
    for raw in open(path, encoding="utf-8"):
        line = raw.rstrip("\n")
        if not line or line.lstrip().startswith(";"):
            continue
        if "\t" not in line:
            sys.exit("%s: expected <label><TAB><text>, got %r" % (path, line))
        label, text = line.split("\t", 1)
        out.append((label.strip(), text.replace("\\n", "\n")))
    return out


def apply_drafts(drafts, chars, path, text_path):
    """Rewrite the message blocks of src/PRG13.asm from the translation file.

    Only the .byte lines directly under each label are touched; everything else
    (label ordering, comment blocks, the surrounding tables) is left alone.  The
    replacement is generated, so textscn.tsv stays the source of truth.
    """
    lines = open(path, encoding="utf-8").read().split("\n")
    out, i, applied = [], 0, []
    remaining = dict(drafts)
    while i < len(lines):
        line = lines[i]
        label = line[:-1] if line.endswith(":") and not line.startswith(" ") else None
        if label in remaining:
            text = remaining.pop(label)
            data = encode_text(text, chars)
            out.append(line)
            out.append("    ; GENERATED by hanhua/script_codec.py apply from "
                       "%s - do not hand-edit" % os.path.relpath(text_path, REPO))
            out.append("    ; %s" % text.replace("\n", " / "))
            out.extend(asm_lines(data, comment=""))
            applied.append((label, len(data)))
            i += 1
            while i < len(lines) and (lines[i].startswith("    .byte")
                                      or lines[i].startswith("    ;")
                                      or lines[i].startswith(";")):
                i += 1
            continue
        out.append(line)
        i += 1
    if remaining:
        sys.exit("label(s) not found in %s: %s" % (path, ", ".join(sorted(remaining))))
    open(path, "w", encoding="utf-8").write("\n".join(out))
    return applied


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("mode", choices=("encode", "decode", "verify", "chars", "apply", "rebuild"))
    ap.add_argument("--text", default=None,
                    help="message text; '\\n' is a newline (encode/verify)")
    ap.add_argument("--label", default="MESSAGE_INTRO",
                    help="message label to read back from the ROM (decode/verify)")
    ap.add_argument("--chars", default=CHARS)
    ap.add_argument("--source", default=os.path.join(REPO, "src", "PRG13.asm"),
                    help="message-table source file rewritten by apply")
    ap.add_argument("--text-file", default=None,
                    help="translation file for rebuild/apply/verify/chars: "
                         "label<TAB>text lines (the repo's is %s)"
                         % os.path.relpath(TRANSLATION, REPO))
    ap.add_argument("--apply", action="store_true",
                    help="chars mode: actually append the missing characters")
    ap.add_argument("--raw", action="store_true", help="also print the hex bytes")
    ap.add_argument("-q", "--quiet", action="store_true",
                    help="verify: print only the summary and mismatches")
    args = ap.parse_args()

    # `rebuild` writes the table from scratch and must not choke on the old one
    # (e.g. when a previous run left a duplicate filler in it).
    chars = [] if args.mode == "rebuild" else read_chars(args.chars)

    if args.mode == "rebuild":
        # Rebuild the glyph table from the translation: a small fixed ASCII prefix
        # (space, the two quote characters and all ten digits) followed by every
        # other character the translation uses, in first-use order.
        #
        # WHY THIS IS SAFE ONLY WHEN EVERY MESSAGE IS IN THE TRANSLATION: it
        # renumbers glyphs, so anything already encoded against the old numbering
        # breaks.  With a complete textscn.tsv, `apply` re-encodes all of them
        # straight after - `make translate` does both in that order.
        if args.text_file is None:
            ap.error("rebuild needs --text-file")
        drafts = read_drafts(args.text_file)
        prefix = [" ", '"', "'"] + [str(d) for d in range(10)]
        chars = list(prefix)

        # A glyph index is encoded as b1 = $80 | (index >> 8), b2 = index & $FF, and
        # the engine finds message boundaries by scanning for $ff - every byte,
        # including b2.  A glyph whose index ends in $ff would look like the end of
        # a message: it would be cut in half AND every later message would shift.
        # Park a DISTINCT filler glyph on each such index.  Distinct matters: both
        # glyph-table readers error out on a repeated character, because a repeated
        # line would be dropped by one of them and silently renumber the table.
        FILLERS = list("\u25a0\u25a1\u25cb\u25cf\u25b3\u25b2\u2606\u2605\u25c7\u25c6")

        def reserve_dangerous_index():
            if len(chars) & 0xFF == 0xFF:
                chars.append(FILLERS.pop(0) if FILLERS else "\u25a0")
                return True
            return False

        while reserve_dangerous_index():
            pass
        for _label, text in drafts:
            for ch in text:
                if ch != "\n" and ch not in chars:
                    while reserve_dangerous_index():
                        pass        # park a filler ON the $ff-ending index
                    chars.append(ch)
        lines = [
            "; zh_version glyph table - REBUILT by `script_codec.py rebuild`.",
            "; Glyph number = line order.  Rules:",
            ";   * one character per line; a line with only a space is the space glyph;",
            ";     ';' at the start of a line is a comment (so ';' cannot be a glyph).",
            ";   * the first %d entries are the ASCII prefix (space, quotes, digits);" % len(prefix),
            ";     everything after follows first use in hanhua/textscn.tsv.",
            ";   * this file was rebuilt because the 24 B packed glyph made a minimal",
            ";     table necessary (bank 9 holds %d glyphs at 24 B)." % ((0x4000 - 0x140) // 24),
            "",
        ]
        for ch in chars:
            lines.append(ch if ch != " " else " ")
        open(args.chars, "w", encoding="utf-8").write("\n".join(lines) + "\n")
        print("rebuilt %s: %d glyphs (%d B at 24 B/glyph)"
              % (args.chars, len(chars), len(chars) * 24))
        print("now: python3 hanhua/font_gen.py %s --out src/PRG9.asm "
              "--segment PRG9 --packed" % args.chars)
        return 0

    if args.mode == "apply":
        if args.text_file is None:
            ap.error("apply needs --text-file")
        drafts = read_drafts(args.text_file)
        for label, text in drafts:
            missing = [c for c in text if c != "\n" and c not in chars]
            if missing:
                sys.exit("%s needs glyph(s) not in the table: %s\n"
                         "run: script_codec.py chars --text-file %s --apply"
                         % (label, "".join(sorted(set(missing))), args.text_file))
        applied = apply_drafts(drafts, chars, args.source, args.text_file)
        for label, size in applied:
            print("  %-34s %3d bytes" % (label, size))
        print("rewrote %d message(s) in %s" % (len(applied), args.source))
        print("now: make  (or `make translate` to redo table + font + ROM + checks)")
        return 0

    if args.mode == "chars":
        # Derive the glyph table from translation text.  The table is
        # append-only, so new characters always land at the END and every
        # already-encoded message keeps working.
        if args.text_file is None:
            ap.error("chars needs --text-file")
        text = open(args.text_file, encoding="utf-8").read()
        body = "".join(line.split("\t", 1)[1] if "\t" in line else ""
                       for line in text.splitlines()
                       if line and not line.lstrip().startswith(";"))
        # The translation files spell a line break as the two characters
        # backslash-n, exactly like --text does; those are control codes, not
        # glyphs, so drop them before collecting characters (otherwise "\" and
        # "n" would be requested as glyphs).
        body = body.replace("\\n", "")
        needed = []
        for ch in body:
            if ch in "\n\r\t " or ord(ch) < 0x20:
                continue
            if ch not in needed:
                needed.append(ch)
        have = set(chars)
        missing = [ch for ch in needed if ch not in have]
        # A character the BDF has no bitmap for would make font_gen.py fail later
        # (it did, on U+7D27).  Catch it here, while the wording can still change.
        unavailable = []
        if missing:
            sys.path.insert(0, os.path.join(REPO, "hanhua"))
            import bdf as bdf_mod
            font = bdf_mod.Font(os.path.join(REPO, bdf_mod.DEFAULT_FONT))
            unavailable = ["%s U+%04X" % (c, ord(c)) for c in missing
                           if ord(c) not in font.glyphs]
        print("table now : %d glyphs" % len(chars))
        print("text needs: %d distinct characters" % len(needed))
        print("missing   : %d" % len(missing))
        if missing:
            print("            %s" % "".join(missing))
        if unavailable:
            print("NO BITMAP  : %s" % " ".join(unavailable))
            print("            ^ %s has no such glyph - reword the text, or "
                  "use a different font" % bdf_mod.DEFAULT_FONT)
        if args.apply and missing:
            with open(args.chars, "a", encoding="utf-8") as fh:
                fh.write("\n; --- appended by script_codec.py chars --apply (from %s) ---\n"
                         % os.path.relpath(args.text_file, REPO))
                for ch in missing:
                    fh.write(ch + "\n")
            print("appended %d glyph(s) to %s" % (len(missing), args.chars))
            print("regenerate the font bank now:  make translate")
        total = len(chars) + len(missing)
        # 24 B/glyph (font_gen.py --packed) into bank 9, minus the renderer.
        per_glyph, code_bytes = 24, 0x200
        budget = (0x4000 - code_bytes) // per_glyph
        print("after     : %d glyphs = %d bytes at %d B/glyph (bank 9 budget %d)"
              % (total, total * per_glyph, per_glyph, budget))
        if total > budget:
            print("            ^ OVER BUDGET by %d - see docs/hanhua-12x12.md 10.2"
                  % (total - budget))
        return 0

    if args.mode == "encode":
        if args.text is None:
            ap.error("encode needs --text")
        data = encode_text(args.text.replace("\\n", "\n"), chars)
        if args.raw:
            print(" ".join("%02X" % b for b in data))
        print("\n".join(asm_lines(data)))
        return 0

    if args.mode == "decode":
        data = read_message(args.label)
        if args.raw:
            print(" ".join("%02X" % b for b in data))
        print(decode_bytes(data, chars).replace("[end]", ""))
        return 0

    if args.text_file is not None:
        # verify every message in the translation file against the built ROM
        drafts = read_drafts(args.text_file)
        bad = 0
        for label, text in drafts:
            data = read_message(label)
            got = decode_bytes(data, chars).replace("[end]", "")
            ok = got == text
            bad += 0 if ok else 1
            if not ok:
                print("%-34s %3d B  MISMATCH want=%r got=%r"
                      % (label, len(data), text, got))
            elif not args.quiet:
                print("%-34s %3d B  ok" % (label, len(data)))
        print("%d/%d messages round-trip from the ROM" % (len(drafts) - bad, len(drafts)))
        return 1 if bad else 0

    # verify: the ROM must decode back to exactly the text we encoded
    if args.text is None:
        ap.error("verify needs --text")
    want = args.text.replace("\\n", "\n")
    data = read_message(args.label)
    got = decode_bytes(data, chars)
    got_text = got.replace("[end]", "")
    print("label : %s" % args.label)
    print("bytes : %d" % len(data))
    print("want  : %r" % want)
    print("got   : %r" % got_text)
    if got_text != want:
        print("MISMATCH")
        return 1
    print("round-trip ok")
    return 0


if __name__ == "__main__":
    sys.exit(main())
