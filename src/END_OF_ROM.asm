;============================================================================
; Faxanadu (U).nes
;
; END_OF_ROM ($ffe0 - $ffff)
;============================================================================

    .segment "END_OF_ROM"
    .reloc

    .byte $20                               ; Game title
    .byte $20,$20,$20,$20,$20,$20,$20,$46   ; [$ffe1] string
    .byte $41,$58,$41,$4e,$41,$44,$55       ; [$ffe9] string

    .word $4227                             ; PRG Checksum
    .word $0000                             ; CHR CHecksum
    .byte $48                               ; CHR size: 0 = 8KiB CHR type: 0
                                            ; = CHR ROM PRG size: 5 = 512KiB
    .byte $04                               ; Mapper:    4 = MMC Nametable: 0
                                            ; = Horizontal arrangement
    .byte $01                               ; Title encoding: 1 = ASCII
    .byte $07                               ; Title length: 8 bytes
    .byte $18                               ; Licensee Code: Hudson Soft
    .byte $94                               ; Header validation byte
    pointer OnInterrupt                     ; OnInterrupt
                                            ; [$PRG15_MIRROR::fffa]
    pointer Game_Init                       ; Game_Init
                                            ; [$PRG15_MIRROR::fffc]
    pointer OnHardwareInterrupt             ; OnInterrupt::OnHardwareInterrupt
                                            ; [$PRG15_MIRROR::fffe]
