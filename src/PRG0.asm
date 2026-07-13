;============================================================================
; Faxanadu (U).nes
;
; PRG0 ($8000 - $bfff)
;============================================================================

    .segment "PRG0"
    .reloc

ROMBankStart:
    bank_offset_16 EOLIS_BLOCKS             ; Eolis
    bank_offset_16 MIST_BLOCKS              ; Mist
    bank_offset_16 TOWNS_BLOCKS             ; Towns

;
; XREFS:
;     ROMBankStart [$8000]
;
EOLIS_BLOCKS:
    bank_offset_16 EOLIS_BLOCKS_SCREEN_00   ; EOLIS_BLOCKS_SCREEN_00
    bank_offset_16 EOLIS_BLOCKS_SCREEN_01   ; EOLIS_BLOCKS_SCREEN_01
    bank_offset_16 EOLIS_BLOCKS_SCREEN_02   ; EOLIS_BLOCKS_SCREEN_02
    bank_offset_16 EOLIS_BLOCKS_SCREEN_03   ; EOLIS_BLOCKS_SCREEN_03
    bank_offset_16 EOLIS_BLOCKS_SCREEN_04   ; EOLIS_BLOCKS_SCREEN_04
    bank_offset_16 EOLIS_BLOCKS_SCREEN_05   ; EOLIS_BLOCKS_SCREEN_05
    bank_offset_16 EOLIS_BLOCKS_SCREEN_06   ; EOLIS_BLOCKS_SCREEN_06
    bank_offset_16 EOLIS_BLOCKS_SCREEN_07   ; EOLIS_BLOCKS_SCREEN_07
    bank_offset_16 EOLIS_BLOCKS_SCREEN_08   ; EOLIS_BLOCKS_SCREEN_08

;
; XREFS:
;     EOLIS_BLOCKS [$8006]
;
EOLIS_BLOCKS_SCREEN_00:
    .byte $c0,$40,$00,$00,$00,$00,$00,$00   ; byte
    .byte $33,$41,$00,$00,$0c,$d3,$0f,$d5   ; byte
    .byte $b3,$31,$00,$00,$0c,$cf,$45,$d6   ; byte
    .byte $71,$0c,$3b,$5a,$40,$03,$34,$4c   ; byte
    .byte $43,$3f,$d4,$36,$97,$54,$40,$03   ; byte
    .byte $33,$75,$9d,$43,$13,$d1,$15,$43   ; byte
    .byte $0c,$cb,$72,$fc,$33,$2c,$75,$3c   ; byte
    .byte $49,$c7,$15,$c3,$43,$1a,$41,$c5   ; byte
    .byte $95,$c4,$95,$c1,$c0,$0c,$18,$15   ; byte
    .byte $d3,$d5,$d9,$40,$0c,$14,$35,$e5   ; byte
    .byte $d3,$95,$d9,$80,$00,$00,$36,$85   ; byte
    .byte $c1,$00,$03,$67,$ca,$70,$3c,$ab   ; byte
    .byte $08,$ca,$70,$37,$5f,$40,$03,$3a   ; byte
    .byte $c0,$80,$00                       ; byte

EOLIS_BLOCKS_SCREEN_01:
    .byte $c0,$40,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$d6,$b3,$fc,$8c,$35,$a4,$d6   ; byte
    .byte $75,$0d,$69,$00,$d5,$35,$3c,$9b   ; byte
    .byte $22,$c9,$b5,$4d,$6f,$43,$d4,$f1   ; byte
    .byte $2d,$53,$5b,$d0,$c0,$5c,$c5,$cc   ; byte
    .byte $5d,$8f,$20,$74,$47,$63,$c8,$00   ; byte
    .byte $5c,$88,$1d,$6f,$27,$71,$27,$5b   ; byte
    .byte $c9,$c0,$5d,$53,$4f,$d4,$d7,$12   ; byte
    .byte $74,$f5,$c4,$b1,$cc,$48,$57,$4e   ; byte
    .byte $5d,$8f,$1c,$74,$e7,$63,$c7,$01   ; byte
    .byte $d7,$f5,$e7,$64,$d7,$9c,$53,$37   ; byte
    .byte $d7,$b6,$47,$14,$cd,$c0,$ca,$c0   ; byte
    .byte $00,$00,$00,$d2,$00,$00,$00,$00   ; byte

EOLIS_BLOCKS_SCREEN_02:
    .byte $c0,$40,$32,$8c,$04,$00,$00,$00   ; byte
    .byte $c3,$f3,$3d,$59,$00,$00,$00,$da   ; byte
    .byte $b6,$bd,$b1,$00,$00,$0c,$d1,$cf   ; byte
    .byte $f2,$3d,$69,$cd,$10,$00,$0c,$cf   ; byte
    .byte $59,$c8,$c2,$cc,$d0,$35,$9d,$40   ; byte
    .byte $d0,$cd,$67,$53,$cc,$72,$2c,$c7   ; byte
    .byte $54,$b5,$bd,$0c,$35,$3c,$48,$c8   ; byte
    .byte $0d,$4c,$d5,$f5,$59,$36,$3c,$80   ; byte
    .byte $14,$c9,$c4,$c8,$b4,$d5,$35,$bc   ; byte
    .byte $9c,$14,$04,$d5,$34,$fd,$4d,$1c   ; byte
    .byte $4b,$1c,$c4,$9d,$3d,$31,$c4,$74   ; byte
    .byte $e5,$1c,$72,$9d,$39,$d2,$0d,$78   ; byte
    .byte $76,$4d,$79,$34,$80,$35,$ed,$91   ; byte
    .byte $ca,$c0,$00,$00,$00,$d2,$00,$00   ; byte
    .byte $00,$00                           ; byte

EOLIS_BLOCKS_SCREEN_03:
    .byte $c0,$40,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$35,$9c,$8f,$21,$40   ; byte
    .byte $d0,$c0,$34,$2d,$0c,$35,$3c,$99   ; byte
    .byte $d6,$72,$3c,$87,$43,$c4,$b2,$73   ; byte
    .byte $44,$c4,$b2,$73,$44,$c4,$9c,$c5   ; byte
    .byte $d4,$f3,$17,$63,$40,$00,$1c,$89   ; byte
    .byte $72,$27,$5b,$71,$e0,$40,$32,$4d   ; byte
    .byte $3f,$24,$34,$fc,$91,$cd,$80,$34   ; byte
    .byte $bd,$33,$48,$1d,$39,$34,$e5,$cd   ; byte
    .byte $c0,$00,$1d,$91,$36,$47,$48,$ce   ; byte
    .byte $00,$03,$2b,$00,$00,$cf,$00,$0d   ; byte
    .byte $27,$48,$00,$00                   ; byte

EOLIS_BLOCKS_SCREEN_04:
    .byte $c0,$40,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$03,$34,$4c,$43,$5c,$d7   ; byte
    .byte $50,$00,$33,$47,$33,$4c,$45,$5d   ; byte
    .byte $0c,$d8,$b6,$ed,$8b,$6e,$d8       ; byte

;
; XREFS:
;     Screen_LoadUIPalette
;
BYTE_81f0:
    .byte $b4,$a7,$2c,$cb,$d5,$5c,$47,$44   ; byte
    .byte $d1,$c0,$36,$0d,$85,$cb,$b1,$65   ; byte
    .byte $70,$d7,$12,$c1,$80,$00,$05,$70   ; byte
    .byte $75,$c1,$40,$00,$05,$73,$60,$d9   ; byte
    .byte $80,$00,$0c,$e9,$73,$70,$c0,$c0   ; byte
    .byte $ca,$b0,$8c,$a7,$03,$ca,$b0,$8c   ; byte
    .byte $d7,$0e,$cf,$73,$80,$c0,$80,$00   ; byte
    .byte $00,$33,$c0                       ; byte

EOLIS_BLOCKS_SCREEN_05:
    .byte $c0,$40,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$d4,$35,$a7,$10,$d7,$35,$d7   ; byte
    .byte $34,$40,$00,$c8,$17,$11,$57,$33   ; byte
    .byte $4c,$d1,$00,$c4,$b5,$4c,$31,$5c   ; byte
    .byte $33,$2c,$76,$ed,$29,$d8,$8d,$b8   ; byte
    .byte $c9,$dc,$69,$5c,$b5,$c5,$b4,$7d   ; byte
    .byte $83,$0d,$d1,$c0,$c4,$9c,$19,$5c   ; byte
    .byte $18,$00,$00,$5c,$59,$5c,$14,$00   ; byte
    .byte $00,$c2,$40,$5d,$98,$00,$00,$ce   ; byte
    .byte $00,$c3,$b3,$dc,$a7,$03,$ca,$b0   ; byte
    .byte $8c,$a7,$03,$0c,$ab,$29,$c0,$80   ; byte
    .byte $00,$00,$00                       ; byte

EOLIS_BLOCKS_SCREEN_06:
    .byte $c0,$43,$34,$c0,$40,$c3,$f5,$6c   ; byte
    .byte $04,$30,$fd,$5b,$01,$03,$33,$40   ; byte
    .byte $d1,$74,$64,$34,$5d,$19,$cd,$1d   ; byte
    .byte $cb,$44,$dc,$dc,$d1,$dc,$b7,$34   ; byte
    .byte $37,$2d,$cd,$cc,$dd,$67,$50,$d6   ; byte
    .byte $9c,$cd,$d6,$75,$ad,$0f,$42,$d0   ; byte
    .byte $f5,$9d,$69,$c5,$f7,$1d,$4f,$12   ; byte
    .byte $d5,$33,$0c,$5f,$71,$dd,$35,$4d   ; byte
    .byte $c3,$23,$37,$4d,$53,$43,$cc,$87   ; byte
    .byte $76,$77,$1c,$c8,$5d,$bf,$31,$c8   ; byte
    .byte $97,$5b,$c7,$c7,$75,$71,$9c,$7c   ; byte
    .byte $d4,$d7,$22,$35,$35,$c8,$07,$12   ; byte
    .byte $76,$3c,$80,$55,$15,$c9,$c5,$75   ; byte
    .byte $bc,$9c,$5d,$3f,$24,$d3,$d5,$cd   ; byte
    .byte $cd,$79,$d7,$f1,$4c,$dc,$75,$fd   ; byte
    .byte $39,$d3,$9d,$7d,$c2,$40,$00,$d7   ; byte
    .byte $b5,$4d,$91,$d9,$35,$e7,$0a,$ce   ; byte
    .byte $00,$00,$00,$00,$d2,$00,$00,$00   ; byte
    .byte $00                               ; byte

EOLIS_BLOCKS_SCREEN_07:
    .byte $c0,$40,$32,$5c,$6f,$01,$cc,$f0   ; byte
    .byte $1c,$6f,$01,$c9,$70,$10,$00,$df   ; byte
    .byte $77,$ec,$cd,$c5,$dc,$cf,$7d,$df   ; byte
    .byte $90,$c6,$dd,$f7,$7e,$de,$f7,$cc   ; byte
    .byte $5f,$59,$c8,$f5,$ac,$5f,$7b,$df   ; byte
    .byte $37,$dd,$f9,$cc,$dd,$ef,$7c,$d6   ; byte
    .byte $75,$ad,$40,$03,$59,$de,$77,$bd   ; byte
    .byte $f1,$c5,$f3,$0d,$67,$50,$dd,$35   ; byte
    .byte $4d,$13,$59,$c8,$f2,$1d,$13,$74   ; byte
    .byte $75,$bd,$6b,$30,$5d,$4f,$76,$d4   ; byte
    .byte $f5,$9d,$6b,$53,$dd,$5d,$67,$5a   ; byte
    .byte $5d,$53,$71,$71,$97,$75,$77,$4d   ; byte
    .byte $51,$cc,$5d,$d3,$54,$77,$f7,$19   ; byte
    .byte $75,$b7,$12,$45,$c8,$9d,$4f,$79   ; byte
    .byte $35,$b7,$5b,$57,$76,$77,$47,$24   ; byte
    .byte $d3,$f2,$4d,$d3,$54,$55,$5d,$7b   ; byte
    .byte $12,$45,$d3,$9d,$4d,$57,$14,$70   ; byte
    .byte $ac,$24,$de,$b5,$ed,$7d,$d9,$1d   ; byte
    .byte $7b,$5f,$dd,$f7,$8c,$24,$73,$80   ; byte
    .byte $00,$00,$00,$d2,$00,$00,$00,$00   ; byte

EOLIS_BLOCKS_SCREEN_08:
    .byte $c0,$40,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $d0,$f1,$0c,$3b,$5a,$d0,$b1,$0d   ; byte
    .byte $73,$5d,$40,$d0,$f4,$2d,$0f,$59   ; byte
    .byte $c7,$36,$97,$54,$c8,$31,$15,$d0   ; byte
    .byte $cd,$0b,$43,$c8,$03,$11,$d1,$15   ; byte
    .byte $c7,$15,$c4,$b1,$cc,$48,$31,$cc   ; byte
    .byte $49,$c7,$15,$c9,$d5,$c7,$37,$57   ; byte
    .byte $44,$77,$55,$55,$c4,$95,$71,$2c   ; byte
    .byte $70,$21,$d3,$d5,$c7,$15,$c4,$a9   ; byte
    .byte $05,$d3,$95,$cd,$d5,$cd,$c0,$03   ; byte
    .byte $7a,$cf,$b1,$55,$ca,$cc,$3b,$3d   ; byte
    .byte $ca,$c0,$00,$07,$5f,$d2,$00,$00   ; byte
    .byte $00,$00                           ; byte

MIST_BLOCKS:
    bank_offset_16 MIST_BLOCKS_SCREEN_00_10_11_35_36 ; MIST_BLOCKS_SCREEN_00_10_11_35_36
    bank_offset_16 MIST_BLOCKS_SCREEN_01    ; MIST_BLOCKS_SCREEN_01
    bank_offset_16 MIST_BLOCKS_SCREEN_02    ; MIST_BLOCKS_SCREEN_02
    bank_offset_16 MIST_BLOCKS_SCREEN_03    ; MIST_BLOCKS_SCREEN_03
    bank_offset_16 MIST_BLOCKS_SCREEN_04    ; MIST_BLOCKS_SCREEN_04
    bank_offset_16 MIST_BLOCKS_SCREEN_05    ; MIST_BLOCKS_SCREEN_05
    bank_offset_16 MIST_BLOCKS_SCREEN_06    ; MIST_BLOCKS_SCREEN_06
    bank_offset_16 MIST_BLOCKS_SCREEN_07    ; MIST_BLOCKS_SCREEN_07
    bank_offset_16 MIST_BLOCKS_SCREEN_08    ; MIST_BLOCKS_SCREEN_08
    bank_offset_16 MIST_BLOCKS_SCREEN_09    ; MIST_BLOCKS_SCREEN_09
    bank_offset_16 MIST_BLOCKS_SCREEN_00_10_11_35_36 ; MIST_BLOCKS_SCREEN_00_10_11_35_36
    bank_offset_16 MIST_BLOCKS_SCREEN_00_10_11_35_36 ; MIST_BLOCKS_SCREEN_00_10_11_35_36
    bank_offset_16 MIST_BLOCKS_SCREEN_12    ; MIST_BLOCKS_SCREEN_12
    bank_offset_16 MIST_BLOCKS_SCREEN_13    ; MIST_BLOCKS_SCREEN_13
    bank_offset_16 MIST_BLOCKS_SCREEN_14    ; MIST_BLOCKS_SCREEN_14
    bank_offset_16 MIST_BLOCKS_SCREEN_15    ; MIST_BLOCKS_SCREEN_15
    bank_offset_16 MIST_BLOCKS_SCREEN_16    ; MIST_BLOCKS_SCREEN_16
    bank_offset_16 MIST_BLOCKS_SCREEN_17    ; MIST_BLOCKS_SCREEN_17
    bank_offset_16 MIST_BLOCKS_SCREEN_18    ; MIST_BLOCKS_SCREEN_18
    bank_offset_16 MIST_BLOCKS_SCREEN_19    ; MIST_BLOCKS_SCREEN_19
    bank_offset_16 MIST_BLOCKS_SCREEN_20    ; MIST_BLOCKS_SCREEN_20
    bank_offset_16 MIST_BLOCKS_SCREEN_21    ; MIST_BLOCKS_SCREEN_21
    bank_offset_16 MIST_BLOCKS_SCREEN_22    ; MIST_BLOCKS_SCREEN_22
    bank_offset_16 MIST_BLOCKS_SCREEN_23    ; MIST_BLOCKS_SCREEN_23
    bank_offset_16 MIST_BLOCKS_SCREEN_24    ; MIST_BLOCKS_SCREEN_24
    bank_offset_16 MIST_BLOCKS_SCREEN_25    ; MIST_BLOCKS_SCREEN_25
    bank_offset_16 MIST_BLOCKS_SCREEN_26    ; MIST_BLOCKS_SCREEN_26
    bank_offset_16 MIST_BLOCKS_SCREEN_27    ; MIST_BLOCKS_SCREEN_27
    bank_offset_16 MIST_BLOCKS_SCREEN_28    ; MIST_BLOCKS_SCREEN_28
    bank_offset_16 MIST_BLOCKS_SCREEN_29    ; MIST_BLOCKS_SCREEN_29
    bank_offset_16 MIST_BLOCKS_SCREEN_30    ; MIST_BLOCKS_SCREEN_30
    bank_offset_16 MIST_BLOCKS_SCREEN_31    ; MIST_BLOCKS_SCREEN_31
    bank_offset_16 MIST_BLOCKS_SCREEN_32    ; MIST_BLOCKS_SCREEN_32
    bank_offset_16 MIST_BLOCKS_SCREEN_33    ; MIST_BLOCKS_SCREEN_33
    bank_offset_16 MIST_BLOCKS_SCREEN_34    ; MIST_BLOCKS_SCREEN_34
    bank_offset_16 MIST_BLOCKS_SCREEN_00_10_11_35_36 ; MIST_BLOCKS_SCREEN_00_10_11_35_36
    bank_offset_16 MIST_BLOCKS_SCREEN_00_10_11_35_36 ; MIST_BLOCKS_SCREEN_00_10_11_35_36
    bank_offset_16 MIST_BLOCKS_SCREEN_37    ; MIST_BLOCKS_SCREEN_37
    bank_offset_16 MIST_BLOCKS_SCREEN_38    ; MIST_BLOCKS_SCREEN_38
    bank_offset_16 MIST_BLOCKS_SCREEN_39    ; MIST_BLOCKS_SCREEN_39
    bank_offset_16 MIST_BLOCKS_SCREEN_40    ; MIST_BLOCKS_SCREEN_40
    bank_offset_16 MIST_BLOCKS_SCREEN_41    ; MIST_BLOCKS_SCREEN_41
    bank_offset_16 MIST_BLOCKS_SCREEN_42    ; MIST_BLOCKS_SCREEN_42
    bank_offset_16 MIST_BLOCKS_SCREEN_43    ; MIST_BLOCKS_SCREEN_43
    bank_offset_16 MIST_BLOCKS_SCREEN_44    ; MIST_BLOCKS_SCREEN_44
    bank_offset_16 MIST_BLOCKS_SCREEN_45    ; MIST_BLOCKS_SCREEN_45
    bank_offset_16 MIST_BLOCKS_SCREEN_46    ; MIST_BLOCKS_SCREEN_46
    bank_offset_16 MIST_BLOCKS_SCREEN_47    ; MIST_BLOCKS_SCREEN_47
    bank_offset_16 MIST_BLOCKS_SCREEN_48    ; MIST_BLOCKS_SCREEN_48
    bank_offset_16 MIST_BLOCKS_SCREEN_49    ; MIST_BLOCKS_SCREEN_49
    bank_offset_16 MIST_BLOCKS_SCREEN_50    ; MIST_BLOCKS_SCREEN_50
    bank_offset_16 MIST_BLOCKS_SCREEN_51    ; MIST_BLOCKS_SCREEN_51
    bank_offset_16 MIST_BLOCKS_SCREEN_52    ; MIST_BLOCKS_SCREEN_52
    bank_offset_16 MIST_BLOCKS_SCREEN_53    ; MIST_BLOCKS_SCREEN_53
    bank_offset_16 MIST_BLOCKS_SCREEN_54    ; MIST_BLOCKS_SCREEN_54
    bank_offset_16 MIST_BLOCKS_SCREEN_55    ; MIST_BLOCKS_SCREEN_55
    bank_offset_16 MIST_BLOCKS_SCREEN_56    ; MIST_BLOCKS_SCREEN_56
    bank_offset_16 MIST_BLOCKS_SCREEN_57    ; MIST_BLOCKS_SCREEN_57
    bank_offset_16 MIST_BLOCKS_SCREEN_58    ; MIST_BLOCKS_SCREEN_58
    bank_offset_16 MIST_BLOCKS_SCREEN_59    ; MIST_BLOCKS_SCREEN_59
    bank_offset_16 MIST_BLOCKS_SCREEN_60    ; MIST_BLOCKS_SCREEN_60
    bank_offset_16 MIST_BLOCKS_SCREEN_61    ; MIST_BLOCKS_SCREEN_61
    bank_offset_16 MIST_BLOCKS_SCREEN_62    ; MIST_BLOCKS_SCREEN_62
    bank_offset_16 MIST_BLOCKS_SCREEN_63    ; MIST_BLOCKS_SCREEN_63
    bank_offset_16 MIST_BLOCKS_SCREEN_64    ; MIST_BLOCKS_SCREEN_64
    bank_offset_16 MIST_BLOCKS_SCREEN_65    ; MIST_BLOCKS_SCREEN_65
    bank_offset_16 MIST_BLOCKS_SCREEN_66    ; MIST_BLOCKS_SCREEN_66
    bank_offset_16 MIST_BLOCKS_SCREEN_67    ; MIST_BLOCKS_SCREEN_67
    bank_offset_16 MIST_BLOCKS_SCREEN_68    ; MIST_BLOCKS_SCREEN_68
    bank_offset_16 MIST_BLOCKS_SCREEN_69    ; MIST_BLOCKS_SCREEN_69
    bank_offset_16 MIST_BLOCKS_SCREEN_70    ; MIST_BLOCKS_SCREEN_70
    bank_offset_16 MIST_BLOCKS_SCREEN_71    ; MIST_BLOCKS_SCREEN_71
    bank_offset_16 MIST_BLOCKS_SCREEN_72    ; MIST_BLOCKS_SCREEN_72
    bank_offset_16 MIST_BLOCKS_SCREEN_73    ; MIST_BLOCKS_SCREEN_73
    bank_offset_16 MIST_BLOCKS_SCREEN_74    ; MIST_BLOCKS_SCREEN_74
    bank_offset_16 MIST_BLOCKS_SCREEN_75    ; MIST_BLOCKS_SCREEN_75
    bank_offset_16 MIST_BLOCKS_SCREEN_76    ; MIST_BLOCKS_SCREEN_76
    bank_offset_16 MIST_BLOCKS_SCREEN_77    ; MIST_BLOCKS_SCREEN_77
    bank_offset_16 MIST_BLOCKS_SCREEN_78    ; MIST_BLOCKS_SCREEN_78
    bank_offset_16 MIST_BLOCKS_SCREEN_79    ; MIST_BLOCKS_SCREEN_79
    bank_offset_16 MIST_BLOCKS_SCREEN_80    ; MIST_BLOCKS_SCREEN_80
    bank_offset_16 MIST_BLOCKS_SCREEN_81    ; MIST_BLOCKS_SCREEN_81
    bank_offset_16 MIST_BLOCKS_SCREEN_82    ; MIST_BLOCKS_SCREEN_82

;
; XREFS:
;     MIST_BLOCKS [$8429]
;
MIST_BLOCKS_SCREEN_00_10_11_35_36:
    .byte $c4,$43,$18,$c1,$34,$1c,$13,$25   ; byte
    .byte $c1,$34,$0c,$10,$0c,$30,$70,$4d   ; byte
    .byte $07,$40,$d0,$72,$54,$c6,$32,$8c   ; byte
    .byte $47,$1a,$c3,$34,$00,$c1,$31,$d7   ; byte
    .byte $25,$ce,$72,$63,$11,$32,$3c,$97   ; byte
    .byte $24,$c2,$70,$4c,$17,$14,$32,$55   ; byte
    .byte $c9,$b0,$e1,$c8,$f2,$4c,$24,$d3   ; byte
    .byte $30,$5c,$95,$c9,$70,$4c,$33,$26   ; byte
    .byte $c3,$b0,$82,$c9,$34,$53,$4c,$d4   ; byte
    .byte $30,$4c,$9a,$ce,$74,$1c,$a3,$20   ; byte
    .byte $5c,$3b,$24,$d3,$f4,$dd,$28,$d0   ; byte
    .byte $f2,$6b,$27,$ca,$1c,$83,$11,$c2   ; byte
    .byte $2c,$77,$1e,$d3,$34,$ac,$9b,$27   ; byte
    .byte $c9,$b2,$ec,$33,$2f,$d0,$07,$08   ; byte
    .byte $c3,$b1,$1c,$93,$25,$c9,$8c,$45   ; byte
    .byte $c9,$32,$3c,$17,$28,$d0,$71,$3c   ; byte
    .byte $9b,$11,$c8,$f2,$4c,$63,$26,$c4   ; byte
    .byte $72,$40,$d4,$32,$75,$72,$6c,$b9   ; byte
    .byte $c9,$32,$8c,$9e,$c9,$34,$4d,$1b   ; byte
    .byte $45,$72,$5c,$0d,$cb,$dc,$1f,$27   ; byte
    .byte $c7,$72,$6c,$93,$25,$d1,$75,$0d   ; byte
    .byte $1f,$4a,$72,$8c,$14,$c3,$30,$67   ; byte
    .byte $04,$03,$05,$c0,$f0,$50,$00,$57   ; byte
    .byte $2f,$c1,$72,$5c,$7b,$25,$50,$32   ; byte
    .byte $5d,$03,$03                       ; byte

