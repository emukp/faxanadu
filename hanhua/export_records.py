#!/usr/bin/env python3
"""Export composite-record table descriptions for Ghidra.

Source of truth is the assembler tree under src/.  A "composite record" is a
table whose entries span more than one byte and whose field layout is *proved
by code in the source*, not guessed from comments.  Every family below carries
an evidence string naming the routine (and lines) that reads the fields.

Inputs : build/data_items.tsv          (produced by hanhua/export_symbols.py)
Output : build/data_records.tsv

Columns:
    family  space  address  length  name  record_size  record_count  tail
    fields  evidence

`fields` is a semicolon separated list of ``offset:name:type:comment``.
`tail` is the number of bytes after the last whole record (terminator or
variable-length payload); it is never retyped.
"""

import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DATA_ITEMS = os.path.join(ROOT, "build", "data_items.tsv")
OUT = os.path.join(ROOT, "build", "data_records.tsv")

# --------------------------------------------------------------------------
# Record families.  size == record size in bytes; head_only == the struct is
# applied once at the head of the table and the rest is variable payload.
# --------------------------------------------------------------------------
FAMILIES = [
    dict(
        name="AreaMetadataRecord",
        tail_note="",
        pattern=r"^[A-Z]+_AREA_DATA$",
        size=10,
        fields=[
            (0, "blockAttrsPtr", "word",
             "pointer to this area's block-info pointer table (block attributes + 4 block data groups)"),
            (2, "blockPropertiesPtr", "word", "block properties table"),
            (4, "scrollDataPtr", "word", "scrolling data table"),
            (6, "doorLocationsPtr", "word", "door locations table"),
            (8, "doorDestinationsPtr", "word", "door destinations table"),
        ],
        evidence=("Area_LoadAreaTables PRG15_fixed.asm:14084-14149 (entry 0 = block attrs, "
                  "entry 2 = block properties, entry 4 = scrolling data); PRG3.asm:59-70"),
    ),
    dict(
        name="AreaBlockInfoPtrs",
        tail_note="",
        pattern=r"_AREA_DATA_blockAttrsRelPtr$",
        size=10,
        fields=[
            (0, "blockAttributes", "word", "block attributes table"),
            (2, "blockData01", "word", "block data group 1"),
            (4, "blockData02", "word", "block data group 2"),
            (6, "blockData03", "word", "block data group 3"),
            (8, "blockData04", "word", "block data group 4"),
        ],
        evidence=("Area_LoadAreaTables block-info copy loop PRG15_fixed.asm:14103-14119 (LDX #$05, "
                  "two bytes per entry); PRG3.asm:71-77"),
    ),
    dict(
        name="SpriteInfoRecord",
        pattern=r"^SPRITE_INFO_[A-Z]+_SCREEN_\d+$",
        size=2,
        fields=[
            (0, "entity", "SpriteEntity",
             "sprite entity ID; $ff terminates the sprite list"),
            (1, "position", "byte",
             "block position: high nibble = Y block (pixels = nibble<<4), low nibble = X block"),
        ],
        comment_only=True,
        tail_note="list terminator ($ff) plus the extra screen info that Screen_LoadSpecialEventID reads",
        evidence=("Screen_LoadSpriteInfo PRG15_fixed.asm:916-958 (CMP #$ff terminator, byte 0 -> "
                  "CurrentSprite_Entity, byte 1 high nibble -> CurrentSprite_YPos via AND #$f0, "
                  "low nibble -> CurrentSprite_XPos via 4x ASL); stride 2"),
    ),
    dict(
        name="SpriteTileInfoHeader",
        pattern=r"^SPRITE_TILEINFO_",
        size=4,
        head_only=True,
        tail_note="variable-length tile index data follows the header",
        fields=[
            (0, "sizeNibbles", "byte",
             "tile grid: high nibble = rows remaining, low nibble = columns remaining"),
            (1, "offsetX", "sbyte",
             "signed X pixel offset extending left(-)/right(+) of the bounding box"),
            (2, "offsetY", "sbyte",
             "signed Y pixel offset extending up(-)/down(+) of the bounding box"),
            (3, "pivotX", "byte",
             "block-aligned X pixel pivot used when the sprite is drawn horizontally flipped"),
        ],
        evidence=("Sprite_Draw PRG15_fixed.asm:23286-23434 (byte 0 nibbles -> rows/cols, byte 1 X offset, "
                  "byte 2 Y offset, byte 3 pivot, then ADC #$04 'Advance by 4'); tile index data "
                  "follows the header, so only the header is a fixed record"),
    ),
]


