;============================================================================
; Faxanadu (U).nes
;
; END_OF_ROM ($ffe0 - $ffff)
;
; In-ROM header: the 26 bytes at $FFE0-$FFF9 are the Hudson/Nintendo cartridge
; submission trailer found at the end of many licensed FC/NES games.  It is
; NOT the iNES header (see header.asm) and it contains no mapper field at all.
; Faxanadu is mapper 1 (MMC1): that is declared in the iNES header and
; implemented by MMC1_UpdateROMBank in PRG15.
;
; Field layout: https://www.nesdev.org/wiki/Nintendo_header
;
; HISTORY: like PRG15_fixed.asm this file was once assembled twice, the second copy
; (-D PRG15_COPY) trailing a duplicate fixed bank at the end of a 512 KiB image.
; That experiment was abandoned (the MMC1 cannot address banks 16+), the image
; is 256 KiB again, and bank 15 is the last bank - so there is one copy, and the
; vectors below are read from it.
;============================================================================

    .segment "END_OF_ROM"
    .reloc

    .byte "        FAXANADU"                ; Game title, 16 bytes ($ffe0-$ffef)

    .word $4227                             ; PRG checksum ($fff0-$fff1).
                                            ; Stored big-endian in the image,
                                            ; i.e. the bytes read 27 42.
    .word $0000                             ; CHR checksum ($fff2-$fff3).
                                            ; Zero: there is no CHR ROM.
    .byte $48                               ; ROM size ($fff4):
                                            ;   bits 7-4 PRG size, 4 = 256 KiB
                                            ;   (the Hudson trailer is a fixed
                                            ;    historical field; the zh_version
                                            ;    image is 256 KiB, same as the
                                            ;    original cart)
                                            ;   bits 3-0 CHR size, 8 = 8 KiB RAM
    .byte $04                               ; VRAM mirroring ($fff5):
                                            ;   4 = controlled by the mapper,
                                            ;   which is what MMC1 does.
                                            ;   This is NOT a mapper number.
    .byte $01                               ; Unknown (version field?)
    .byte $07                               ; Unknown
    .byte $18                               ; Licensee code ($fff8): Hudson Soft
    .byte $94                               ; Unknown (validation / magic byte)

; The vector table points into PRG15, which the MMC1 maps to $C000-$FFFF
; because bank 15 is the last 16 KiB bank of the file.
    pointer OnInterrupt                     ; $fffa: NMI vector
    pointer Game_Init                       ; $fffc: RESET vector
    pointer OnHardwareInterrupt             ; $fffe: IRQ vector