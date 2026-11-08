#!/usr/bin/env python3
"""Re-derive Messages_Load's message location from the built ROM.

Why this exists
---------------
The text engine has no message pointer table: `Messages_Load` (src/PRG15_fixed.asm)
switches to bank 13 and linearly scans `MESSAGE_STRINGS` from its first byte,
counting `$ff` terminators until it has walked past `MessageID - 1` messages.
The resulting state is a (window base, cursor) pair rather than a plain address:

    Message_StartAddr   <- high byte of MESSAGE_STRINGS, advanced once per
                           256 scanned bytes (the low byte is never touched,
                           so it stays $00)
    Message_ProcessedLength <- the byte offset of the message start relative
                           to that window

so the *actual* start of message N is `Message_StartAddr + Message_ProcessedLength`.
Reading only `Message_StartAddr` (e.g. $8700) therefore shows a message-window
base and looks like a bug when the real start is 224 bytes further on ($87E0).
This script reproduces the scan exactly and prints both numbers, so the two can
never be confused again.

It is read-only: it reads build/faxanadu.nes plus the build/*.tsv symbol and
constant exports, and writes nothing.

Checks it performs
------------------
1. Every `MESSAGEID_*` constant (193 of them) is fed through the emulated scan
   and the resulting start address is compared with the matching `MESSAGE_*`
   label address from build/symbols.tsv.  Any disagreement means the scan
   simulation is wrong, the constants are stale, or a message byte is not what
   the assembler thought it was.
2. `--id N` prints the decoded byte stream of message N and whether it contains
   any byte >= $80, i.e. whether the full-width hook in `TextBox_ShowMessage`
   (`JMP ZHV_DrawFullWidthChar`) will ever be reached while it is displayed.

Usage
-----
    make && make symbols
    python3 hanhua/check_message_load.py            # all 193 messages
    python3 hanhua/check_message_load.py --id 38    # the intro message
"""

import argparse
import os
import sys

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ROM_PATH = os.path.join(REPO, "build", "faxanadu.nes")
SYMBOLS_TSV = os.path.join(REPO, "build", "symbols.tsv")
ALIASES_TSV = os.path.join(REPO, "build", "symbols_aliases.tsv")
CONSTANTS_TSV = os.path.join(REPO, "build", "constants.tsv")

IROM_BASE = 0x10            # iNES header
BANK_SIZE = 0x4000          # 16 KiB per PRG bank
MESSAGE_BANK = 0x0D         # bank 13 holds MESSAGE_STRINGS (src/PRG15_fixed.asm)

# Control codes are single bytes even in the double-byte full-width encoding.
CHAR_END = 0xFF
CHAR_NEWLINE = 0xFE
CHAR_SPACE = 0xFD
CHAR_PLAYER_TITLE = 0xFB
CHAR_PAUSE = 0xFC


def bank_offset(bank, addr):
    """ROM file offset of a CPU address inside a 16 KiB PRG bank (AGENTS.md 5)."""
    return IROM_BASE + bank * BANK_SIZE + (addr & 0x3FFF)


def load_rom():
    with open(ROM_PATH, "rb") as handle:
        return handle.read()


def rom_byte(rom, bank, addr):
    return rom[bank_offset(bank, addr)]


def _hex(text):
    """Parse a hex column, tolerating the TSV header row."""
    try:
        return int(text, 16)
    except ValueError:
        return None


def read_symbols():
    """name -> (space, address) for data symbols, from build/symbols*.tsv.

    `MESSAGE_STRINGS` is a secondary label (several labels share $8300), so it
    only appears in symbols_aliases.tsv; both files are read.
    """
    symbols = {}
    with open(SYMBOLS_TSV, "r", encoding="utf-8") as handle:
        for line in handle:
            parts = line.rstrip("\n").split("\t")
            if len(parts) >= 4:
                address = _hex(parts[1])
                if address is not None:
                    symbols[parts[3]] = (parts[0], address)
    with open(ALIASES_TSV, "r", encoding="utf-8") as handle:
        for line in handle:
            parts = line.rstrip("\n").split("\t")
            if len(parts) >= 3:
                address = _hex(parts[1])
                if address is not None:
                    symbols.setdefault(parts[2], (parts[0], address))
    return symbols