MIST_BLOCKS_SCREEN_01:
    .byte $c4,$43,$18,$c3,$30,$40,$34,$0c   ; byte
    .byte $10,$c6,$0c,$13,$0c,$71,$23,$13   ; byte
    .byte $c1,$5c,$97,$09,$c2,$b2,$8c,$25   ; byte
    .byte $cf,$cd,$00,$c4,$b0,$5d,$07,$05   ; byte
    .byte $c1,$32,$5c,$30,$0d,$33,$24,$ca   ; byte
    .byte $31,$8c,$a3,$14,$c1,$70,$4c,$4f   ; byte
    .byte $25,$c9,$b0,$cc,$3b,$11,$c8,$f1   ; byte
    .byte $1c,$9f,$28,$c6,$8c,$95,$c1,$b1   ; byte
    .byte $8c,$33,$26,$c3,$b2,$3c,$93,$25   ; byte
    .byte $32,$8c,$77,$0c,$c6,$1c,$9a,$5c   ; byte
    .byte $a3,$20,$c4,$72,$7d,$3f,$17,$d1   ; byte
    .byte $74,$4c,$5e,$32,$6c,$a3,$27,$c1   ; byte
    .byte $70,$ec,$83,$11,$32,$4d,$24,$d3   ; byte
    .byte $74,$8d,$43,$27,$c9,$b2,$ec,$31   ; byte
    .byte $c1,$b1,$87,$08,$c4,$b1,$34,$57   ; byte
    .byte $25,$b2,$3c,$9f,$28,$c1,$71,$2c   ; byte
    .byte $9b,$11,$54,$d1,$97,$14,$ac,$a0   ; byte
    .byte $c1,$2c,$11,$c9,$32,$84,$d1,$d1   ; byte
    .byte $2c,$61,$c2,$f0,$6c,$4b,$27,$c7   ; byte
    .byte $70,$43,$05,$30,$cc,$10,$c2,$f0   ; byte
    .byte $cc,$10,$c3,$17,$18,$c4,$f2,$47   ; byte
    .byte $24,$c0,$f0,$b7,$1d,$ca,$31,$1c   ; byte
    .byte $60,$70,$4c,$17,$13,$32,$57,$05   ; byte
    .byte $32,$5c,$17,$25,$43,$03           ; byte

MIST_BLOCKS_SCREEN_02:
    .byte $c1,$0c,$17,$14,$c2,$f0,$4d,$03   ; byte
    .byte $41,$34,$0c,$bc,$30,$bc,$bf,$1a   ; byte
    .byte $c4,$70,$5c,$53,$04,$32,$4c,$04   ; byte
    .byte $23,$28,$c0,$f0,$cd,$01,$c4,$b0   ; byte
    .byte $4c,$2f,$13,$c9,$30,$1c,$c3,$32   ; byte
    .byte $c5,$30,$bc,$13,$24,$c1,$0c,$a3   ; byte
    .byte $04,$ca,$31,$8c,$4f,$1d,$c0,$73   ; byte
    .byte $03,$00,$cc,$1c,$9e,$c6,$8c,$77   ; byte
    .byte $1e,$4c,$32,$c5,$1c,$c9,$cc,$b1   ; byte
    .byte $4b,$0c,$c3,$b1,$cc,$9b,$25,$72   ; byte
    .byte $0b,$20,$c1,$24,$1c,$97,$11,$c4   ; byte
    .byte $31,$1c,$a3,$27,$4b,$40,$c4,$74   ; byte
    .byte $18,$32,$5c,$61,$0c,$31,$47,$11   ; byte
    .byte $c9,$32,$8c,$79,$c1,$34,$1d,$03   ; byte
    .byte $04,$c9,$f2,$3c,$9f,$28,$0c,$9f   ; byte
    .byte $24,$c9,$5c,$94,$c3,$31,$1c,$63   ; byte
    .byte $28,$c9,$6c,$a0,$0c,$97,$14,$13   ; byte
    .byte $18,$c4,$b1,$8c,$a3,$14,$30,$40   ; byte
    .byte $34,$1c,$13,$40,$d0,$70,$47,$13   ; byte
    .byte $ca,$0c,$50,$c2,$f0,$cc,$60,$0c   ; byte
    .byte $4b,$18,$c4,$f2,$4c,$54,$c0,$f0   ; byte
    .byte $b7,$0b,$ca,$31,$14,$c3,$13,$13   ; byte
    .byte $32,$54,$c5,$32,$57,$25,$43,$03   ; byte

MIST_BLOCKS_SCREEN_03:
    .byte $c0,$f0,$4c,$17,$04,$c2,$f0,$4c   ; byte
    .byte $0c,$d0,$74,$0c,$0c,$c1,$30,$bc   ; byte
    .byte $13,$1a,$c3,$30,$5c,$51,$32,$4b   ; byte
    .byte $01,$c1,$30,$3d,$07,$28,$b0,$c7   ; byte
    .byte $1d,$c1,$70,$4c,$2f,$13,$c9,$30   ; byte
    .byte $12,$30,$bb,$04,$30,$57,$03,$71   ; byte
    .byte $8c,$4f,$12,$b0,$b5,$c2,$cc,$4e   ; byte
    .byte $4c,$77,$1e,$c2,$f0,$cc,$4b,$11   ; byte
    .byte $2c,$97,$0b,$c3,$0c,$4a,$c2,$f0   ; byte
    .byte $5c,$9b,$25,$71,$8c,$a3,$20,$c4   ; byte
    .byte $31,$2c,$30,$c4,$4c,$43,$11,$c7   ; byte
    .byte $70,$6c,$a3,$27,$c3,$31,$2c,$7b   ; byte
    .byte $13,$c4,$60,$71,$0c,$93,$1e,$c1   ; byte
    .byte $1c,$31,$71,$dc,$07,$25,$c9,$f1   ; byte
    .byte $20,$c8,$32,$3c,$4f,$04,$03,$28   ; byte
    .byte $31,$e4,$b2,$8c,$77,$13,$c7,$b1   ; byte
    .byte $3c,$63,$03,$05,$c1,$00,$c5,$13   ; byte
    .byte $1e,$c2,$f0,$cc,$4b,$13,$c5,$32   ; byte
    .byte $57,$05,$c4,$f1,$20,$c4,$cc,$10   ; byte
    .byte $c3,$31,$6c,$43,$11,$c1,$f0,$cc   ; byte
    .byte $0f,$06,$71,$87,$18,$72,$4c,$0f   ; byte
    .byte $13,$80,$70,$4c,$61,$53,$13,$32   ; byte
    .byte $5c,$56,$31,$4c,$57,$13,$71,$a9   ; byte

MIST_BLOCKS_SCREEN_04:
    .byte $c0,$32,$fc,$1f,$00,$30,$53,$30   ; byte
    .byte $c3,$30,$53,$04,$d0,$30,$bc,$13   ; byte
    .byte $05,$cb,$f0,$55,$33,$24,$03,$41   ; byte
    .byte $70,$4c,$4e,$b0,$00,$cc,$73,$01   ; byte
    .byte $32,$5c,$0f,$0b,$30,$c7,$03,$cf   ; byte
    .byte $5c,$c0,$4c,$ca,$c0,$5c,$4f,$28   ; byte
    .byte $c3,$31,$1c,$63,$0c,$73,$0c,$10   ; byte
    .byte $83,$01,$c0,$dc,$9b,$0c,$c4,$71   ; byte
    .byte $8c,$33,$08,$50,$0c,$07,$25,$c2   ; byte
    .byte $f0,$cc,$43,$11,$c6,$32,$6c,$39   ; byte
    .byte $73,$57,$32,$31,$43,$03,$5c,$4b   ; byte
    .byte $24,$ca,$30,$4d,$07,$04,$c1,$b2   ; byte
    .byte $5a,$c0,$47,$25,$c3,$32,$3c,$83   ; byte
    .byte $26,$c3,$30,$e3,$11,$71,$3b,$1e   ; byte
    .byte $72,$5c,$2d,$c8,$32,$4c,$30,$d0   ; byte
    .byte $30,$83,$23,$cf,$72,$0b,$28,$c9   ; byte
    .byte $72,$6c,$9f,$13,$32,$8c,$97,$04   ; byte
    .byte $c3,$9c,$43,$24,$71,$31,$c9,$b2   ; byte
    .byte $3c,$33,$11,$31,$ac,$9b,$11,$c4   ; byte
    .byte $03,$26,$c1,$43,$3f,$0c,$17,$3d   ; byte
    .byte $cf,$f0,$5c,$fc,$30,$50,$c1,$8c   ; byte
    .byte $ff,$06,$70,$5c,$1b,$3f,$c1,$ac   ; byte
    .byte $18,$00                           ; byte

MIST_BLOCKS_SCREEN_05:
    .byte $c0,$f0,$bc,$1f,$05,$31,$1c,$23   ; byte
    .byte $10,$c4,$70,$4c,$17,$04,$d0,$30   ; byte
    .byte $4c,$2c,$cb,$f0,$57,$03,$c1,$10   ; byte
    .byte $c3,$32,$4c,$0f,$0b,$0c,$4d,$c4   ; byte
    .byte $f0,$37,$26,$c4,$72,$4c,$81,$c9   ; byte
    .byte $32,$55,$30,$c7,$03,$c4,$72,$7c   ; byte
    .byte $4f,$25,$b2,$73,$25,$c2,$cc,$a2   ; byte
    .byte $c3,$31,$1c,$63,$0c,$c4,$31,$2c   ; byte
    .byte $97,$26,$c3,$87,$13,$c3,$07,$0c   ; byte
    .byte $c4,$71,$8c,$33,$08,$c3,$9c,$4f   ; byte
    .byte $20,$70,$8c,$4a,$c9,$b2,$77,$04   ; byte
    .byte $c6,$30,$40,$0d,$00,$c1,$31,$07   ; byte
    .byte $40,$c1,$17,$41,$c5,$5c,$98,$c4   ; byte
    .byte $71,$dc,$07,$25,$c9,$f1,$2c,$63   ; byte
    .byte $04,$c4,$72,$3c,$4f,$0c,$32,$6c   ; byte
    .byte $3b,$11,$c9,$32,$5c,$9b,$27,$b2   ; byte
    .byte $8c,$96,$c7,$72,$5c,$30,$30,$83   ; byte
    .byte $23,$c9,$72,$6c,$44,$c4,$f0,$b0   ; byte
    .byte $c9,$41,$c3,$9c,$43,$24,$c9,$dc   ; byte
    .byte $1f,$12,$72,$5c,$a0,$0c,$9b,$11   ; byte
    .byte $c4,$03,$26,$c1,$47,$3f,$c9,$70   ; byte
    .byte $50,$cf,$f0,$53,$08,$30,$50,$c1   ; byte
    .byte $87,$25,$c0,$f2,$fc,$1b,$3f,$c1   ; byte
    .byte $ac,$13,$23,$c9,$32,$5c,$18       ; byte

MIST_BLOCKS_SCREEN_06:
    .byte $c5,$30,$33,$25,$c9,$b2,$7c,$0f   ; byte
    .byte $25,$30,$b3,$28,$c3,$32,$4c,$13   ; byte
    .byte $25,$c4,$f0,$bc,$07,$26,$c4,$4c   ; byte
    .byte $a3,$26,$c4,$b2,$8c,$97,$26,$c9   ; byte
    .byte $32,$82,$53,$0c,$c8,$f2,$4c,$9b   ; byte
    .byte $27,$ca,$32,$5c,$9b,$27,$ca,$30   ; byte
    .byte $34,$c4,$ac,$a0,$c9,$70,$cc,$77   ; byte
    .byte $1e,$c9,$b2,$7c,$a7,$24,$c9,$70   ; byte
    .byte $7b,$05,$72,$5d,$00,$c1,$34,$0c   ; byte
    .byte $7b,$14,$d0,$30,$4d,$03,$09,$c1   ; byte
    .byte $1c,$13,$06,$c9,$f4,$0b,$09,$0c   ; byte
    .byte $53,$4f,$c5,$f0,$9d,$3f,$4a,$c5   ; byte
    .byte $dc,$91,$c3,$31,$2d,$28,$34,$2d   ; byte
    .byte $14,$34,$2d,$28,$1c,$95,$c8,$f2   ; byte
    .byte $4d,$27,$4d,$d2,$20,$0d,$27,$4d   ; byte
    .byte $d2,$1c,$14,$c3,$32,$67,$42,$74   ; byte
    .byte $93,$46,$d2,$07,$42,$73,$0c,$1b   ; byte
    .byte $18,$c7,$72,$87,$46,$53,$47,$47   ; byte
    .byte $46,$55,$72,$57,$47,$70,$50,$07   ; byte
    .byte $47,$5c,$f7,$05,$00,$0c,$19,$c1   ; byte
    .byte $9c,$1b,$05,$00,$0c,$19,$c1,$90   ; byte
    .byte $00,$c1,$9c,$19                   ; byte

MIST_BLOCKS_SCREEN_07:
    .byte $c1,$b0,$3c,$33,$05,$c6,$32,$4c   ; byte
    .byte $9b,$11,$c9,$f2,$8c,$98,$c4,$71   ; byte
    .byte $2c,$4f,$20,$c1,$0c,$17,$41,$c4   ; byte
    .byte $f2,$5c,$83,$1d,$c9,$2b,$11,$1c   ; byte
    .byte $93,$28,$70,$3b,$03,$c9,$b2,$7c   ; byte
    .byte $a3,$26,$c9,$f1,$2b,$20,$32,$4c   ; byte
    .byte $a0,$c1,$71,$4c,$2f,$2f,$c8,$23   ; byte
    .byte $0e,$31,$1c,$4f,$28,$72,$8c,$1f   ; byte
    .byte $27,$c1,$b0,$3c,$97,$04,$b1,$1c   ; byte
    .byte $3b,$08,$c4,$32,$4c,$a0,$c9,$70   ; byte
    .byte $45,$c1,$72,$53,$0c,$b4,$17,$04   ; byte
    .byte $d0,$30,$4d,$03,$25,$c0,$c7,$41   ; byte
    .byte $c1,$93,$20,$c3,$b1,$1c,$93,$25   ; byte
    .byte $c0,$70,$bc,$9b,$27,$85,$c1,$72   ; byte
    .byte $83,$13,$c4,$b2,$3c,$97,$03,$32   ; byte
    .byte $5c,$83,$24,$71,$47,$13,$c1,$b2   ; byte
    .byte $5c,$9b,$12,$ca,$0c,$0f,$01,$c5   ; byte
    .byte $1c,$2f,$25,$c5,$0c,$a1,$c1,$72   ; byte
    .byte $6c,$48,$70,$3c,$07,$30,$b0,$3c   ; byte
    .byte $9f,$14,$b2,$8c,$2f,$20,$c1,$b0   ; byte
    .byte $74,$c1,$0d,$03,$04,$d0,$30,$4d   ; byte
    .byte $03,$28,$c9,$b1,$2c,$9d,$c1,$1c   ; byte
    .byte $10,$c4,$f2,$6c,$9f,$13,$32,$8c   ; byte
    .byte $33,$04,$00,$c0,$dc,$48,$0c,$4f   ; byte
    .byte $0c,$c4,$8c,$83,$24,$c9,$b2,$8c   ; byte
    .byte $9b,$0c                           ; byte

MIST_BLOCKS_SCREEN_08:
    .byte $c4,$72,$4c,$2f,$18,$c3,$32,$8c   ; byte
    .byte $53,$32,$c5,$0c,$33,$12,$c3,$8c   ; byte
    .byte $4b,$0c,$5c,$30,$c4,$54,$30,$b7   ; byte
    .byte $0e,$04,$c9,$30,$b7,$11,$c3,$b1   ; byte
    .byte $29,$c2,$f0,$cc,$38,$31,$0c,$8f   ; byte
    .byte $24,$c9,$70,$cc,$4f,$0e,$c2,$2b   ; byte
    .byte $0b,$c3,$31,$1c,$49,$c4,$0c,$4b   ; byte
    .byte $13,$72,$6b,$11,$b2,$3c,$93,$28   ; byte
    .byte $c4,$6c,$38,$1c,$9b,$25,$c9,$b0   ; byte
    .byte $ec,$a3,$20,$c8,$f2,$4c,$94,$c3   ; byte
    .byte $30,$e3,$11,$0c,$4b,$27,$c3,$32   ; byte
    .byte $4c,$9b,$27,$c9,$40,$5c,$4b,$28   ; byte
    .byte $4c,$8f,$24,$c9,$72,$6c,$3b,$11   ; byte
    .byte $c4,$b1,$37,$0c,$c3,$8c,$93,$0c   ; byte
    .byte $c9,$f2,$3c,$9f,$28,$c3,$30,$e1   ; byte
    .byte $5c,$33,$0e,$32,$4c,$33,$28,$c9   ; byte
    .byte $b1,$0c,$47,$12,$5c,$93,$26,$c3   ; byte
    .byte $b1,$1c,$38,$c9,$32,$57,$26,$c4   ; byte
    .byte $30,$87,$13,$c8,$f2,$4c,$9b,$0e   ; byte
    .byte $32,$e3,$12,$c4,$f0,$cc,$3b,$2e   ; byte
    .byte $c2,$2b,$2e,$c1,$43,$2f,$c1,$40   ; byte
    .byte $03,$2f,$c1,$40,$cb,$c0,$00,$00   ; byte
    .byte $00                               ; byte

MIST_BLOCKS_SCREEN_09:
    .byte $c4,$72,$4c,$2f,$18,$c3,$32,$8c   ; byte
    .byte $53,$32,$c5,$0c,$a3,$20,$c1,$f0   ; byte
    .byte $ec,$13,$0c,$5c,$30,$c4,$54,$30   ; byte
    .byte $bc,$94,$9c,$4b,$05,$c9,$30,$bc   ; byte
    .byte $6b,$11,$c8,$dc,$0d,$c2,$f0,$cc   ; byte
    .byte $9f,$28,$ac,$8f,$06,$c9,$70,$cc   ; byte
    .byte $47,$0e,$c9,$30,$33,$07,$c3,$31   ; byte
    .byte $1c,$4a,$5c,$49,$70,$40,$51,$c1   ; byte
    .byte $03,$1d,$4c,$9b,$05,$c9,$b0,$ec   ; byte
    .byte $a3,$24,$c0,$cc,$11,$c3,$30,$ec   ; byte
    .byte $45,$45,$c3,$32,$4c,$9b,$27,$c9   ; byte
    .byte $45,$5c,$4b,$24,$72,$8c,$1f,$06   ; byte
    .byte $c9,$72,$6c,$3b,$11,$c4,$b1,$39   ; byte
    .byte $c3,$b1,$1c,$93,$25,$ca,$b2,$b5   ; byte
    .byte $c3,$30,$e1,$5c,$33,$0e,$32,$4c   ; byte
    .byte $33,$28,$ce,$b3,$bc,$2f,$05,$5c   ; byte
    .byte $93,$26,$c3,$b1,$1c,$38,$c9,$32   ; byte
    .byte $57,$26,$ca,$b2,$bc,$97,$80,$c8   ; byte
    .byte $f2,$4c,$9b,$0e,$32,$e3,$12,$c4   ; byte
    .byte $f0,$cc,$3b,$2e,$ce,$b3,$b5,$c1   ; byte
    .byte $43,$2f,$c1,$40,$03,$2f,$c1,$40   ; byte
    .byte $cb,$c0,$00,$00,$00               ; byte

MIST_BLOCKS_SCREEN_12:
    .byte $c1,$32,$4c,$2f,$18,$c3,$30,$4c   ; byte
    .byte $14,$c1,$32,$5c,$33,$12,$c3,$30   ; byte
    .byte $ec,$33,$04,$c1,$5c,$30,$c9,$30   ; byte
    .byte $5c,$a3,$25,$a3,$05,$30,$4c,$4a   ; byte
    .byte $70,$bc,$13,$05,$30,$4c,$97,$14   ; byte
    .byte $2c,$97,$27,$ca,$29,$70,$cc,$bf   ; byte
    .byte $23,$c9,$32,$5c,$53,$30,$44,$c0   ; byte
    .byte $69,$c1,$34,$1c,$13,$25,$c5,$33   ; byte
    .byte $0c,$c8,$0b,$32,$c0,$f2,$5c,$1b   ; byte
    .byte $25,$70,$3c,$07,$14,$cc,$30,$00   ; byte
    .byte $17,$03,$c9,$70,$bc,$17,$04,$c5   ; byte
    .byte $30,$7c,$53,$07,$cc,$80,$31,$4c   ; byte
    .byte $97,$28,$c3,$0c,$8e,$c0,$5c,$15   ; byte
    .byte $c0,$f1,$43,$01,$c0,$f2,$5c,$a3   ; byte
    .byte $0c,$c4,$72,$3c,$9d,$70,$3c,$19   ; byte
    .byte $c9,$71,$3c,$94,$0c,$33,$11,$31   ; byte
    .byte $3c,$45,$e0,$25,$c9,$b1,$1c,$9c   ; byte
    .byte $c9,$32,$67,$27,$c4,$f0,$cc,$49   ; byte
    .byte $55,$c3,$b2,$ec,$93,$25,$32,$83   ; byte
    .byte $13,$1c,$93,$04,$81,$c1,$4c,$07   ; byte
    .byte $04,$70,$4c,$4f,$25,$c1,$32,$4c   ; byte
    .byte $a1,$cb,$c1,$c1,$85,$5c,$94,$72   ; byte
    .byte $55                               ; byte

MIST_BLOCKS_SCREEN_13:
    .byte $c4,$b2,$4c,$2f,$04,$c3,$30,$5c   ; byte
    .byte $10,$0c,$14,$30,$4c,$30,$70,$4c   ; byte
    .byte $17,$0c,$b1,$2c,$19,$c4,$70,$8c   ; byte
    .byte $3b,$13,$c2,$72,$6c,$17,$04,$72   ; byte
    .byte $7c,$9b,$08,$c3,$97,$0e,$c8,$30   ; byte
    .byte $e3,$23,$c3,$32,$4c,$0d,$70,$5c   ; byte
    .byte $38,$c4,$b2,$5c,$13,$24,$c9,$6c   ; byte
    .byte $8f,$24,$34,$f7,$06,$8c,$48,$c9   ; byte
    .byte $31,$43,$32,$c5,$2c,$93,$4f,$d3   ; byte
    .byte $74,$57,$05,$32,$33,$25,$cc,$30   ; byte
    .byte $00,$5c,$e7,$49,$74,$87,$25,$c8   ; byte
    .byte $0c,$93,$32,$00,$73,$9c,$31,$d0   ; byte
    .byte $97,$05,$c1,$32,$4c,$1f,$14,$03   ; byte
    .byte $39,$32,$55,$d1,$97,$06,$a7,$04   ; byte
    .byte $c1,$40,$30,$4c,$45,$d1,$d5,$c1   ; byte
    .byte $33,$04,$00,$0b,$05,$03,$04,$c1   ; byte
    .byte $50,$c5,$00,$10,$07,$1d,$71,$40   ; byte
    .byte $30,$37,$03,$70,$3c,$50,$70,$51   ; byte
    .byte $cb,$f0,$30,$0c,$05,$c9,$5c,$97   ; byte
    .byte $41,$50                           ; byte

MIST_BLOCKS_SCREEN_14:
    .byte $c4,$b0,$50,$c0,$70,$5c,$13,$0c   ; byte
    .byte $30,$4c,$14,$0c,$13,$05,$c1,$1c   ; byte
    .byte $07,$0b,$30,$ca,$30,$5c,$98,$c9   ; byte
    .byte $f2,$6c,$3a,$b0,$1c,$2c,$c3,$31   ; byte
    .byte $2c,$22,$32,$6c,$3b,$23,$c3,$32   ; byte
    .byte $4c,$0d,$c1,$9c,$30,$c2,$30,$ec   ; byte
    .byte $77,$24,$c9,$72,$0c,$8f,$24,$32   ; byte
    .byte $77,$20,$70,$cc,$3b,$08,$c3,$b1   ; byte
    .byte $1c,$93,$25,$c5,$2c,$a3,$0b,$c3   ; byte
    .byte $1c,$a1,$c1,$71,$1c,$22,$c4,$71   ; byte
    .byte $3c,$97,$14,$1c,$e7,$0c,$c3,$b1   ; byte
    .byte $1c,$4d,$c1,$b1,$8b,$1c,$5c,$a3   ; byte
    .byte $0c,$32,$7c,$33,$0e,$31,$dc,$95   ; byte
    .byte $71,$37,$12,$ca,$0c,$9b,$11,$01   ; byte
    .byte $c4,$1c,$0d,$c1,$72,$5c,$a0,$32   ; byte
    .byte $6c,$44,$c3,$b1,$2c,$3b,$10,$c9   ; byte
    .byte $30,$bc,$9b,$11,$c1,$b3,$09,$c6   ; byte
    .byte $31,$13,$0e,$c2,$2c,$8f,$13,$c9   ; byte
    .byte $5c,$31,$70,$7c,$a3,$11,$c4,$9c   ; byte
    .byte $10,$03,$25,$c2,$f0,$c3,$08,$c1   ; byte
    .byte $5c,$10,$0c,$a3,$25,$c5,$32,$5c   ; byte
    .byte $a2,$00,$1c,$97,$03,$32,$5c,$53   ; byte
    .byte $03,$b0,$38,$ca,$32,$5c,$a1       ; byte

