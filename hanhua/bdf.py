#!/usr/bin/env python3
"""Minimal BDF reader for the Ark Pixel 12px family.

Only what font_gen.py needs: the global metrics and a per-codepoint bitmap.
Deliberately tiny and dependency-free - this machine has no `bdflib` and no
`numpy`, and pulling in a font library to read a format this simple would hide
the one thing we actually need to be sure about: the exact bitmap rows.

BDF shape of interest:

    FONTBOUNDINGBOX 12 12 0 -2
    FONT_ASCENT 10
    FONT_DESCENT 2
    ...
    STARTCHAR A
    ENCODING 65
    BBX 8 11 2 -2          <- width height xoff yoff  (yoff is from the BASELINE)
    BITMAP
    18                     <- one hex byte per row of the glyph box
    ...
    ENDCHAR

The `BITMAP` rows cover the BBX box, not the font box: a row count of 11 means
11 ink rows, and `BBX` tells us where those rows sit relative to the baseline.
font_gen.py needs that to place the ink inside a 16-pixel-tall tile pair, so
this module keeps the full BBX rather than padding to the font box here.
"""

import re

# The font the build actually uses.  font_gen.py renders src/PRG9.asm from this
# file, and script_codec.py checks glyph availability against it, so both must
# point at the SAME file - they drifted once (script_codec still checked
# ark-pixel after the build moved to fusion-pixel), which made `chars` report
# "NO BITMAP" for characters the build font does have and pushed the translator
# to reword text for no reason.  Change it here and nowhere else.
DEFAULT_FONT = "fonts/fusion-pixel-12px-monospaced-zh_hans.bdf"

_HEX = re.compile(r"^[0-9A-Fa-f]{2,}$")


class Glyph:
    """One character: its bitmap rows plus where they sit relative to baseline.

    Bit packing: BDF stores a row as ceil(width/8) bytes, most significant bit
    = LEFTMOST pixel.  The row value here is the integer those bytes make up, so
    pixel x in a row sits at bit (8*rowbytes - 1 - x) - NOT at bit (width-1-x):
    for an 11-pixel-wide CJK glyph the row is two bytes and the 11 pixels occupy
    bits 15..5.  Getting this wrong shifts every glyph by (8 - width%8) pixels,
    which silently corrupts the whole font (it did, once).
    """

    __slots__ = ("code", "name", "width", "height", "xoff", "yoff", "rows")

    def __init__(self, code, name, width, height, xoff, yoff, rows):
        self.code = code
        self.name = name
        self.width = width
        self.height = height
        self.xoff = xoff
        self.yoff = yoff
        self.rows = rows                    # list[int], one per bitmap row

    @property
    def row_bytes(self):
        return (self.width + 7) // 8

    def bit(self, x, y):
        """Ink at (x, y) inside the BBX box, 0 = left/top of the box."""
        if not (0 <= y < len(self.rows)) or not (0 <= x < self.width):
            return 0
        shift = self.row_bytes * 8 - 1 - x
        return (self.rows[y] >> shift) & 1

    @property
    def ink_extent(self):
        """(min_x, max_x, min_y, max_y) of set pixels, or None if blank."""
        xs, ys = [], []
        for y in range(len(self.rows)):
            for x in range(self.width):
                if self.bit(x, y):
                    xs.append(x)
                    ys.append(y)
        if not xs:
            return None
        return min(xs), max(xs), min(ys), max(ys)

    def ascii_art(self, on="#", off="."):
        return "\n".join(
            "".join(on if self.bit(x, y) else off for x in range(self.width))
            for y in range(len(self.rows))
        )


class Font:
    def __init__(self, path):
        self.path = path
        self.name = None
        self.size = None
        self.bbox = None                    # (w, h, xoff, yoff) of the font box
        self.ascent = None
        self.descent = None
        self.glyphs = {}                    # codepoint -> Glyph
        self._parse()

    def _parse(self):
        code = name = None
        bbx = None
        rows = []
        in_bitmap = False
        with open(self.path, encoding="utf-8", errors="replace") as fh:
            for raw in fh:
                line = raw.rstrip("\n")
                if line.startswith("FONT "):
                    # FONT -foundry-family-...-12-120-75-75-M-117-ISO10646-1
                    self.name = line.split()[1] if len(line.split()) > 1 else None
                elif line.startswith("SIZE "):
                    self.size = [int(v) for v in line.split()[1:3]]
                elif line.startswith("FONTBOUNDINGBOX "):
                    self.bbox = tuple(int(v) for v in line.split()[1:5])
                elif line.startswith("FONT_ASCENT "):
                    self.ascent = int(line.split()[1])
                elif line.startswith("FONT_DESCENT "):
                    self.descent = int(line.split()[1])
                elif line.startswith("STARTCHAR "):
                    name, code, bbx, rows, in_bitmap = line[10:].strip(), None, None, [], False
                elif line.startswith("ENCODING "):
                    code = int(line.split()[1])
                elif line.startswith("BBX "):
                    bbx = tuple(int(v) for v in line.split()[1:5])
                elif line.startswith("BITMAP"):
                    in_bitmap = True
                elif line.startswith("ENDCHAR"):
                    if code is not None and code >= 0 and bbx is not None:
                        self.glyphs[code] = Glyph(code, name, *bbx, rows)
                    code = name = bbx = None
                    rows, in_bitmap = [], False
                elif in_bitmap and _HEX.match(line.strip()):
                    rows.append(int(line.strip(), 16))
                elif in_bitmap and line.strip() == "":
                    pass

    def __contains__(self, ch):
        return ord(ch) in self.glyphs

    def __getitem__(self, ch):
        return self.glyphs[ord(ch) if isinstance(ch, str) else ch]

    def get(self, code, default=None):
        return self.glyphs.get(code, default)

    def summary(self):
        return ("%s\n  font box %s, ascent %s / descent %s, %d glyphs"
                % (self.name, self.bbox, self.ascent, self.descent, len(self.glyphs)))


if __name__ == "__main__":
    import sys
    f = Font(sys.argv[1] if len(sys.argv) > 1 else DEFAULT_FONT)
    print(f.summary())
    for ch in (sys.argv[2] if len(sys.argv) > 2 else "AB "):
        g = f.get(ord(ch))
        print("\n%r U+%04X  BBX w=%d h=%d xoff=%d yoff=%d  ink=%s"
              % (ch, ord(ch), g.width, g.height, g.xoff, g.yoff, g.ink_extent))
        print(g.ascii_art())
