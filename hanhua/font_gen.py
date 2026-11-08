#!/usr/bin/env python3
"""Generate a zh_version glyph bank (src/PRG9.asm ...) from a BDF font.

Glyph format (see docs/hanhua-12x12.md section 6.2):

    each glyph = 64 bytes = 4 tiles, in order TL, TR, BL, BR
    each tile  = 16 bytes = plane0 (8 bytes) followed by plane1 (8 bytes,
                 identical to plane0 - the original engine's "write the same
                 8 bytes twice" trick, so every pixel is colour 3 = white)
    the 2x2 block spans 16x16 pixels = two CHR pages, two nametable slots

So one glyph is a 16x16 bitmap cut into four 8x8 squares, each square written
as two identical bitplanes (the engine's 1bpp->2bpp trick, kept).

Where the ink sits vertically is the one thing that must match the original
half-width font: ark-pixel reports each glyph's box relative to the BASELINE
(BBX ... yoff, negative = below the baseline), so this script maps the BDF
baseline to a fixed row of the 16-pixel cell.  That makes 'A' and '中' share a
baseline no matter how many rows each glyph's own bitmap has.

Usage:
    python3 hanhua/font_gen.py chars.txt --out src/PRG9.asm
    python3 hanhua/font_gen.py chars.txt --contact-sheet sheet.png
"""

import argparse
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from bdf import DEFAULT_FONT, Font  # noqa: E402

# --- layout constants (must match src/DEFS.asm and PRG15's TextBox_WriteHanzi) ---
GLYPH_BYTES = 64          # 4 tiles x 16 bytes (default format)
PACKED_BYTES = 24         # --packed: 12 rows x 2 bytes (12x12 ink window)
TILE_BYTES = 16           # 2 planes x 8 rows
TILE_EDGE = 8             # pixels per tile edge
CELL = TILE_EDGE * 2      # 16x16 pixel glyph cell
# Baseline row inside the 16-pixel-tall cell.  The original text row is 16
# pixels tall and the half-width ASCII glyphs sit in its LOWER 8 pixels, so
# their baseline is around row 13.  Placing the BDF baseline here lines Hanzi
# and ASCII up on the same baseline; the resulting dy is 1-2 rows for the
# 11-row CJK ink, which is what docs/hanhua-12x12.md calls "dy".
BASELINE_ROW = 13


def place(font, glyph):
    """Render one glyph into a CELL x CELL grid of 0/1, baseline-aligned.

    BDF's BBX yOffset is the distance from the baseline to the BOTTOM of the
    glyph's box, and it is NEGATIVE below the baseline (the usual case for
    descenders: ark-pixel uses yoff=0 for capitals, -1 for brackets and slashes,
    -2 for g/j/p/q/y and most CJK).  So the bottom row of the box sits at
    (baseline - yoff) - which is why the sign here is minus: using plus put every
    descender and bracket ABOVE the baseline, and lifted CJK two rows too high.
    """
    grid = [[0] * CELL for _ in range(CELL)]
    base = BASELINE_ROW
    for by in range(glyph.height):
        gy = base - glyph.yoff - (glyph.height - 1 - by)
        if not (0 <= gy < CELL):
            continue
        for bx in range(glyph.width):
            if not glyph.bit(bx, by):
                continue
            gx = glyph.xoff + bx          # font box starts at x=0
            if 0 <= gx < CELL:
                grid[gy][gx] = 1
    return grid


def tiles(grid):
    """Cut a CELL x CELL grid into four 8x8 tiles, ordered TL, TR, BL, BR."""
    out = []
    for ty in (0, 1):
        for tx in (0, 1):
            rows = []
            for y in range(TILE_EDGE):
                byte = 0
                for x in range(TILE_EDGE):
                    if grid[ty * TILE_EDGE + y][tx * TILE_EDGE + x]:
                        byte |= 0x80 >> x
                rows.append(byte)
            out.append(rows)
    return out


def tile_bytes(rows):
    """16 bytes: plane0 then plane1, identical (colour 3 = white)."""
    return rows + rows