def read_message_constants():
    """MESSAGEID_* -> value, from build/constants.tsv (values are hex text)."""
    constants = {}
    with open(CONSTANTS_TSV, "r", encoding="utf-8") as handle:
        for line in handle:
            parts = line.rstrip("\n").split("\t")
            if len(parts) >= 3 and parts[0].startswith("MESSAGEID_") and parts[2] == "Message":
                value = _hex(parts[1])
                if value is not None:
                    constants[parts[0][len("MESSAGEID_"):]] = value
    return constants


def scan_to(rom, strings_addr, message_id):
    """Emulate the scan part of Messages_Load and return (window_high, cursor).

    Faithful to the 6502 loop, including the two easy-to-miss details:
      * only the high byte of the window advances when the 8-bit cursor wraps;
      * the cursor is NOT reset between messages, so it ends up holding the
        start offset of the requested message.
    """
    if message_id < 1:
        raise ValueError("message IDs are 1-based")

    low = strings_addr & 0xFF
    window_high = strings_addr >> 8
    cursor = 0

    remaining = message_id - 1
    while remaining:
        value = rom_byte(rom, MESSAGE_BANK, ((window_high << 8) | low) + cursor)
        cursor = (cursor + 1) & 0xFF        # Y is 8-bit: $FF + 1 wraps to $00
        if cursor == 0:
            window_high += 1
        if value == CHAR_END:
            remaining -= 1
    return window_high, cursor


def messages_load(rom, strings_addr, message_id):
    """Messages_Load's two outputs plus the absolute address they resolve to."""
    low = strings_addr & 0xFF
    window_high, cursor = scan_to(rom, strings_addr, message_id)
    start_window = (window_high << 8) | low
    return start_window, cursor, start_window + cursor


def message_bytes(rom, strings_addr, message_id, limit=4096):
    """Byte stream of a message, up to and including its $ff terminator."""
    low = strings_addr & 0xFF
    window_high, cursor = scan_to(rom, strings_addr, message_id)

    out = []
    while len(out) < limit:
        value = rom_byte(rom, MESSAGE_BANK, ((window_high << 8) | low) + cursor)
        cursor = (cursor + 1) & 0xFF
        if cursor == 0:
            window_high += 1
        out.append(value)
        if value == CHAR_END:
            break
    return out


def hook_fires(data):
    """Would TextBox_ShowMessage see a byte >= $80 in this stream?

    The five control codes are consumed by TextBox_ShowMessage_LoadMessage (and
    its callees) before the byte reaches TextBox_ShowMessage, where the
    full-width hook lives - so they do NOT count as full-width lead bytes.
    """
    for value in data:
        if value in (CHAR_END, CHAR_NEWLINE, CHAR_SPACE, CHAR_PLAYER_TITLE, CHAR_PAUSE):
            continue
        if value >= 0x80:
            return True
    return False


def decode(data, full_width=True):
    """Render a message byte stream as ASCII for eyeballing.

    In the zh_version encoding a pair (b1, b2) with b1 >= $80 is one full-width
    character whose Unicode code point is ((b1 & $7F) << 8) | b2.
    """
    text = []
    i = 0
    full_width_count = 0
    while i < len(data):
        value = data[i]
        if value == CHAR_END:
            text.append("<end>")
            i += 1
        elif value == CHAR_NEWLINE:
            text.append("<newline>")
            i += 1
        elif value == CHAR_PAUSE:
            text.append("<pause>")
            i += 1
        elif value == CHAR_SPACE:
            text.append(" ")
            i += 1
        elif value == CHAR_PLAYER_TITLE:
            text.append("<title>")
            i += 1
        elif full_width and value >= 0x80 and i + 1 < len(data):
            code = ((value & 0x7F) << 8) | data[i + 1]
            text.append(chr(code) if 0x20 <= code < 0x7F else "<U+%04X>" % code)
            full_width_count += 1
            i += 2
        else:
            text.append(chr(value) if 0x20 <= value < 0x7F else "<$%02X>" % value)
            i += 1
    return "".join(text), full_width_count


