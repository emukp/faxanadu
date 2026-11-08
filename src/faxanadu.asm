.feature string_escapes;

.INCLUDE "macros.inc"

.INCLUDE "DEFS.asm"
.INCLUDE "ZEROPAGE.asm"
.INCLUDE "RAM.asm"
.INCLUDE "PPU.asm"
.INCLUDE "APU_IO.asm"

.INCLUDE "header.asm"

;============================================================================
; The original 256 KiB image: 16 x 16 KiB banks.  Bank 15 is the fixed bank and
; is the last bank in the file, so the MMC1 maps it to $C000-$FFFF and the
; vectors in END_OF_ROM work without a second copy.
;============================================================================
.INCLUDE "PRG0.asm"
.INCLUDE "PRG1.asm"
.INCLUDE "PRG2.asm"
.INCLUDE "PRG3.asm"
.INCLUDE "PRG4.asm"
.INCLUDE "PRG5.asm"
.INCLUDE "PRG6.asm"
.INCLUDE "PRG7.asm"
.INCLUDE "PRG8.asm"

; Bank 9 is BANK_9_UNUSED in the original (a full bank of $FF).  zh_version puts
; the 12x12 glyph table here - it has to be a bank the MMC1 can actually map into
; $8000-$BFFF, i.e. one of 0-15 (see src/PRG9.asm / src/ld65.cfg and
; docs/hanhua-12x12.md).
.INCLUDE "PRG9.asm"

.INCLUDE "PRG10.asm"
.INCLUDE "PRG11.asm"
.INCLUDE "PRG12.asm"
.INCLUDE "PRG13.asm"
.INCLUDE "PRG14.asm"
.INCLUDE "PRG15_fixed.asm"

.INCLUDE "END_OF_ROM.asm"

;============================================================================
; zh_version Hanzi text path (bank 9's code, right after the glyph table).
;
; PRG9.asm must be included before this file: the renderer addresses glyphs as
; `TILE_GLYPHS_HANZI + glyph_id*64`, so the glyph table has to start at the bank
; base ($8000) and this code must follow it.  ld65.cfg does the same ordering
; through the PRG9_CODE segment, which loads into the PRG9 area.
;============================================================================
.INCLUDE "PRG9_code.asm"