MIST_BLOCKS_SCREEN_15:
    .byte $c4,$b0,$5c,$1f,$14,$c9,$70,$4c   ; byte
    .byte $17,$04,$0c,$17,$11,$32,$4c,$13   ; byte
    .byte $05,$30,$47,$30,$b0,$cc,$69,$31   ; byte
    .byte $8c,$98,$c9,$f2,$6b,$06,$33,$07   ; byte
    .byte $01,$c9,$5c,$43,$11,$c6,$32,$6c   ; byte
    .byte $3b,$23,$c3,$32,$4c,$0d,$31,$4c   ; byte
    .byte $07,$03,$72,$8c,$47,$24,$c9,$72   ; byte
    .byte $0c,$8f,$24,$32,$5c,$9b,$05,$cb   ; byte
    .byte $f1,$3c,$0f,$25,$ca,$31,$eb,$25   ; byte
    .byte $c5,$2c,$a3,$0b,$c9,$47,$20,$c2   ; byte
    .byte $f0,$cc,$97,$28,$c7,$8c,$97,$14   ; byte
    .byte $0c,$e7,$25,$c9,$b2,$7c,$4f,$05   ; byte
    .byte $c4,$71,$8c,$13,$1d,$70,$4c,$53   ; byte
    .byte $04,$4c,$13,$26,$c3,$b2,$4c,$1f   ; byte
    .byte $06,$71,$2c,$8f,$24,$71,$4c,$2c   ; byte
    .byte $c4,$cc,$9a,$05,$72,$4c,$a0,$32   ; byte
    .byte $6c,$60,$c4,$4c,$63,$1d,$ca,$30   ; byte
    .byte $bc,$95,$71,$8c,$9d,$c9,$b1,$13   ; byte
    .byte $0e,$c4,$30,$eb,$13,$c9,$5c,$31   ; byte
    .byte $c3,$0c,$10,$00,$30,$8b,$12,$b0   ; byte
    .byte $c3,$04,$0c,$0c,$0c,$a3,$25,$40   ; byte
    .byte $00,$30,$3c,$95,$32,$5c,$53,$03   ; byte
    .byte $b0,$3c,$94,$ca,$32,$5c,$a1       ; byte

MIST_BLOCKS_SCREEN_16:
    .byte $c1,$b0,$7c,$10,$c4,$40,$32,$7c   ; byte
    .byte $9b,$27,$ca,$31,$3c,$38,$c1,$57   ; byte
    .byte $11,$c4,$9c,$93,$20,$c9,$32,$5c   ; byte
    .byte $a3,$11,$b2,$64,$c1,$9c,$3b,$24   ; byte
    .byte $c9,$71,$3c,$9b,$11,$72,$8c,$9b   ; byte
    .byte $23,$c9,$54,$70,$ec,$93,$25,$32   ; byte
    .byte $83,$24,$c9,$72,$6c,$8f,$24,$c9   ; byte
    .byte $b0,$e0,$cb,$f2,$4c,$04,$c0,$f1   ; byte
    .byte $ec,$10,$0c,$4b,$13,$c1,$00,$c1   ; byte
    .byte $b0,$1c,$1d,$c5,$2c,$97,$0c,$c3   ; byte
    .byte $b1,$1c,$8f,$25,$c9,$b2,$7c,$4f   ; byte
    .byte $11,$c1,$47,$04,$0c,$4f,$0e,$c4   ; byte
    .byte $72,$3c,$93,$26,$c3,$b1,$10,$17   ; byte
    .byte $24,$c2,$f2,$64,$c9,$0c,$9b,$11   ; byte
    .byte $00,$30,$4c,$a0,$c6,$b1,$13,$12   ; byte
    .byte $c9,$f1,$3c,$61,$31,$34,$cb,$f4   ; byte
    .byte $0c,$9f,$0c,$c3,$84,$31,$29,$c9   ; byte
    .byte $32,$8c,$31,$c1,$b0,$4c,$47,$0e   ; byte
    .byte $c2,$08,$71,$33,$24,$c0,$c9,$cb   ; byte
    .byte $c0,$00,$00,$00,$c1,$40,$00,$00   ; byte
    .byte $00                               ; byte

MIST_BLOCKS_SCREEN_17:
    .byte $c4,$43,$24,$c9,$70,$cc,$44,$32   ; byte
    .byte $7c,$9b,$27,$ca,$31,$3d,$07,$04   ; byte
    .byte $4c,$93,$25,$c3,$30,$e4,$00,$b2   ; byte
    .byte $6d,$01,$71,$2c,$97,$13,$c3,$b1   ; byte
    .byte $1c,$93,$28,$c9,$32,$87,$0e,$c4   ; byte
    .byte $dc,$4d,$71,$33,$0c,$c4,$72,$4c   ; byte
    .byte $a2,$c9,$72,$6c,$8e,$c9,$b0,$e7   ; byte
    .byte $05,$b4,$0c,$13,$41,$c1,$34,$1c   ; byte
    .byte $13,$03,$cc,$30,$4c,$0f,$13,$c1   ; byte
    .byte $31,$25,$c4,$71,$8c,$4b,$08,$c4   ; byte
    .byte $b1,$3c,$0f,$01,$4c,$53,$0c,$c3   ; byte
    .byte $b1,$13,$04,$57,$11,$72,$87,$14   ; byte
    .byte $47,$26,$c2,$31,$0c,$13,$05,$71   ; byte
    .byte $29,$c2,$2c,$4f,$25,$8c,$9b,$08   ; byte
    .byte $c4,$31,$1c,$14,$5c,$a1,$71,$0c   ; byte
    .byte $47,$12,$c9,$8c,$23,$10,$c4,$72   ; byte
    .byte $81,$c4,$b1,$33,$0c,$a8,$c4,$70   ; byte
    .byte $8c,$43,$11,$ca,$0c,$9b,$46,$44   ; byte
    .byte $c4,$a3,$08,$31,$0c,$8f,$24,$72   ; byte
    .byte $6c,$3b,$47,$cb,$c0,$00,$00,$00   ; byte
    .byte $c1,$40,$00,$00,$00               ; byte

MIST_BLOCKS_SCREEN_18:
    .byte $ca,$30,$cc,$17,$07,$c1,$4c,$47   ; byte
    .byte $40,$c4,$70,$4c,$9b,$27,$c1,$31   ; byte
    .byte $3c,$97,$04,$c3,$31,$1c,$19,$c1   ; byte
    .byte $b2,$04,$00,$b2,$6c,$93,$01,$ca   ; byte
    .byte $30,$51,$c1,$72,$83,$26,$c3,$87   ; byte
    .byte $0e,$c9,$1c,$4d,$c1,$70,$4c,$a1   ; byte
    .byte $c0,$70,$37,$24,$32,$6c,$8f,$24   ; byte
    .byte $c9,$b1,$d7,$25,$c1,$b2,$8c,$95   ; byte
    .byte $cc,$b1,$43,$25,$31,$3c,$0f,$13   ; byte
    .byte $31,$27,$28,$c1,$72,$5c,$05,$47   ; byte
    .byte $01,$4c,$13,$0c,$31,$1c,$77,$01   ; byte
    .byte $c1,$25,$70,$17,$25,$07,$40,$c6   ; byte
    .byte $b1,$0c,$10,$ca,$2c,$95,$c5,$32   ; byte
    .byte $5c,$4d,$ca,$1c,$98,$c4,$31,$1c   ; byte
    .byte $93,$28,$c4,$dc,$a3,$01,$c9,$72   ; byte
    .byte $8c,$33,$12,$c9,$8c,$23,$10,$c4   ; byte
    .byte $72,$4c,$a0,$30,$6c,$4f,$0c,$c4   ; byte
    .byte $f0,$cc,$3b,$10,$c4,$70,$8c,$40   ; byte
    .byte $c9,$32,$80,$1c,$16,$c4,$b1,$1c   ; byte
    .byte $14,$c2,$31,$0c,$8f,$24,$ca,$32   ; byte
    .byte $54,$32,$f0,$0c,$18,$cb,$c0,$00   ; byte
    .byte $4c,$9b,$24,$c1,$30,$50,$00,$00   ; byte

MIST_BLOCKS_SCREEN_19:
    .byte $c0,$4c,$a0,$c1,$30,$53,$04,$30   ; byte
    .byte $50,$c1,$00,$4c,$0d,$c1,$ac,$94   ; byte
    .byte $c0,$70,$33,$0c,$c9,$f2,$6c,$91   ; byte
    .byte $71,$4c,$13,$05,$b2,$53,$03,$32   ; byte
    .byte $5c,$9b,$0e,$1c,$4f,$01,$c5,$33   ; byte
    .byte $03,$01,$c9,$41,$32,$63,$10,$71   ; byte
    .byte $d7,$25,$5c,$50,$9c,$0e,$30,$cc   ; byte
    .byte $38,$31,$2b,$03,$4c,$04,$c9,$71   ; byte
    .byte $3c,$10,$c3,$30,$ec,$11,$c4,$71   ; byte
    .byte $d3,$04,$00,$ca,$30,$4c,$47,$12   ; byte
    .byte $5c,$23,$11,$c7,$70,$4c,$0c,$32   ; byte
    .byte $5c,$0c,$32,$5c,$4e,$b0,$8c,$41   ; byte
    .byte $c4,$cc,$93,$28,$c4,$dc,$a3,$25   ; byte
    .byte $31,$33,$12,$c3,$97,$12,$72,$4c   ; byte
    .byte $a0,$23,$0c,$c9,$8c,$33,$0e,$c2   ; byte
    .byte $31,$0c,$8d,$72,$8c,$95,$1c,$9b   ; byte
    .byte $11,$c4,$b0,$cc,$3b,$08,$32,$3c   ; byte
    .byte $93,$28,$c9,$b2,$78,$cb,$c0,$00   ; byte
    .byte $00,$00,$c1,$50,$0c,$14,$00,$00   ; byte

MIST_BLOCKS_SCREEN_20:
    .byte $c1,$b0,$1c,$97,$28,$c9,$b2,$7c   ; byte
    .byte $0f,$14,$0c,$0f,$28,$c1,$f2,$8c   ; byte
    .byte $0f,$06,$c1,$1c,$0f,$0c,$c4,$71   ; byte
    .byte $2c,$4f,$25,$70,$1c,$9b,$0c,$c9   ; byte
    .byte $f2,$6c,$93,$05,$c0,$71,$4c,$4d   ; byte
    .byte $c3,$b1,$0c,$46,$c0,$f2,$57,$0e   ; byte
    .byte $1c,$4f,$01,$c5,$32,$5c,$a3,$26   ; byte
    .byte $c2,$04,$b2,$63,$10,$c1,$27,$25   ; byte
    .byte $5c,$4f,$04,$1c,$3b,$12,$70,$cc   ; byte
    .byte $38,$31,$2c,$77,$03,$c1,$0c,$a3   ; byte
    .byte $11,$4a,$c1,$01,$c4,$71,$d3,$25   ; byte
    .byte $82,$95,$c9,$11,$c7,$70,$cc,$a0   ; byte
    .byte $72,$5c,$a3,$26,$c3,$b0,$8c,$3b   ; byte
    .byte $24,$ca,$32,$6c,$3b,$11,$c4,$cc   ; byte
    .byte $95,$c4,$d7,$20,$c4,$6c,$8f,$28   ; byte
    .byte $c9,$b1,$2c,$43,$12,$72,$5c,$a0   ; byte
    .byte $22,$c3,$00,$c4,$b1,$0c,$8d,$72   ; byte
    .byte $89,$1c,$9b,$11,$87,$12,$c2,$32   ; byte
    .byte $3c,$93,$28,$c9,$b2,$78,$cb,$c0   ; byte
    .byte $00,$00,$00,$c1,$50,$0c,$14,$00   ; byte
    .byte $00                               ; byte

MIST_BLOCKS_SCREEN_21:
    .byte $c0,$f0,$50,$c9,$b0,$50,$30,$4c   ; byte
    .byte $0f,$04,$c1,$4c,$0c,$c1,$70,$1c   ; byte
    .byte $97,$0c,$c1,$31,$2c,$4f,$25,$ca   ; byte
    .byte $30,$1c,$9b,$06,$c4,$8b,$04,$c0   ; byte
    .byte $72,$5c,$4d,$c1,$70,$ec,$46,$70   ; byte
    .byte $5c,$13,$05,$71,$dc,$4e,$1c,$a3   ; byte
    .byte $26,$c4,$43,$24,$c9,$72,$6c,$1b   ; byte
    .byte $1c,$c4,$70,$bc,$33,$25,$2c,$4f   ; byte
    .byte $11,$c1,$5c,$93,$25,$32,$8c,$17   ; byte
    .byte $1d,$c7,$b0,$cc,$77,$03,$43,$28   ; byte
    .byte $72,$4c,$94,$0c,$9b,$27,$ca,$15   ; byte
    .byte $c0,$5c,$a3,$26,$81,$c2,$f0,$cc   ; byte
    .byte $17,$0c,$b0,$3c,$a0,$95,$32,$7c   ; byte
    .byte $4f,$03,$c3,$30,$e3,$11,$c4,$cc   ; byte
    .byte $95,$c4,$d7,$20,$c4,$47,$28,$c9   ; byte
    .byte $9c,$23,$12,$72,$5c,$a3,$01,$a2   ; byte
    .byte $45,$c5,$71,$1b,$27,$72,$8c,$79   ; byte
    .byte $5c,$9b,$27,$c4,$f2,$4c,$a0,$c3   ; byte
    .byte $30,$eb,$24,$c3,$31,$d5,$cb,$c0   ; byte
    .byte $00,$00,$00,$c1,$50,$0c,$14,$00   ; byte
    .byte $00                               ; byte

MIST_BLOCKS_SCREEN_22:
    .byte $c1,$70,$7c,$9f,$03,$03,$25,$c9   ; byte
    .byte $b2,$7c,$93,$03,$0c,$10,$71,$2c   ; byte
    .byte $93,$28,$0c,$97,$13,$32,$4c,$0f   ; byte
    .byte $25,$c2,$70,$cc,$91,$71,$1c,$4f   ; byte
    .byte $0c,$32,$6c,$4c,$c9,$4c,$27,$26   ; byte
    .byte $d3,$31,$dc,$9b,$05,$13,$26,$c3   ; byte
    .byte $8c,$47,$24,$72,$6c,$31,$c3,$9c   ; byte
    .byte $1f,$06,$c1,$0c,$4f,$04,$0c,$93   ; byte
    .byte $07,$72,$8c,$17,$0e,$c1,$07,$05   ; byte
    .byte $c9,$43,$26,$c3,$b1,$1c,$95,$c1   ; byte
    .byte $4c,$47,$24,$c9,$47,$06,$4c,$33   ; byte
    .byte $0e,$32,$4c,$a3,$13,$70,$cc,$93   ; byte
    .byte $45,$34,$a5,$c5,$32,$8c,$47,$08   ; byte
    .byte $72,$7c,$4f,$12,$72,$4d,$17,$4d   ; byte
    .byte $34,$87,$05,$72,$5c,$81,$c4,$47   ; byte
    .byte $28,$70,$1d,$27,$42,$1c,$a3,$01   ; byte
    .byte $70,$b7,$16,$c3,$b2,$4c,$14,$c0   ; byte
    .byte $47,$46,$5c,$97,$05,$57,$11,$c9   ; byte
    .byte $30,$53,$01,$30,$37,$47,$5c,$4f   ; byte
    .byte $06,$cb,$c0,$00,$00,$00,$c1,$50   ; byte
    .byte $0c,$14,$00,$00                   ; byte

MIST_BLOCKS_SCREEN_23:
    .byte $c0,$f2,$5d,$07,$30,$c0,$72,$5c   ; byte
    .byte $9b,$04,$0c,$9f,$0c,$31,$3c,$30   ; byte
    .byte $c9,$72,$6c,$47,$40,$c1,$34,$1c   ; byte
    .byte $13,$12,$c4,$5d,$07,$04,$d0,$5c   ; byte
    .byte $9b,$04,$07,$26,$c3,$b0,$8c,$3b   ; byte
    .byte $08,$c9,$0c,$a3,$13,$c4,$70,$43   ; byte
    .byte $18,$c1,$b2,$67,$04,$43,$24,$c2   ; byte
    .byte $70,$3c,$07,$25,$c9,$b1,$ac,$63   ; byte
    .byte $24,$c1,$30,$54,$c4,$32,$43,$09   ; byte
    .byte $d3,$33,$3c,$e5,$c3,$31,$dc,$93   ; byte
    .byte $01,$cf,$e7,$10,$c9,$34,$5d,$37   ; byte
    .byte $49,$d2,$30,$9c,$05,$c6,$31,$1c   ; byte
    .byte $9f,$28,$c1,$30,$6c,$3b,$24,$d3   ; byte
    .byte $d1,$4c,$c3,$39,$c9,$92,$c8,$dc   ; byte
    .byte $93,$25,$d2,$74,$8d,$35,$47,$25   ; byte
    .byte $71,$2c,$22,$c9,$30,$5c,$13,$45   ; byte
    .byte $5d,$29,$47,$39,$70,$cc,$bb,$20   ; byte
    .byte $c9,$4c,$1b,$4c,$75,$0d,$35,$d4   ; byte
    .byte $1c,$03,$04,$d0,$03,$04,$c0,$70   ; byte
    .byte $cc,$17,$49,$34,$8d,$19,$d2,$05   ; byte
    .byte $cb,$b1,$2c,$4d,$c3,$30,$ec,$11   ; byte
    .byte $35,$0d,$1d,$d4,$1c,$13,$24,$ca   ; byte
    .byte $32,$50,$c3,$8c,$16,$c1,$40,$30   ; byte
    .byte $4c,$bf,$28,$c0,$c4               ; byte

MIST_BLOCKS_SCREEN_24:
    .byte $d0,$32,$5c,$47,$04,$d0,$30,$4c   ; byte
    .byte $9b,$04,$31,$1c,$13,$40,$c3,$31   ; byte
    .byte $3c,$13,$0c,$c1,$32,$6c,$13,$40   ; byte
    .byte $c4,$4b,$12,$c4,$68,$c1,$0c,$9b   ; byte
    .byte $11,$2c,$47,$26,$c3,$b0,$8c,$3b   ; byte
    .byte $08,$c9,$0c,$a3,$13,$83,$18,$c8   ; byte
    .byte $32,$3c,$23,$0e,$31,$1c,$90,$c5   ; byte
    .byte $30,$3c,$07,$25,$c9,$b1,$ac,$63   ; byte
    .byte $24,$ca,$32,$6c,$3b,$11,$c9,$32   ; byte
    .byte $8c,$94,$73,$3c,$e5,$c3,$31,$dc   ; byte
    .byte $93,$01,$57,$24,$ca,$32,$5c,$50   ; byte
    .byte $0c,$05,$c6,$31,$1c,$9f,$28,$c9   ; byte
    .byte $b0,$ec,$4b,$13,$c5,$00,$0c,$c3   ; byte
    .byte $0c,$c9,$92,$c8,$f1,$13,$27,$ca   ; byte
    .byte $10,$0c,$33,$0e,$34,$0c,$10,$c9   ; byte
    .byte $32,$8c,$82,$72,$54,$30,$cc,$38   ; byte
    .byte $c4,$70,$cc,$15,$32,$58,$c9,$e0   ; byte
    .byte $c3,$30,$e3,$08,$c1,$2c,$12,$70   ; byte
    .byte $c4,$31,$3d,$00,$30,$4c,$20,$71   ; byte
    .byte $2c,$4e,$d0,$0c,$13,$40,$0c,$a3   ; byte
    .byte $0c,$c3,$8d,$03,$04,$d0,$2c,$94   ; byte
    .byte $c3,$b2,$80,$0c,$33,$11,$03,$28   ; byte
    .byte $c0,$c4                           ; byte

MIST_BLOCKS_SCREEN_25:
    .byte $c3,$b0,$4c,$47,$0e,$c1,$43,$04   ; byte
    .byte $c3,$b1,$1c,$17,$40,$c1,$30,$5c   ; byte
    .byte $13,$05,$70,$89,$c4,$b2,$4c,$97   ; byte
    .byte $28,$c8,$30,$48,$c3,$b0,$8c,$3a   ; byte
    .byte $c4,$69,$c9,$31,$34,$8c,$83,$13   ; byte
    .byte $8c,$91,$ca,$31,$6b,$27,$c9,$72   ; byte
    .byte $81,$c5,$30,$3b,$25,$c9,$b2,$4c   ; byte
    .byte $10,$c9,$72,$0c,$45,$70,$33,$01   ; byte
    .byte $73,$3c,$e5,$ca,$32,$59,$72,$67   ; byte
    .byte $28,$70,$1c,$10,$d0,$0c,$11,$c6   ; byte
    .byte $30,$7c,$9d,$c3,$30,$ec,$4b,$13   ; byte
    .byte $c5,$00,$0c,$2f,$0c,$d0,$1c,$10   ; byte
    .byte $0d,$03,$04,$90,$0c,$0f,$28,$c3   ; byte
    .byte $9c,$39,$c9,$32,$8c,$83,$0e,$c4   ; byte
    .byte $ac,$95,$30,$33,$0c,$c4,$70,$c1   ; byte
    .byte $32,$57,$11,$c9,$32,$80,$c4,$f1   ; byte
    .byte $9c,$6b,$11,$c9,$1c,$10,$32,$80   ; byte
    .byte $c9,$5c,$0f,$07,$c3,$8c,$41,$c3   ; byte
    .byte $31,$2c,$3b,$05,$d0,$1c,$0c,$09   ; byte
    .byte $c1,$70,$4d,$03,$05,$d0,$30,$5c   ; byte
    .byte $10,$91,$32,$8c,$31,$c1,$34,$1b   ; byte
    .byte $28,$70,$4b,$25                   ; byte

MIST_BLOCKS_SCREEN_26:
    .byte $d0,$32,$8c,$97,$26,$31,$33,$07   ; byte
    .byte $c4,$f1,$1c,$13,$03,$c1,$30,$e0   ; byte
    .byte $c1,$72,$5b,$27,$c4,$4c,$61,$c9   ; byte
    .byte $72,$0a,$c3,$b0,$87,$04,$c1,$b2   ; byte
    .byte $80,$c9,$b1,$07,$25,$32,$8b,$13   ; byte
    .byte $c4,$70,$4a,$70,$7c,$98,$c3,$8c   ; byte
    .byte $49,$c0,$cb,$25,$c9,$a9,$5c,$10   ; byte
    .byte $03,$26,$c9,$f0,$bc,$33,$12,$ca   ; byte
    .byte $15,$70,$1c,$0f,$28,$c4,$72,$4c   ; byte
    .byte $2f,$20,$c4,$70,$cc,$44,$b0,$c9   ; byte
    .byte $5c,$97,$26,$c8,$f1,$4c,$07,$28   ; byte
    .byte $9c,$3b,$08,$5c,$3b,$04,$72,$5c   ; byte
    .byte $9b,$11,$c4,$d3,$0b,$c4,$f1,$8c   ; byte
    .byte $45,$c7,$14,$c1,$72,$f3,$0e,$ac   ; byte
    .byte $07,$25,$c8,$31,$1c,$3b,$1c,$c9   ; byte
    .byte $11,$c4,$70,$63,$20,$c4,$b1,$ab   ; byte
    .byte $28,$c9,$ac,$8f,$24,$c9,$9c,$3b   ; byte
    .byte $08,$c8,$30,$5c,$bc,$2c,$77,$0c   ; byte
    .byte $c3,$b1,$2c,$9f,$26,$c4,$71,$2c   ; byte
    .byte $22,$ca,$31,$18,$0c,$bd,$c2,$2c   ; byte
    .byte $13,$2f,$c2,$0c,$bf,$05,$c5,$2c   ; byte
    .byte $83,$04,$00,$03,$05,$c1,$0c,$14   ; byte

MIST_BLOCKS_SCREEN_27:
    .byte $d0,$32,$8c,$97,$26,$31,$33,$28   ; byte
    .byte $c4,$f1,$1c,$13,$03,$c1,$31,$1c   ; byte
    .byte $4b,$13,$c1,$72,$5b,$27,$71,$1c   ; byte
    .byte $91,$c9,$72,$0c,$92,$ca,$32,$0c   ; byte
    .byte $3b,$04,$72,$80,$c8,$32,$5c,$33   ; byte
    .byte $25,$0c,$0c,$c9,$70,$4c,$4b,$27   ; byte
    .byte $70,$7c,$98,$c9,$30,$37,$27,$c0   ; byte
    .byte $c3,$28,$c3,$31,$1b,$13,$5c,$10   ; byte
    .byte $03,$12,$c4,$f2,$5c,$9b,$11,$c3   ; byte
    .byte $97,$27,$5c,$0f,$28,$c0,$cc,$83   ; byte
    .byte $11,$31,$2c,$47,$0e,$30,$c9,$5c   ; byte
    .byte $96,$c0,$73,$0c,$96,$2c,$21,$c4   ; byte
    .byte $9c,$9f,$04,$c4,$5c,$a1,$cc,$31   ; byte
    .byte $43,$0b,$c4,$f1,$88,$32,$4c,$0c   ; byte
    .byte $71,$25,$1c,$07,$25,$c0,$f2,$83   ; byte
    .byte $20,$c9,$32,$57,$13,$4c,$4d,$ca   ; byte
    .byte $31,$33,$28,$c4,$e2,$c0,$cc,$33   ; byte
    .byte $18,$4c,$62,$c8,$31,$8c,$77,$0c   ; byte
    .byte $c3,$b1,$87,$26,$70,$cc,$47,$0e   ; byte
    .byte $c1,$70,$4c,$15,$c3,$2c,$17,$04   ; byte
    .byte $30,$5c,$13,$2f,$c3,$30,$8c,$43   ; byte
    .byte $24,$54,$00,$07,$05,$c1,$0c,$17   ; byte
    .byte $04                               ; byte