def cross_check(rom, strings_addr, symbols, constants):
    """Compare the emulated scan against the assembler's own label addresses."""
    failures = []
    checked = 0
    for name in sorted(constants, key=lambda key: constants[key]):
        if name.startswith("CHAR_"):        # control-code pseudo IDs, not messages
            continue
        value = constants[name]
        if value == 0:
            continue                        # MESSAGEID_UNSET
        label = "MESSAGE_" + name
        window, cursor, start = messages_load(rom, strings_addr, value)
        if label not in symbols:
            failures.append((value, name, "no %s in symbols.tsv" % label))
            continue
        _space, expected = symbols[label]
        if expected != start:
            failures.append(
                (value, name, "scan -> $%04X, label %s -> $%04X" % (start, label, expected))
            )
        else:
            checked += 1
    return checked, failures


def main():
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    parser.add_argument("--id", type=int, default=None,
                        help="inspect one message ID (1-based) in detail")
    parser.add_argument("--raw", action="store_true",
                        help="with --id, dump the raw bytes")
    args = parser.parse_args()

    for path in (ROM_PATH, SYMBOLS_TSV, CONSTANTS_TSV):
        if not os.path.exists(path):
            sys.exit("missing %s - run `make && make symbols` first" % path)

    rom = load_rom()
    symbols = read_symbols()
    constants = read_message_constants()

    strings_key = "MESSAGE_STRINGS"
    if strings_key not in symbols:
        sys.exit("%s not found in build/symbols.tsv" % strings_key)
    strings_addr = symbols[strings_key][1]

    print("ROM         : %s (%d bytes)" % (ROM_PATH, len(rom)))
    print("MESSAGE_STRINGS bank %d, CPU $%04X (ROM offset $%06X)"
          % (MESSAGE_BANK, strings_addr, bank_offset(MESSAGE_BANK, strings_addr)))
    print("note        : Message_StartAddr's low byte is always $%02X; the real"
          % (strings_addr & 0xFF))
    print("              message starts at Message_StartAddr + Message_ProcessedLength")
    print()

    checked, failures = cross_check(rom, strings_addr, symbols, constants)
    print("scan vs. assembler labels: %d/%d match"
          % (checked, checked + len(failures)))
    for value, name, why in failures:
        print("  FAIL id %d (%s): %s" % (value, name, why))

    if args.id is not None:
        window, cursor, start = messages_load(rom, strings_addr, args.id)
        data = message_bytes(rom, strings_addr, args.id)
        by_addr = {}
        for name, (space, addr) in symbols.items():
            if space == "PRG%d" % MESSAGE_BANK and name.startswith("MESSAGE_"):
                by_addr.setdefault(addr, name)
        label = by_addr.get(start)
        text, wide = decode(data)
        fires = hook_fires(data)
        print()
        print("message %d" % args.id)
        print("  label                  : %s" % (label or "(no MESSAGE_* label at this address)"))
        print("  Message_StartAddr      : $%04X   (window base)" % window)
        print("  Message_ProcessedLength: %d ($%02X)   (cursor inside the window)"
              % (cursor, cursor))
        print("  read address           : $%04X = $%04X + %d" % (start, window, cursor))
        print("  length                 : %d bytes (including $ff)" % len(data))
        print("  full-width characters  : %d" % wide)
        print("  decoded                : %s" % text)
        print("  hook fires             : %s"
              % ("YES - stream contains bytes >= $80" if fires
                 else "no - all bytes < $80, TextBox_WriteChar handles it"))
        if args.raw:
            print("  raw                    : %s" % " ".join("%02X" % b for b in data))

    if failures:
        sys.exit(1)


if __name__ == "__main__":
    main()