def packed_rows(grid):
    """Rows 4..15 of the cell as 12 x (hi, lo) bytes, MSB-first per row.

    The 16x16 cell is mostly air at the top: the baseline is row 13 and the ink
    starts around row 5, so rows 0-3 are always empty.  --packed drops them and
    keeps a 12x12 window, which is exactly the CJK ink box, at 24 bytes per
    glyph instead of 32 (one byte per row would lose the 12th pixel, so each row
    is stored as a big-endian pair whose low nibble is unused).

    The renderer rebuilds the four CHR tiles from these rows: the left half of a
    row is `hi`, the right half is `lo`, and a tile that only reaches up into the
    window's first rows gets leading zero bytes.
    """
    out = []
    for y in range(4, CELL):
        value = 0
        for x in range(12):
            if grid[y][x]:
                value |= 0x8000 >> x
        out.append((value >> 8) & 0xFF)
        out.append(value & 0xFF)
    return out


def read_chars(path):
    """One character per line, plus whitespace lines that mean the space glyph.

    Comment marker is ';' and only at the START of a line: '#' is a perfectly
    valid character to want in a font (ASCII 0x23), so it cannot be a comment,
    and trimming would silently delete a wanted leading/trailing space.  A line
    that is only whitespace therefore means "the space character".
    """
    chars, seen = [], set()

    def add(ch):
        if ch in seen:
            raise SystemExit(
                "%s: %r appears more than once in the glyph table - a repeated line "
                "is dropped by one reader and kept by another, which silently "
                "renumbers every later glyph" % (path, ch))
        seen.add(ch)
        chars.append(ch)

    for raw in open(path, encoding="utf-8"):
        line = raw.rstrip("\n")
        if line.lstrip().startswith(";"):
            continue
        if line == "":
            continue
        if line.strip() == "":
            add(" ")                       # whitespace-only line = the space glyph
            continue
        for ch in line:
            add(ch)
    return chars