MIST_BLOCKS_SCREEN_28:
    .byte $ca,$30,$53,$04,$c9,$b1,$3c,$14   ; byte
    .byte $c1,$30,$33,$25,$c1,$03,$13,$72   ; byte
    .byte $5c,$a3,$27,$70,$4c,$a3,$25,$c0   ; byte
    .byte $ec,$97,$04,$32,$5c,$a2,$c1,$44   ; byte
    .byte $c1,$32,$5c,$07,$03,$c0,$5c,$17   ; byte
    .byte $03,$c9,$72,$7c,$4b,$27,$c4,$b2   ; byte
    .byte $8c,$99,$c9,$30,$13,$14,$30,$33   ; byte
    .byte $28,$c3,$31,$1c,$3b,$13,$ca,$00   ; byte
    .byte $31,$40,$c9,$4c,$9b,$12,$c3,$97   ; byte
    .byte $27,$c3,$1c,$0d,$c0,$cc,$97,$28   ; byte
    .byte $30,$cc,$47,$0e,$30,$c9,$ca,$30   ; byte
    .byte $1c,$97,$04,$c6,$71,$ac,$63,$20   ; byte
    .byte $c3,$31,$1c,$21,$c4,$9c,$9f,$24   ; byte
    .byte $c2,$f2,$5c,$a3,$0c,$c4,$70,$e3   ; byte
    .byte $12,$c4,$f1,$88,$32,$4c,$0c,$ca   ; byte
    .byte $30,$c3,$11,$c3,$ac,$8e,$b2,$8c   ; byte
    .byte $9b,$20,$c9,$32,$57,$13,$5c,$8f   ; byte
    .byte $20,$72,$4c,$a3,$20,$ac,$83,$13   ; byte
    .byte $c0,$cc,$33,$18,$5c,$93,$05,$c1   ; byte
    .byte $07,$1a,$c4,$6b,$27,$b0,$cc,$47   ; byte
    .byte $0e,$c0,$f0,$4c,$17,$06,$72,$08   ; byte
    .byte $11,$ca,$13,$04,$30,$63,$04,$c9   ; byte
    .byte $31,$3c,$47,$12,$c4,$f0,$53,$04   ; byte
    .byte $c1,$41                           ; byte

MIST_BLOCKS_SCREEN_29:
    .byte $d0,$30,$5c,$13,$05,$c1,$30,$5c   ; byte
    .byte $33,$04,$c3,$30,$5c,$10,$c1,$4c   ; byte
    .byte $10,$30,$67,$27,$b0,$cc,$13,$25   ; byte
    .byte $a8,$c3,$30,$48,$c0,$e3,$28,$32   ; byte
    .byte $4c,$07,$03,$53,$03,$c9,$72,$7c   ; byte
    .byte $4b,$27,$c4,$b2,$8c,$99,$c9,$70   ; byte
    .byte $33,$28,$c3,$0c,$0f,$28,$c3,$31   ; byte
    .byte $1c,$3b,$13,$ca,$32,$58,$c3,$32   ; byte
    .byte $6c,$9f,$26,$c3,$b2,$7c,$9b,$12   ; byte
    .byte $c3,$97,$27,$c3,$2c,$33,$0e,$31   ; byte
    .byte $13,$08,$31,$1b,$0e,$30,$c9,$ca   ; byte
    .byte $30,$1c,$10,$d0,$30,$4d,$00,$c1   ; byte
    .byte $34,$0c,$13,$40,$c1,$0c,$9f,$24   ; byte
    .byte $c2,$f2,$57,$0c,$c9,$b2,$7c,$a3   ; byte
    .byte $0c,$c4,$b2,$87,$11,$32,$48,$ca   ; byte
    .byte $30,$c3,$11,$c3,$b2,$47,$11,$53   ; byte
    .byte $20,$c9,$32,$5c,$0f,$13,$5c,$8f   ; byte
    .byte $20,$c9,$30,$33,$20,$c3,$ac,$83   ; byte
    .byte $26,$c9,$f0,$3c,$33,$18,$5c,$4b   ; byte
    .byte $0c,$ca,$32,$5c,$99,$c4,$6b,$27   ; byte
    .byte $c4,$f0,$cc,$47,$0e,$c1,$00,$c9   ; byte
    .byte $72,$0c,$13,$27,$b0,$49,$c1,$00   ; byte
    .byte $c1,$b1,$37,$13,$71,$37,$28,$c4   ; byte
    .byte $dc,$30,$70,$5c,$31               ; byte

MIST_BLOCKS_SCREEN_30:
    .byte $c5,$30,$5c,$30,$c1,$30,$5c,$33   ; byte
    .byte $04,$c3,$30,$5c,$10,$c1,$4c,$13   ; byte
    .byte $0e,$c1,$1c,$10,$c1,$70,$c3,$25   ; byte
    .byte $88,$c4,$b0,$e7,$05,$31,$41,$32   ; byte
    .byte $4c,$13,$03,$c3,$0c,$a0,$c7,$72   ; byte
    .byte $77,$27,$c4,$b2,$8c,$4f,$28,$c9   ; byte
    .byte $70,$33,$28,$71,$dc,$2f,$25,$c3   ; byte
    .byte $2c,$3b,$13,$ca,$32,$5b,$26,$c4   ; byte
    .byte $f1,$41,$c8,$32,$7c,$4f,$03,$c4   ; byte
    .byte $f2,$6c,$6b,$27,$c3,$2c,$33,$0e   ; byte
    .byte $c4,$a7,$03,$ab,$0b,$c1,$ec,$77   ; byte
    .byte $13,$ca,$30,$1c,$83,$12,$c7,$72   ; byte
    .byte $44,$b0,$cc,$47,$13,$70,$40,$0d   ; byte
    .byte $03,$04,$d0,$71,$43,$04,$31,$1c   ; byte
    .byte $23,$04,$5c,$4b,$20,$ca,$30,$c3   ; byte
    .byte $11,$c9,$1c,$a3,$0c,$c4,$b0,$e1   ; byte
    .byte $c4,$71,$dc,$a1,$5c,$8f,$24,$ca   ; byte
    .byte $30,$33,$20,$c3,$83,$11,$c9,$f2   ; byte
    .byte $8c,$32,$1c,$4b,$28,$32,$5c,$99   ; byte
    .byte $c4,$43,$27,$c4,$f0,$cc,$93,$25   ; byte
    .byte $c1,$03,$05,$03,$04,$c1,$4c,$10   ; byte
    .byte $30,$5c,$13,$05,$c1,$b1,$3c,$1f   ; byte
    .byte $13,$c9,$71,$3c,$12,$8c,$33,$28   ; byte
    .byte $0c,$32                           ; byte

MIST_BLOCKS_SCREEN_31:
    .byte $cc,$f4,$10,$03,$01,$d0,$4c,$07   ; byte
    .byte $41,$0c,$07,$41,$c1,$2c,$13,$1e   ; byte
    .byte $c9,$72,$6c,$9f,$04,$c9,$b2,$7c   ; byte
    .byte $27,$25,$c9,$8c,$10,$c9,$72,$8c   ; byte
    .byte $27,$0b,$c4,$f1,$10,$c9,$20,$c4   ; byte
    .byte $b2,$4c,$97,$20,$ca,$30,$4d,$e3   ; byte
    .byte $26,$1c,$77,$28,$c3,$31,$6c,$47   ; byte
    .byte $24,$c9,$70,$9c,$53,$09,$c2,$f0   ; byte
    .byte $cc,$4b,$0e,$32,$4c,$27,$25,$c8   ; byte
    .byte $31,$1c,$93,$45,$c5,$f7,$87,$78   ; byte
    .byte $c3,$31,$0c,$3b,$23,$c9,$34,$fd   ; byte
    .byte $e3,$0c,$c9,$b2,$4d,$14,$34,$cd   ; byte
    .byte $13,$25,$c4,$32,$3c,$93,$45,$0d   ; byte
    .byte $33,$28,$c9,$2d,$27,$48,$d2,$8c   ; byte
    .byte $97,$26,$c8,$f2,$4d,$e3,$42,$0d   ; byte
    .byte $87,$15,$c4,$f1,$27,$50,$d0,$b4   ; byte
    .byte $d7,$0c,$c9,$33,$3d,$33,$4d,$d2   ; byte
    .byte $b4,$dd,$33,$30,$c9,$72,$47,$48   ; byte
    .byte $74,$bc,$4f,$12,$c9,$70,$27,$48   ; byte
    .byte $d1,$b4,$97,$00,$cd,$f3,$67,$50   ; byte
    .byte $d1,$b4,$3c,$97,$18,$c0,$55,$d1   ; byte
    .byte $d5,$30,$a7,$48,$d1,$d5,$c1,$0c   ; byte
    .byte $17,$3f,$c1,$4c,$fc,$c1,$40,$0c   ; byte
    .byte $13,$05,$c4,$c3,$04,$31,$20,$0c   ; byte
    .byte $10,$17,$13                       ; byte

MIST_BLOCKS_SCREEN_32:
    .byte $c1,$34,$13,$03,$d0,$43,$04,$ca   ; byte
    .byte $34,$1d,$03,$41,$0c,$13,$41,$ca   ; byte
    .byte $30,$cc,$13,$1e,$c9,$70,$c0,$b0   ; byte
    .byte $9c,$94,$c9,$8c,$30,$4c,$e6,$c4   ; byte
    .byte $dc,$47,$23,$c9,$37,$8c,$98,$c4   ; byte
    .byte $b2,$0c,$47,$24,$ce,$70,$97,$26   ; byte
    .byte $31,$1c,$93,$28,$c3,$32,$3c,$47   ; byte
    .byte $12,$c9,$1c,$93,$25,$77,$8c,$9b   ; byte
    .byte $0e,$32,$4c,$97,$45,$34,$8c,$83   ; byte
    .byte $24,$ca,$32,$6c,$9f,$28,$32,$6c   ; byte
    .byte $3b,$23,$c9,$34,$fc,$13,$4d,$d0   ; byte
    .byte $9c,$94,$c9,$b1,$2c,$91,$c9,$b1   ; byte
    .byte $1c,$1f,$24,$c1,$00,$9c,$7b,$0b   ; byte
    .byte $c8,$32,$4c,$97,$0c,$c4,$70,$e7   ; byte
    .byte $04,$0c,$91,$1c,$95,$c9,$72,$63   ; byte
    .byte $11,$32,$4d,$41,$c3,$b2,$4d,$13   ; byte
    .byte $45,$4c,$79,$c9,$b1,$2c,$44,$c9   ; byte
    .byte $f4,$fd,$21,$c9,$34,$fd,$0b,$46   ; byte
    .byte $95,$d0,$34,$1d,$03,$41,$c9,$34   ; byte
    .byte $25,$c1,$f4,$97,$47,$d0,$9c,$97   ; byte
    .byte $20,$c5,$b1,$2c,$97,$18,$c1,$70   ; byte
    .byte $40,$70,$5c,$fc,$c1,$5c,$2f,$26   ; byte
    .byte $c3,$b2,$4c,$9b,$0e,$c4,$c3,$05   ; byte
    .byte $70,$4c,$4b,$05,$c1,$0c,$97,$28   ; byte
    .byte $c9,$32,$6c,$3b,$24               ; byte

MIST_BLOCKS_SCREEN_33:
    .byte $c1,$30,$ec,$93,$03,$c9,$b4,$13   ; byte
    .byte $01,$ca,$34,$0c,$17,$1a,$c1,$31   ; byte
    .byte $ac,$17,$41,$ca,$2c,$a3,$26,$c1   ; byte
    .byte $32,$5c,$16,$c1,$4c,$10,$c9,$8c   ; byte
    .byte $32,$43,$04,$c9,$4c,$32,$c4,$71   ; byte
    .byte $dc,$98,$b2,$0c,$45,$ce,$70,$cc   ; byte
    .byte $13,$25,$30,$cc,$3b,$11,$cb,$b1   ; byte
    .byte $2c,$3b,$12,$2c,$17,$04,$5c,$4f   ; byte
    .byte $28,$c3,$30,$ec,$23,$1d,$c8,$30   ; byte
    .byte $e3,$11,$c9,$30,$5c,$9f,$0b,$ca   ; byte
    .byte $32,$6c,$4b,$1a,$c3,$b0,$8c,$8d   ; byte
    .byte $71,$1c,$bb,$24,$c9,$b0,$4b,$04   ; byte
    .byte $c9,$b1,$17,$0e,$c2,$2c,$77,$1e   ; byte
    .byte $72,$3c,$93,$01,$c8,$32,$4c,$95   ; byte
    .byte $c4,$70,$e7,$2e,$b2,$3c,$93,$25   ; byte
    .byte $03,$0b,$c9,$72,$63,$06,$72,$4c   ; byte
    .byte $82,$72,$4c,$97,$26,$c4,$cc,$79   ; byte
    .byte $c9,$b1,$2c,$8d,$c1,$00,$c9,$32   ; byte
    .byte $8c,$9b,$11,$c4,$89,$c3,$30,$ec   ; byte
    .byte $91,$c3,$8c,$93,$25,$0c,$10,$03   ; byte
    .byte $20,$c5,$b0,$7c,$97,$04,$c4,$b2   ; byte
    .byte $4c,$a0,$72,$6c,$31,$c3,$02,$1c   ; byte
    .byte $13,$05,$c4,$c3,$26,$31,$20,$0c   ; byte
    .byte $95,$c9,$1c,$3a                   ; byte

MIST_BLOCKS_SCREEN_34:
    .byte $c1,$30,$ec,$93,$03,$c9,$b4,$13   ; byte
    .byte $01,$ca,$34,$0c,$17,$1a,$c1,$31   ; byte
    .byte $ac,$17,$41,$ca,$2c,$a3,$26,$c1   ; byte
    .byte $32,$5c,$16,$c1,$4c,$10,$c9,$8c   ; byte
    .byte $8e,$43,$04,$c9,$4c,$32,$c4,$71   ; byte
    .byte $dc,$98,$c4,$4c,$93,$7a,$ce,$70   ; byte
    .byte $cc,$13,$25,$30,$cc,$3b,$11,$cb   ; byte
    .byte $b1,$2c,$38,$c4,$b1,$dc,$95,$5c   ; byte
    .byte $4f,$28,$c3,$30,$ec,$23,$1d,$c8   ; byte
    .byte $32,$4c,$9b,$11,$c9,$32,$81,$ca   ; byte
    .byte $32,$6c,$4b,$1a,$c3,$b0,$8c,$8d   ; byte
    .byte $ca,$32,$6c,$47,$23,$ca,$32,$5c   ; byte
    .byte $1d,$c9,$b1,$17,$0e,$c2,$2c,$77   ; byte
    .byte $1e,$72,$07,$27,$de,$85,$c4,$70   ; byte
    .byte $ec,$93,$28,$b2,$3c,$93,$25,$30   ; byte
    .byte $cc,$4b,$7a,$ce,$b3,$b5,$72,$4c   ; byte
    .byte $97,$26,$72,$4c,$97,$26,$c4,$f2   ; byte
    .byte $3d,$e8,$ca,$b2,$b5,$72,$63,$11   ; byte
    .byte $c9,$32,$8c,$9b,$11,$c4,$b7,$a0   ; byte
    .byte $ce,$b3,$b7,$80,$c3,$8c,$93,$07   ; byte
    .byte $c9,$4d,$e8,$00,$ca,$b2,$b5,$c4   ; byte
    .byte $b2,$4c,$a1,$c1,$4c,$ff,$05,$cf   ; byte
    .byte $f0,$5c,$ff,$05,$00,$c4,$c1,$40   ; byte
    .byte $00,$00                           ; byte

MIST_BLOCKS_SCREEN_37:
    .byte $c1,$30,$3c,$13,$03,$c9,$b0,$4c   ; byte
    .byte $9b,$27,$ca,$31,$d3,$0c,$c4,$b1   ; byte
    .byte $3c,$17,$41,$c0,$6c,$a3,$26,$c4   ; byte
    .byte $f2,$5b,$13,$30,$4c,$a3,$23,$c1   ; byte
    .byte $2c,$8f,$04,$07,$20,$b2,$7c,$a3   ; byte
    .byte $26,$c4,$4c,$9f,$20,$32,$3c,$93   ; byte
    .byte $13,$c0,$70,$b3,$25,$b2,$4c,$9b   ; byte
    .byte $11,$c3,$8c,$93,$28,$c9,$f1,$dc   ; byte
    .byte $97,$04,$70,$7c,$4f,$28,$b2,$6c   ; byte
    .byte $8e,$c8,$32,$4c,$a0,$c1,$f2,$8c   ; byte
    .byte $13,$13,$5d,$e8,$32,$4b,$1d,$c1   ; byte
    .byte $00,$72,$59,$5c,$eb,$3b,$72,$6c   ; byte
    .byte $4b,$24,$ca,$32,$07,$27,$57,$04   ; byte
    .byte $5c,$ab,$2b,$70,$43,$25,$ce,$6b   ; byte
    .byte $24,$c9,$70,$cc,$9f,$13,$4c,$eb   ; byte
    .byte $3b,$72,$4c,$94,$c5,$32,$5c,$2f   ; byte
    .byte $25,$c3,$30,$e3,$04,$e0,$1d,$e8   ; byte
    .byte $ca,$0c,$9b,$27,$c9,$8c,$9f,$0c   ; byte
    .byte $c8,$dc,$93,$20,$57,$0c,$c1,$f2   ; byte
    .byte $57,$24,$c8,$31,$1c,$3b,$23,$c9   ; byte
    .byte $f0,$41,$de,$83,$24,$70,$4d,$03   ; byte
    .byte $04,$c4,$f0,$4d,$07,$04,$d0,$2c   ; byte
    .byte $a2,$c1,$74,$0c,$4f,$20,$71,$1c   ; byte
    .byte $4f,$0c,$4c,$a0,$03,$40           ; byte

MIST_BLOCKS_SCREEN_38:
    .byte $c1,$30,$5c,$13,$03,$c1,$0c,$14   ; byte
    .byte $0c,$10,$c4,$b0,$4c,$17,$04,$c0   ; byte
    .byte $72,$5b,$39,$72,$5e,$03,$39,$c4   ; byte
    .byte $f2,$7c,$a3,$20,$ac,$8e,$c9,$70   ; byte
    .byte $3c,$10,$c9,$b2,$7c,$a3,$26,$c4   ; byte
    .byte $49,$32,$3c,$93,$25,$c0,$70,$4c   ; byte
    .byte $2f,$25,$c8,$23,$0e,$32,$3c,$93   ; byte
    .byte $28,$72,$4c,$97,$03,$c1,$30,$3c   ; byte
    .byte $97,$28,$c3,$31,$1c,$3b,$08,$c8   ; byte
    .byte $f2,$4c,$a0,$c9,$72,$8c,$0e,$72   ; byte
    .byte $53,$0c,$c3,$b0,$87,$23,$c9,$32   ; byte
    .byte $8c,$94,$c0,$c9,$c0,$53,$20,$4c   ; byte
    .byte $47,$24,$c0,$70,$bc,$9b,$27,$85   ; byte
    .byte $70,$4c,$a1,$c4,$72,$3c,$93,$14   ; byte
    .byte $72,$5c,$83,$24,$70,$cc,$9d,$4c   ; byte
    .byte $96,$b2,$4c,$94,$9c,$2f,$25,$c3   ; byte
    .byte $30,$ec,$4b,$13,$c1,$1c,$a0,$01   ; byte
    .byte $ca,$32,$6c,$9f,$0c,$c3,$b1,$1c   ; byte
    .byte $93,$20,$c0,$70,$b7,$07,$c9,$f2   ; byte
    .byte $5c,$9a,$c9,$b1,$1c,$38,$c4,$31   ; byte
    .byte $2c,$4d,$c0,$f0,$41,$c1,$0d,$03   ; byte
    .byte $04,$0d,$07,$10,$c1,$70,$4c,$17   ; byte
    .byte $04,$5c,$95,$4c,$4f,$0c,$4c,$83   ; byte
    .byte $24,$c1,$32,$8b,$0c               ; byte

MIST_BLOCKS_SCREEN_39:
    .byte $c1,$b0,$3c,$33,$05,$c1,$f2,$4c   ; byte
    .byte $9b,$11,$c9,$f2,$8c,$98,$c4,$71   ; byte
    .byte $2c,$4f,$20,$c1,$0c,$17,$41,$c4   ; byte
    .byte $f2,$5c,$83,$1d,$c9,$2b,$11,$1c   ; byte
    .byte $93,$28,$70,$3b,$03,$c9,$b2,$7c   ; byte
    .byte $a3,$26,$c9,$f1,$2b,$20,$32,$4c   ; byte
    .byte $a0,$c0,$71,$4c,$2f,$2f,$c8,$23   ; byte
    .byte $0e,$31,$1c,$4f,$28,$72,$8c,$1f   ; byte
    .byte $27,$c5,$30,$3c,$97,$04,$b1,$1c   ; byte
    .byte $3b,$08,$c4,$32,$4c,$a0,$c9,$70   ; byte
    .byte $45,$72,$53,$0c,$b4,$17,$04,$d0   ; byte
    .byte $30,$4d,$03,$25,$c0,$c7,$41,$ca   ; byte
    .byte $13,$20,$c3,$b1,$1c,$93,$25,$c0   ; byte
    .byte $70,$bc,$9b,$27,$85,$c9,$63,$13   ; byte
    .byte $c4,$b2,$3c,$97,$03,$32,$5c,$83   ; byte
    .byte $24,$71,$47,$13,$c0,$6c,$9b,$12   ; byte
    .byte $ca,$0c,$0f,$01,$c5,$1c,$2f,$25   ; byte
    .byte $c5,$0c,$a1,$32,$6c,$48,$70,$3c   ; byte
    .byte $07,$30,$b0,$3c,$9f,$14,$b2,$8c   ; byte
    .byte $2f,$20,$c4,$80,$c1,$0d,$03,$04   ; byte
    .byte $d0,$30,$4d,$03,$28,$c9,$b1,$2c   ; byte
    .byte $9d,$c1,$00,$c4,$f2,$6c,$9f,$13   ; byte
    .byte $32,$8c,$33,$04,$00,$c0,$f1,$20   ; byte
    .byte $0c,$4f,$0c,$c4,$8c,$83,$24,$c9   ; byte
    .byte $b2,$8c,$9b,$0c                   ; byte

MIST_BLOCKS_SCREEN_40:
    .byte $c9,$70,$3c,$04,$33,$0c,$cf,$25   ; byte
    .byte $c1,$30,$5c,$13,$05,$c4,$70,$7c   ; byte
    .byte $17,$20,$c0,$f0,$13,$30,$ce,$72   ; byte
    .byte $5c,$e6,$c9,$32,$87,$11,$17,$04   ; byte
    .byte $c9,$5c,$ca,$c2,$f2,$7c,$a0,$c9   ; byte
    .byte $d3,$20,$32,$4c,$a3,$06,$c0,$71   ; byte
    .byte $4c,$e7,$0b,$c3,$32,$63,$24,$c0   ; byte
    .byte $71,$4c,$96,$72,$8c,$31,$c9,$70   ; byte
    .byte $3c,$97,$04,$c4,$70,$ec,$10,$d0   ; byte
    .byte $30,$4d,$03,$04,$c9,$70,$c3,$04   ; byte
    .byte $34,$0c,$13,$0c,$c3,$b2,$3c,$93   ; byte
    .byte $30,$c5,$32,$5c,$47,$25,$b4,$1c   ; byte
    .byte $13,$28,$32,$53,$20,$c8,$f0,$cc   ; byte
    .byte $6b,$19,$c9,$72,$63,$27,$8c,$31   ; byte
    .byte $c9,$63,$13,$c3,$31,$1c,$4b,$0e   ; byte
    .byte $c4,$31,$2c,$83,$24,$71,$47,$13   ; byte
    .byte $c0,$6c,$9b,$12,$c8,$1c,$3b,$08   ; byte
    .byte $c9,$32,$63,$25,$c5,$2c,$49,$32   ; byte
    .byte $6c,$48,$ca,$1c,$8f,$24,$c9,$ac   ; byte
    .byte $9f,$14,$30,$cc,$3b,$20,$c4,$80   ; byte
    .byte $c3,$30,$ec,$93,$26,$b0,$4d,$07   ; byte
    .byte $04,$c3,$31,$1c,$23,$12,$c1,$0d   ; byte
    .byte $07,$04,$34,$13,$04,$c1,$72,$8c   ; byte
    .byte $30,$b0,$50,$c0,$f1,$28,$c1,$6c   ; byte
    .byte $17,$0c,$c4,$8c,$83,$24,$c9,$a1   ; byte

