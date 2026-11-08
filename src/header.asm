.segment "HEADER"


;============================================================================
; iNES header - 256 KiB PRG (16 x 16 KiB banks).
;
; A plain iNES 1.0 header with byte 4 = 16 units - exactly what the original
; cart declares - so every reader understands it and no NES 2.0 extension is
; involved.  (NES 2.0 is also known-bad on this machine's FCEUX: setting byte 7's
; %10 identifier - with the same PRG payload - black-screens the boot, which is
; why the branch avoids it.)
;
; The image is 256 KiB because the zh_version expansion to 32 banks turned out
; to be unreachable: with 16 KiB PRG mode selected (required so the fixed bank
; stays at $C000) the MMC1's PRG bank register only holds four bank bits, so
; banks 16-31 can never be mapped into $8000-$BFFF - writing 16 selects bank 0.
; Measured with a throwaway ROM that selected each bank and read back a
; signature byte; see docs/hanhua-12x12.md ("MMC1 只能寻址 banks 0-15").
; Reverting to 16 banks also removes the need for the second copy of the fixed
; bank: bank 15 is the last bank again, so the vectors in END_OF_ROM work as-is.
;
; See also: https://www.nesdev.org/wiki/INES  (byte 4 "PRG ROM size")
;============================================================================

INES_MAPPER = 1
INES_MIRROR = 1
INES_SRAM = 0
INES_PRG_UNITS = 16                     ; 16 * 16 KiB = 256 KiB

.if INES_PRG_UNITS > 16
    .error "banks 16+ are not reachable: MMC1 16 KiB mode uses only 4 bank bits"
.endif

.byte 'N', 'E', 'S', $1A                ; 0-3: magic
.byte (INES_PRG_UNITS & $FF)            ; 4: PRG size in 16 KiB units ($10 = 16)
.byte $00                               ; 5: CHR size (0 = CHR RAM)
.byte INES_MIRROR | (INES_SRAM << 1) | ((INES_MAPPER & $0f) << 4) ; 6: flags
.byte (INES_MAPPER & %11110000)         ; 7: mapper high nibble, no NES 2.0 id
.byte $00                               ; 8: mapper high byte / submapper
.byte $00                               ; 9: PRG size high nibble (unused here)
.byte $00, $00, $00, $00, $00, $00      ; 10-15: padding