ROM = os.path.join(ROOT, "build", "faxanadu.nes")


def rom_bytes(space, addr, length):
    """Bytes of a table straight from the ROM image (banks are 16 KiB from 0x10)."""
    bank = int(space[3:])
    with open(ROM, "rb") as fh:
        fh.seek(16 + bank * 0x4000 + (addr & 0x3FFF))
        return fh.read(length)


def terminated_count(space, addr, length, size):
    """Number of `size`-byte records before the 0xFF list terminator.

    Screen_LoadSpriteInfo compares the record's first byte with $ff, so the
    terminator always sits on a record boundary.
    """
    data = rom_bytes(space, addr, length)
    i = 0
    while i + size <= length and data[i] != 0xFF:
        i += size
    return i // size


def read_data_items(path):
    items = []
    with open(path, encoding="utf-8") as fh:
        for line in fh:
            if line.startswith("#") or not line.strip():
                continue
            f = line.rstrip("\n").split("\t")
            if len(f) < 5:
                continue
            items.append(dict(space=f[0], addr=int(f[1], 16), length=int(f[2]),
                              shape=f[3], name=f[4]))
    return items


def encode_fields(fields):
    # '|' separates fields (';' and ':' occur inside the free-text comments).
    return "|".join("%d:%s:%s:%s" % (o, n, t, c) for o, n, t, c in fields)


def main():
    if not os.path.exists(DATA_ITEMS):
        sys.exit("missing %s - run 'make symbols' first" % DATA_ITEMS)
    items = read_data_items(DATA_ITEMS)

    rows = []
    print("composite record families (evidence-based)\n")
    print("  %-22s %-7s %-6s %-6s %-6s %-5s %s" %
          ("family", "size", "tables", "recs", "bytes", "tail", "mode"))
    for fam in FAMILIES:
        rx = re.compile(fam["pattern"])
        matched = [it for it in items if rx.search(it["name"])]
        tables = records = retyped = 0
        tails = 0
        for it in matched:
            size = fam["size"]
            if it["length"] < size:
                continue
            if fam.get("head_only"):
                count, tail = 1, it["length"] - size
            elif fam["name"] == "SpriteInfoRecord":
                count = terminated_count(it["space"], it["addr"], it["length"], size)
                tail = it["length"] - count * size
            else:
                count, tail = divmod(it["length"], size)
                if count == 0:
                    continue
            tables += 1
            records += count
            retyped += count * size
            if tail:
                tails += 1
            rows.append((fam, it, count, tail))
        print("  %-22s %-7d %-6d %-6d %-6d %-5d %s" %
              (fam["name"], fam["size"], tables, records, retyped, tails,
               "comment-only" if fam.get("comment_only") else "struct"))

    with open(OUT, "w", encoding="utf-8") as fh:
        fh.write("# family\tspace\taddress\tlength\tname\trecord_size\trecord_count\ttail"
                 "\tfields\tevidence\tmode\n")
        for fam, it, count, tail in rows:
            fh.write("\t".join([
                fam["name"], it["space"], "%04X" % it["addr"], str(it["length"]), it["name"],
                str(fam["size"]), str(count), str(tail),
                encode_fields(fam["fields"]), fam["evidence"],
                "comment" if fam.get("comment_only") else "type",
            ]) + "\n")

    print("\nwrote %s (%d rows)" % (os.path.relpath(OUT, ROOT), len(rows)))
    for fam in FAMILIES:
        ex = [r for r in rows if r[0] is fam][:3]
        if ex:
            print("  example %s: %s" % (fam["name"], ", ".join(r[1]["name"] for r in ex)))


if __name__ == "__main__":
    main()