MIST_BLOCKS_SCREEN_41:
    .byte $c1,$70,$3c,$13,$12,$c1,$0c,$cf   ; byte
    .byte $25,$c2,$f0,$6c,$13,$25,$c2,$70   ; byte
    .byte $cc,$3b,$18,$c1,$0c,$06,$ce,$72   ; byte
    .byte $5c,$17,$0c,$30,$4c,$27,$28,$d3   ; byte
    .byte $1c,$11,$c1,$70,$1c,$cb,$05,$30   ; byte
    .byte $cc,$13,$11,$c3,$8d,$33,$0c,$32   ; byte
    .byte $4c,$27,$0c,$c0,$71,$4c,$e7,$0b   ; byte
    .byte $52,$1c,$33,$24,$d1,$4d,$33,$04   ; byte
    .byte $c9,$70,$3c,$97,$0c,$5c,$44,$0c   ; byte
    .byte $93,$45,$34,$27,$06,$ca,$03,$26   ; byte
    .byte $b2,$3c,$93,$28,$c8,$32,$4d,$3f   ; byte
    .byte $4d,$d0,$b4,$d5,$72,$5c,$33,$11   ; byte
    .byte $c8,$f2,$5c,$04,$c9,$72,$6d,$33   ; byte
    .byte $48,$d2,$b4,$95,$c9,$70,$cc,$4b   ; byte
    .byte $27,$c3,$31,$33,$19,$c6,$b2,$05   ; byte
    .byte $d1,$95,$c2,$f1,$ac,$46,$c9,$31   ; byte
    .byte $5c,$97,$28,$31,$35,$d1,$d5,$c4   ; byte
    .byte $f2,$7c,$57,$25,$cc,$f0,$40,$cc   ; byte
    .byte $ec,$13,$05,$03,$04,$c4,$8c,$9b   ; byte
    .byte $27,$cd,$b2,$7c,$db,$25,$cd,$a2   ; byte
    .byte $c3,$31,$1c,$13,$06,$cb,$c0,$00   ; byte
    .byte $c1,$72,$f3,$05,$a2,$b0,$43,$06   ; byte
    .byte $30,$4c,$1b,$04,$c1,$b0,$42,$c9   ; byte
    .byte $a2                               ; byte

MIST_BLOCKS_SCREEN_42:
    .byte $c0,$c0,$0c,$14,$c4,$cc,$a3,$25   ; byte
    .byte $c5,$32,$8c,$33,$05,$72,$54,$c9   ; byte
    .byte $70,$5c,$31,$c1,$30,$50,$c9,$b2   ; byte
    .byte $07,$18,$70,$1c,$13,$05,$c1,$0c   ; byte
    .byte $47,$08,$72,$7c,$a3,$20,$b0,$4c   ; byte
    .byte $9a,$c0,$72,$5c,$1b,$25,$c9,$b0   ; byte
    .byte $cb,$10,$c3,$ac,$9b,$23,$c1,$32   ; byte
    .byte $6c,$a3,$04,$c9,$70,$5c,$13,$0c   ; byte
    .byte $70,$57,$11,$c9,$32,$5c,$83,$24   ; byte
    .byte $ca,$32,$52,$30,$3c,$a3,$26,$b2   ; byte
    .byte $3c,$93,$28,$c0,$d0,$0c,$a0,$c0   ; byte
    .byte $f0,$4c,$33,$11,$c8,$f2,$50,$c0   ; byte
    .byte $5c,$53,$01,$41,$c1,$32,$0c,$4b   ; byte
    .byte $27,$c3,$31,$33,$28,$c0,$c0,$72   ; byte
    .byte $6c,$9d,$72,$8a,$c9,$31,$5c,$95   ; byte
    .byte $30,$bc,$33,$27,$c4,$f1,$12,$c1   ; byte
    .byte $72,$5c,$57,$25,$cc,$f0,$bc,$db   ; byte
    .byte $0b,$c1,$00,$05,$70,$3c,$1f,$27   ; byte
    .byte $cd,$b0,$40,$c9,$f2,$8c,$9b,$13   ; byte
    .byte $c3,$31,$18,$cb,$f0,$47,$04,$32   ; byte
    .byte $8c,$33,$18,$72,$6c,$44,$c8,$e3   ; byte
    .byte $0e,$c1,$b0,$57,$1a,$31,$8c,$38   ; byte
    .byte $c4,$4c,$4b,$0e,$c9,$32,$6c,$38   ; byte

MIST_BLOCKS_SCREEN_43:
    .byte $c0,$cc,$13,$05,$c1,$30,$5c,$94   ; byte
    .byte $c4,$f0,$5c,$13,$05,$0c,$13,$11   ; byte
    .byte $c1,$0c,$97,$03,$b2,$5c,$13,$05   ; byte
    .byte $ca,$0a,$c9,$b2,$0a,$c1,$70,$1c   ; byte
    .byte $0f,$04,$b2,$8c,$9b,$27,$c1,$32   ; byte
    .byte $7b,$20,$c4,$8c,$9b,$24,$c0,$72   ; byte
    .byte $59,$ca,$32,$6c,$38,$ac,$9b,$23   ; byte
    .byte $72,$6c,$a0,$c9,$70,$33,$0b,$71   ; byte
    .byte $17,$11,$b1,$2c,$47,$27,$ca,$32   ; byte
    .byte $51,$1c,$a3,$26,$c3,$32,$0c,$93   ; byte
    .byte $28,$c8,$24,$c4,$dc,$a3,$0c,$4c   ; byte
    .byte $33,$11,$c8,$f2,$50,$53,$24,$c9   ; byte
    .byte $4c,$10,$72,$0c,$4b,$27,$c3,$31   ; byte
    .byte $37,$28,$c3,$1c,$4b,$13,$72,$6c   ; byte
    .byte $33,$24,$c9,$b2,$7a,$c9,$32,$53   ; byte
    .byte $0c,$c3,$b1,$0c,$47,$24,$c1,$0c   ; byte
    .byte $a0,$c8,$32,$4c,$57,$25,$cc,$f0   ; byte
    .byte $bc,$33,$0e,$31,$2c,$93,$26,$c3   ; byte
    .byte $32,$83,$27,$c1,$00,$cd,$b0,$c1   ; byte
    .byte $c4,$72,$4c,$10,$4c,$9e,$c3,$31   ; byte
    .byte $0c,$47,$2f,$80,$0c,$bf,$11,$c8   ; byte
    .byte $d1,$c4,$43,$1a,$31,$8c,$38,$c4   ; byte
    .byte $4c,$4b,$0e,$c9,$32,$6c,$91       ; byte

MIST_BLOCKS_SCREEN_44:
    .byte $cb,$f2,$5c,$33,$07,$c1,$30,$50   ; byte
    .byte $00,$c1,$30,$53,$04,$c2,$f2,$8c   ; byte
    .byte $d9,$00,$00,$2c,$9f,$0c,$5c,$2f   ; byte
    .byte $28,$c9,$b2,$7c,$a3,$26,$31,$2c   ; byte
    .byte $47,$12,$4a,$c0,$72,$5c,$07,$25   ; byte
    .byte $c8,$32,$4c,$83,$11,$c3,$b0,$8c   ; byte
    .byte $43,$0e,$9c,$82,$c9,$70,$3c,$a3   ; byte
    .byte $33,$c0,$f2,$5c,$a2,$43,$23,$c9   ; byte
    .byte $32,$52,$ca,$01,$c5,$12,$9c,$47   ; byte
    .byte $24,$c4,$dc,$a3,$04,$00,$c9,$70   ; byte
    .byte $17,$20,$c4,$ec,$93,$28,$c9,$4c   ; byte
    .byte $33,$20,$ca,$03,$26,$c9,$d7,$28   ; byte
    .byte $c3,$30,$ec,$9d,$72,$6c,$10,$c9   ; byte
    .byte $b2,$7c,$83,$04,$32,$51,$71,$0c   ; byte
    .byte $10,$0c,$a3,$0c,$c8,$32,$4c,$57   ; byte
    .byte $25,$30,$bc,$a3,$26,$c1,$0c,$93   ; byte
    .byte $26,$c3,$32,$8c,$33,$23,$80,$c1   ; byte
    .byte $00,$c4,$72,$4c,$30,$0c,$6b,$10   ; byte
    .byte $71,$0c,$45,$00,$03,$11,$c8,$d3   ; byte
    .byte $0e,$c4,$43,$1a,$31,$8c,$38,$c4   ; byte
    .byte $4c,$4b,$0e,$c9,$32,$6c,$38       ; byte

MIST_BLOCKS_SCREEN_45:
    .byte $cb,$f2,$5c,$0c,$c1,$f1,$4c,$0f   ; byte
    .byte $25,$ca,$32,$6c,$4f,$28,$c9,$72   ; byte
    .byte $83,$1e,$c1,$b2,$8c,$d9,$5c,$06   ; byte
    .byte $c9,$b1,$1c,$33,$27,$11,$5c,$2f   ; byte
    .byte $28,$c5,$07,$25,$70,$e3,$11,$4c   ; byte
    .byte $97,$14,$c1,$72,$5c,$07,$25,$70   ; byte
    .byte $1c,$97,$28,$c8,$30,$8c,$41,$c8   ; byte
    .byte $f2,$5c,$79,$c1,$30,$3c,$1f,$32   ; byte
    .byte $c0,$73,$99,$70,$e3,$23,$c9,$1c   ; byte
    .byte $50,$c1,$67,$04,$a1,$5c,$47,$24   ; byte
    .byte $c4,$f1,$e4,$c0,$d7,$32,$ce,$5c   ; byte
    .byte $97,$20,$c4,$ec,$93,$28,$c9,$44   ; byte
    .byte $ca,$30,$5c,$c3,$01,$c0,$d7,$28   ; byte
    .byte $c3,$31,$2c,$4d,$73,$9c,$c0,$c9   ; byte
    .byte $b0,$6c,$07,$03,$32,$51,$71,$1a   ; byte
    .byte $41,$c8,$30,$5c,$0f,$25,$30,$bc   ; byte
    .byte $a3,$26,$c4,$70,$e9,$c3,$32,$87   ; byte
    .byte $33,$c3,$30,$48,$c0,$d5,$43,$12   ; byte
    .byte $4c,$6b,$13,$71,$09,$0c,$13,$05   ; byte
    .byte $00,$30,$40,$c4,$43,$1a,$c1,$14   ; byte
    .byte $c4,$4c,$49,$c9,$32,$67,$05       ; byte

MIST_BLOCKS_SCREEN_46:
    .byte $c1,$34,$1c,$17,$03,$d0,$4c,$0f   ; byte
    .byte $40,$32,$6d,$03,$28,$c9,$74,$0c   ; byte
    .byte $a0,$c0,$4c,$13,$41,$c1,$31,$4d   ; byte
    .byte $02,$c9,$ac,$33,$27,$d0,$32,$89   ; byte
    .byte $cc,$31,$43,$40,$c5,$0c,$07,$25   ; byte
    .byte $2c,$3b,$04,$8c,$97,$04,$73,$2c   ; byte
    .byte $c2,$32,$53,$28,$c8,$1c,$43,$11   ; byte
    .byte $c8,$f2,$53,$14,$43,$32,$cc,$70   ; byte
    .byte $11,$c9,$b0,$e3,$23,$c9,$1c,$52   ; byte
    .byte $40,$9d,$03,$04,$d0,$70,$4d,$03   ; byte
    .byte $24,$c4,$d0,$43,$32,$c5,$1c,$97   ; byte
    .byte $20,$c4,$f1,$1c,$93,$28,$c9,$74   ; byte
    .byte $00,$4c,$52,$c0,$72,$53,$28,$32   ; byte
    .byte $0c,$4d,$73,$9c,$53,$01,$71,$4c   ; byte
    .byte $07,$03,$11,$02,$4c,$a3,$25,$5c   ; byte
    .byte $0f,$25,$30,$bc,$a3,$26,$c4,$b1   ; byte
    .byte $30,$c3,$32,$8c,$33,$33,$c5,$30   ; byte
    .byte $bc,$97,$26,$c1,$1c,$33,$0e,$0c   ; byte
    .byte $49,$4c,$6b,$27,$c1,$43,$04,$0c   ; byte
    .byte $14,$30,$43,$05,$30,$40,$c4,$43   ; byte
    .byte $1a,$70,$50,$c1,$0d,$04,$c9,$34   ; byte
    .byte $1d,$03,$39                       ; byte

MIST_BLOCKS_SCREEN_47:
    .byte $c1,$34,$1c,$a3,$07,$ca,$32,$4c   ; byte
    .byte $0f,$25,$c9,$8c,$38,$c4,$70,$ec   ; byte
    .byte $a3,$04,$31,$1c,$4e,$31,$4c,$97   ; byte
    .byte $0c,$70,$ec,$33,$20,$2b,$05,$ca   ; byte
    .byte $31,$3b,$25,$c5,$0c,$a3,$20,$c4   ; byte
    .byte $72,$4c,$9b,$27,$ca,$32,$4c,$9b   ; byte
    .byte $04,$c9,$72,$08,$72,$50,$ca,$32   ; byte
    .byte $6c,$43,$11,$b2,$5c,$47,$05,$c0   ; byte
    .byte $e8,$d0,$03,$28,$c9,$b0,$e3,$23   ; byte
    .byte $c9,$87,$04,$cc,$2b,$28,$c9,$70   ; byte
    .byte $1c,$96,$c1,$34,$0c,$10,$ca,$31   ; byte
    .byte $1d,$05,$d0,$03,$33,$43,$20,$c4   ; byte
    .byte $f1,$1c,$93,$26,$1c,$17,$40,$c2   ; byte
    .byte $f0,$13,$14,$c0,$53,$28,$32,$0c   ; byte
    .byte $9b,$11,$30,$5c,$13,$30,$c9,$53   ; byte
    .byte $03,$b0,$b5,$c9,$b1,$1c,$38,$54   ; byte
    .byte $4c,$0f,$25,$27,$26,$c4,$b0,$e3   ; byte
    .byte $11,$c1,$70,$4c,$4f,$28,$72,$8b   ; byte
    .byte $26,$c3,$2c,$33,$0e,$0c,$4b,$13   ; byte
    .byte $5c,$a3,$03,$c1,$00,$03,$05,$30   ; byte
    .byte $4c,$14,$c1,$32,$8c,$2c,$c4,$41   ; byte
    .byte $d0,$4c,$83,$11,$c4,$b2,$3d,$05   ; byte
    .byte $48                               ; byte

MIST_BLOCKS_SCREEN_48:
    .byte $ce,$f2,$10,$00,$00,$00,$77,$dd   ; byte
    .byte $6c,$df,$35,$bd,$f3,$5b,$df,$35   ; byte
    .byte $bd,$f3,$5b,$df,$35,$bd,$f3,$5b   ; byte
    .byte $76,$8d,$d3,$75,$dc,$f7,$4d,$cf   ; byte
    .byte $75,$dc,$f7,$4d,$cf,$75,$dc,$f7   ; byte
    .byte $4d,$cf,$75,$77,$bd,$ab,$5c,$75   ; byte
    .byte $c7,$5c,$75,$c7,$5c,$75,$c7,$5c   ; byte
    .byte $5d,$9f,$70,$77,$07,$70,$77,$07   ; byte
    .byte $70,$77,$07,$70,$76,$9d,$bf,$5c   ; byte
    .byte $77,$67,$77,$77,$67,$77,$77,$67   ; byte
    .byte $77,$76,$8d,$53,$5d,$75,$c7,$5c   ; byte
    .byte $75,$c7,$5c,$75,$c7,$5c,$5d,$57   ; byte
    .byte $70,$77,$07,$70,$77,$07,$70,$77   ; byte
    .byte $07,$7a,$75,$90,$00,$03,$6a,$77   ; byte
    .byte $ad,$93,$6e,$76,$8d,$53,$2c,$dc   ; byte
    .byte $f2,$cd,$cf,$2c,$dc,$f2,$cd,$cf   ; byte
    .byte $2c,$76,$ed,$f3,$0f,$5c,$3c,$70   ; byte
    .byte $f7,$57,$75,$77,$57,$de,$b6,$ad   ; byte
    .byte $cf,$54,$5d,$ef,$6a,$75,$47,$54   ; byte
    .byte $75,$57,$54,$76,$87,$0f,$de,$47   ; byte
    .byte $79,$00,$00,$00                   ; byte

MIST_BLOCKS_SCREEN_49:
    .byte $c8,$40,$00,$00,$de,$80,$d6,$cd   ; byte
    .byte $f3,$5b,$df,$75,$bd,$f3,$5b,$0d   ; byte
    .byte $f3,$5b,$43,$7d,$d5,$30,$fd,$cf   ; byte
    .byte $54,$c3,$f5,$7d,$cf,$54,$d5,$4d   ; byte
    .byte $cf,$54,$db,$9d,$a7,$6f,$c3,$f5   ; byte
    .byte $77,$5c,$d5,$f5,$c7,$5c,$cb,$35   ; byte
    .byte $c7,$5c,$cb,$2d,$f3,$5c,$75,$57   ; byte
    .byte $70,$b7,$07,$70,$b7,$07,$70,$b7   ; byte
    .byte $0d,$cf,$70,$57,$5c,$d7,$67,$5c   ; byte
    .byte $d7,$67,$5c,$d7,$67,$5c,$75,$45   ; byte
    .byte $dc,$15,$dc,$15,$dc,$15,$de,$b6   ; byte
    .byte $a7,$70,$cb,$27,$70,$d5,$e7,$70   ; byte
    .byte $cb,$27,$70,$d6,$ed,$93,$2c,$07   ; byte
    .byte $2c,$07,$2c,$07,$2c,$c3,$f6,$ed   ; byte
    .byte $bd,$dc,$15,$dc,$15,$dc,$15,$75   ; byte
    .byte $4d,$eb,$6a,$d5,$30,$f7,$57,$c3   ; byte
    .byte $f5,$77,$57,$c3,$f5,$77,$54,$77   ; byte
    .byte $b7,$68,$c3,$f5,$77,$54,$75,$57   ; byte
    .byte $54,$75,$47,$0f,$de,$5d,$e4,$00   ; byte
    .byte $00,$00                           ; byte

MIST_BLOCKS_SCREEN_50:
    .byte $de,$80,$00,$03,$66,$de,$83,$2a   ; byte
    .byte $4d,$99,$d9,$9d,$99,$d9,$9d,$f7   ; byte
    .byte $5b,$df,$5d,$ef,$3a,$d6,$cd,$f3   ; byte
    .byte $5b,$13,$7d,$d6,$ed,$93,$54,$d5   ; byte
    .byte $76,$67,$2a,$c3,$f5,$7d,$cf,$5c   ; byte
    .byte $d5,$f6,$67,$68,$c3,$f6,$ed,$cb   ; byte
    .byte $5c,$cb,$36,$e7,$3a,$d7,$35,$57   ; byte
    .byte $70,$b6,$e9,$d4,$77,$0d,$cf,$2c   ; byte
    .byte $d4,$67,$2a,$d7,$67,$5c,$d7,$6d   ; byte
    .byte $f3,$56,$d9,$c0,$07,$3a,$dc,$15   ; byte
    .byte $dc,$1d,$cf,$5c,$dc,$35,$cd,$f3   ; byte
    .byte $5c,$dc,$35,$c7,$2a,$cb,$27,$70   ; byte
    .byte $cb,$27,$70,$d5,$ed,$cf,$70,$d5   ; byte
    .byte $e7,$3a,$c3,$e7,$2c,$07,$2c,$07   ; byte
    .byte $2c,$07,$2a,$cb,$25,$df,$95,$df   ; byte
    .byte $95,$df,$97,$3a,$c3,$f5,$47,$0f   ; byte
    .byte $b5,$57,$55,$b5,$57,$57,$b5,$4d   ; byte
    .byte $f3,$2a,$75,$55,$35,$77,$54,$d5   ; byte
    .byte $d7,$54,$c3,$dd,$cf,$3a,$de,$43   ; byte
    .byte $6a,$77,$a0,$36,$ac,$b3,$7a,$03   ; byte
    .byte $2a                               ; byte

MIST_BLOCKS_SCREEN_51:
    .byte $ce,$f2,$10,$00,$00,$00,$77,$d0   ; byte
    .byte $00,$03,$5b,$df,$40,$5d,$70,$00   ; byte
    .byte $00,$00,$5d,$74,$00,$00,$00,$5d   ; byte
    .byte $d3,$75,$dd,$37,$5d,$d3,$75,$dd   ; byte
    .byte $37,$5d,$d3,$75,$dd,$37,$5d,$d3   ; byte
    .byte $75,$5d,$da,$b7,$7d,$da,$b7,$7d   ; byte
    .byte $da,$b7,$7d,$da,$5d,$d2,$dd,$ed   ; byte
    .byte $d2,$dd,$ed,$d2,$dd,$ed,$d2,$5d   ; byte
    .byte $db,$77,$b7,$0d,$db,$77,$ad,$db   ; byte
    .byte $77,$ad,$db,$77,$5c,$b3,$1b,$cb   ; byte
    .byte $30,$fc,$b3,$0f,$cb,$30,$fc,$b3   ; byte
    .byte $0f,$cb,$30,$fc,$b3,$0f,$77,$bd   ; byte
    .byte $46,$d5,$6d,$46,$d5,$6d,$46,$df   ; byte
    .byte $ad,$46,$5d,$67,$67,$d6,$76,$7d   ; byte
    .byte $67,$67,$d6,$76,$73,$59,$36,$7d   ; byte
    .byte $64,$5d,$a7,$5d,$35,$7d,$74,$d5   ; byte
    .byte $f5,$d3,$54,$d7,$4c,$3f,$5d,$5d   ; byte
    .byte $a1,$30,$f4,$d5,$13,$55,$4d,$55   ; byte

MIST_BLOCKS_SCREEN_52:
    .byte $c8,$40,$00,$00,$00,$df,$4d,$6c   ; byte
    .byte $00,$00,$03,$3a,$d7,$00,$00,$37   ; byte
    .byte $33,$2d,$cb,$35,$ed,$7f,$2a,$d7   ; byte
    .byte $40,$03,$7e,$d7,$72,$dc,$d3,$5e   ; byte
    .byte $d7,$f2,$dd,$8f,$3a,$dd,$37,$5d   ; byte
    .byte $d3,$75,$dd,$37,$57,$70,$37,$ec   ; byte
    .byte $fb,$63,$cb,$35,$ed,$7f,$2a,$dd   ; byte
    .byte $77,$7d,$da,$b7,$7d,$c3,$74,$dd   ; byte
    .byte $6d,$cf,$5e,$d7,$f2,$dd,$8f,$3a   ; byte
    .byte $dd,$ed,$d2,$dd,$ed,$73,$76,$dd   ; byte
    .byte $f5,$cc,$fb,$63,$cb,$35,$ed,$7f   ; byte
    .byte $2a,$dd,$ad,$db,$77,$ad,$c2,$37   ; byte
    .byte $0d,$cf,$5e,$d7,$f2,$dc,$d3,$3a   ; byte
    .byte $cb,$30,$fc,$b3,$1b,$cb,$30,$fc   ; byte
    .byte $b2,$32,$dd,$8c,$cb,$35,$ed,$7f   ; byte
    .byte $2a,$c3,$ed,$38,$4d,$38,$cb,$37   ; byte
    .byte $33,$5e,$d7,$f2,$dd,$8f,$3a,$d6   ; byte
    .byte $43,$67,$d6,$76,$7d,$67,$67,$d6   ; byte
    .byte $76,$73,$59,$36,$7d,$67,$2a,$d7   ; byte
    .byte $4d,$5f,$5d,$35,$7d,$74,$d5,$f5   ; byte
    .byte $d3,$54,$d7,$4c,$3f,$3a,$45,$30   ; byte
    .byte $f4,$d5,$13,$55,$4d,$57,$2a       ; byte

MIST_BLOCKS_SCREEN_53:
    .byte $c8,$4d,$ef,$21,$00,$00,$00,$ce   ; byte
    .byte $f7,$d7,$7d,$df,$35,$b3,$7c,$d6   ; byte
    .byte $cd,$f3,$5b,$37,$cd,$6f,$3a,$76   ; byte
    .byte $87,$68,$dc,$f2,$dc,$d3,$73,$cb   ; byte
    .byte $73,$4d,$cf,$2d,$cd,$37,$3c,$b7   ; byte
    .byte $2a,$55,$76,$21,$d8,$87,$62,$1d   ; byte
    .byte $8b,$3a,$55,$72,$c1,$df,$b2,$c7   ; byte
    .byte $2c,$1d,$53,$2a,$55,$5d,$51,$cb   ; byte
    .byte $07,$7e,$5c,$b3,$3a,$5d,$bb,$6f   ; byte
    .byte $77,$4d,$d5,$dd,$37,$57,$74,$dd   ; byte
    .byte $5d,$d3,$2a,$5c,$3c,$75,$c1,$d7   ; byte
    .byte $07,$5c,$1d,$73,$3a,$57,$1b,$77   ; byte
    .byte $6d,$dd,$dd,$b7,$77,$76,$dd,$dd   ; byte
    .byte $ef,$2a,$76,$70,$00,$00,$07,$67   ; byte
    .byte $76,$8c,$3c,$00,$00,$0d,$bb,$6f   ; byte
    .byte $5d,$ef,$6a,$cb,$04,$cb,$04,$cb   ; byte
    .byte $08,$77,$97,$79,$00,$00,$00       ; byte

