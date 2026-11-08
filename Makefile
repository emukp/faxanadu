# ============================================================================
# Faxanadu (U) - NES rebuild
#   MMC1 / mapper 1, 256 KiB PRG (16 x 16 KiB banks), 8 KiB CHR RAM
#   zh_version: hanhua work in bank 9 (glyphs+renderer) and bank 13 (messages)
#
#   make          assemble and link  -> build/faxanadu.nes
#   make translate rebuild from hanhua/textscn.tsv (glyphs, font, messages, ROM, checks)
#   make clean    remove build artefacts
#   make tags    regenerate src/TAGS
#
# Toolchain: cc65 (ca65 + ld65), GNU make.
# ============================================================================

CA65       ?= ca65
LD65       ?= ld65
PYTHON     ?= python3
CA65FLAGS  ?=
LD65FLAGS  ?=

SRC_DIR    := src
BUILD_DIR  := build
# Ghidra 审计/校验记录：记录「已经对 Ghidra 项目做过什么」，无法从源码重建，
# 因此放在 build/ 之外，`make clean` 不会删除它。
AUDIT_DIR  := audit

MAIN_SOURCE := $(SRC_DIR)/faxanadu.asm
LINKER_CFG  := $(SRC_DIR)/ld65.cfg

# --- zh_version translation chain ------------------------------------------
# `hanhua/textscn.tsv` is the ONLY hand-edited translation source: label<TAB>text,
# '\n' = the engine's newline code.  `make translate` regenerates everything
# derived from it, in this order (rebuild renumbers glyphs, so every message
# must be re-encoded right after - that is why this is one target, not flags):
#
#   hanhua/textscn.tsv --rebuild--> chars_zh.txt --font_gen--> src/PRG9.asm
#              --apply----> src/PRG13.asm --make-----> build/faxanadu.nes
#              --verify---> round-trip check against the built ROM
TRANSLATION := hanhua/textscn.tsv
CHARS_ZH    := hanhua/text/chars_zh.txt
FONT_BDF    := fonts/fusion-pixel-12px-monospaced-zh_hans.bdf
SCRIPT_CODEC := hanhua/script_codec.py
FONT_GEN    := hanhua/font_gen.py
CHECK_LOAD  := hanhua/check_message_load.py

# Every file pulled in by MAIN_SOURCE (.INCLUDE order) is listed explicitly so
# that editing any of them re-triggers the build.
SOURCES := \
	$(MAIN_SOURCE) \
	$(SRC_DIR)/macros.inc \
	$(SRC_DIR)/DEFS.asm \
	$(SRC_DIR)/ZEROPAGE.asm \
	$(SRC_DIR)/RAM.asm \
	$(SRC_DIR)/PPU.asm \
	$(SRC_DIR)/APU_IO.asm \
	$(SRC_DIR)/header.asm \
	$(SRC_DIR)/PRG0.asm \
	$(SRC_DIR)/PRG1.asm \
	$(SRC_DIR)/PRG2.asm \
	$(SRC_DIR)/PRG3.asm \
	$(SRC_DIR)/PRG4.asm \
	$(SRC_DIR)/PRG5.asm \
	$(SRC_DIR)/PRG6.asm \
	$(SRC_DIR)/PRG7.asm \
	$(SRC_DIR)/PRG8.asm \
	$(SRC_DIR)/PRG9.asm \
	$(SRC_DIR)/PRG10.asm \
	$(SRC_DIR)/PRG11.asm \
	$(SRC_DIR)/PRG12.asm \
	$(SRC_DIR)/PRG13.asm \
	$(SRC_DIR)/PRG14.asm \
	$(SRC_DIR)/PRG15_fixed.asm \
	$(SRC_DIR)/END_OF_ROM.asm \
	$(SRC_DIR)/PRG9_code.asm

OBJECT     := $(BUILD_DIR)/faxanadu.o
ROM        := $(BUILD_DIR)/faxanadu.nes
TAGS       := $(SRC_DIR)/TAGS

# Symbol tables for the Ghidra sync: run `make symbols`, then apply the
# exported tables with the Ghidra-side sync tool.
SYMBOLS := $(BUILD_DIR)/symbols.tsv
ALIASES := $(BUILD_DIR)/symbols_aliases.tsv
EXPORT  := hanhua/export_symbols.py
RECORDS := hanhua/export_records.py

# Portable SHA-256: GNU coreutils, BSD shasum, or OpenSSL.
SHA256 := $(shell command -v sha256sum 2>/dev/null)
SHA256_FLAGS :=
ifeq ($(strip $(SHA256)),)
  SHA256 := $(shell command -v shasum 2>/dev/null)
  SHA256_FLAGS := -a 256
endif
ifeq ($(strip $(SHA256)),)
  SHA256 := openssl dgst -sha256
  SHA256_FLAGS :=
endif

# ----------------------------------------------------------------------------

all: $(ROM)

# One object, one link: bank 15 is the last bank in the 256 KiB image, so it is
# already the fixed bank and no second copy is needed.
$(ROM): $(OBJECT) $(LINKER_CFG)
	$(LD65) $(LD65FLAGS) -o $@ -C $(LINKER_CFG) $(OBJECT)
	@$(SHA256) $(SHA256_FLAGS) $@

$(OBJECT): $(SOURCES)
	@mkdir -p $(@D)
	$(CA65) $(CA65FLAGS) $(MAIN_SOURCE) -o $@

tags: $(TAGS)

$(TAGS): $(SOURCES)
	etags -o $@ $(SOURCES)

symbols: $(SYMBOLS) $(BUILD_DIR)/data_records.tsv

$(SYMBOLS) $(ALIASES): $(SOURCES) $(LINKER_CFG) $(EXPORT)
	@mkdir -p $(@D)
	$(PYTHON) $(EXPORT) --build-dir $(BUILD_DIR) --src-dir $(SRC_DIR) --ca65 $(CA65) --ld65 $(LD65)

# composite-record tables (field layout proved by the reader code in src/)
$(BUILD_DIR)/data_records.tsv: $(SYMBOLS) $(RECORDS)
	$(PYTHON) $(RECORDS)

# ----------------------------------------------------------------------------
# zh_version: rebuild the ROM from hanhua/textscn.tsv.
#
# The order matters and is not negotiable:
#   * `rebuild` RENUMBERS the glyph table, so every message must be re-applied
#     immediately afterwards - that is why this is one target and not flags;
#   * the round-trip checks read labels out of build/symbols.tsv, and a message
#     edit moves the labels that follow it, so `make symbols` must run AFTER the
#     ROM is rebuilt and BEFORE the checks (a stale symbol table fails them).
#
translate: $(TRANSLATION)
	$(PYTHON) $(SCRIPT_CODEC) rebuild --text-file $< --chars $(CHARS_ZH)
	$(PYTHON) $(FONT_GEN) $(CHARS_ZH) --font $(FONT_BDF) \
		--out $(SRC_DIR)/PRG9.asm --segment PRG9 --packed
	$(PYTHON) $(SCRIPT_CODEC) apply --text-file $< --chars $(CHARS_ZH) \
		--source $(SRC_DIR)/PRG13.asm
	$(MAKE) --no-print-directory all
	$(MAKE) --no-print-directory symbols
	$(PYTHON) $(SCRIPT_CODEC) verify --text-file $< --quiet
	$(PYTHON) $(CHECK_LOAD)

clean:
	rm -rf $(BUILD_DIR)

# 审计是变更历史，只在明确要重置记录时才用（默认不删除）
clean-audit:
	rm -rf $(AUDIT_DIR)

.PHONY: all clean clean-audit tags symbols translate