def emit_asm(out_path, font, chars, bank_name, bank_index, first_glyph_id,
             label_fmt="FONT_GLYPH_%04X", table_label="TILE_GLYPHS_HANZI",
             one_bpp=False, packed=False):
    missing = [c for c in chars if ord(c) not in font.glyphs]
    if missing:
        raise SystemExit("BDF is missing %d character(s): %s"
                         % (len(missing), " ".join("U+%04X" % ord(c) for c in missing)))

    lines = []
    lines.append(";============================================================================")
    lines.append("; Faxanadu (U).nes - zh_version")
    lines.append(";")
    lines.append("; %s : 12x12 glyph bank %d." % (bank_name, bank_index))
    lines.append(";")
    lines.append("; Each glyph is %d bytes = 4 tiles (TL, TR, BL, BR); each tile is %d bytes"
                 % (GLYPH_BYTES, TILE_BYTES))
    lines.append("; = plane0 + plane1, and the two planes are identical on purpose - the")
    lines.append("; engine's 1bpp->2bpp trick puts every pixel at colour 3 (white).")
    lines.append("; Glyph index == position in this file; see HANZI_INDEX for the")
    lines.append("; character-code -> glyph-index mapping.")
    lines.append(";")
    lines.append("; GENERATED by hanhua/font_gen.py from:")
    lines.append(";     %s" % os.path.basename(font.path))
    lines.append(";     font box %s, baseline row %d, ascent %d/descent %d"
                 % (font.bbox, BASELINE_ROW, font.ascent, font.descent))
    lines.append("; Do not edit by hand - edit the character list and regenerate.")
    lines.append(";============================================================================")
    lines.append("")
    lines.append('    .segment "%s"' % bank_name)
    lines.append("    .reloc")
    lines.append("")
    lines.append("; Base of the glyph table.  The renderer addresses glyphs as")
    lines.append("; %s + glyph_id*%d, so this label must stay at the very start of"
                 % (table_label, GLYPH_BYTES))
    lines.append("; the segment - keep generated data before any hand-written code in")
    lines.append("; this bank (see src/PRG9_code.asm).")
    lines.append("%s:" % table_label)
    lines.append("")

    index_entries = []
    for i, ch in enumerate(chars):
        gid = first_glyph_id + i
        code = ord(ch)
        g = font[ch]
        grid = place(font, g)
        t = [tile_bytes(r) for r in tiles(grid)]
        rows_packed = packed_rows(grid)
        index_entries.append((code, gid))
        lines.append(";============================================================================")
        lines.append("; U+%04X  %s   (glyph %d)" % (code, describe(ch), gid))
        lines.append(";   BDF BBX %dx%d at (%d,%d)  ->  ink %s in the 16x16 cell"
                     % (g.width, g.height, g.xoff, g.yoff, g.ink_extent))
        lines.append(";============================================================================")
        lines.append((label_fmt % gid) + ":")
        if packed:
            for index in range(0, PACKED_BYTES, 2):
                lines.append("    .byte $%02X,$%02X   ; packed row %2d (hi=left 8, lo=right 8)"
                             % (rows_packed[index], rows_packed[index + 1], index // 2))
            lines.append("")
            continue
        for name, tb in zip(("TL", "TR", "BL", "BR"), t):
            lines.append("    .byte %s   ; byte ; tile %s plane0"
                         % (",".join("$%02X" % b for b in tb[:8]), name))
            if one_bpp:
                # plane1 is not stored: the renderer writes the same 8 bytes a
                # second time (the engine's own 1bpp->2bpp trick), so the pixels
                # are colour 3 exactly as before.  Halves the bank usage.
                continue
            lines.append("    .byte %s   ; byte ; tile %s plane1 (=plane0, colour 3)"
                         % (",".join("$%02X" % b for b in tb[8:]), name))
        lines.append("")
    lines.append(";============================================================================")
    per_glyph = PACKED_BYTES if packed else (GLYPH_BYTES // 2 if one_bpp else GLYPH_BYTES)
    lines.append("; glyph bank %d ends here; %d glyphs, %d bytes (%d B/glyph%s)"
                 % (bank_index, len(chars), len(chars) * per_glyph, per_glyph,
                    ", 1bpp: plane1 is generated at upload time" if one_bpp else ""))
    lines.append(";============================================================================")
    lines.append("")
    with open(out_path, "w", encoding="utf-8") as fh:
        fh.write("\n".join(lines))
    return index_entries


def baseline_report(font, chars):
    """Check glyph vertical placement against the baseline, by glyph class.

    This exists because getting BDF's yOff sign backwards is silent: the font
    still generates, still assembles, and still draws - just with every
    descender and bracket floating above the baseline and CJK two rows too high.
    The check is cheap and catches it immediately.
    """
    problems = []
    rows_used = [0] * CELL
    for ch in chars:
        g = font.get(ord(ch))
        if g is None or g.height == 0:
            continue                      # space and friends: nothing to place
        grid = place(font, g)
        rows = [y for y in range(CELL) if any(grid[y])]
        if not rows:
            continue
        for y in rows:
            rows_used[y] = 1
        top, bot = min(rows), max(rows)
        if top < 0 or bot >= CELL:
            problems.append("%r ink %d..%d leaves the %dx%d cell"
                            % (ch, top, bot, CELL, CELL))
        # A glyph whose BDF box is meant to sit on the baseline must reach it.
        if g.yoff == 0 and bot != BASELINE_ROW:
            problems.append("%r has yoff=0 but its ink ends at row %d, not the "
                            "baseline row %d" % (ch, bot, BASELINE_ROW))
        if g.yoff < 0 and bot <= BASELINE_ROW:
            problems.append("%r has yoff=%d (descender) but its ink ends at row "
                            "%d, above the baseline row %d"
                            % (ch, g.yoff, bot, BASELINE_ROW))
    return problems, rows_used


def describe(ch):
    if ch == " ":
        return "' ' (space)"
    return "'%s'" % ch


def contact_sheet(font, chars, out_path, scale=6, cols=16):
    """Draw the generated glyphs so a human can eyeball placement and clipping."""
    from PIL import Image, ImageDraw
    rows = (len(chars) + cols - 1) // cols
    pad = 2
    cw = CELL * scale + pad * 2
    ch_ = CELL * scale + pad * 2 + 12
    img = Image.new("RGB", (cols * cw, rows * ch_), (16, 16, 24))
    d = ImageDraw.Draw(img)
    for i, c in enumerate(chars):
        cx = (i % cols) * cw
        cy = (i // cols) * ch_
        grid = place(font, font[c])
        for y in range(CELL):
            for x in range(CELL):
                if grid[y][x]:
                    d.rectangle([cx + pad + x * scale, cy + pad + y * scale,
                                 cx + pad + (x + 1) * scale - 1,
                                 cy + pad + (y + 1) * scale - 1], fill=(255, 255, 255))
        # baseline guide and cell separators
        by = cy + pad + BASELINE_ROW * scale
        d.line([cx, by, cx + cw, by], fill=(255, 64, 64))
        d.line([cx + pad + TILE_EDGE * scale, cy, cx + pad + TILE_EDGE * scale,
                cy + CELL * scale + pad], fill=(0, 90, 0))
        d.line([cx, cy + pad + TILE_EDGE * scale, cx + cw,
                cy + pad + TILE_EDGE * scale], fill=(0, 90, 0))
        d.text((cx + pad, cy + pad + CELL * scale + 1), "U+%04X" % ord(c),
               fill=(150, 150, 160))
    img.save(out_path)
    return out_path


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("chars", help="text file listing the characters to emit")
    ap.add_argument("--font", default=DEFAULT_FONT)
    ap.add_argument("--out", default="src/PRG9.asm")
    ap.add_argument("--segment", default="PRG9")
    ap.add_argument("--bank-index", type=int, default=0)
    ap.add_argument("--first-glyph-id", type=int, default=0)
    ap.add_argument("--table-label", default="TILE_GLYPHS_HANZI",
                    help="label placed at the start of the glyph table")
    ap.add_argument("--label", default="FONT_GLYPH_%04X",
                    help="printf pattern for each glyph label")
    ap.add_argument("--contact-sheet", help="also write a PNG proof sheet")
    # The glyph code is two bytes: b1 = $80 | (index >> 8), b2 = index & $FF, so
    # the hard ceiling is 32768.  What actually binds is the bank's byte budget,
    # and the default here is the largest power-of-two-ish count that fits the
    # 16 KiB bank at the selected glyph size (minus the renderer code).
    ap.add_argument("--max-per-bank", type=int, default=None,
                    help="refuse to emit more than N glyphs (default: what the "
                         "format\'s byte size allows in one bank)")
    ap.add_argument("--1bpp", dest="one_bpp", action="store_true",
                    help="store only plane0 (8 B/tile, 32 B/glyph); the renderer "
                         "writes each 8-byte half twice, so the pixels are the "
                         "same but the bank holds twice as many glyphs")
    ap.add_argument("--packed", action="store_true",
                    help="12 rows x 2 bytes = 24 B/glyph: the 12x12 ink window only, "
                         "which is what makes the full translation fit in bank 9")
    args = ap.parse_args(argv)

    font = Font(args.font)
    chars = read_chars(args.chars)
    if args.max_per_bank is None:
        per = PACKED_BYTES if args.packed else (GLYPH_BYTES // 2 if args.one_bpp else GLYPH_BYTES)
        args.max_per_bank = (0x4000 - 0x200) // per      # 0x200: renderer + slack
    if len(chars) > args.max_per_bank:
        raise SystemExit("%d glyphs > %d per bank (split the list or add a bank)"
                         % (len(chars), args.max_per_bank))

    entries = emit_asm(args.out, font, chars, args.segment, args.bank_index,
                       args.first_glyph_id, args.label, args.table_label,
                       one_bpp=args.one_bpp, packed=args.packed)
    print("%s: %d glyphs (%d bytes), segment %s"
          % (args.out, len(chars), len(chars) * GLYPH_BYTES, args.segment))
    print("first: U+%04X glyph %d   last: U+%04X glyph %d"
          % (entries[0][0], entries[0][1], entries[-1][0], entries[-1][1]))

    problems, rows_used = baseline_report(font, chars)
    used = [y for y, u in enumerate(rows_used) if u]
    print("baseline: row %d; ink occupies rows %d..%d of the %d-row cell"
          % (BASELINE_ROW, min(used), max(used), CELL))
    if problems:
        print("BASELINE CHECK FAILED:")
        for p in problems[:10]:
            print("  - %s" % p)
        return 1
    print("baseline check: ok (capitals reach the baseline, descenders go below)")

    if args.contact_sheet:
        print("contact sheet: %s" % contact_sheet(font, chars, args.contact_sheet))
    return 0


if __name__ == "__main__":
    sys.exit(main())