MIST_BLOCKS_SCREEN_54:
    .byte $ce,$f7,$bd,$e4,$00,$00,$00,$50   ; byte
    .byte $36,$0d,$ec,$36,$01,$0d,$83,$7b   ; byte
    .byte $50,$14,$13,$7b,$05,$77,$dd,$6c   ; byte
    .byte $43,$7d,$51,$00,$76,$8d,$d3,$75   ; byte
    .byte $db,$9d,$a7,$6f,$5d,$ec,$df,$75   ; byte
    .byte $b7,$7d,$5d,$db,$77,$c3,$ed,$bf   ; byte
    .byte $1b,$43,$69,$db,$f5,$7d,$bb,$6f   ; byte
    .byte $77,$ad,$ab,$55,$c3,$60,$db,$9d   ; byte
    .byte $a7,$6f,$c6,$f5,$4c,$3c,$5d,$a1   ; byte
    .byte $d5,$35,$cd,$d3,$75,$d7,$2d,$bf   ; byte
    .byte $5c,$dd,$37,$5d,$71,$76,$9b,$6a   ; byte
    .byte $d7,$35,$dd,$db,$77,$d7,$63,$5d   ; byte
    .byte $dd,$b7,$7d,$76,$d6,$76,$87,$68   ; byte
    .byte $dc,$37,$6d,$de,$b7,$03,$76,$dd   ; byte
    .byte $eb,$70,$c3,$cd,$ba,$da,$b5,$7c   ; byte
    .byte $3c,$d5,$f0,$f0,$d5,$70,$fd,$53   ; byte
    .byte $0f,$01,$da,$32,$cd,$d3,$75,$cb   ; byte
    .byte $0d,$d3,$75,$cb,$0d,$d3,$75,$de   ; byte
    .byte $40,$00,$00,$00                   ; byte

MIST_BLOCKS_SCREEN_55:
    .byte $de,$43,$68,$c3,$f7,$90,$36,$ac   ; byte
    .byte $3f,$79,$03,$3a,$de,$c1,$76,$ed   ; byte
    .byte $6c,$36,$87,$6e,$d6,$c0,$df,$41   ; byte
    .byte $d3,$8c,$3f,$4e,$30,$fd,$38,$c3   ; byte
    .byte $f4,$e3,$0f,$dd,$b7,$7c,$6f,$0f   ; byte
    .byte $dd,$b7,$7d,$5f,$76,$dd,$dd,$db   ; byte
    .byte $77,$77,$6d,$dd,$cb,$37,$0c,$3c   ; byte
    .byte $dc,$32,$cd,$57,$70,$cb,$1d,$c3   ; byte
    .byte $7b,$da,$b7,$0c,$b1,$00,$03,$57   ; byte
    .byte $c3,$cd,$5d,$d9,$c0,$43,$55,$c3   ; byte
    .byte $53,$55,$4d,$57,$6e,$db,$f5,$4c   ; byte
    .byte $3c,$35,$6d,$9f,$2a,$ca,$f6,$a7   ; byte
    .byte $54,$40,$0d,$5d,$32,$cc,$f3,$3a   ; byte
    .byte $ce,$f6,$70,$03,$6a,$75,$5b,$54   ; byte
    .byte $43,$2a,$ca,$f6,$9c,$f0,$03,$0f   ; byte
    .byte $35,$44,$32,$c7,$3a,$ce,$f6,$8c   ; byte
    .byte $3f,$4e,$d7,$35,$4d,$3b,$5c,$d5   ; byte
    .byte $74,$ed,$47,$57,$4d,$ed,$77,$bd   ; byte
    .byte $ab,$2c,$d7,$72,$c3,$5d,$cb,$0d   ; byte
    .byte $4f,$2c,$de,$45,$5d,$e4,$00,$00   ; byte

MIST_BLOCKS_SCREEN_56:
    .byte $ce,$f7,$bd,$a3,$5d,$30,$fd,$74   ; byte
    .byte $c3,$f5,$d3,$0f,$d7,$4c,$3f,$5d   ; byte
    .byte $df,$57,$70,$35,$cd,$c0,$d7,$37   ; byte
    .byte $03,$5c,$dc,$0d,$73,$70,$c3,$f6   ; byte
    .byte $ed,$bf,$74,$dd,$6d,$d3,$75,$b7   ; byte
    .byte $4d,$d6,$dd,$37,$5b,$74,$4d,$73   ; byte
    .byte $76,$dd,$f5,$cd,$db,$77,$d7,$37   ; byte
    .byte $6d,$df,$5c,$dd,$b7,$7d,$73,$76   ; byte
    .byte $4d,$c3,$0f,$37,$0d,$57,$0f,$dc   ; byte
    .byte $35,$7d,$53,$70,$c3,$cd,$c3,$0f   ; byte
    .byte $d6,$76,$70,$d6,$76,$ac,$3f,$57   ; byte
    .byte $d5,$b5,$93,$67,$00,$83,$55,$c3   ; byte
    .byte $70,$f3,$55,$c3,$cd,$57,$0f,$35   ; byte
    .byte $4c,$3c,$35,$5d,$5e,$03,$54,$40   ; byte
    .byte $0d,$5d,$35,$4d,$3b,$54,$74,$ed   ; byte
    .byte $53,$55,$d3,$93,$4e,$75,$5d,$3b   ; byte
    .byte $54,$4d,$47,$0f,$d5,$f5,$1d,$57   ; byte
    .byte $0f,$d4,$53,$51,$75,$4d,$47,$0f   ; byte
    .byte $34,$ed,$4d,$d3,$b5,$3c,$3f,$4e   ; byte
    .byte $d4,$f5,$4d,$3b,$53,$d5,$74,$ed   ; byte
    .byte $4f,$57,$72,$c5,$cb,$17,$2c,$72   ; byte
    .byte $c1,$cb,$07,$2c,$de,$40,$00,$00   ; byte
    .byte $00                               ; byte

MIST_BLOCKS_SCREEN_57:
    .byte $d7,$71,$bc,$3f,$5d,$30,$fd,$74   ; byte
    .byte $c3,$f5,$d3,$0f,$d7,$4c,$3f,$21   ; byte
    .byte $dc,$35,$c3,$70,$35,$cd,$c0,$d7   ; byte
    .byte $37,$03,$5c,$dc,$0d,$73,$5b,$dd   ; byte
    .byte $63,$74,$dd,$6d,$d3,$75,$b7,$4d   ; byte
    .byte $d6,$dd,$37,$5b,$74,$dd,$f5,$c3   ; byte
    .byte $76,$dd,$f5,$cd,$db,$77,$d7,$37   ; byte
    .byte $6d,$df,$5c,$dd,$b7,$7d,$73,$76   ; byte
    .byte $c3,$f7,$03,$0f,$37,$0d,$57,$0f   ; byte
    .byte $dc,$35,$7d,$53,$70,$c3,$cd,$c3   ; byte
    .byte $0f,$d6,$76,$70,$d6,$76,$70,$35   ; byte
    .byte $93,$67,$00,$83,$55,$c3,$70,$f3   ; byte
    .byte $55,$c3,$cd,$57,$0f,$35,$4c,$3c   ; byte
    .byte $31,$bd,$5e,$00,$00,$0d,$5d,$0d   ; byte
    .byte $39,$34,$ed,$53,$55,$d3,$93,$4e   ; byte
    .byte $75,$5d,$3b,$54,$4d,$45,$d5,$f5   ; byte
    .byte $1d,$57,$0f,$d4,$53,$51,$75,$4d   ; byte
    .byte $47,$0f,$34,$ed,$4d,$d3,$b5,$3c   ; byte
    .byte $3f,$4e,$d4,$f5,$4d,$3b,$53,$d5   ; byte
    .byte $74,$ed,$4f,$57,$72,$c5,$cb,$17   ; byte
    .byte $2c,$72,$c1,$cb,$07,$2c,$de,$40   ; byte
    .byte $00,$00,$00                       ; byte

MIST_BLOCKS_SCREEN_58:
    .byte $c8,$40,$00,$00,$00,$d6,$c0,$00   ; byte
    .byte $00,$03,$3a,$dd,$77,$03,$74,$dd   ; byte
    .byte $77,$0d,$d3,$75,$dc,$37,$4d,$d7   ; byte
    .byte $70,$dd,$37,$5d,$c3,$2a,$dd,$f5   ; byte
    .byte $c3,$76,$dd,$f5,$cd,$db,$77,$d7   ; byte
    .byte $37,$6d,$df,$5c,$dd,$b7,$7d,$73   ; byte
    .byte $3a,$c3,$f7,$03,$22,$37,$0c,$88   ; byte
    .byte $dc,$35,$7d,$53,$70,$c3,$cd,$c3   ; byte
    .byte $2a,$d6,$76,$70,$d6,$76,$7d,$67   ; byte
    .byte $6a,$d5,$b5,$9d,$ab,$22,$43,$3a   ; byte
    .byte $c3,$c3,$55,$c3,$70,$f3,$55,$c3   ; byte
    .byte $cd,$5b,$67,$da,$b5,$4d,$ef,$2a   ; byte
    .byte $71,$bd,$5e,$00,$00,$d5,$b6,$77   ; byte
    .byte $3a,$4d,$39,$34,$ed,$53,$55,$d3   ; byte
    .byte $93,$4e,$b5,$57,$2a,$74,$ed,$45   ; byte
    .byte $d3,$b5,$1d,$57,$4e,$d4,$5d,$3b   ; byte
    .byte $51,$75,$4d,$bb,$3a,$75,$5d,$4d   ; byte
    .byte $d5,$75,$3c,$3e,$d4,$f5,$4d,$57   ; byte
    .byte $53,$d5,$6d,$57,$2a,$72,$c7,$22   ; byte
    .byte $cb,$1c,$8b,$2c,$72,$2c,$b1,$cb   ; byte
    .byte $32,$21,$de,$40,$00,$00,$00       ; byte

MIST_BLOCKS_SCREEN_59:
    .byte $ca,$f7,$dd,$ec,$03,$7d,$d6,$c0   ; byte
    .byte $00,$5d,$6c,$07,$69,$cb,$03,$57   ; byte
    .byte $c3,$cc,$b3,$0f,$5c,$b0,$07,$68   ; byte
    .byte $4d,$56,$d5,$32,$c1,$54,$0d,$bb   ; byte
    .byte $6f,$40,$30,$f0,$54,$cb,$53,$2d   ; byte
    .byte $40,$c3,$64,$77,$bd,$a9,$25,$75   ; byte
    .byte $7c,$b5,$de,$f6,$a4,$5d,$9c,$00   ; byte
    .byte $d9,$20,$76,$70,$5d,$7b,$5f,$cb   ; byte
    .byte $73,$4c,$b0,$37,$e7,$7e,$76,$8c   ; byte
    .byte $b3,$3a,$5d,$a3,$2c,$d7,$b5,$fc   ; byte
    .byte $fb,$34,$4c,$b6,$57,$2a,$77,$dd   ; byte
    .byte $7b,$5f,$cb,$73,$4d,$79,$72,$dd   ; byte
    .byte $52,$db,$b6,$fc,$3f,$3a,$5c,$b0   ; byte
    .byte $d7,$b5,$fc,$f9,$4b,$2c,$b2,$cd   ; byte
    .byte $57,$2a,$5d,$7b,$5f,$cb,$73,$4d   ; byte
    .byte $79,$72,$d8,$01,$de,$40,$00,$00   ; byte
    .byte $03,$3a                           ; byte

MIST_BLOCKS_SCREEN_60:
    .byte $ca,$f7,$d0,$00,$d6,$c0,$00,$c3   ; byte
    .byte $c0,$00,$0d,$5b,$67,$da,$b0,$f0   ; byte
    .byte $32,$c1,$cb,$07,$2c,$17,$59,$72   ; byte
    .byte $c1,$1c,$3c,$75,$45,$c3,$c5,$70   ; byte
    .byte $f5,$00,$35,$54,$05,$50,$00,$0d   ; byte
    .byte $5d,$37,$b5,$de,$e4,$d6,$4d,$9c   ; byte
    .byte $d6,$76,$ab,$56,$d9,$d5,$76,$70   ; byte
    .byte $ce,$f7,$dc,$3c,$c6,$c7,$2c,$15   ; byte
    .byte $da,$76,$fc,$b3,$0f,$ca,$d7,$5c   ; byte
    .byte $75,$c7,$5c,$55,$da,$b5,$c7,$5c   ; byte
    .byte $ce,$dd,$73,$5d,$b5,$db,$5d,$b6   ; byte
    .byte $e5,$00,$ca,$dd,$c1,$dc,$1d,$c1   ; byte
    .byte $20,$00,$77,$bd,$aa,$c3,$ec,$3e   ; byte
    .byte $0d,$5b,$67,$da,$b7,$0d,$ef,$6a   ; byte
    .byte $ce,$dd,$e4,$00,$00,$07,$79       ; byte

MIST_BLOCKS_SCREEN_61:
    .byte $ca,$f7,$dd,$ef,$3a,$ce,$f7,$bd   ; byte
    .byte $f4,$d6,$c0,$03,$3a,$c3,$c5,$5d   ; byte
    .byte $a3,$0f,$0d,$54,$c3,$c1,$72,$cd   ; byte
    .byte $bb,$5b,$17,$2c,$72,$cd,$53,$2c   ; byte
    .byte $72,$c7,$2a,$5c,$3f,$56,$d6,$65   ; byte
    .byte $55,$57,$3a,$41,$76,$ac,$3c,$0d   ; byte
    .byte $57,$0f,$03,$2a,$41,$5d,$5d,$0d   ; byte
    .byte $53,$57,$4d,$ef,$3a,$d6,$4d,$9f   ; byte
    .byte $6a,$cb,$35,$6d,$64,$d9,$c0,$07   ; byte
    .byte $2a,$cb,$30,$fc,$b3,$0f,$c6,$cc   ; byte
    .byte $3c,$03,$55,$c3,$c7,$3a,$75,$c7   ; byte
    .byte $5c,$de,$f6,$a7,$5c,$75,$c7,$5c   ; byte
    .byte $d5,$f5,$c7,$2a,$d6,$76,$73,$59   ; byte
    .byte $76,$8d,$73,$5d,$b5,$db,$5d,$b5   ; byte
    .byte $dd,$bb,$3a,$d7,$00,$db,$b6,$fd   ; byte
    .byte $c1,$dc,$1d,$c1,$dc,$1d,$c3,$2a   ; byte
    .byte $dc,$00,$d5,$35,$7c,$3e,$d5,$6d   ; byte
    .byte $52,$c3,$ed,$5f,$3a,$de,$40,$00   ; byte
    .byte $00,$00                           ; byte

MIST_BLOCKS_SCREEN_62:
    .byte $ce,$f7,$bd,$f7,$5b,$00,$00,$0d   ; byte
    .byte $ef,$3a,$ca,$dd,$a3,$0f,$00,$0d   ; byte
    .byte $54,$c3,$c5,$57,$3e,$cd,$35,$ed   ; byte
    .byte $7f,$3e,$cd,$35,$ed,$7f,$3e,$cd   ; byte
    .byte $35,$e7,$2a,$57,$54,$d5,$72,$c3   ; byte
    .byte $57,$c3,$f2,$c3,$54,$d5,$72,$c7   ; byte
    .byte $3a,$ce,$dd,$9c,$03,$6a,$cb,$36   ; byte
    .byte $70,$07,$2a,$ca,$dd,$a3,$0f,$0c   ; byte
    .byte $b0,$0d,$53,$57,$c3,$c7,$3a,$ce   ; byte
    .byte $d5,$d7,$1d,$d3,$75,$dd,$37,$5d   ; byte
    .byte $5f,$5c,$47,$2a,$ca,$d7,$74,$dd   ; byte
    .byte $4d,$da,$d5,$f7,$7d,$d0,$dd,$57   ; byte
    .byte $3a,$ce,$f6,$9d,$bf,$76,$37,$7d   ; byte
    .byte $53,$57,$dd,$f7,$5d,$db,$77,$1d   ; byte
    .byte $bb,$2a,$da,$f1,$bc,$3f,$55,$d5   ; byte
    .byte $f5,$4d,$db,$77,$dd,$ad,$57,$54   ; byte
    .byte $c3,$c3,$3a,$db,$32,$20,$d5,$2c   ; byte
    .byte $b0,$0c,$88,$03,$2a,$de,$40,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00           ; byte

MIST_BLOCKS_SCREEN_63:
    .byte $c8,$40,$00,$00,$00,$ca,$f7,$dd   ; byte
    .byte $6c,$00,$00,$00,$76,$9c,$b3,$5e   ; byte
    .byte $d7,$f2,$cd,$53,$5c,$0c,$3f,$54   ; byte
    .byte $d5,$f5,$c0,$76,$85,$5d,$d3,$75   ; byte
    .byte $dc,$37,$4d,$d5,$dd,$37,$5d,$c3   ; byte
    .byte $74,$ce,$d5,$5d,$db,$77,$d7,$37   ; byte
    .byte $6d,$df,$0f,$dd,$b7,$7d,$73,$76   ; byte
    .byte $ca,$d5,$5d,$57,$74,$77,$5c,$3f   ; byte
    .byte $57,$d5,$77,$47,$75,$ce,$d5,$5c   ; byte
    .byte $3f,$76,$dc,$37,$7d,$5e,$b7,$6d   ; byte
    .byte $c3,$77,$ca,$d5,$53,$5c,$cb,$35   ; byte
    .byte $cc,$b1,$35,$cc,$3f,$5c,$55,$5c   ; byte
    .byte $3f,$5d,$c3,$f5,$dc,$3c,$35,$d7   ; byte
    .byte $5d,$ce,$f7,$bd,$a9,$57,$7e,$5d   ; byte
    .byte $57,$54,$d5,$f7,$e5,$ca,$dd,$9c   ; byte
    .byte $0d,$ab,$5d,$d5,$17,$0f,$35,$dd   ; byte
    .byte $5d,$ce,$dd,$eb,$6a,$d7,$b5,$fc   ; byte
    .byte $b3,$67,$0d,$ab,$67,$0d,$ab,$67   ; byte
    .byte $57,$68,$cf,$b3,$47,$0f,$d7,$37   ; byte
    .byte $0d,$73,$0f,$d7,$37,$0d,$73,$0f   ; byte

MIST_BLOCKS_SCREEN_64:
    .byte $c8,$40,$00,$00,$00,$d6,$c0,$00   ; byte
    .byte $00,$00,$c3,$f5,$4d,$57,$5c,$0c   ; byte
    .byte $3f,$54,$c3,$f5,$c0,$c3,$f1,$bc   ; byte
    .byte $3c,$dd,$75,$5d,$d3,$75,$dc,$37   ; byte
    .byte $4d,$d7,$55,$dd,$37,$5d,$c3,$74   ; byte
    .byte $dd,$60,$dd,$f0,$fd,$db,$77,$d7   ; byte
    .byte $37,$6d,$df,$54,$dd,$b7,$7d,$73   ; byte
    .byte $76,$dd,$d3,$3a,$b5,$4b,$5c,$0d   ; byte
    .byte $54,$c3,$f5,$c0,$c3,$cd,$ed,$71   ; byte
    .byte $bd,$5f,$70,$0c,$6f,$0f,$d5,$f7   ; byte
    .byte $00,$d5,$b6,$75,$cb,$1c,$b3,$5c   ; byte
    .byte $cb,$35,$cc,$b2,$cb,$35,$cc,$b3   ; byte
    .byte $5c,$cb,$30,$f5,$c3,$dd,$5f,$5d   ; byte
    .byte $c3,$f5,$dc,$6f,$0f,$35,$dc,$3f   ; byte
    .byte $5d,$c3,$f0,$dd,$b9,$75,$4c,$3d   ; byte
    .byte $5c,$3e,$77,$ed,$55,$d5,$e1,$75   ; byte
    .byte $55,$c6,$dc,$6e,$d5,$35,$dd,$5d   ; byte
    .byte $c3,$cc,$35,$d6,$47,$56,$d6,$4d   ; byte
    .byte $ab,$56,$d9,$f5,$9d,$ab,$56,$d9   ; byte
    .byte $f5,$9d,$a9,$d7,$37,$0d,$72,$d7   ; byte
    .byte $37,$0d,$73,$1b,$d7,$37,$0d,$73   ; byte
    .byte $70,$d7,$30,$f1                   ; byte

MIST_BLOCKS_SCREEN_65:
    .byte $c8,$40,$00,$00,$00,$d6,$c0,$00   ; byte
    .byte $00,$00,$c3,$f5,$4d,$7b,$5f,$cf   ; byte
    .byte $b2,$cc,$fb,$2c,$cf,$b2,$cd,$7b   ; byte
    .byte $5f,$cf,$b2,$cc,$fb,$2c,$d5,$dc   ; byte
    .byte $b0,$cf,$1d,$7b,$5f,$b3,$cc,$fb   ; byte
    .byte $2c,$cf,$1d,$7b,$5f,$ce,$f5,$90   ; byte
    .byte $00,$00,$00,$76,$9c,$fb,$2c,$cf   ; byte
    .byte $32,$cd,$7b,$5f,$cf,$b2,$cc,$fb   ; byte
    .byte $2c,$35,$ec,$b3,$5e,$76,$8d,$7b   ; byte
    .byte $5f,$80,$35,$eb,$5e,$cb,$6a,$5c   ; byte
    .byte $fb,$2c,$35,$e7,$5e,$cf,$ab,$2d   ; byte
    .byte $cb,$35,$ea,$5c,$b3,$5e,$cb,$6b   ; byte
    .byte $2d,$cb,$35,$ea,$cf,$2a,$57,$2d   ; byte
    .byte $cb,$35,$ea,$aa,$35,$e8,$5c,$3f   ; byte
    .byte $5e,$ac,$b6,$93,$3c,$54,$77,$ad   ; byte
    .byte $ab,$2c,$75,$eb,$3c,$8c,$f2,$ac   ; byte
    .byte $f1,$77,$90,$00,$00,$00           ; byte

MIST_BLOCKS_SCREEN_66:
    .byte $c8,$40,$00,$00,$00,$d6,$c0,$00   ; byte
    .byte $00,$00,$cb,$72,$cd,$7b,$5f,$cf   ; byte
    .byte $b3,$4c,$fb,$34,$cf,$b2,$cd,$7b   ; byte
    .byte $5f,$cf,$b3,$4c,$fb,$34,$5c,$b7   ; byte
    .byte $2c,$da,$6d,$7b,$5f,$76,$9c,$fb   ; byte
    .byte $2c,$da,$61,$d9,$cd,$67,$5f,$cf   ; byte
    .byte $b3,$4c,$b0,$73,$4d,$7b,$5f,$cf   ; byte
    .byte $b3,$45,$cb,$36,$9c,$fb,$56,$d9   ; byte
    .byte $cd,$67,$5f,$5c,$fb,$34,$35,$e5   ; byte
    .byte $76,$8d,$7b,$5f,$cb,$03,$56,$d9   ; byte
    .byte $cd,$67,$5e,$cb,$65,$5c,$b7,$2c   ; byte
    .byte $35,$e7,$5e,$cf,$b2,$cd,$7b,$56   ; byte
    .byte $d9,$c3,$59,$57,$5e,$cb,$6b,$2d   ; byte
    .byte $cb,$35,$ea,$da,$72,$cd,$7b,$2c   ; byte
    .byte $d7,$a4,$cb,$35,$ea,$aa,$35,$e8   ; byte
    .byte $53,$5e,$ac,$b6,$93,$69,$54,$36   ; byte
    .byte $9c,$b6,$75,$eb,$69,$8d,$a6,$ad   ; byte
    .byte $a5,$de,$40,$00,$00,$00           ; byte

MIST_BLOCKS_SCREEN_67:
    .byte $c8,$40,$00,$00,$00,$d6,$c0,$00   ; byte
    .byte $00,$00,$cb,$76,$30,$33,$4c,$fb   ; byte
    .byte $34,$cf,$b2,$cd,$7b,$5f,$cf,$b3   ; byte
    .byte $4c,$fb,$34,$50,$1d,$7b,$5f,$76   ; byte
    .byte $9c,$fb,$2c,$da,$61,$53,$34,$cb   ; byte
    .byte $00,$73,$4d,$7b,$5f,$cf,$b5,$90   ; byte
    .byte $76,$9c,$f9,$43,$5f,$75,$90,$35   ; byte
    .byte $ec,$fb,$5e,$76,$8d,$7b,$5f,$75   ; byte
    .byte $90,$36,$ac,$b3,$5e,$cb,$73,$4b   ; byte
    .byte $34,$d9,$c0,$35,$ec,$b3,$5e,$cf   ; byte
    .byte $b2,$cd,$7b,$3e,$cd,$33,$ea,$cb   ; byte
    .byte $36,$8c,$d3,$5e,$cb,$73,$4b,$2d   ; byte
    .byte $cb,$35,$ea,$da,$72,$cd,$7b,$2c   ; byte
    .byte $ac,$b4,$cd,$35,$ec,$b2,$ab,$3e   ; byte
    .byte $cd,$35,$ec,$fb,$34,$50,$cf,$a7   ; byte
    .byte $3e,$cd,$33,$ec,$d3,$2c,$00,$36   ; byte
    .byte $9c,$b7,$34,$75,$1b,$51,$b5,$17   ; byte
    .byte $51,$cf,$b5,$1c,$d1,$de,$40,$00   ; byte
    .byte $00,$00                           ; byte

MIST_BLOCKS_SCREEN_68:
    .byte $c8,$40,$00,$00,$00,$d6,$f7,$dd   ; byte
    .byte $6f,$7d,$d6,$f7,$dd,$6c,$00,$03   ; byte
    .byte $3a,$cb,$32,$dd,$8f,$68,$d8,$f6   ; byte
    .byte $8c,$fb,$34,$cf,$b2,$cd,$7b,$5f   ; byte
    .byte $cf,$b3,$4c,$fb,$2a,$5c,$d3,$3e   ; byte
    .byte $73,$4d,$7b,$5f,$76,$9c,$fb,$2c   ; byte
    .byte $da,$63,$3a,$d6,$43,$2d,$cd,$33   ; byte
    .byte $eb,$3e,$cd,$0d,$7b,$5f,$cf,$b2   ; byte
    .byte $c3,$2a,$cb,$76,$9c,$f3,$56,$d9   ; byte
    .byte $cd,$67,$5f,$b6,$30,$cb,$35,$ec   ; byte
    .byte $fb,$3a,$76,$8c,$b3,$5f,$cb,$72   ; byte
    .byte $c3,$56,$d9,$cd,$67,$5e,$cb,$73   ; byte
    .byte $4d,$ef,$2a,$cb,$00,$35,$e7,$5e   ; byte
    .byte $cf,$b2,$cd,$7b,$56,$d6,$47,$3a   ; byte
    .byte $76,$8c,$d3,$5e,$cb,$73,$4b,$2d   ; byte
    .byte $cb,$35,$ea,$cb,$07,$2a,$4c,$b4   ; byte
    .byte $cd,$35,$ec,$b2,$ab,$3e,$cd,$35   ; byte
    .byte $ed,$a7,$3a,$40,$00,$00,$03,$2a   ; byte
    .byte $75,$1c,$b7,$51,$cf,$b5,$1c,$d3   ; byte
    .byte $51,$cf,$b5,$1c,$d3,$51,$cf,$b5   ; byte
    .byte $1c,$d3,$3a,$de,$40,$00,$00,$00   ; byte

MIST_BLOCKS_SCREEN_69:
    .byte $c8,$40,$00,$00,$00,$ce,$f7,$d0   ; byte
    .byte $00,$00,$00,$76,$8d,$d3,$75,$cb   ; byte
    .byte $35,$7d,$d3,$75,$cb,$35,$4d,$d3   ; byte
    .byte $75,$cb,$35,$4d,$d3,$75,$5d,$d6   ; byte
    .byte $b7,$4d,$d6,$b7,$4d,$d6,$b7,$4d   ; byte
    .byte $d6,$5d,$c0,$00,$00,$00,$5d,$5b   ; byte
    .byte $67,$35,$9d,$ab,$5c,$d5,$b5,$9d   ; byte
    .byte $ab,$5c,$d5,$b6,$70,$5d,$70,$03   ; byte
    .byte $5d,$83,$5d,$80,$5d,$77,$70,$d7   ; byte
    .byte $77,$0d,$77,$70,$df,$b7,$0d,$77   ; byte
    .byte $70,$b7,$0d,$77,$70,$5d,$c3,$2c   ; byte
    .byte $b2,$cb,$2c,$b2,$cb,$2c,$b2,$cb   ; byte
    .byte $2c,$5d,$39,$d3,$9d,$39,$d3,$9d   ; byte
    .byte $39,$d3,$9d,$39,$da,$f6,$fd,$45   ; byte
    .byte $d4,$5d,$45,$d4,$5d,$45,$d4,$5d   ; byte
    .byte $45,$db,$32,$2d,$4f,$22,$d4,$f2   ; byte
    .byte $2d,$4f,$22,$d4,$f2,$2d,$4f,$22   ; byte
    .byte $d4,$f2,$2d,$4d,$de,$40,$00,$00   ; byte
    .byte $00                               ; byte

MIST_BLOCKS_SCREEN_70:
    .byte $c8,$40,$00,$00,$00,$df,$40,$00   ; byte
    .byte $00,$00,$cb,$35,$5d,$d3,$75,$cb   ; byte
    .byte $35,$7d,$d3,$75,$cb,$35,$4d,$d3   ; byte
    .byte $75,$cb,$35,$4d,$d3,$75,$37,$4d   ; byte
    .byte $d6,$b7,$4d,$d6,$b7,$4d,$d6,$b7   ; byte
    .byte $4d,$d6,$dc,$00,$00,$00,$00,$d9   ; byte
    .byte $c0,$35,$9d,$ab,$5c,$d5,$b6,$7d   ; byte
    .byte $67,$6a,$d7,$35,$6d,$9c,$d7,$03   ; byte
    .byte $5d,$d7,$03,$5d,$80,$d7,$60,$d7   ; byte
    .byte $77,$0d,$77,$70,$b7,$0d,$77,$70   ; byte
    .byte $df,$b7,$0d,$77,$70,$77,$0d,$77   ; byte
    .byte $70,$32,$cb,$2c,$b2,$cb,$2c,$b2   ; byte
    .byte $cb,$2c,$b2,$cb,$2c,$d3,$9d,$39   ; byte
    .byte $d3,$9d,$39,$d3,$9d,$39,$d3,$9d   ; byte
    .byte $39,$d4,$5d,$45,$d4,$5d,$45,$d4   ; byte
    .byte $5d,$45,$d4,$5d,$45,$d4,$f2,$2d   ; byte
    .byte $4f,$22,$d4,$f2,$2d,$4f,$22,$d4   ; byte
    .byte $f2,$2d,$4f,$22,$d4,$f2,$2d,$4d   ; byte
    .byte $de,$40,$00,$00,$00               ; byte

MIST_BLOCKS_SCREEN_71:
    .byte $c8,$40,$00,$00,$00,$df,$40,$00   ; byte
    .byte $00,$00,$cb,$35,$5d,$d3,$75,$cb   ; byte
    .byte $35,$7d,$d3,$75,$cb,$35,$4d,$d3   ; byte
    .byte $75,$cb,$35,$4d,$d3,$75,$37,$4d   ; byte
    .byte $d6,$b7,$4d,$d6,$b7,$4d,$d6,$b7   ; byte
    .byte $4d,$d6,$dc,$00,$00,$00,$0d,$ef   ; byte
    .byte $6a,$d9,$c0,$00,$35,$9d,$ab,$5c   ; byte
    .byte $d5,$b6,$77,$2a,$d7,$00,$00,$03   ; byte
    .byte $5d,$87,$3a,$d7,$77,$0d,$77,$70   ; byte
    .byte $d7,$77,$0d,$77,$70,$df,$b7,$0d   ; byte
    .byte $77,$70,$b7,$07,$2a,$dc,$32,$cb   ; byte
    .byte $2c,$b2,$cb,$2c,$b2,$cb,$2c,$b2   ; byte
    .byte $c7,$3a,$d3,$9d,$39,$d3,$9d,$39   ; byte
    .byte $d3,$9d,$39,$d3,$9d,$bb,$2a,$d4   ; byte
    .byte $5d,$45,$d4,$5d,$45,$d4,$5d,$45   ; byte
    .byte $d4,$5d,$47,$3a,$d4,$f2,$2d,$4f   ; byte
    .byte $22,$d4,$f2,$2d,$4f,$22,$d4,$f2   ; byte
    .byte $2d,$4f,$22,$d4,$f2,$2d,$4f,$2a   ; byte
    .byte $de,$40,$00,$00,$03,$3a           ; byte

MIST_BLOCKS_SCREEN_72:
    .byte $c8,$77,$bd,$eb,$68,$d7,$b5,$fc   ; byte
    .byte $d3,$5d,$00,$00,$df,$55,$cb,$73   ; byte
    .byte $4c,$b1,$dc,$1d,$c1,$dc,$1d,$c1   ; byte
    .byte $cb,$15,$d7,$b5,$fb,$70,$d7,$2d   ; byte
    .byte $72,$d7,$2d,$72,$dd,$55,$cb,$73   ; byte
    .byte $4c,$b3,$5d,$00,$00,$95,$d7,$b5   ; byte
    .byte $fb,$5c,$dc,$35,$cd,$c3,$5c,$dc   ; byte
    .byte $35,$cd,$c3,$5c,$ca,$d5,$cb,$73   ; byte
    .byte $4c,$b3,$5d,$b5,$db,$5d,$b5,$db   ; byte
    .byte $5d,$ce,$d5,$d7,$b5,$fb,$70,$b7   ; byte
    .byte $0b,$70,$b7,$0b,$70,$ca,$d7,$7b   ; byte
    .byte $da,$b7,$bd,$ab,$74,$77,$5b,$74   ; byte
    .byte $77,$5b,$74,$ce,$d5,$de,$9d,$a3   ; byte
    .byte $76,$dc,$37,$7d,$73,$76,$dc,$37   ; byte
    .byte $7d,$73,$76,$ca,$f7,$dd,$6c,$76   ; byte
    .byte $9d,$bf,$54,$c3,$f5,$4d,$77,$54   ; byte
    .byte $c3,$f5,$5d,$77,$0f,$ce,$f6,$8d   ; byte
    .byte $57,$54,$76,$8c,$3f,$55,$ad,$fb   ; byte
    .byte $55,$2d,$f9,$ca,$dc,$3d,$5d,$50   ; byte
    .byte $c3,$f5,$5d,$77,$0f,$d5,$ed,$77   ; byte
    .byte $55,$ce,$f7,$90,$00,$00,$00       ; byte

MIST_BLOCKS_SCREEN_73:
    .byte $d7,$40,$00,$00,$0c,$b3,$3a,$dc   ; byte
    .byte $1d,$c1,$dc,$1d,$c1,$dc,$1d,$c1   ; byte
    .byte $dc,$15,$d7,$2d,$72,$d7,$2d,$72   ; byte
    .byte $d7,$2d,$72,$d7,$25,$d7,$40,$03   ; byte
    .byte $7e,$d7,$40,$05,$dc,$35,$cd,$c3   ; byte
    .byte $5c,$dc,$35,$cd,$c3,$5c,$dc,$35   ; byte
    .byte $cd,$c3,$5c,$dc,$35,$c5,$d7,$35   ; byte
    .byte $db,$5d,$b5,$db,$5d,$b5,$db,$5d   ; byte
    .byte $b5,$d7,$6e,$d7,$77,$0b,$70,$b7   ; byte
    .byte $0b,$70,$b7,$0b,$70,$d5,$f7,$04   ; byte
    .byte $77,$5b,$74,$b7,$5b,$74,$b7,$5b   ; byte
    .byte $74,$b7,$5d,$ef,$6a,$dc,$37,$7d   ; byte
    .byte $73,$76,$77,$7d,$73,$76,$77,$7d   ; byte
    .byte $73,$76,$77,$77,$3a,$d5,$35,$5d   ; byte
    .byte $77,$0f,$d5,$70,$fd,$77,$0f,$35   ; byte
    .byte $4d,$77,$54,$c3,$f5,$5d,$b9,$c3   ; byte
    .byte $d5,$07,$55,$d5,$2d,$fb,$55,$2d   ; byte
    .byte $f9,$d5,$67,$54,$47,$0f,$35,$5d   ; byte
    .byte $77,$0f,$d5,$ed,$75,$de,$40,$00   ; byte
    .byte $00,$01                           ; byte

MIST_BLOCKS_SCREEN_74:
    .byte $ce,$f2,$10,$00,$00,$00,$77,$dd   ; byte
    .byte $6c,$00,$00,$00,$76,$8d,$d3,$75   ; byte
    .byte $cb,$35,$4d,$d3,$75,$cb,$35,$7d   ; byte
    .byte $d3,$75,$d5,$32,$cd,$d3,$75,$5d   ; byte
    .byte $d6,$b7,$4d,$d6,$b7,$4d,$d6,$b7   ; byte
    .byte $4d,$d6,$77,$bd,$df,$70,$00,$00   ; byte
    .byte $00,$d6,$dd,$9f,$6a,$d5,$75,$6d   ; byte
    .byte $9c,$00,$00,$d7,$76,$ed,$bf,$70   ; byte
    .byte $d7,$00,$00,$00,$75,$4d,$ef,$6a   ; byte
    .byte $d7,$43,$70,$d7,$77,$0d,$77,$70   ; byte
    .byte $d7,$77,$0d,$77,$70,$ce,$f5,$97   ; byte
    .byte $68,$dc,$1d,$c3,$2c,$b2,$cb,$2c   ; byte
    .byte $b2,$cb,$2c,$76,$8d,$bb,$6f,$d3   ; byte
    .byte $ad,$3b,$57,$d3,$b5,$4d,$3b,$54   ; byte
    .byte $d3,$b5,$5d,$3b,$54,$5d,$73,$0f   ; byte
    .byte $d4,$6d,$72,$d4,$6d,$72,$d4,$6d   ; byte
    .byte $72,$5d,$77,$54,$d4,$ed,$77,$51   ; byte
    .byte $d4,$ed,$77,$51,$d4,$ed,$77,$51   ; byte
    .byte $de,$40,$00,$00,$00               ; byte

MIST_BLOCKS_SCREEN_75:
    .byte $c8,$40,$00,$00,$00,$d6,$f7,$dd   ; byte
    .byte $6c,$00,$00,$00,$cb,$0d,$d3,$75   ; byte
    .byte $cb,$35,$4d,$d3,$75,$cb,$35,$7d   ; byte
    .byte $d3,$75,$d5,$32,$cd,$d3,$75,$37   ; byte
    .byte $4d,$d6,$b7,$4d,$d6,$b7,$4d,$d6   ; byte
    .byte $b7,$4d,$d6,$dd,$f7,$00,$00,$00   ; byte
    .byte $00,$d9,$c0,$35,$9d,$ab,$0f,$d5   ; byte
    .byte $b6,$70,$00,$d7,$00,$00,$00,$00   ; byte
    .byte $dc,$35,$d3,$70,$d7,$43,$70,$d7   ; byte
    .byte $77,$0d,$77,$70,$d7,$77,$0d,$77   ; byte
    .byte $70,$cb,$1d,$c3,$2c,$9d,$c3,$2c   ; byte
    .byte $b2,$cb,$2c,$b2,$cb,$2c,$d3,$b7   ; byte
    .byte $0d,$3b,$0f,$d3,$ad,$3b,$57,$d3   ; byte
    .byte $b5,$4d,$3b,$54,$d3,$b5,$5d,$3b   ; byte
    .byte $54,$d4,$6d,$72,$d4,$6d,$72,$d4   ; byte
    .byte $6d,$72,$d4,$6d,$72,$d4,$ed,$77   ; byte
    .byte $51,$d4,$ed,$77,$51,$d4,$ed,$77   ; byte
    .byte $51,$d4,$ed,$77,$51,$de,$40,$00   ; byte
    .byte $00,$00                           ; byte

MIST_BLOCKS_SCREEN_76:
    .byte $c8,$40,$00,$00,$00,$d6,$f7,$dd   ; byte
    .byte $6c,$00,$00,$03,$2a,$cb,$0d,$d3   ; byte
    .byte $75,$cb,$35,$4d,$d3,$75,$cb,$35   ; byte
    .byte $7d,$d3,$75,$d5,$32,$cd,$ef,$3a   ; byte
    .byte $dd,$77,$4d,$d6,$d5,$b6,$70,$00   ; byte
    .byte $07,$2a,$dd,$f7,$03,$56,$da,$b7   ; byte
    .byte $00,$00,$07,$3a,$d9,$cd,$67,$6a   ; byte
    .byte $c3,$f5,$43,$57,$c3,$cd,$57,$0f   ; byte
    .byte $d5,$35,$77,$2a,$d7,$00,$00,$00   ; byte
    .byte $07,$3a,$dc,$35,$dd,$c0,$35,$d3   ; byte
    .byte $70,$d7,$43,$70,$d7,$77,$07,$2a   ; byte
    .byte $cb,$1c,$eb,$3b,$d9,$1d,$c3,$2c   ; byte
    .byte $9d,$c3,$2c,$b2,$c7,$3a,$d3,$b7   ; byte
    .byte $0c,$ab,$2b,$da,$37,$0d,$3b,$57   ; byte
    .byte $d3,$ad,$3b,$55,$d3,$b5,$5d,$bb   ; byte
    .byte $2a,$d4,$6c,$eb,$3b,$74,$ed,$72   ; byte
    .byte $d4,$6d,$72,$d4,$6d,$73,$3a,$d4   ; byte
    .byte $ec,$ab,$2b,$de,$b6,$4d,$77,$51   ; byte
    .byte $d4,$ed,$77,$51,$d4,$ed,$77,$2a   ; byte
    .byte $de,$40,$00,$00,$00               ; byte

MIST_BLOCKS_SCREEN_77:
    .byte $c8,$40,$00,$00,$00,$ce,$f7,$dd   ; byte
    .byte $6c,$00,$00,$00,$76,$8d,$57,$74   ; byte
    .byte $d7,$37,$5d,$d3,$5c,$dd,$77,$4d   ; byte
    .byte $73,$75,$d5,$f0,$f0,$5c,$b3,$76   ; byte
    .byte $dc,$37,$7d,$db,$70,$dd,$f7,$6d   ; byte
    .byte $c3,$77,$cb,$0d,$51,$75,$93,$5c   ; byte
    .byte $00,$00,$c3,$dd,$5b,$59,$76,$8c   ; byte
    .byte $3f,$5d,$d5,$b5,$d3,$56,$d7,$4d   ; byte
    .byte $5b,$7e,$75,$6d,$ab,$0f,$5d,$f9   ; byte
    .byte $d7,$13,$5c,$4d,$73,$5d,$40,$5c   ; byte
    .byte $b1,$dc,$13,$70,$4d,$c1,$cb,$37   ; byte
    .byte $bd,$a9,$5d,$51,$d7,$13,$5c,$4d   ; byte
    .byte $71,$c3,$dd,$9e,$5c,$3f,$76,$b7   ; byte
    .byte $7d,$da,$dd,$f7,$6b,$77,$d5,$76   ; byte
    .byte $ed,$59,$57,$54,$70,$fd,$51,$d5   ; byte
    .byte $70,$f7,$55,$d5,$35,$75,$5c,$b0   ; byte
    .byte $72,$c1,$cb,$07,$2c,$05,$de,$40   ; byte
    .byte $00,$00,$00                       ; byte

MIST_BLOCKS_SCREEN_78:
    .byte $c8,$40,$00,$00,$00,$d6,$c0,$00   ; byte
    .byte $00,$00,$c3,$cd,$57,$0f,$d5,$35   ; byte
    .byte $5c,$3f,$55,$d5,$f0,$f3,$54,$c3   ; byte
    .byte $f5,$5c,$3f,$57,$cb,$0d,$ef,$6a   ; byte
    .byte $cb,$07,$2c,$1c,$b3,$55,$cb,$0d   ; byte
    .byte $52,$d6,$47,$68,$c3,$d5,$d5,$57   ; byte
    .byte $54,$9c,$3c,$d9,$f6,$8d,$bb,$6f   ; byte
    .byte $d5,$47,$55,$35,$7d,$53,$0f,$d5   ; byte
    .byte $b6,$a7,$56,$5c,$3c,$75,$4a,$21   ; byte
    .byte $54,$77,$bd,$ab,$5c,$b5,$c1,$d7   ; byte
    .byte $37,$bd,$ab,$5c,$77,$b9,$5d,$9f   ; byte
    .byte $64,$b7,$02,$dc,$1d,$9e,$5d,$9c   ; byte
    .byte $36,$9d,$bf,$74,$37,$5d,$d3,$75   ; byte
    .byte $36,$ed,$59,$75,$bd,$3b,$0f,$03   ; byte
    .byte $76,$55,$dd,$f7,$65,$d5,$34,$ed   ; byte
    .byte $45,$0c,$b0,$dc,$00,$cb,$05,$cb   ; byte
    .byte $0d,$4d,$de,$40,$00,$00,$00       ; byte

MIST_BLOCKS_SCREEN_79:
    .byte $c8,$40,$00,$00,$03,$3a,$d6,$c0   ; byte
    .byte $00,$00,$03,$2a,$dd,$37,$5d,$73   ; byte
    .byte $74,$dd,$75,$cd,$d3,$75,$d7,$37   ; byte
    .byte $4d,$d7,$5c,$dd,$37,$5d,$73,$3a   ; byte
    .byte $dd,$b7,$7d,$c3,$76,$dd,$f7,$0d   ; byte
    .byte $db,$77,$dc,$37,$6d,$df,$70,$dd   ; byte
    .byte $b7,$7d,$c3,$2a,$d7,$0d,$53,$5c   ; byte
    .byte $35,$7d,$70,$d5,$75,$c3,$54,$d7   ; byte
    .byte $0d,$ef,$3a,$d9,$c0,$00,$00,$35   ; byte
    .byte $97,$2a,$c3,$f5,$5c,$3f,$55,$35   ; byte
    .byte $4d,$57,$0f,$35,$53,$0f,$0d,$bb   ; byte
    .byte $3a,$75,$4d,$5f,$54,$70,$fb,$57   ; byte
    .byte $40,$03,$2a,$d9,$c0,$00,$00,$03   ; byte
    .byte $3a,$cf,$34,$ec,$f0,$d3,$b3,$c3   ; byte
    .byte $4e,$cf,$0d,$3b,$3c,$34,$ec,$f3   ; byte
    .byte $2a,$d3,$b5,$1c,$3f,$4e,$d4,$70   ; byte
    .byte $fd,$3b,$51,$c3,$f4,$ed,$47,$0f   ; byte
    .byte $d3,$b5,$1c,$3f,$6b,$c3,$f5,$34   ; byte
    .byte $d4,$d3,$53,$4d,$4d,$35,$37,$6c   ; byte
    .byte $de,$40,$00,$00,$00               ; byte

MIST_BLOCKS_SCREEN_80:
    .byte $c8,$40,$00,$00,$00,$ce,$f7,$dd   ; byte
    .byte $6c,$00,$00,$00,$ca,$f6,$8d,$53   ; byte
    .byte $55,$30,$fd,$57,$0f,$00,$d5,$70   ; byte
    .byte $f0,$ce,$dc,$b0,$d5,$f2,$c3,$54   ; byte
    .byte $cb,$07,$2c,$72,$c7,$2c,$ca,$f6   ; byte
    .byte $70,$d6,$76,$ad,$57,$57,$75,$45   ; byte
    .byte $d5,$15,$ce,$f6,$8d,$5f,$54,$35   ; byte
    .byte $53,$67,$00,$35,$9d,$9c,$ca,$dc   ; byte
    .byte $3c,$d5,$70,$fd,$53,$0f,$35,$7c   ; byte
    .byte $3c,$d5,$35,$5c,$3f,$55,$ce,$dd   ; byte
    .byte $70,$de,$f6,$ad,$ef,$6a,$d7,$00   ; byte
    .byte $de,$f6,$ad,$ef,$6a,$ca,$dd,$74   ; byte
    .byte $76,$77,$68,$d7,$40,$75,$97,$68   ; byte
    .byte $ce,$dd,$c0,$db,$b4,$ed,$bb,$6f   ; byte
    .byte $dc,$00,$db,$b4,$ed,$bb,$6f,$ca   ; byte
    .byte $dd,$af,$0f,$d4,$76,$7d,$47,$57   ; byte
    .byte $d7,$35,$1d,$70,$d4,$75,$9d,$47   ; byte
    .byte $5c,$ce,$dd,$b1,$d4,$f4,$ed,$4f   ; byte
    .byte $55,$d7,$75,$3d,$74,$d4,$f4,$ed   ; byte
    .byte $4f,$5d,$de,$40,$00,$00,$00       ; byte

MIST_BLOCKS_SCREEN_81:
    .byte $c8,$40,$00,$00,$00,$d6,$c0,$00   ; byte
    .byte $00,$00,$c3,$cd,$53,$55,$30,$fd   ; byte
    .byte $57,$0f,$00,$d5,$70,$f0,$cb,$1c   ; byte
    .byte $b0,$d5,$f2,$c3,$54,$cb,$07,$2c   ; byte
    .byte $72,$c7,$2c,$14,$c3,$c7,$57,$75   ; byte
    .byte $45,$d5,$15,$d9,$f5,$9d,$ab,$55   ; byte
    .byte $d5,$b6,$70,$00,$35,$9d,$9c,$c3   ; byte
    .byte $f5,$cc,$3f,$5c,$b0,$fd,$53,$0f   ; byte
    .byte $d7,$35,$7d,$70,$d5,$35,$cc,$3f   ; byte
    .byte $5c,$75,$db,$5d,$de,$f6,$ad,$ef   ; byte
    .byte $6a,$d7,$6d,$74,$de,$f6,$ad,$ef   ; byte
    .byte $6a,$50,$76,$77,$68,$40,$75,$97   ; byte
    .byte $68,$d4,$77,$00,$db,$b4,$ed,$bb   ; byte
    .byte $6f,$dc,$00,$db,$b4,$ed,$bb,$6f   ; byte
    .byte $d4,$f0,$fd,$47,$0f,$d4,$76,$7d   ; byte
    .byte $47,$57,$d4,$75,$cd,$47,$5c,$d4   ; byte
    .byte $75,$9d,$47,$5c,$5d,$4f,$57,$d4   ; byte
    .byte $f4,$ed,$4f,$55,$d4,$f5,$dd,$4f   ; byte
    .byte $5d,$d4,$f4,$ed,$4f,$5d,$de,$40   ; byte
    .byte $00,$00,$00                       ; byte

MIST_BLOCKS_SCREEN_82:
    .byte $c8,$40,$00,$00,$00,$d6,$c0,$00   ; byte
    .byte $00,$03,$3a,$c3,$cd,$53,$55,$30   ; byte
    .byte $fd,$57,$0f,$d5,$70,$fd,$57,$0f   ; byte
    .byte $d5,$4d,$5f,$2a,$cb,$1c,$b0,$d5   ; byte
    .byte $f2,$c3,$54,$cb,$0d,$53,$2c,$77   ; byte
    .byte $bd,$ab,$3a,$54,$c3,$c7,$57,$75   ; byte
    .byte $4d,$5f,$56,$d9,$dd,$67,$2a,$d9   ; byte
    .byte $c0,$00,$d6,$76,$ad,$56,$c3,$f6   ; byte
    .byte $ed,$bf,$3a,$c3,$f5,$cd,$53,$5c   ; byte
    .byte $d5,$70,$fd,$53,$0f,$d7,$00,$23   ; byte
    .byte $2a,$d5,$f5,$db,$5d,$de,$f6,$ad   ; byte
    .byte $ef,$6a,$d7,$40,$1d,$ef,$3a,$d5   ; byte
    .byte $1d,$c1,$76,$77,$68,$dc,$1d,$c1   ; byte
    .byte $dc,$35,$97,$2a,$d4,$77,$0d,$46   ; byte
    .byte $db,$b4,$ed,$bb,$6f,$d4,$6d,$46   ; byte
    .byte $d4,$74,$ed,$bb,$3a,$d4,$f5,$5d   ; byte
    .byte $4f,$0f,$d4,$76,$7d,$47,$57,$d4   ; byte
    .byte $f5,$cd,$4f,$5c,$d4,$f5,$5d,$47   ; byte
    .byte $2a,$70,$f7,$57,$d4,$f4,$ed,$4f   ; byte
    .byte $55,$75,$d7,$5d,$74,$ed,$4f,$3a   ; byte
    .byte $de,$40,$00,$00,$00               ; byte

TOWNS_BLOCKS:
    bank_offset_16 TOWNS_BLOCKS_SCREEN_00   ; TOWNS_BLOCKS_SCREEN_00
    bank_offset_16 TOWNS_BLOCKS_SCREEN_01   ; TOWNS_BLOCKS_SCREEN_01
    bank_offset_16 TOWNS_BLOCKS_SCREEN_02   ; TOWNS_BLOCKS_SCREEN_02
    bank_offset_16 TOWNS_BLOCKS_SCREEN_03   ; TOWNS_BLOCKS_SCREEN_03
    bank_offset_16 TOWNS_BLOCKS_SCREEN_04   ; TOWNS_BLOCKS_SCREEN_04
    bank_offset_16 TOWNS_BLOCKS_SCREEN_05   ; TOWNS_BLOCKS_SCREEN_05
    bank_offset_16 TOWNS_BLOCKS_SCREEN_06   ; TOWNS_BLOCKS_SCREEN_06
    bank_offset_16 TOWNS_BLOCKS_SCREEN_07   ; TOWNS_BLOCKS_SCREEN_07
    bank_offset_16 TOWNS_BLOCKS_SCREEN_08   ; TOWNS_BLOCKS_SCREEN_08
    bank_offset_16 TOWNS_BLOCKS_SCREEN_09   ; TOWNS_BLOCKS_SCREEN_09
    bank_offset_16 TOWNS_BLOCKS_SCREEN_10   ; TOWNS_BLOCKS_SCREEN_10
    bank_offset_16 TOWNS_BLOCKS_SCREEN_11   ; TOWNS_BLOCKS_SCREEN_11
    bank_offset_16 TOWNS_BLOCKS_SCREEN_12   ; TOWNS_BLOCKS_SCREEN_12
    bank_offset_16 TOWNS_BLOCKS_SCREEN_13   ; TOWNS_BLOCKS_SCREEN_13

;
; XREFS:
;     TOWNS_BLOCKS [$b89c]
;
TOWNS_BLOCKS_SCREEN_00:
    .byte $d3,$70,$90,$00,$34,$dc,$24,$00   ; byte
    .byte $44,$00,$08,$40,$14,$03,$4d,$47   ; byte
    .byte $09,$00,$00,$00,$ca,$b4,$d0,$00   ; byte
    .byte $40,$03,$20,$c9,$32,$17,$6f,$d1   ; byte
    .byte $74,$4d,$07,$6f,$4c,$ab,$45,$d0   ; byte
    .byte $34,$1c,$ab,$1f,$d5,$72,$25,$c7   ; byte
    .byte $f2,$4c,$89,$4d,$af,$3f,$d1,$34   ; byte
    .byte $2d,$af,$5d,$d7,$f5,$e7,$14,$d3   ; byte
    .byte $b5,$5c,$db,$19,$4d,$93,$6a,$0d   ; byte
    .byte $93,$59,$d5,$b5,$85,$c4,$c0,$4d   ; byte
    .byte $af,$68,$d6,$b6,$9d,$af,$5d,$d7   ; byte
    .byte $f5,$ed,$bf,$4f,$d4,$35,$cd,$40   ; byte
    .byte $d3,$1d,$93,$67,$ce,$b6,$7d,$93   ; byte
    .byte $59,$d5,$35,$87,$4e,$d8,$73,$ad   ; byte
    .byte $83,$28,$57,$52,$ce,$f5,$27,$39   ; byte
    .byte $d4,$f5,$75,$ca,$33,$bc,$a0,$c0   ; byte
    .byte $80,$00,$00,$00,$c0,$40,$00,$00   ; byte
    .byte $00                               ; byte

TOWNS_BLOCKS_SCREEN_01:
    .byte $c2,$4d,$34,$c2,$72,$ac,$24,$00   ; byte
    .byte $00,$34,$d3,$09,$c8,$32,$3d,$bf   ; byte
    .byte $4d,$4d,$34,$40,$00,$c7,$dc,$8a   ; byte
    .byte $10,$00,$d3,$43,$6f,$c5,$72,$5c   ; byte
    .byte $5b,$00,$74,$6d,$1d,$00,$db,$c7   ; byte
    .byte $14,$c6,$31,$9c,$63,$1a,$73,$ed   ; byte
    .byte $03,$41,$db,$c0,$85,$31,$2c,$5c   ; byte
    .byte $d1,$73,$fd,$13,$42,$b0,$04,$c6   ; byte
    .byte $31,$97,$15,$c4,$30,$fc,$47,$16   ; byte
    .byte $cb,$72,$e0,$cf,$70,$9d,$13,$1a   ; byte
    .byte $c4,$c7,$03,$c2,$b0,$ec,$2b,$1e   ; byte
    .byte $cb,$32,$fc,$df,$38,$cf,$31,$9c   ; byte
    .byte $4f,$17,$d4,$33,$c5,$c1,$30,$5c   ; byte
    .byte $1d,$ca,$f3,$2c,$cf,$34,$cd,$b4   ; byte
    .byte $fd,$43,$36,$ca,$33,$65,$c1,$b1   ; byte
    .byte $cc,$21,$73,$1c,$eb,$35,$74,$ed   ; byte
    .byte $53,$4b,$55,$71,$d5,$73,$0c,$ef   ; byte
    .byte $36,$1d,$4d,$c0,$80,$00,$00,$00   ; byte
    .byte $c0,$40,$00,$00,$00               ; byte

TOWNS_BLOCKS_SCREEN_02:
    .byte $d3,$40,$36,$fd,$34,$00,$00,$00   ; byte
    .byte $03,$6f,$4d,$bc,$40,$00,$0d,$bc   ; byte
    .byte $40,$c2,$41,$00,$04,$d1,$b4,$74   ; byte
    .byte $41,$00,$07,$4d,$cf,$b4,$0d,$05   ; byte
    .byte $41,$00,$db,$cb,$45,$cf,$f4,$4d   ; byte
    .byte $0a,$c5,$31,$8c,$6a,$4c,$27,$6f   ; byte
    .byte $34,$dc,$27,$1f,$cb,$72,$ec,$f7   ; byte
    .byte $22,$71,$3c,$5d,$41,$30,$9b,$5d   ; byte
    .byte $d7,$c3,$5e,$c5,$75,$ac,$59,$40   ; byte
    .byte $c2,$43,$59,$d3,$b5,$bc,$db,$58   ; byte
    .byte $c0,$f0,$dc,$31,$d3,$10,$41,$75   ; byte
    .byte $45,$71,$c7,$4d,$50,$74,$d5,$75   ; byte
    .byte $35,$71,$d5,$c0,$80,$00,$00,$00   ; byte
    .byte $c0,$40,$00,$00,$00               ; byte

TOWNS_BLOCKS_SCREEN_03:
    .byte $d3,$4d,$bc,$0d,$34,$0d,$bf,$4d   ; byte
    .byte $00,$07,$2a,$d3,$43,$6f,$40,$00   ; byte
    .byte $0c,$ab,$62,$90,$90,$00,$0d,$88   ; byte
    .byte $1d,$bc,$80,$00,$31,$47,$18,$71   ; byte
    .byte $a8,$00,$00,$db,$dc,$4f,$12,$c4   ; byte
    .byte $f1,$7d,$bf,$45,$d0,$34,$17,$63   ; byte
    .byte $71,$4c,$63,$19,$b1,$5c,$43,$0f   ; byte
    .byte $c4,$71,$6c,$ab,$1f,$cb,$b2,$2c   ; byte
    .byte $53,$62,$c6,$9c,$4c,$db,$f0,$3c   ; byte
    .byte $2b,$0e,$c2,$b0,$cd,$3f,$5d,$cd   ; byte
    .byte $f5,$e7,$13,$c5,$f4,$fc,$e3,$3c   ; byte
    .byte $5c,$13,$05,$c1,$dd,$3b,$59,$cc   ; byte
    .byte $f5,$8d,$3f,$50,$cf,$34,$ed,$5b   ; byte
    .byte $36,$5c,$1b,$1c,$c2,$15,$d5,$1d   ; byte
    .byte $3b,$3a,$cd,$9d,$53,$4b,$57,$1d   ; byte
    .byte $57,$39,$d4,$f5,$77,$3b,$5d,$4d   ; byte
    .byte $c0,$80,$00,$00,$00,$c0,$40,$00   ; byte
    .byte $00,$00                           ; byte

TOWNS_BLOCKS_SCREEN_04:
    .byte $db,$cd,$34,$00,$00,$00,$41,$00   ; byte
    .byte $0d,$bc,$01,$74,$d4,$01,$36,$f0   ; byte
    .byte $01,$40,$34,$d0,$00,$00,$40,$01   ; byte
    .byte $36,$f0,$00,$0d,$17,$40,$d0,$51   ; byte
    .byte $1d,$37,$63,$d3,$71,$4c,$63,$19   ; byte
    .byte $4c,$7f,$23,$c8,$91,$db,$cc,$53   ; byte
    .byte $62,$c6,$9c,$4c,$72,$0c,$93,$5c   ; byte
    .byte $b2,$15,$47,$13,$c5,$f4,$fd,$43   ; byte
    .byte $3c,$74,$6c,$b7,$2e,$cf,$74,$74   ; byte
    .byte $0c,$57,$5b,$c5,$b4,$ed,$6b,$36   ; byte
    .byte $d3,$1d,$3f,$3a,$cf,$14,$0c,$0f   ; byte
    .byte $1c,$c3,$1c,$e9,$5c,$cb,$3b,$cd   ; byte
    .byte $94,$07,$1d,$5c,$ed,$c0,$80,$00   ; byte
    .byte $00,$00,$c0,$40,$00,$00,$00       ; byte

TOWNS_BLOCKS_SCREEN_05:
    .byte $d3,$40,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$34   ; byte
    .byte $5d,$03,$41,$40,$00,$00,$31,$fc   ; byte
    .byte $8f,$22,$40,$00,$00,$c8,$34,$e7   ; byte
    .byte $36,$c8,$50,$c4,$c3,$45,$d1,$34   ; byte
    .byte $14,$c7,$f2,$fc,$df,$38,$c8,$90   ; byte
    .byte $c5,$72,$5c,$5b,$1f,$c9,$32,$24   ; byte
    .byte $d3,$cc,$cf,$3c,$10,$c0,$f5,$6c   ; byte
    .byte $33,$4f,$d4,$33,$cc,$67,$17,$d3   ; byte
    .byte $b3,$1c,$f3,$35,$cd,$90,$71,$c7   ; byte
    .byte $4e,$ce,$b3,$6c,$98,$73,$0c,$ea   ; byte
    .byte $53,$4c,$71,$d5,$ce,$dc,$c3,$28   ; byte
    .byte $5c,$ef,$36,$11,$c0,$80,$00,$00   ; byte
    .byte $00,$c0,$40,$00,$00,$00           ; byte

TOWNS_BLOCKS_SCREEN_06:
    .byte $d3,$40,$00,$00,$00,$03,$2a,$40   ; byte
    .byte $00,$00,$0c,$83,$24,$c8,$50,$00   ; byte
    .byte $00,$34,$cc,$7d,$c8,$90,$00,$00   ; byte
    .byte $32,$0c,$93,$44,$b2,$14,$00,$00   ; byte
    .byte $31,$fc,$28,$32,$24,$c5,$31,$2c   ; byte
    .byte $4f,$12,$c5,$d0,$31,$5c,$13,$0f   ; byte
    .byte $c1,$f1,$64,$71,$30,$71,$9c,$4f   ; byte
    .byte $17,$70,$3c,$1b,$0e,$c2,$30,$c4   ; byte
    .byte $d3,$f2,$fc,$df,$2f,$cf,$34,$dc   ; byte
    .byte $9b,$3c,$57,$0b,$5c,$67,$13,$cc   ; byte
    .byte $8c,$cf,$34,$cd,$b3,$0c,$a3,$36   ; byte
    .byte $d3,$17,$1c,$5d,$37,$25,$73,$1c   ; byte
    .byte $eb,$35,$5d,$51,$57,$1d,$5c,$03   ; byte
    .byte $0b,$73,$0c,$ef,$22,$5d,$4d,$c0   ; byte
    .byte $80,$00,$00,$00,$c0,$40,$00,$00   ; byte
    .byte $00                               ; byte

TOWNS_BLOCKS_SCREEN_07:
    .byte $d3,$40,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$03,$45,$d0,$34,$17,$2a,$70   ; byte
    .byte $90,$04,$ca,$9c,$ab,$3f,$d5,$b4   ; byte
    .byte $2c,$83,$24,$c8,$50,$01,$d9,$36   ; byte
    .byte $ad,$93,$2d,$cb,$b3,$dc,$7d,$c8   ; byte
    .byte $93,$2d,$cb,$83,$3d,$75,$b7,$5d   ; byte
    .byte $d7,$f5,$ed,$3f,$50,$cf,$13,$4f   ; byte
    .byte $d1,$35,$0d,$13,$3c,$76,$77,$59   ; byte
    .byte $ca,$35,$8c,$cb,$5a,$cd,$93,$2d   ; byte
    .byte $cb,$b5,$cc,$bb,$3d,$73,$a5,$d5   ; byte
    .byte $1d,$3b,$54,$76,$f3,$4f,$33,$ac   ; byte
    .byte $f3,$4b,$73,$b5,$d4,$d7,$53,$53   ; byte
    .byte $4e,$33,$bc,$d9,$c0,$80,$00,$00   ; byte
    .byte $00,$c0,$40,$00,$00,$00           ; byte

TOWNS_BLOCKS_SCREEN_08:
    .byte $db,$cd,$34,$00,$00,$00,$41,$00   ; byte
    .byte $0d,$bc,$01,$74,$d4,$03,$20,$c8   ; byte
    .byte $72,$ac,$83,$21,$41,$40,$32,$ad   ; byte
    .byte $37,$1f,$c8,$b6,$bc,$7f,$22,$d3   ; byte
    .byte $40,$74,$6d,$1d,$c8,$32,$3c,$87   ; byte
    .byte $15,$c5,$b6,$4c,$57,$16,$db,$c0   ; byte
    .byte $33,$ed,$03,$41,$c7,$dc,$8b,$03   ; byte
    .byte $c3,$32,$5c,$0f,$0c,$c7,$b1,$9c   ; byte
    .byte $63,$19,$d3,$73,$fd,$13,$42,$da   ; byte
    .byte $f6,$ad,$ad,$70,$f5,$c6,$71,$30   ; byte
    .byte $db,$f4,$f3,$36,$d9,$35,$bd,$91   ; byte
    .byte $70,$e5,$d3,$cc,$df,$3c,$74,$ec   ; byte
    .byte $8d,$76,$a5,$c5,$31,$3c,$5d,$d3   ; byte
    .byte $8c,$cf,$36,$d3,$1c,$e9,$da,$f5   ; byte
    .byte $4d,$ad,$c1,$31,$cc,$1d,$73,$1c   ; byte
    .byte $eb,$35,$5c,$ed,$d9,$35,$3d,$91   ; byte
    .byte $c1,$b1,$dc,$21,$73,$0c,$ef,$36   ; byte
    .byte $c0,$80,$00,$00,$00,$c0,$40,$00   ; byte
    .byte $00,$00                           ; byte

TOWNS_BLOCKS_SCREEN_09:
    .byte $db,$cd,$34,$00,$00,$00,$41,$00   ; byte
    .byte $0d,$bc,$01,$74,$d4,$01,$00,$41   ; byte
    .byte $40,$34,$d0,$00,$00,$74,$d1,$d3   ; byte
    .byte $40,$ca,$81,$db,$c0,$c5,$d0,$03   ; byte
    .byte $20,$cc,$b2,$3c,$d3,$21,$80,$50   ; byte
    .byte $03,$1f,$c9,$03,$22,$c6,$71,$3c   ; byte
    .byte $5d,$cf,$10,$03,$15,$c5,$b5,$ac   ; byte
    .byte $57,$16,$d3,$f3,$8c,$f1,$cd,$90   ; byte
    .byte $03,$03,$c3,$32,$5c,$0f,$0c,$ca   ; byte
    .byte $f5,$cc,$d9,$50,$01,$71,$c5,$d3   ; byte
    .byte $b5,$47,$4c,$50,$01,$71,$d5,$75   ; byte
    .byte $35,$c0,$80,$00,$00,$00,$c0,$40   ; byte
    .byte $00,$00,$00                       ; byte

TOWNS_BLOCKS_SCREEN_10:
    .byte $db,$cd,$34,$00,$00,$00,$41,$00   ; byte
    .byte $0d,$bc,$01,$74,$d4,$01,$00,$41   ; byte
    .byte $40,$34,$d0,$32,$0c,$85,$00,$74   ; byte
    .byte $d3,$2a,$d3,$74,$5d,$03,$41,$71   ; byte
    .byte $fc,$89,$36,$f0,$8c,$83,$23,$c8   ; byte
    .byte $71,$fc,$e3,$22,$c8,$33,$2c,$d3   ; byte
    .byte $21,$d1,$74,$4d,$07,$4d,$0c,$7d   ; byte
    .byte $c8,$b4,$ec,$8f,$36,$c7,$f3,$1c   ; byte
    .byte $d7,$36,$c6,$71,$3c,$5d,$0d,$3f   ; byte
    .byte $56,$cf,$31,$5c,$97,$16,$c5,$72   ; byte
    .byte $53,$16,$d3,$f3,$8c,$f1,$0d,$3b   ; byte
    .byte $5f,$cd,$b0,$3d,$6b,$0c,$c0,$f0   ; byte
    .byte $d3,$0c,$cc,$b5,$cc,$d9,$d3,$17   ; byte
    .byte $3a,$5c,$71,$71,$cd,$6d,$d3,$b5   ; byte
    .byte $45,$57,$3b,$5c,$75,$71,$dc,$2d   ; byte
    .byte $75,$35,$c0,$80,$00,$00,$00,$c0   ; byte
    .byte $40,$00,$00,$00                   ; byte

TOWNS_BLOCKS_SCREEN_11:
    .byte $db,$cd,$34,$0c,$ab,$4d,$00,$00   ; byte
    .byte $41,$32,$0c,$93,$21,$4d,$bc,$01   ; byte
    .byte $74,$d4,$31,$fc,$f7,$22,$40,$41   ; byte
    .byte $40,$ca,$b1,$5c,$4b,$16,$ca,$90   ; byte
    .byte $00,$74,$d1,$d8,$b1,$0c,$3f,$11   ; byte
    .byte $d8,$90,$03,$6f,$83,$2a,$70,$3c   ; byte
    .byte $3b,$0c,$72,$a4,$d1,$74,$4d,$06   ; byte
    .byte $03,$62,$c4,$f0,$a0,$c5,$e4,$cb   ; byte
    .byte $72,$ec,$f5,$03,$04,$c5,$70,$4c   ; byte
    .byte $97,$07,$c5,$b0,$74,$d3,$f5,$0c   ; byte
    .byte $f1,$03,$06,$c0,$f0,$6c,$2f,$08   ; byte
    .byte $c3,$30,$8c,$9b,$22,$d3,$b5,$fc   ; byte
    .byte $d9,$01,$5c,$71,$5c,$c3,$36,$75   ; byte
    .byte $47,$4c,$41,$5c,$75,$55,$75,$35   ; byte
    .byte $c0,$80,$00,$00,$00,$c0,$40,$00   ; byte
    .byte $00,$00                           ; byte

TOWNS_BLOCKS_SCREEN_12:
    .byte $db,$c0,$00,$00,$00,$03,$2a,$40   ; byte
    .byte $00,$00,$0c,$83,$24,$c8,$50,$00   ; byte
    .byte $00,$0c,$7d,$c8,$b4,$d4,$00,$00   ; byte
    .byte $32,$0c,$28,$32,$14,$00,$00,$31   ; byte
    .byte $fc,$13,$0f,$c1,$f2,$24,$00,$00   ; byte
    .byte $30,$a3,$0e,$c2,$87,$14,$c6,$31   ; byte
    .byte $9c,$63,$1a,$40,$31,$5c,$13,$05   ; byte
    .byte $c1,$f1,$e5,$c4,$c3,$17,$c6,$71   ; byte
    .byte $33,$17,$70,$3c,$1b,$0b,$c2,$30   ; byte
    .byte $c7,$4f,$d7,$75,$cd,$7b,$3c,$cc   ; byte
    .byte $35,$bd,$43,$3c,$d3,$17,$1c,$57   ; byte
    .byte $4e,$d6,$73,$ad,$63,$36,$75,$4c   ; byte
    .byte $a3,$36,$57,$1d,$55,$73,$b5,$75   ; byte
    .byte $35,$c0,$80,$00,$00,$00,$c0,$40   ; byte
    .byte $00,$00,$00                       ; byte

TOWNS_BLOCKS_SCREEN_13:
    .byte $db,$cd,$34,$db,$c0,$00,$00,$04   ; byte
    .byte $74,$d7,$4d,$74,$d1,$00,$07,$6f   ; byte
    .byte $85,$5d,$bc,$00,$00,$01,$07,$4d   ; byte
    .byte $10,$0d,$17,$40,$d0,$50,$00,$44   ; byte
    .byte $c2,$74,$5c,$ff,$44,$d0,$a7,$45   ; byte
    .byte $d0,$03,$41,$91,$71,$fc,$b7,$2e   ; byte
    .byte $cf,$72,$27,$1f,$c9,$03,$22,$45   ; byte
    .byte $74,$fc,$dc,$33,$6c,$9b,$4f,$35   ; byte
    .byte $6c,$f3,$36,$c6,$71,$3c,$5f,$3c   ; byte
    .byte $74,$ec,$cb,$33,$cd,$1c,$c3,$4e   ; byte
    .byte $d7,$75,$fd,$79,$c5,$75,$ac,$59   ; byte
    .byte $d3,$5c,$c7,$3a,$cd,$55,$d6,$73   ; byte
    .byte $ad,$61,$c0,$f1,$cc,$33,$4b,$5c   ; byte
    .byte $c3,$3b,$cf,$15,$73,$b5,$71,$d5   ; byte
    .byte $c0,$80,$00,$00,$00,$c0,$40,$00   ; byte
    .byte $00,$00,$ff,$ff,$ff,$ff,$6f,$ff   ; byte
    .byte $00,$04,$7f,$fe,$ff,$ff,$ff,$ff   ; byte
    .byte $20,$22,$fb,$ff,$f3,$ff,$ff,$ff   ; byte
    .byte $00,$00,$ff,$77,$ff,$ff,$ff,$ff   ; byte
    .byte $00,$58,$df,$ff,$f7,$ff,$ff,$ff   ; byte
    .byte $00,$00,$ff,$ff,$ff,$ff,$fb,$fd   ; byte
    .byte $00,$a0,$df,$ff,$ff,$ff,$fb,$ff   ; byte
    .byte $00,$62,$ff,$f7,$7f,$ff,$9d,$ff   ; byte
    .byte $00,$40,$ff,$ff,$ff,$ff,$6f,$ff   ; byte
    .byte $00,$00,$ff,$f1,$ff,$ff,$ff,$ff   ; byte
    .byte $29,$00,$ff,$ef,$df,$7e,$fe,$ff   ; byte
    .byte $00,$20,$bf,$eb,$ff,$ff,$ff,$ff   ; byte
    .byte $00,$04,$ff,$ff,$ff,$ff,$aa,$ff   ; byte
    .byte $80,$00,$ff,$be,$ff,$7b,$ff,$ff   ; byte
    .byte $2d,$01,$ff,$fb,$ff,$ff,$ff,$ff   ; byte
    .byte $00,$00,$ff,$ff,$ff,$ff,$99,$ff   ; byte
    .byte $80,$00,$ff,$bf,$fe,$ff,$ff,$ff   ; byte
    .byte $00                               ; byte
