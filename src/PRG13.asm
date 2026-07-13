;============================================================================
; Faxanadu (U).nes
;
; PRG13 ($8000 - $bfff)
;============================================================================

    .segment "PRG13"
    .reloc


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
TILE_GLYPHS_START:
TILE_GLYPH_SPACE:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ....█...
; ...██...
; ...██...
; ...█....
; ...█....
; ........
; ..██....
; ........
;
TILE_GLYPH_EXCLAMATION_MARK:
    .byte $08,$18,$18,$10,$10,$00,$30,$00   ; byte


;
; ........
; ........
; ..█.█...
; ..█.█...
; ..█.█...
; ........
; ........
; ........
;
TILE_GLYPH_DOUBLE_QUOTES:
    .byte $00,$00,$28,$28,$28,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
TILE_GLYPH_EMPTY1:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
TILE_GLYPH_EMPTY2:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
TILE_GLYPH_EMPTY3:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
TILE_GLYPH_EMPTY4:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ....█...
; ...██...
; ...█....
; ........
; ........
; ........
; ........
; ........
;
TILE_GLYPH_SINGLE_QUOTE:
    .byte $08,$18,$10,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
TILE_GLYPH_EMPTY5:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
TILE_GLYPH_EMPTY6:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
TILE_GLYPH_EMPTY7:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
TILE_GLYPH_EMPTY8:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; .██.....
; .██.....
; ..█.....
; .█......
; ........
;
TILE_GLYPH_COMMA:
    .byte $00,$00,$00,$60,$60,$20,$40,$00   ; byte


;
; ........
; ........
; ........
; .██████.
; ........
; ........
; ........
; ........
;
TILE_GLYPH_DASH:
    .byte $00,$00,$00,$7e,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ..██....
; ..██....
; ........
;
TILE_GLYPH_PERIOD:
    .byte $00,$00,$00,$00,$00,$30,$30,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
TILE_GLYPH_EMPTY9:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; .█████..
; ██...██.
; ██...██.
; ██...██.
; ██...██.
; ██...██.
; .█████..
; ........
;
TILE_GLYPH_0:
    .byte $7c,$c6,$c6,$c6,$c6,$c6,$7c,$00   ; byte


;
; ...██...
; ..███...
; ...██...
; ...██...
; ...██...
; ...██...
; ..████..
; ........
;
TILE_GLYPH_1:
    .byte $18,$38,$18,$18,$18,$18,$3c,$00   ; byte


;
; .█████..
; ██...██.
; ....███.
; ..████..
; .███....
; ███.....
; ███████.
; ........
;
TILE_GLYPH_2:
    .byte $7c,$c6,$0e,$3c,$70,$e0,$fe,$00   ; byte


;
; .██████.
; ....██..
; ...██...
; ..████..
; .....██.
; ██...██.
; .█████..
; ........
;
TILE_GLYPH_3:
    .byte $7e,$0c,$18,$3c,$06,$c6,$7c,$00   ; byte


;
; ...███..
; ..████..
; .██.██..
; ██..██..
; ██..██..
; ███████.
; ....██..
; ........
;
TILE_GLYPH_4:
    .byte $1c,$3c,$6c,$cc,$cc,$fe,$0c,$00   ; byte


;
; ███████.
; ██......
; ██████..
; ....███.
; .....██.
; ██...██.
; .█████..
; ........
;
TILE_GLYPH_5:
    .byte $fe,$c0,$fc,$0e,$06,$c6,$7c,$00   ; byte


;
; ..████..
; .██.....
; ██......
; ██████..
; ██...██.
; ██...██.
; .█████..
; ........
;
TILE_GLYPH_6:
    .byte $3c,$60,$c0,$fc,$c6,$c6,$7c,$00   ; byte


;
; ███████.
; ██...██.
; ....██..
; ...██...
; ..██....
; ..██....
; ..██....
; ........
;
TILE_GLYPH_7:
    .byte $fe,$c6,$0c,$18,$30,$30,$30,$00   ; byte


;
; .█████..
; ██...██.
; ██...██.
; .█████..
; ██...██.
; ██...██.
; .█████..
; ........
;
TILE_GLYPH_8:
    .byte $7c,$c6,$c6,$7c,$c6,$c6,$7c,$00   ; byte


;
; .█████..
; ██...██.
; ██...██.
; .██████.
; .....██.
; ██...██.
; .█████..
; ........
;
TILE_GLYPH_9:
    .byte $7c,$c6,$c6,$7e,$06,$c6,$7c,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
TILE_GLYPH_EMPTY10:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; .█████..
; ██...██.
; █....██.
; ..████..
; ..██....
; ........
; ..██....
; ........
;
TILE_GLYPH_QUESTION_MASK:
    .byte $7c,$c6,$86,$3c,$30,$00,$30,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ..███...
; ..███...
; ..█.██..
; .██..█..
; .██████.
; .█...██.
; ██..███.
; ........
;
TILE_GLYPH_A:
    .byte $38,$38,$2c,$64,$7e,$46,$ce,$00   ; byte


;
; ██████..
; .██...█.
; .███.██.
; .██.██..
; .██...█.
; .██..██.
; ██████..
; ........
;
TILE_GLYPH_B:
    .byte $fc,$62,$76,$6c,$62,$66,$fc,$00   ; byte


;
; .█████..
; ███..██.
; ██....█.
; ██......
; ██......
; ███..██.
; .█████..
; ........
;
TILE_GLYPH_C:
    .byte $7c,$e6,$c2,$c0,$c0,$e6,$7c,$00   ; byte


;
; █████...
; .█..██..
; .█...██.
; .█...██.
; .█...██.
; ██..███.
; ██████..
; ........
;
TILE_GLYPH_D:
    .byte $f8,$4c,$46,$46,$46,$ce,$fc,$00   ; byte


;
; ███████.
; .██..██.
; .████...
; .█████..
; .██.....
; .██..██.
; ██████..
; ........
;
TILE_GLYPH_E:
    .byte $fe,$66,$78,$7c,$60,$66,$fc,$00   ; byte


;
; ███████.
; .██..██.
; .████...
; .█████..
; .██.....
; .██.....
; ████....
; ........
;
TILE_GLYPH_F:
    .byte $fe,$66,$78,$7c,$60,$60,$f0,$00   ; byte


;
; .█████..
; ███..██.
; ██......
; ██..███.
; ██...██.
; ███..██.
; .█████..
; ........
;
TILE_GLYPH_G:
    .byte $7c,$e6,$c0,$ce,$c6,$e6,$7c,$00   ; byte


;
; ███.███.
; .██..██.
; .███.██.
; .██.███.
; .██..██.
; .██..██.
; ███.████
; ........
;
TILE_GLYPH_H:
    .byte $ee,$66,$76,$6e,$66,$66,$ef,$00   ; byte


;
; ..████..
; ...██...
; ...██...
; ...██...
; ...██...
; ...██...
; ..████..
; ........
;
TILE_GLYPH_I:
    .byte $3c,$18,$18,$18,$18,$18,$3c,$00   ; byte


;
; ....███.
; .....██.
; .....██.
; ██...██.
; ██...██.
; ██..███.
; .█████..
; ........
;
TILE_GLYPH_J:
    .byte $0e,$06,$06,$c6,$c6,$ce,$7c,$00   ; byte


;
; ██..███.
; ██.███..
; █████...
; ████....
; █████.█.
; ██.████.
; ██..██..
; ........
;
TILE_GLYPH_K:
    .byte $ce,$dc,$f8,$f0,$fa,$de,$cc,$00   ; byte


;
; ██......
; ██......
; ██......
; ██......
; ██....█.
; ██...██.
; ███████.
; ........
;
TILE_GLYPH_L:
    .byte $c0,$c0,$c0,$c0,$c2,$c6,$fe,$00   ; byte


;
; ██...██.
; ███.███.
; ███████.
; ██.█.██.
; ██...██.
; ██...██.
; ██...██.
; ........
;
TILE_GLYPH_M:
    .byte $c6,$ee,$fe,$d6,$c6,$c6,$c6,$00   ; byte


;
; ██...██.
; ███..██.
; ████.██.
; ██.████.
; ██..███.
; ██...██.
; ██....█.
; ........
;
TILE_GLYPH_N:
    .byte $c6,$e6,$f6,$de,$ce,$c6,$c2,$00   ; byte


;
; .█████..
; ███.███.
; ██...██.
; ██...██.
; ██...██.
; ███.██..
; .████...
; ........
;
TILE_GLYPH_O:
    .byte $7c,$ee,$c6,$c6,$c6,$ec,$78,$00   ; byte


;
; ██████..
; ██...██.
; ███..██.
; ███..██.
; ██.███..
; ██......
; ██......
; ........
;
TILE_GLYPH_P:
    .byte $fc,$c6,$e6,$e6,$dc,$c0,$c0,$00   ; byte


;
; .█████..
; ██..███.
; ██...██.
; ██...██.
; ██.████.
; ███.██..
; .██████.
; ........
;
TILE_GLYPH_Q:
    .byte $7c,$ce,$c6,$c6,$de,$ec,$7e,$00   ; byte


;
; ██████..
; .█...██.
; .██..██.
; .█████..
; .█.██...
; ██..██..
; ███..██.
; ........
;
TILE_GLYPH_R:
    .byte $fc,$46,$66,$7c,$58,$cc,$e6,$00   ; byte


;
; .█████..
; ██...██.
; ██....█.
; .█████..
; .....██.
; ██...██.
; .█████..
; ........
;
TILE_GLYPH_S:
    .byte $7c,$c6,$c2,$7c,$06,$c6,$7c,$00   ; byte


;
; ███████.
; ██.█.██.
; █..█..█.
; ...█....
; ...█....
; ...█....
; ..███...
; ........
;
TILE_GLYPH_T:
    .byte $fe,$d6,$92,$10,$10,$10,$38,$00   ; byte


;
; ███..██.
; ███..██.
; ██....█.
; ██....█.
; ██....█.
; ███..██.
; .█████..
; ........
;
TILE_GLYPH_U:
    .byte $e6,$e6,$c2,$c2,$c2,$e6,$7c,$00   ; byte


;
; ██...██.
; ██...██.
; ██...██.
; .██.███.
; .██.██..
; ..████..
; ...██...
; ........
;
TILE_GLYPH_V:
    .byte $c6,$c6,$c6,$6e,$6c,$3c,$18,$00   ; byte


;
; ██.██.█.
; ██.██.█.
; █..██.█.
; █████.█.
; ███████.
; ███.███.
; .█...█..
; ........
;
TILE_GLYPH_W:
    .byte $da,$da,$9a,$fa,$fe,$ee,$44,$00   ; byte


;
; █....██.
; ██..███.
; .████...
; ..██....
; .████...
; ██..███.
; █....██.
; ........
;
TILE_GLYPH_X:
    .byte $86,$ce,$78,$30,$78,$ce,$86,$00   ; byte


;
; ██...██.
; ██...██.
; ██...██.
; .█████..
; ..███...
; ...██...
; ..███...
; ........
;
TILE_GLYPH_Y:
    .byte $c6,$c6,$c6,$7c,$38,$18,$38,$00   ; byte


;
; .██████.
; ██..███.
; █..██...
; ..██....
; .██...█.
; ███..██.
; ██████..
; ........
;
TILE_GLYPH_Z:
    .byte $7e,$ce,$98,$30,$62,$e6,$fc,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; .██████.
;
TILE_GLYPH_UNDERSCORE:
    .byte $00,$00,$00,$00,$00,$00,$00,$7e   ; byte


;
; ████████
; ████████
; ████████
; ████████
; ████████
; ████████
; ████████
; ████████
;
TILE_GLYPH_CURSOR:
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; byte


;
; ........
; ..███...
; ....██..
; ..████..
; .██.██..
; .██.███.
; ..█████.
; ........
;
TILE_GLYPH_a:
    .byte $00,$38,$0c,$3c,$6c,$6e,$3e,$00   ; byte


;
; .█......
; .██.....
; .██.....
; .████...
; .██.██..
; .██.██..
; ..███...
; ........
;
TILE_GLYPH_b:
    .byte $40,$60,$60,$78,$6c,$6c,$38,$00   ; byte


;
; ........
; ........
; ..███...
; .█████..
; .██.....
; .██..█..
; ..███...
; ........
;
TILE_GLYPH_c:
    .byte $00,$00,$38,$7c,$60,$64,$38,$00   ; byte


;
; .....█..
; ....██..
; ....██..
; ..████..
; .██.██..
; .██.██..
; ..███...
; ........
;
TILE_GLYPH_d:
    .byte $04,$0c,$0c,$3c,$6c,$6c,$38,$00   ; byte


;
; ........
; ........
; ..███...
; .██..█..
; .█████..
; .██.....
; ..████..
; ........
;
TILE_GLYPH_e:
    .byte $00,$00,$38,$64,$7c,$60,$3c,$00   ; byte


;
; ...███..
; ...██...
; .██████.
; ...██...
; ...██...
; ...██...
; ...██...
; ........
;
TILE_GLYPH_f:
    .byte $1c,$18,$7e,$18,$18,$18,$18,$00   ; byte


;
; ........
; ..███...
; .██.██..
; .██.██..
; ..████..
; ....██..
; .██.██..
; ..███...
;
TILE_GLYPH_g:
    .byte $00,$38,$6c,$6c,$3c,$0c,$6c,$38   ; byte


;
; .██.....
; .██.....
; .██.....
; .████...
; .██.██..
; .██.██..
; .██.██..
; ........
;
TILE_GLYPH_h:
    .byte $60,$60,$60,$78,$6c,$6c,$6c,$00   ; byte


;
; ..██....
; ..██....
; ........
; ..██....
; ..██....
; ..██....
; ..██....
; ........
;
TILE_GLYPH_i:
    .byte $30,$30,$00,$30,$30,$30,$30,$00   ; byte


;
; ...██...
; ...██...
; ........
; ...██...
; ...██...
; .█.██...
; .█.██...
; ..██....
;
TILE_GLYPH_j:
    .byte $18,$18,$00,$18,$18,$58,$58,$30   ; byte


;
; .██.....
; .██.....
; .██..█..
; .██.██..
; .████...
; .████...
; .██.██..
; ........
;
TILE_GLYPH_k:
    .byte $60,$60,$64,$6c,$78,$78,$6c,$00   ; byte


;
; ...█....
; ...██...
; ...██...
; ...██...
; ...██...
; ...██...
; ...██...
; ........
;
TILE_GLYPH_l:
    .byte $10,$18,$18,$18,$18,$18,$18,$00   ; byte


;
; ........
; ........
; .██.██..
; .█.█.██.
; .█.█.██.
; .█.█.██.
; .█.█.██.
; ........
;
TILE_GLYPH_m:
    .byte $00,$00,$6c,$56,$56,$56,$56,$00   ; byte


;
; ........
; ........
; .████...
; .██.██..
; .██.██..
; .██.██..
; .██.██..
; ........
;
TILE_GLYPH_n:
    .byte $00,$00,$78,$6c,$6c,$6c,$6c,$00   ; byte


;
; ........
; ........
; ..███...
; .██.██..
; .██.██..
; .██.██..
; ..███...
; ........
;
TILE_GLYPH_o:
    .byte $00,$00,$38,$6c,$6c,$6c,$38,$00   ; byte


;
; ........
; ........
; .████...
; .██.██..
; .██.██..
; .████...
; .██.....
; .██.....
;
TILE_GLYPH_p:
    .byte $00,$00,$78,$6c,$6c,$78,$60,$60   ; byte


;
; ........
; ........
; ..████..
; .██.██..
; .██.██..
; ..████..
; ....██..
; ....██..
;
TILE_GLYPH_q:
    .byte $00,$00,$3c,$6c,$6c,$3c,$0c,$0c   ; byte


;
; ........
; ........
; .██.██..
; .█████..
; .███....
; .██.....
; .██.....
; ........
;
TILE_GLYPH_r:
    .byte $00,$00,$6c,$7c,$70,$60,$60,$00   ; byte


;
; ........
; ........
; ..████..
; .██.....
; .█████..
; ....██..
; .████...
; ........
;
TILE_GLYPH_s:
    .byte $00,$00,$3c,$60,$7c,$0c,$78,$00   ; byte


;
; ...█....
; ...██...
; .█████..
; ...██...
; ...██...
; ...██...
; ....██..
; ........
;
TILE_GLYPH_t:
    .byte $10,$18,$7c,$18,$18,$18,$0c,$00   ; byte


;
; ........
; ........
; .█..█...
; .██.██..
; .██.██..
; .██.██..
; ..██.█..
; ........
;
TILE_GLYPH_u:
    .byte $00,$00,$48,$6c,$6c,$6c,$34,$00   ; byte


;
; ........
; ........
; .█..█...
; .██.██..
; .██.██..
; ..███...
; ...█....
; ........
;
TILE_GLYPH_v:
    .byte $00,$00,$48,$6c,$6c,$38,$10,$00   ; byte


;
; ........
; ........
; .█.█..█.
; .█.█.██.
; .█.█.██.
; .█.█.██.
; ..█.██..
; ........
;
TILE_GLYPH_w:
    .byte $00,$00,$52,$56,$56,$56,$2c,$00   ; byte


;
; ........
; ........
; .██..██.
; ..████..
; ...██...
; ..█.██..
; .█...██.
; ........
;
TILE_GLYPH_x:
    .byte $00,$00,$66,$3c,$18,$2c,$46,$00   ; byte


;
; ........
; ........
; ..█..█..
; .██.██..
; .██.██..
; ..████..
; ...██...
; .███....
;
TILE_GLYPH_y:
    .byte $00,$00,$24,$6c,$6c,$3c,$18,$70   ; byte


;
; ........
; ........
; .█████..
; ...███..
; ..███...
; .███....
; .█████..
; ........
;
TILE_GLYPH_z:
    .byte $00,$00,$7c,$1c,$38,$70,$7c,$00   ; byte


;
; ........
; ........
; ...█████
; ...█████
; ...█████
; ........
; ........
; ........
;
TILE_GLYPH_RIGHT_ARROW_START:
    .byte $00,$00,$1f,$1f,$1f,$00,$00,$00   ; byte


;
; ........
; ........
; ████████
; ████████
; ████████
; ........
; ........
; ........
;
TILE_GLYPH_ARROW_MIDDLE:
    .byte $00,$00,$ff,$ff,$ff,$00,$00,$00   ; byte


;
; █.......
; ██......
; ███.....
; ████....
; ███.....
; ██......
; █.......
; ........
;
TILE_GLYPH_RIGHT_ARROW_END:
    .byte $80,$c0,$e0,$f0,$e0,$c0,$80,$00   ; byte


;
; .......█
; ......██
; .....███
; ....████
; .....███
; ......██
; .......█
; ........
;
TILE_GLYPH_LEFT_ARROW_END:
    .byte $01,$03,$07,$0f,$07,$03,$01,$00   ; byte


;
; ........
; ........
; █████...
; █████...
; █████...
; ........
; ........
; ........
;
TILE_GLYPH_LEFT_ARROW_START:
    .byte $00,$00,$f8,$f8,$f8,$00,$00,$00   ; byte


;============================================================================
; All messages available for display.
;
; Indexes are 1-based.
;============================================================================
MESSAGE_HELP_WITH_ANYTHING:
MESSAGE_STRINGS:
    .byte "H"                               ; Message 1
    .byte "ello.",$fe,"Co"                  ; char
    .byte "uld",$fd,"I",$fd,"he"            ; char
    .byte "lp",$fd,"youwi"                  ; char
    .byte "th",$fd,"anyth"                  ; char
    .byte "ing.",$fc,"Wha"                  ; char
    .byte "t",$fe,"would",$fd               ; char
    .byte "you",$fd,"like"                  ; char
    .byte "?",$ff                           ; char

MESSAGE_THANK_YOU_FOR_SHOPPING:
    .byte "T"                               ; Message 2
    .byte "hank",$fd,"you"                  ; char
    .byte $fe,"for",$fd,"sho"               ; char
    .byte "pping.",$ff                      ; char

MESSAGE_NOT_ENOUGH_GOLD:
    .byte "T"                               ; Message 3
    .byte "his",$fd,"is",$fd,"n"            ; char
    .byte "ot",$fe,"enoug"                  ; char
    .byte "h",$fd,"Golds."                  ; char
    .byte $ff                               ; char

MESSAGE_ANYTHING_ELSE:
    .byte "A"                               ; Message 4
    .byte "nything",$fd                     ; char
    .byte "else?",$ff                       ; char

MESSAGE_COME_BACK_AGAIN:
    .byte "C"                               ; Message 5
    .byte "ome",$fd,"back"                  ; char
    .byte $fd,"again.",$ff                  ; char

MESSAGE_CANT_CARRY_MORE:
    .byte "Y"                               ; Message 6
    .byte "ou",$fd,"can't"                  ; char
    .byte $fd,"carry",$fe,"a"               ; char
    .byte "ny",$fd,"more."                  ; char
    .byte $ff                               ; char

MESSAGE_DRIED_MEAT_50G:
    .byte "D"                               ; Message 7
    .byte "ried",$fd,"mea"                  ; char
    .byte "t",$fd,"to",$fe,"bri"            ; char
    .byte "ng",$fd,"energ"                  ; char
    .byte "y",$fe,"for",$fd,"50"            ; char
    .byte $fd,"Golds.",$ff                  ; char

MESSAGE_DRIED_MEAT_150G:
    .byte "D"                               ; Message 8
    .byte "ried",$fd,"mea"                  ; char
    .byte "t",$fd,"to",$fe,"bri"            ; char
    .byte "ng",$fd,"energ"                  ; char
    .byte "y",$fe,"for",$fd,"15"            ; char
    .byte "0",$fd,"Golds."                  ; char
    .byte $ff                               ; char

MESSAGE_DRIED_MEAT_180G:
    .byte "D"                               ; Message 9
    .byte "ried",$fd,"mea"                  ; char
    .byte "t",$fd,"to",$fe,"bri"            ; char
    .byte "ng",$fd,"energ"                  ; char
    .byte "y",$fe,"for",$fd,"18"            ; char
    .byte "0",$fd,"Golds."                  ; char
    .byte $ff                               ; char

MESSAGE_DRIED_MEAT_250G:
    .byte "D"                               ; Message 10
    .byte "ried",$fd,"mea"                  ; char
    .byte "t",$fd,"to",$fe,"bri"            ; char
    .byte "ng",$fd,"energ"                  ; char
    .byte "y",$fe,"for",$fd,"25"            ; char
    .byte "0",$fd,"Golds."                  ; char
    .byte $ff                               ; char

MESSAGE_DRIED_MEAT_350G:
    .byte "D"                               ; Message 11
    .byte "ried",$fd,"mea"                  ; char
    .byte "t",$fd,"to",$fe,"bri"            ; char
    .byte "ng",$fd,"energ"                  ; char
    .byte "y",$fe,"for",$fd,"35"            ; char
    .byte "0",$fd,"Golds."                  ; char
    .byte $ff                               ; char

MESSAGE_DRIED_MEAT_500G:
    .byte "D"                               ; Message 12
    .byte "ried",$fd,"mea"                  ; char
    .byte "t",$fd,"to",$fe,"bri"            ; char
    .byte "ng",$fd,"energ"                  ; char
    .byte "y",$fe,"for",$fd,"50"            ; char
    .byte "0",$fd,"Golds."                  ; char
    .byte $ff                               ; char

MESSAGE_DRIED_MEAT_800G:
    .byte "D"                               ; Message 13
    .byte "ried",$fd,"mea"                  ; char
    .byte "t",$fd,"to",$fe,"bri"            ; char
    .byte "ng",$fd,"energ"                  ; char
    .byte "y",$fe,"for",$fd,"80"            ; char
    .byte "0",$fd,"Golds."                  ; char
    .byte $ff                               ; char

MESSAGE_I_SELL_KEYS:
    .byte "H"                               ; Message 14
    .byte "ello.",$fe,"I",$fd               ; char
    .byte "sell",$fd,"key"                  ; char
    .byte "s.",$fe,"What",$fe               ; char
    .byte "would",$fd,"yo"                  ; char
    .byte "u",$fd,"like?",$ff               ; char

MESSAGE_I_SELL_TOOLS:
    .byte "H"                               ; Message 15
    .byte "ello.",$fe,"I",$fd               ; char
    .byte "sell",$fd,"too"                  ; char
    .byte "ls.",$fe,"What"                  ; char
    .byte $fe,"would",$fd,"y"               ; char
    .byte "ou",$fd,"like?"                  ; char
    .byte $ff                               ; char

MESSAGE_COME_HERE_TO_BUY_SELL:
    .byte "C"                               ; Message 16
    .byte "ome",$fd,"here"                  ; char
    .byte $fe,"to",$fd,"buy."               ; char
    .byte $fe,"Come",$fd,"he"               ; char
    .byte "re",$fe,"to",$fd,"se"            ; char
    .byte "ll.",$ff                         ; char

MESSAGE_NO_KEY:
    .byte "Y"                               ; Message 17
    .byte "ou",$fd,"don't"                  ; char
    .byte $fe,"have",$fd,"a",$fd            ; char
    .byte "key.",$ff                        ; char

MESSAGE_NOTHING_TO_BUY:
    .byte "Y"                               ; Message 18
    .byte "ou",$fd,"have",$fe               ; char
    .byte "nothing",$fd                     ; char
    .byte "to",$fd,"buy.",$ff               ; char

MESSAGE_WHICH_TO_SELL:
    .byte "W"                               ; Message 19
    .byte "hich",$fd,"one"                  ; char
    .byte $fd,"would",$fe,"l"               ; char
    .byte "ike",$fd,"to",$fd,"s"            ; char
    .byte "ell?",$ff                        ; char

MESSAGE_WHAT_WOULD_YOU_LIKE:
    .byte "W"                               ; Message 20
    .byte "hat",$fe,"woul"                  ; char
    .byte "d",$fd,"you",$fd,"li"            ; char
    .byte "ke?",$ff                         ; char

MESSAGE_MAGIC_200G:
    .byte "I"                               ; Message 21
    .byte $fd,"shall",$fd,"g"               ; char
    .byte "ive",$fe,"magi"                  ; char
    .byte "c",$fe,"for",$fd,"20"            ; char
    .byte "0",$fd,"Golds."                  ; char
    .byte $ff                               ; char

MESSAGE_WATCH_POWER_LEVEL:
    .byte "W"                               ; Message 22
    .byte "atch",$fd,"you"                  ; char
    .byte "r",$fe,"remain"                  ; char
    .byte "ing",$fe,"powe"                  ; char
    .byte "r",$fd,"level."                  ; char
    .byte $ff                               ; char

MESSAGE_MAGIC_FIRE_3000G:
    .byte "D"                               ; Message 23
    .byte "o",$fd,"you",$fd,"kn"            ; char
    .byte "ow",$fd,"the",$fe,"m"            ; char
    .byte "agic",$fd,"of",$fd               ; char
    .byte "fire?",$fe,"I'"                  ; char
    .byte "ll",$fd,"teach"                  ; char
    .byte $fd,"you",$fe,"for"               ; char
    .byte $fd,"3000",$fd,"Go"               ; char
    .byte "lds.",$ff                        ; char

MESSAGE_DONT_RELY_ON_MAGIC:
    .byte "D"                               ; Message 24
    .byte "on't",$fd,"rel"                  ; char
    .byte "y",$fd,"too",$fe,"mu"            ; char
    .byte "ch",$fd,"on",$fd,"ma"            ; char
    .byte "gic.",$ff                        ; char

MESSAGE_MARTIAL_ARTS_200G:
    .byte "D"                               ; Message 25
    .byte "o",$fd,"you",$fd,"wa"            ; char
    .byte "nt",$fe,"a",$fd,"mar"            ; char
    .byte "tial",$fd,"art"                  ; char
    .byte $fe,"lesson",$fe                  ; char
    .byte "for",$fd,"200",$fd               ; char
    .byte "Golds?",$ff                      ; char

MESSAGE_DO_YOU_WANT_TREATMENT:
    .byte "D"                               ; Message 26
    .byte "o",$fd,"you",$fd,"wa"            ; char
    .byte "nt",$fe,"a",$fd,"tre"            ; char
    .byte "atment?",$ff                     ; char

MESSAGE_DONT_TRY_TOO_HARD:
    .byte "D"                               ; Message 27
    .byte "on't",$fd,"try"                  ; char
    .byte $fe,"too",$fd,"har"               ; char
    .byte "d.",$ff                          ; char

MESSAGE_250G_PLEASE:
    .byte "I"                               ; Message 28
    .byte "t",$fd,"is",$fd,"250"            ; char
    .byte $fd,"Golds",$fe,","               ; char
    .byte "please.",$ff                     ; char

MESSAGE_500G_PLEASE:
    .byte "I"                               ; Message 29
    .byte "t",$fd,"is",$fd,"500"            ; char
    .byte $fd,"Golds",$fe,","               ; char
    .byte "please.",$ff                     ; char

MESSAGE_1000G_PLEASE:
    .byte "I"                               ; Message 30
    .byte "t",$fd,"is",$fd,"100"            ; char
    .byte "0",$fd,"Golds,"                  ; char
    .byte "please.",$ff                     ; char

MESSAGE_2500G_PLEASE:
    .byte "I"                               ; Message 31
    .byte "t",$fd,"is",$fd,"250"            ; char
    .byte "0",$fd,"Golds,"                  ; char
    .byte "please.",$ff                     ; char

MESSAGE_1800G_PLEASE:
    .byte "I"                               ; Message 32
    .byte "t",$fd,"is",$fd,"180"            ; char
    .byte "0",$fd,"Golds,"                  ; char
    .byte "please.",$ff                     ; char

MESSAGE_3000G_PLEASE:
    .byte "I"                               ; Message 33
    .byte "t",$fd,"is",$fd,"300"            ; char
    .byte "0",$fd,"Golds,"                  ; char
    .byte "please.",$ff                     ; char

MESSAGE_MEDITATE_WITH_YOU:
    .byte "Y"                               ; Message 34
    .byte "ou",$fd,"need",$fd               ; char
    .byte "peace",$fe,"of"                  ; char
    .byte $fd,"mind.",$fe,"I"               ; char
    .byte $fd,"will",$fd,"me"               ; char
    .byte "ditate",$fe,"w"                  ; char
    .byte "ith",$fd,"you."                  ; char
    .byte $ff                               ; char

MESSAGE_NEW_TITLE:
    .byte "I"                               ; Message 36
    .byte $fd,"shall",$fd,"g"               ; char
    .byte "ive",$fd,"youa"                  ; char
    .byte $fd,"title.",$fe                  ; char
    .byte "'",$fb,"'",$fc,"Make"            ; char
    .byte $fd,"sure",$fd,"yo"               ; char
    .byte "u",$fe,"live",$fd,"u"            ; char
    .byte "p",$fd,"to",$fd,"it."            ; char
    .byte $ff                               ; char

MESSAGE_REMEMBER_YOUR_MANTRA:
    .byte "D"                               ; Message 36
    .byte "on't",$fd,"hav"                  ; char
    .byte "e",$fe,"negati"                  ; char
    .byte "ve",$fe,"thoug"                  ; char
    .byte "hts.",$fc,"Rem"                  ; char
    .byte "ember",$fe,"yo"                  ; char
    .byte "ur",$fd,"mantr"                  ; char
    .byte "a.",$ff                          ; char

MESSAGE_HEAR_AGAIN:
    .byte "D"                               ; Message 37
    .byte "o",$fd,"you",$fd,"wa"            ; char
    .byte "nt",$fe,"to",$fd,"he"            ; char
    .byte "ar",$fd,"it",$fe,"on"            ; char
    .byte "ce",$fd,"more?"                  ; char
    .byte $ff                               ; char

MESSAGE_INTRO:
    .byte "I"                               ; Message 38
    .byte "'ve",$fd,"been"                  ; char
    .byte $fd,"on",$fe,"a",$fd,"lo"         ; char
    .byte "ng",$fd,"journ"                  ; char
    .byte "ey.",$fc,"I",$fd,"ca"            ; char
    .byte "me",$fd,"back",$fd               ; char
    .byte "to",$fe,"my",$fd,"ho"            ; char
    .byte "me",$fd,"town",$fe               ; char
    .byte "to",$fd,"find",$fd               ; char
    .byte "it",$fd,"is",$fe,"al"            ; char
    .byte "most",$fd,"des"                  ; char
    .byte "erted.",$fc,"T"                  ; char
    .byte "he",$fd,"gate",$fd               ; char
    .byte "is",$fe,"close"                  ; char
    .byte "d,",$fe,"peopl"                  ; char
    .byte "e",$fd,"are",$fd,"go"            ; char
    .byte "ne,",$fc,"and",$fd               ; char
    .byte "the",$fd,"wall"                  ; char
    .byte "s",$fe,"are",$fd,"cr"            ; char
    .byte "umbling."                        ; char
    .byte $fc,"I",$fd,"wonde"               ; char
    .byte "r",$fe,"what",$fd,"h"            ; char
    .byte "appened."                        ; char
    .byte $ff                               ; char

MESSAGE_GO_SEE_KING:
    .byte "I"                               ; Message 39
    .byte $fd,"want",$fd,"yo"               ; char
    .byte "u",$fe,"to",$fd,"see"            ; char
    .byte $fd,"the",$fd,"kin"               ; char
    .byte "g",$fe,"right",$fd               ; char
    .byte "away",$fc,"alt"                  ; char
    .byte "hough",$fd,"yo"                  ; char
    .byte "u've",$fe,"jus"                  ; char
    .byte "t",$fd,"arrive"                  ; char
    .byte "d.",$ff                          ; char

MESSAGE_DIRECTIONS_APOLUNE:
    .byte "G"                               ; Message 40
    .byte "o",$fd,"straig"                  ; char
    .byte "ht",$fe,"ahead"                  ; char
    .byte $fd,"and",$fd,"you"               ; char
    .byte "'llfind",$fd                     ; char
    .byte "the",$fd,"town"                  ; char
    .byte $fd,"ofApolu"                     ; char
    .byte "ne.",$ff                         ; char

MESSAGE_MARK_OF_JACK:
    .byte "T"                               ; Message 41
    .byte "here",$fd,"is",$fd               ; char
    .byte "a",$fd,"mark",$fe,"o"            ; char
    .byte "f",$fd,"\"Jack\""                ; char
    .byte $fe,"by",$fd,"the",$fd            ; char
    .byte "key",$fd,"hole"                  ; char
    .byte ".",$ff                           ; char

MESSAGE_THIS_IS_EOLIS:
    .byte "T"                               ; Message 42
    .byte "his",$fd,"is",$fd,"t"            ; char
    .byte "he",$fd,"Elf",$fe,"t"            ; char
    .byte "own",$fd,"of",$fd,"E"            ; char
    .byte "olis.",$fc,"It"                  ; char
    .byte $fd,"is",$fd,"loca"               ; char
    .byte "ted",$fd,"atth"                  ; char
    .byte "e",$fd,"bottom"                  ; char
    .byte $fd,"of",$fe,"the",$fd            ; char
    .byte "World",$fd,"Tr"                  ; char
    .byte "ee",$fc,"and",$fd,"t"            ; char
    .byte "he",$fd,"Elves"                  ; char
    .byte $fe,"live",$fd,"he"               ; char
    .byte "re.",$fc,"Go",$fd,"t"            ; char
    .byte "o",$fd,"see",$fd,"th"            ; char
    .byte "e",$fe,"Guru",$fd,"b"            ; char
    .byte "efore",$fd,"yo"                  ; char
    .byte "u",$fe,"see",$fd,"th"            ; char
    .byte "e",$fd,"king.",$ff               ; char

MESSAGE_LOOK_FOR_RINGS:
    .byte "T"                               ; Message 43
    .byte "here",$fd,"are"                  ; char
    .byte $fd,"many",$fe,"ri"               ; char
    .byte "ngs",$fd,"with"                  ; char
    .byte $fe,"differe"                     ; char
    .byte "nt",$fd,"magic"                  ; char
    .byte ".",$fc,"Look",$fd,"f"            ; char
    .byte "or",$fd,"them",$fe               ; char
    .byte "one",$fd,"by",$fd,"o"            ; char
    .byte "ne.",$ff                         ; char

MESSAGE_TAKE_RING_TO_KING:
    .byte "I"                               ; Message 44
    .byte "f",$fd,"you",$fd,"ar"            ; char
    .byte "e",$fd,"goingt"                  ; char
    .byte "o",$fd,"see",$fd,"th"            ; char
    .byte "e",$fd,"king,t"                  ; char
    .byte "ake",$fd,"this"                  ; char
    .byte $fd,"ring.",$fc,"T"               ; char
    .byte "his",$fd,"ring"                  ; char
    .byte $fd,"will",$fe,"id"               ; char
    .byte "entify",$fd,"y"                  ; char
    .byte "ou.",$fe,"Don'"                  ; char
    .byte "t",$fd,"lose",$fd,"i"            ; char
    .byte "t.",$ff                          ; char

MESSAGE_VISIT_GURUS_GET_TITLE:
    .byte "V"                               ; Message 45
    .byte "isit",$fd,"all"                  ; char
    .byte $fd,"Gurus",$fe,"o"               ; char
    .byte "n",$fd,"your",$fd,"w"            ; char
    .byte "ay.",$fc,"You'"                  ; char
    .byte "ll",$fd,"get",$fd,"a"            ; char
    .byte $fe,"title",$fd,"a"               ; char
    .byte "ccording"                        ; char
    .byte $fe,"to",$fd,"your"               ; char
    .byte $fe,"experie"                     ; char
    .byte "nce.",$ff                        ; char

MESSAGE_LAST_WELL_ALMOST_DRY:
    .byte "T"                               ; Message 46
    .byte "he",$fd,"last",$fd               ; char
    .byte "well",$fd,"isa"                  ; char
    .byte "lmost",$fd,"dr"                  ; char
    .byte "y.",$ff                          ; char

MESSAGE_THIS_IS_FOREPAW:
    .byte "T"                               ; Message 47
    .byte "here",$fd,"is",$fe               ; char
    .byte "a",$fd,"founta"                  ; char
    .byte "in",$fe,"in",$fd,"th"            ; char
    .byte "e",$fd,"town",$fd,"o"            ; char
    .byte "f",$fe,"Forepa"                  ; char
    .byte "w.",$ff                          ; char

MESSAGE_DWARVES_ARE_HERE:
    .byte "T"                               ; Message 48
    .byte "he",$fd,"Dwarf"                  ; char
    .byte "s",$fd,"are",$fe,"al"            ; char
    .byte "ready",$fd,"in"                  ; char
    .byte $fd,"town.It"                     ; char
    .byte $fd,"looks",$fd,"l"               ; char
    .byte "ike",$fe,"the",$fd               ; char
    .byte "end",$fd,"is",$fd,"n"            ; char
    .byte "ear.",$ff                        ; char

MESSAGE_DO_YOU_HAVE_WEAPON:
    .byte "D"                               ; Message 49
    .byte "o",$fd,"you",$fd,"ha"            ; char
    .byte "ve",$fe,"a",$fd,"wea"            ; char
    .byte "pon",$fe,"for",$fd               ; char
    .byte "fighting"                        ; char
    .byte "?",$ff                           ; char

MESSAGE_CANT_LET_YOU_GO:
    .byte "I"                               ; Message 50
    .byte $fd,"can't",$fe,"l"               ; char
    .byte "et",$fd,"you",$fd,"g"            ; char
    .byte "o.",$ff                          ; char

MESSAGE_KING_IS_WAITING:
    .byte "T"                               ; Message 51
    .byte "he",$fd,"King",$fd               ; char
    .byte "is",$fe,"waiti"                  ; char
    .byte "ng",$fd,"for",$fd,"y"            ; char
    .byte "ou.",$ff                         ; char

MESSAGE_GOOD_LUCK:
    .byte "G"                               ; Message 52
    .byte "ood",$fd,"luck"                  ; char
    .byte "!",$ff                           ; char

MESSAGE_KING_EXPOSITION:
    .byte "G"                               ; Message 53
    .byte "lad",$fd,"you",$fd               ; char
    .byte "could",$fe,"co"                  ; char
    .byte "me.",$fe,"Disa"                  ; char
    .byte "ster",$fd,"has"                  ; char
    .byte $fe,"befalle"                     ; char
    .byte "n",$fd,"us.",$fc,"Th"            ; char
    .byte "e",$fd,"Elf",$fe,"fo"            ; char
    .byte "untain",$fd,"w"                  ; char
    .byte "ater,",$fe,"ou"                  ; char
    .byte "r",$fd,"life",$fd,"s"            ; char
    .byte "ource,ha"                        ; char
    .byte "s",$fd,"stoppe"                  ; char
    .byte "d.",$fc,"The",$fd,"w"            ; char
    .byte "ells",$fd,"are"                  ; char
    .byte $fe,"drying",$fd                  ; char
    .byte "up.",$fc,"Many"                  ; char
    .byte $fd,"men",$fd,"wen"               ; char
    .byte "t",$fe,"out",$fd,"an"            ; char
    .byte "d",$fd,"nobody"                  ; char
    .byte $fe,"came",$fd,"ba"               ; char
    .byte "ck.",$fc,"You",$fd               ; char
    .byte "are",$fd,"our",$fd               ; char
    .byte "lasthope"                        ; char
    .byte ".",$fe,"I",$fd,"shal"            ; char
    .byte "l",$fd,"give",$fd,"y"            ; char
    .byte "ou1500",$fd,"G"                  ; char
    .byte "olds.",$fc,"Pr"                  ; char
    .byte "epare",$fe,"fo"                  ; char
    .byte "r",$fd,"your",$fd,"j"            ; char
    .byte "ourneywi"                        ; char
    .byte "th",$fd,"this",$fd               ; char
    .byte "money.",$fc,"I"                  ; char
    .byte "t",$fd,"will",$fd,"b"            ; char
    .byte "e",$fd,"a",$fe,"dang"            ; char
    .byte "erous",$fe,"jo"                  ; char
    .byte "urney.",$fc,"T"                  ; char
    .byte "ake",$fd,"care"                  ; char
    .byte $fe,"of",$fd,"your"               ; char
    .byte "self.",$ff                       ; char

MESSAGE_NOTHING_MORE_TO_HELP:
    .byte "T"                               ; Message 54
    .byte "here",$fd,"is",$fd               ; char
    .byte "nothingm"                        ; char
    .byte "ore",$fd,"I",$fd,"ca"            ; char
    .byte "n",$fd,"do",$fd,"toh"            ; char
    .byte "elp",$fd,"you."                  ; char
    .byte $fc,"Looking"                     ; char
    .byte $fd,"forward"                     ; char
    .byte $fe,"to",$fd,"good"               ; char
    .byte $fd,"news.",$ff                   ; char

MESSAGE_DWARVES_ROBBING_ELVES:
    .byte "T"                               ; Message 55
    .byte "he",$fd,"Dwarf"                  ; char
    .byte "s",$fe,"are",$fd,"ro"            ; char
    .byte "bbing",$fe,"th"                  ; char
    .byte "e",$fd,"Elves'"                  ; char
    .byte $fd,"moneyan"                     ; char
    .byte "d",$fd,"jewelr"                  ; char
    .byte "y.",$ff                          ; char

MESSAGE_METEORITE_EXPOSITION:
    .byte "A"                               ; Message 56
    .byte $fd,"meteori"                     ; char
    .byte "te",$fd,"felli"                  ; char
    .byte "nto",$fd,"the",$fd               ; char
    .byte "World",$fe,"Tr"                  ; char
    .byte "ee",$fd,"and",$fe,"c"            ; char
    .byte "reated",$fd,"h"                  ; char
    .byte "avoc.",$fc,"At"                  ; char
    .byte $fd,"the",$fd,"end"               ; char
    .byte $fd,"of",$fe,"the",$fd            ; char
    .byte "confusio"                        ; char
    .byte "n,",$fc,"the",$fd,"D"            ; char
    .byte "warfs",$fd,"of"                  ; char
    .byte $fe,"the",$fd,"und"               ; char
    .byte "erworld",$fe                     ; char
    .byte "came",$fd,"up",$fc               ; char
    .byte "and",$fd,"atta"                  ; char
    .byte "cked",$fe,"the"                  ; char
    .byte $fd,"Elves.",$fe                  ; char
    .byte "Nobody",$fd,"k"                  ; char
    .byte "nows",$fe,"the"                  ; char
    .byte $fd,"reason."                     ; char
    .byte $ff                               ; char

MESSAGE_LISTEN_TO_PEOPLE:
    .byte "L"                               ; Message 57
    .byte "isten",$fd,"to"                  ; char
    .byte $fe,"people."                     ; char
    .byte $fc,"You'll",$fd                  ; char
    .byte "only",$fd,"get"                  ; char
    .byte $fe,"frustra"                     ; char
    .byte "ted",$fe,"if",$fd,"y"            ; char
    .byte "ou",$fd,"just",$fd               ; char
    .byte "walkarou"                        ; char
    .byte "nd.",$ff                         ; char

MESSAGE_DONT_TRY_TOO_HARD_2:
    .byte "D"                               ; Message 58
    .byte "on't",$fd,"try"                  ; char
    .byte $fe,"too",$fd,"har"               ; char
    .byte "d.",$ff                          ; char

MESSAGE_WELCOME_TO_APOLUNE:
    .byte "W"                               ; Message 59
    .byte "elcome",$fd,"t"                  ; char
    .byte "o",$fd,"the",$fe,"to"            ; char
    .byte "wn",$fd,"of",$fd,"Ap"            ; char
    .byte "olune.",$ff                      ; char

MESSAGE_DIRECTIONS_FOREPAW:
    .byte "T"                               ; Message 60
    .byte "here",$fd,"is",$fd               ; char
    .byte "the",$fe,"town"                  ; char
    .byte $fd,"of",$fd,"Fore"               ; char
    .byte "paw",$fe,"ahea"                  ; char
    .byte "d",$fd,"of",$fd,"you"            ; char
    .byte ".",$ff                           ; char

MESSAGE_DIRECTIONS_TO_TRUNK:
    .byte "T"                               ; Message 61
    .byte "here",$fd,"are"                  ; char
    .byte $fd,"Dwarfsa"                     ; char
    .byte "ll",$fd,"over",$fd               ; char
    .byte "in",$fd,"the",$fe,"T"            ; char
    .byte "ower",$fd,"of",$fd               ; char
    .byte "Trunk.",$fc,"G"                  ; char
    .byte "o",$fd,"out",$fd,"of"            ; char
    .byte $fd,"town,",$fe,"t"               ; char
    .byte "urn",$fd,"righ"                  ; char
    .byte "t",$fd,"and",$fe,"go"            ; char
    .byte $fd,"straigh"                     ; char
    .byte "t,",$fc,"then",$fd               ; char
    .byte "you'll",$fd,"f"                  ; char
    .byte "indthe",$fd,"T"                  ; char
    .byte "ower",$fe,"of",$fd               ; char
    .byte "Trunk.",$ff                      ; char

MESSAGE_GOOD_LUCK_2:
    .byte "G"                               ; Message 62
    .byte "ood",$fd,"luck"                  ; char
    .byte ".",$ff                           ; char

MESSAGE_SHOULD_HAVE_SHIELD:
    .byte "Y"                               ; Message 63
    .byte "ou",$fd,"shoul"                  ; char
    .byte "d",$fd,"have",$fe,"a"            ; char
    .byte $fd,"shield."                     ; char
    .byte $fd,"It'll",$fe,"p"               ; char
    .byte "rotect",$fd,"y"                  ; char
    .byte "ou",$fd,"fromD"                  ; char
    .byte "warf",$fd,"att"                  ; char
    .byte "acks.",$ff                       ; char

MESSAGE_MATTOCK_IN_TOWER:
    .byte "T"                               ; Message 64
    .byte "he",$fd,"Matto"                  ; char
    .byte "ck",$fe,"shoul"                  ; char
    .byte "d",$fd,"be",$fd,"in",$fd         ; char
    .byte "theTower"                        ; char
    .byte ".",$fc,"You",$fd,"ca"            ; char
    .byte "n",$fd,"get",$fd,"it"            ; char
    .byte $fe,"by",$fd,"defe"               ; char
    .byte "ating",$fd,"a",$fe               ; char
    .byte "Dwarf.",$ff                      ; char

MESSAGE_BLOCKED_PASSAGE:
    .byte "W"                               ; Message 65
    .byte "e",$fd,"blocke"                  ; char
    .byte "d",$fd,"the",$fe,"pa"            ; char
    .byte "ssage",$fd,"to"                  ; char
    .byte $fd,"the",$fe,"nex"               ; char
    .byte "t",$fd,"town",$fd,"b"            ; char
    .byte "y",$fe,"buildi"                  ; char
    .byte "ng",$fd,"a",$fd,"wal"            ; char
    .byte "l,",$fc,"but",$fd,"t"            ; char
    .byte "he",$fd,"Dwarf"                  ; char
    .byte "s",$fe,"keep",$fd,"c"            ; char
    .byte "oming.",$ff                      ; char

MESSAGE_MATTOCK_BREAKS_WALL:
    .byte "I"                               ; Message 66
    .byte "f",$fd,"you",$fd,"ha"            ; char
    .byte "ve",$fd,"the",$fe,"M"            ; char
    .byte "attock,y"                        ; char
    .byte "ou",$fd,"can",$fe,"b"            ; char
    .byte "reak",$fd,"the"                  ; char
    .byte $fd,"wall,",$fc,"b"               ; char
    .byte "ut",$fd,"if",$fd,"yo"            ; char
    .byte "u",$fd,"don'th"                  ; char
    .byte "ave",$fd,"it.."                  ; char
    .byte ".",$ff                           ; char

MESSAGE_YOU_NEED_KEY:
    .byte "Y"                               ; Message 67
    .byte "ou",$fd,"need",$fd               ; char
    .byte "a",$fd,"key.",$ff                ; char

MESSAGE_YOU_NEED_DIFFERENT_KEY:
    .byte "Y"                               ; Message 68
    .byte "ou",$fd,"need",$fd               ; char
    .byte "a",$fe,"differ"                  ; char
    .byte "ent",$fd,"key."                  ; char
    .byte $ff                               ; char

MESSAGE_DOCTOR_CAN_HELP:
    .byte "A"                               ; Message 69
    .byte "re",$fd,"you",$fd,"h"            ; char
    .byte "urt?",$fe,"Our"                  ; char
    .byte $fd,"doctor",$fe                  ; char
    .byte "can",$fd,"help"                  ; char
    .byte ".",$ff                           ; char

MESSAGE_POISON_IS_BAD:
    .byte "W"                               ; Message 70
    .byte "atch",$fd,"out"                  ; char
    .byte $fd,"for",$fe,"the"               ; char
    .byte $fd,"jar",$fd,"of",$fe            ; char
    .byte "poison.",$fc                     ; char
    .byte "The",$fd,"pois"                  ; char
    .byte "on",$fd,"will",$fe               ; char
    .byte "take",$fd,"you"                  ; char
    .byte "r",$fd,"energy"                  ; char
    .byte "away.",$ff                       ; char

MESSAGE_LEARN_MANTRAS:
    .byte "D"                               ; Message 71
    .byte "id",$fd,"you",$fd,"l"            ; char
    .byte "earn",$fe,"the"                  ; char
    .byte $fd,"Guru's",$fe                  ; char
    .byte "mantra?",$fc                     ; char
    .byte "The",$fd,"mant"                  ; char
    .byte "ra",$fd,"will",$fe               ; char
    .byte "return",$fd,"y"                  ; char
    .byte "ou",$fd,"to",$fe,"th"            ; char
    .byte "is",$fd,"world"                  ; char
    .byte ".",$fc,"Hold",$fd,"o"            ; char
    .byte "n",$fd,"to",$fd,"the"            ; char
    .byte $fe,"mantra."                     ; char
    .byte $ff                               ; char

MESSAGE_SECRET_GURU_IN_TOWER:
    .byte "T"                               ; Message 72
    .byte "here",$fd,"is",$fd               ; char
    .byte "a",$fe,"secret"                  ; char
    .byte $fd,"Guru",$fd,"in"               ; char
    .byte $fe,"the",$fd,"Tow"               ; char
    .byte "er",$fd,"of",$fe,"Fo"            ; char
    .byte "rtress.",$fc                     ; char
    .byte "You'll",$fd,"f"                  ; char
    .byte "ind",$fe,"impo"                  ; char
    .byte "rtant",$fd,"in"                  ; char
    .byte "for-mati"                        ; char
    .byte "on",$fd,"and",$fe,"a"            ; char
    .byte $fd,"key",$fd,"the"               ; char
    .byte "re.",$ff                         ; char

MESSAGE_CARRY_ITEMS:
    .byte "Y"                               ; Message 73
    .byte "ou",$fd,"can",$fd,"c"            ; char
    .byte "arry",$fd,"8",$fe,"i"            ; char
    .byte "tems.",$fd,"Th"                  ; char
    .byte "ey",$fd,"are",$fe,"a"            ; char
    .byte "ll",$fd,"impor"                  ; char
    .byte "tant.",$fe,"Ch"                  ; char
    .byte "oose",$fd,"wel"                  ; char
    .byte "l.",$ff                          ; char

MESSAGE_WELCOME_TO_FOREPAW:
    .byte "T"                               ; Message 74
    .byte "his",$fd,"is",$fd,"t"            ; char
    .byte "he",$fd,"towno"                  ; char
    .byte "f",$fd,"Forepa"                  ; char
    .byte "w.",$ff                          ; char

MESSAGE_FOUNTAIN_WILL_FLOW_TO_TOWN:
    .byte "I"                               ; Message 75
    .byte "f",$fd,"the",$fd,"fo"            ; char
    .byte "untain",$fe,"f"                  ; char
    .byte "lows,wat"                        ; char
    .byte "er",$fd,"willc"                  ; char
    .byte "ome",$fd,"back"                  ; char
    .byte $fd,"to",$fd,"thet"               ; char
    .byte "own.",$ff                        ; char

MESSAGE_FIND_3_SPRINGS:
    .byte "W"                               ; Message 76
    .byte "ater",$fd,"fro"                  ; char
    .byte "m",$fd,"3",$fe,"spri"            ; char
    .byte "ngs",$fd,"flow"                  ; char
    .byte "s",$fe,"into",$fd,"t"            ; char
    .byte "he",$fe,"fount"                  ; char
    .byte "ain.",$fc,"Fin"                  ; char
    .byte "d",$fd,"the",$fd,"3",$fe         ; char
    .byte "springs",$fd                     ; char
    .byte "and",$fe,"retu"                  ; char
    .byte "rn",$fd,"the",$fd,"w"            ; char
    .byte "aterto",$fd,"t"                  ; char
    .byte "he",$fd,"fount"                  ; char
    .byte "ain.",$ff                        ; char

MESSAGE_WATER_IS_FLOWING:
    .byte "W"                               ; Message 77
    .byte "ater",$fd,"is",$fd               ; char
    .byte "flowingi"                        ; char
    .byte "n",$fd,"our",$fd,"fo"            ; char
    .byte "untain.T"                        ; char
    .byte "hanks",$fd,"to"                  ; char
    .byte $fe,"your",$fd,"he"               ; char
    .byte "lp.",$ff                         ; char

MESSAGE_FOUNTAIN_IN_SKY:
    .byte "I"                               ; Message 78
    .byte $fd,"hear",$fe,"qu"               ; char
    .byte "ite",$fd,"ofte"                  ; char
    .byte "n",$fe,"about",$fd               ; char
    .byte "a",$fd,"founta"                  ; char
    .byte "inin",$fd,"the"                  ; char
    .byte $fd,"sky.",$fc,"Wh"               ; char
    .byte "en",$fd,"you",$fd,"g"            ; char
    .byte "o",$fd,"downfr"                  ; char
    .byte "om",$fd,"the",$fd,"t"            ; char
    .byte "own,",$fc,"you"                  ; char
    .byte "'ll",$fd,"come"                  ; char
    .byte $fd,"to",$fd,"apla"               ; char
    .byte "ce",$fd,"where"                  ; char
    .byte $fd,"the",$fe,"sky"               ; char
    .byte $fd,"opens",$fd,"a"               ; char
    .byte "bove.",$fc,"Th"                  ; char
    .byte "ey",$fd,"say",$fd,"a"            ; char
    .byte $fe,"fountai"                     ; char
    .byte "n",$fd,"is",$fd,"up",$fe         ; char
    .byte "in",$fd,"the",$fd,"s"            ; char
    .byte "ky,",$fc,"but",$fd               ; char
    .byte "you",$fd,"need"                  ; char
    .byte $fe,"Wing",$fd,"Bo"               ; char
    .byte "ots...",$ff                      ; char

MESSAGE_PUSH_FOUNTAIN_ROCK:
    .byte "I"                               ; Message 79
    .byte "f",$fd,"you",$fd,"ca"            ; char
    .byte "n",$fd,"push",$fe,"t"            ; char
    .byte "he",$fd,"rock",$fd               ; char
    .byte "away",$fe,"fro"                  ; char
    .byte "m",$fd,"the",$fe,"fo"            ; char
    .byte "untain,",$fc                     ; char
    .byte "you'll",$fd,"f"                  ; char
    .byte "ind",$fd,"the",$fe               ; char
    .byte "way",$fd,"to",$fd,"M"            ; char
    .byte "ascon.",$fc,"B"                  ; char
    .byte "ut,",$fd,"you",$fd               ; char
    .byte "can't",$fe,"mo"                  ; char
    .byte "ve",$fd,"it",$fd,"wi"            ; char
    .byte "thout",$fe,"th"                  ; char
    .byte "e",$fd,"Ring",$fd,"o"            ; char
    .byte "f",$fe,"Ruby.",$fc               ; char
    .byte "The",$fd,"old",$fd               ; char
    .byte "man",$fd,"of",$fe,"t"            ; char
    .byte "he",$fd,"sprin"                  ; char
    .byte "g",$fd,"will",$fe,"h"            ; char
    .byte "ave",$fd,"it.",$fe               ; char
    .byte "Ask",$fd,"him."                  ; char
    .byte $ff                               ; char

MESSAGE_SPRING_IN_TOWER:
    .byte "T"                               ; Message 80
    .byte "here",$fd,"is",$fd               ; char
    .byte "a",$fe,"spring"                  ; char
    .byte $fe,"in",$fd,"the",$fd            ; char
    .byte "tower",$fd,"of"                  ; char
    .byte $fe,"Fortres"                     ; char
    .byte "s.",$fc,"You'l"                  ; char
    .byte "l",$fd,"find",$fd,"t"            ; char
    .byte "he",$fe,"dried"                  ; char
    .byte $fd,"up",$fe,"foun"               ; char
    .byte "tain",$fc,"and"                  ; char
    .byte $fd,"the",$fd,"ent"               ; char
    .byte "ranceto",$fd                     ; char
    .byte "the",$fd,"towe"                  ; char
    .byte "r",$fe,"right",$fd               ; char
    .byte "above",$fe,"th"                  ; char
    .byte "is",$fd,"town."                  ; char
    .byte $fc,"So",$fd,"long"               ; char
    .byte ".",$ff                           ; char

MESSAGE_WINGBOOTS_IN_TOWER:
    .byte "T"                               ; Message 81
    .byte "he",$fd,"Dwarf"                  ; char
    .byte $fe,"who",$fd,"liv"               ; char
    .byte "es",$fe,"in",$fd,"th"            ; char
    .byte "e",$fd,"tower",$fe               ; char
    .byte "has",$fd,"Wing"                  ; char
    .byte $fd,"boots.",$fc                  ; char
    .byte "When",$fd,"you"                  ; char
    .byte $fd,"get",$fe,"the"               ; char
    .byte "m,",$fd,"look",$fd               ; char
    .byte "for",$fe,"a",$fd,"fo"            ; char
    .byte "untain",$fe,"i"                  ; char
    .byte "n",$fd,"the",$fd,"sk"            ; char
    .byte "y.",$ff                          ; char

MESSAGE_DIRECTIONS_TO_MASCON:
    .byte "W"                               ; Message 82
    .byte "hen",$fd,"you",$fd               ; char
    .byte "push",$fe,"the"                  ; char
    .byte $fd,"rock",$fe,"aw"               ; char
    .byte "ay",$fd,"from",$fd               ; char
    .byte "the",$fe,"foun"                  ; char
    .byte "tain,",$fc,"yo"                  ; char
    .byte "u'll",$fd,"fin"                  ; char
    .byte "d",$fe,"the",$fd,"pa"            ; char
    .byte "ssage",$fe,"to"                  ; char
    .byte $fd,"Mascon,"                     ; char
    .byte $fc,"but",$fd,"you"               ; char
    .byte $fd,"need",$fe,"th"               ; char
    .byte "e",$fd,"Ring",$fe,"o"            ; char
    .byte "f",$fd,"Ruby.",$ff               ; char

MESSAGE_LOOK_FOR_WINGBOOTS:
    .byte "L"                               ; Message 83
    .byte "ook",$fd,"for",$fe               ; char
    .byte "Wing",$fd,"Boo"                  ; char
    .byte "ts.",$ff                         ; char

MESSAGE_FOUNTAIN_IN_SKY_HINT:
    .byte "G"                               ; Message 84
    .byte "o",$fd,"below",$fd               ; char
    .byte "the",$fe,"blue"                  ; char
    .byte $fd,"sky.",$fd,"Yo"               ; char
    .byte "u'llfind"                        ; char
    .byte $fd,"a",$fd,"fount"               ; char
    .byte "ain",$fe,"in",$fd,"t"            ; char
    .byte "he",$fd,"sky.",$ff               ; char

MESSAGE_USE_THIS_KEY_FOR_FIRST_SPRING:
    .byte "U"                               ; Message 85
    .byte "se",$fd,"this",$fd               ; char
    .byte "key",$fe,"to",$fd,"o"            ; char
    .byte "pen",$fd,"the",$fd               ; char
    .byte "doorbelo"                        ; char
    .byte "w.",$fc,"You'l"                  ; char
    .byte "l",$fd,"find",$fd,"t"            ; char
    .byte "he",$fe,"first"                  ; char
    .byte $fd,"spring."                     ; char
    .byte $ff                               ; char

MESSAGE_GET_JOKER_OR_COME_BACK:
    .byte "I"                               ; Message 86
    .byte "f",$fd,"you",$fd,"do"            ; char
    .byte "n't",$fe,"have"                  ; char
    .byte $fd,"a",$fd,"Joker"               ; char
    .byte $fe,"key,",$fe,"co"               ; char
    .byte "me",$fd,"back",$fd               ; char
    .byte "again.",$ff                      ; char

MESSAGE_HO_HO_HO_ZZZ:
    .byte "H"                               ; Message 87
    .byte "o,",$fd,"ho,",$fd,"h"            ; char
    .byte "o.",$fe,"I'll",$fd               ; char
    .byte "tell",$fd,"you"                  ; char
    .byte $fe,"about",$fd,"t"               ; char
    .byte "he",$fd,"water"                  ; char
    .byte $fe,"of",$fd,"the",$fd            ; char
    .byte "spring.",$fc                     ; char
    .byte ".....",$fe,".."                  ; char
    .byte "...",$fe,"Oops"                  ; char
    .byte "!",$fe,"..fall"                  ; char
    .byte "en",$fd,"aslee"                  ; char
    .byte "p.",$fc,"The",$fd,"w"            ; char
    .byte "ater",$fd,"was"                  ; char
    .byte $fe,"poisone"                     ; char
    .byte "d.",$fc,"The",$fd,"p"            ; char
    .byte "osion",$fd,"is"                  ; char
    .byte $fe,"almost",$fd                  ; char
    .byte "gone",$fd,"so",$fe               ; char
    .byte "it's",$fd,"all"                  ; char
    .byte $fd,"right",$fe,"t"               ; char
    .byte "o",$fd,"wake",$fd,"h"            ; char
    .byte "im",$fd,"up.",$fc,"W"            ; char
    .byte "atch.",$fe,".."                  ; char
    .byte "...",$fd,"...."                  ; char
    .byte ".",$fe,"Someth"                  ; char
    .byte "ing",$fd,"is",$fe,"w"            ; char
    .byte "rong...",$fc                     ; char
    .byte "Oops!",$ff                       ; char

MESSAGE_GET_KEY_FIND_FOUNTAIN:
    .byte "G"                               ; Message 88
    .byte "et",$fd,"the",$fd,"k"            ; char
    .byte "ey",$fd,"fromt"                  ; char
    .byte "he",$fd,"Guri",$fd               ; char
    .byte "in",$fd,"the",$fe,"t"            ; char
    .byte "ower",$fd,"of",$fe               ; char
    .byte "Fortress"                        ; char
    .byte $fd,"and",$fc,"sea"               ; char
    .byte "rch",$fd,"for",$fd               ; char
    .byte "the",$fe,"undi"                  ; char
    .byte "scovered"                        ; char
    .byte $fe,"first",$fd,"f"               ; char
    .byte "ountain."                        ; char
    .byte $ff                               ; char

MESSAGE_THIS_IS_SPRING_OF_TRUNK_GET_ELIXIR:
    .byte "Y"                               ; Message 89
    .byte "ou've",$fd,"do"                  ; char
    .byte "ne",$fd,"wellt"                  ; char
    .byte "o",$fd,"get",$fd,"he"            ; char
    .byte "re.",$fe,"This"                  ; char
    .byte $fd,"is",$fd,"the",$fe            ; char
    .byte "spring",$fd,"o"                  ; char
    .byte "f",$fd,"Trunk."                  ; char
    .byte $fc,"You",$fd,"nee"               ; char
    .byte "d",$fd,"Elixir"                  ; char
    .byte $fe,"to",$fd,"revi"               ; char
    .byte "ve",$fd,"the",$fe,"s"            ; char
    .byte "pring.",$fc,"W"                  ; char
    .byte "ill",$fd,"you",$fd               ; char
    .byte "give",$fd,"mey"                  ; char
    .byte "our",$fd,"medi"                  ; char
    .byte "cine?",$ff                       ; char

MESSAGE_2_MORE_SPRINGS:
    .byte "T"                               ; Message 90
    .byte "his",$fd,"spri"                  ; char
    .byte "ng",$fd,"willf"                  ; char
    .byte "low",$fd,"agai"                  ; char
    .byte "n.",$fe,"There"                  ; char
    .byte $fd,"are",$fe,"two"               ; char
    .byte $fd,"more.",$fc,"Y"               ; char
    .byte "ou'd",$fd,"bet"                  ; char
    .byte "ter",$fd,"go",$fe,"a"            ; char
    .byte "nd",$fd,"find",$fd               ; char
    .byte "them.",$ff                       ; char

MESSAGE_COME_BACK_WITH_MEDICINE:
    .byte "C"                               ; Message 91
    .byte "ome",$fd,"back"                  ; char
    .byte $fd,"with",$fe,"th"               ; char
    .byte "e",$fd,"medici"                  ; char
    .byte "ne.",$ff                         ; char

MESSAGE_FIND_POISON_IN_MASCON:
    .byte "A"                               ; Message 92
    .byte "s",$fd,"soon",$fd,"a"            ; char
    .byte "s",$fd,"waterf"                  ; char
    .byte "lows",$fd,"in",$fd               ; char
    .byte "the",$fe,"foun"                  ; char
    .byte "tain,",$fc,"go"                  ; char
    .byte $fd,"to",$fd,"Masc"               ; char
    .byte "on",$fd,"andfi"                  ; char
    .byte "nd",$fd,"the",$fd,"p"            ; char
    .byte "oison",$fe,"th"                  ; char
    .byte "e",$fd,"Dwarfs"                  ; char
    .byte $fd,"hide,",$fc,"o"               ; char
    .byte "therwise"                        ; char
    .byte $fd,"the",$fe,"Elv"               ; char
    .byte "es",$fd,"will",$fd               ; char
    .byte "be",$fe,"destr"                  ; char
    .byte "oyed.",$ff                       ; char

MESSAGE_WILL_REVIVE_SPRING:
    .byte "T"                               ; Message 93
    .byte "hank",$fd,"you"                  ; char
    .byte $fd,"for",$fe,"com"               ; char
    .byte "ing.",$fc,"I",$fd,"w"            ; char
    .byte "ill",$fd,"revi"                  ; char
    .byte "ve",$fe,"the",$fd,"s"            ; char
    .byte "pring",$fe,"ri"                  ; char
    .byte "ght",$fd,"away"                  ; char
    .byte ".",$ff                           ; char

MESSAGE_GIVING_RING_OF_RUBY:
    .byte "I"                               ; Message 94
    .byte "'ll",$fd,"give"                  ; char
    .byte $fd,"you",$fe,"the"               ; char
    .byte $fd,"Ring",$fd,"of"               ; char
    .byte $fe,"Ruby.",$fc,"N"               ; char
    .byte "ow,",$fd,"push"                  ; char
    .byte $fd,"the",$fe,"roc"               ; char
    .byte "k",$fd,"away",$fd,"f"            ; char
    .byte "rom",$fe,"the",$fd               ; char
    .byte "fountain"                        ; char
    .byte ".",$ff                           ; char

MESSAGE_TRUST_YOUR_POWER:
    .byte "T"                               ; Message 95
    .byte "rust",$fe,"you"                  ; char
    .byte "r",$fd,"power."                  ; char
    .byte $fc,"You",$fd,"are"               ; char
    .byte $fd,"the",$fe,"cho"               ; char
    .byte "sen",$fd,"warr"                  ; char
    .byte "ior",$fe,"to",$fd,"r"            ; char
    .byte "escue",$fe,"th"                  ; char
    .byte "is",$fd,"world"                  ; char
    .byte ".",$ff                           ; char

MESSAGE_WELCOME_TO_MASCON:
    .byte "W"                               ; Message 96
    .byte "hat",$fd,"busi"                  ; char
    .byte "ness",$fd,"doy"                  ; char
    .byte "ou",$fd,"have",$fd               ; char
    .byte "here?",$fc,"Th"                  ; char
    .byte "is",$fd,"is",$fd,"th"            ; char
    .byte "e",$fe,"misty",$fd               ; char
    .byte "town",$fd,"of",$fe               ; char
    .byte "Mascon.",$ff                     ; char

MESSAGE_PREPARE_BEFORE_FOREPAW:
    .byte "T"                               ; Message 97
    .byte "he",$fd,"tower"                  ; char
    .byte $fd,"of",$fe,"Fore"               ; char
    .byte "paw",$fd,"is",$fd,"s"            ; char
    .byte "tillfar",$fd                     ; char
    .byte "away.",$fc,"Pr"                  ; char
    .byte "epare",$fd,"we"                  ; char
    .byte "ll",$fe,"and",$fd,"g"            ; char
    .byte "o.",$ff                          ; char

MESSAGE_METEORITE_BECOMES_POISON:
    .byte "W"                               ; Message 98
    .byte "hen",$fd,"the",$fd               ; char
    .byte "meteor-i"                        ; char
    .byte "te",$fd,"is",$fd,"di"            ; char
    .byte "ssolvedi"                        ; char
    .byte "n",$fd,"water,"                  ; char
    .byte $fc,"it",$fd,"beco"               ; char
    .byte "mes",$fe,"pois"                  ; char
    .byte "on",$fd,"which"                  ; char
    .byte $fe,"will",$fd,"br"               ; char
    .byte "ing",$fe,"sick"                  ; char
    .byte "ness.",$fc,"It"                  ; char
    .byte $fd,"started"                     ; char
    .byte $fd,"when",$fe,"th"               ; char
    .byte "e",$fd,"Dwarfs"                  ; char
    .byte $fe,"brought"                     ; char
    .byte $fd,"it",$fd,"into"               ; char
    .byte $fe,"the",$fd,"Wor"               ; char
    .byte "ld",$fd,"Tree."                  ; char
    .byte $ff                               ; char

MESSAGE_DID_YOU_GET_PENDANT:
    .byte "D"                               ; Message 99
    .byte "id",$fd,"you",$fd,"g"            ; char
    .byte "et",$fd,"the",$fe,"p"            ; char
    .byte "endant?",$fd                     ; char
    .byte "It",$fd,"wills"                  ; char
    .byte "trengthe"                        ; char
    .byte "n",$fd,"your",$fe,"o"            ; char
    .byte "ffense",$fd,"p"                  ; char
    .byte "ower.",$ff                       ; char

MESSAGE_STORES_OUTSIDE_TOWN:
    .byte "T"                               ; Message 100
    .byte "here",$fd,"are"                  ; char
    .byte $fd,"storeso"                     ; char
    .byte "utside",$fd,"t"                  ; char
    .byte "own.",$fc,"The"                  ; char
    .byte "y",$fd,"sell",$fd,"u"            ; char
    .byte "sefulite"                        ; char
    .byte "ms,",$fc,"thou"                  ; char
    .byte "gh",$fd,"it's",$fe               ; char
    .byte "inconven"                        ; char
    .byte "ient",$fd,"to",$fe               ; char
    .byte "get",$fd,"ther"                  ; char
    .byte "e.",$fc,"I",$fd,"won"            ; char
    .byte "der",$fd,"if",$fd,"y"            ; char
    .byte "ou",$fe,"could"                  ; char
    .byte $fd,"find",$fd,"th"               ; char
    .byte "em.Look",$fd                     ; char
    .byte "up",$fd,"while"                  ; char
    .byte $fe,"you",$fd,"wal"               ; char
    .byte "k.",$ff                          ; char

MESSAGE_THIS_IS_LARGE_SHIELD:
    .byte "I"                               ; Message 101
    .byte "t",$fd,"is",$fd,"a",$fd,"l"      ; char
    .byte "arge",$fe,"and"                  ; char
    .byte $fd,"beautif"                     ; char
    .byte "ul",$fe,"shiel"                  ; char
    .byte "d.",$ff                          ; char

MESSAGE_DIRECTIONS_TO_SUFFER:
    .byte "T"                               ; Message 102
    .byte "he",$fd,"meteo"                  ; char
    .byte "rite",$fd,"ism"                  ; char
    .byte "editated"                        ; char
    .byte $fd,"on",$fe,"at",$fd,"t"         ; char
    .byte "he",$fd,"tower"                  ; char
    .byte $fd,"of",$fe,"Suff"               ; char
    .byte "er.",$fc,"You'"                  ; char
    .byte "ll",$fd,"find",$fd               ; char
    .byte "the",$fe,"Towe"                  ; char
    .byte "r",$fd,"above",$fd               ; char
    .byte "a",$fe,"Guru.",$fe               ; char
    .byte "Be",$fd,"caref"                  ; char
    .byte "ul.",$ff                         ; char

MESSAGE_NEED_WING_BOOTS_FOR_MIST:
    .byte "Y"                               ; Message 103
    .byte "ou",$fd,"need",$fd               ; char
    .byte "Wing",$fe,"Boo"                  ; char
    .byte "ts",$fc,"in",$fd,"or"            ; char
    .byte "der",$fd,"to",$fd,"g"            ; char
    .byte "et",$fe,"to",$fd,"th"            ; char
    .byte "e",$fd,"misty",$fe               ; char
    .byte "town",$fd,"of",$fd               ; char
    .byte "Victim.",$fc                     ; char
    .byte "Look",$fd,"for"                  ; char
    .byte $fd,"them",$fd,"in"               ; char
    .byte "the",$fd,"Towe"                  ; char
    .byte "r",$fd,"of",$fe,"Suf"            ; char
    .byte "fer.",$ff                        ; char

MESSAGE_WELCOME_TO_MIST:
    .byte "T"                               ; Message 104
    .byte "his",$fd,"town"                  ; char
    .byte $fd,"has",$fe,"bee"               ; char
    .byte "n",$fd,"covere"                  ; char
    .byte "d",$fe,"with",$fd,"a"            ; char
    .byte $fd,"mist",$fd,"ev"               ; char
    .byte "er",$fc,"since"                  ; char
    .byte $fd,"the",$fd,"met"               ; char
    .byte "e-",$fe,"orite"                  ; char
    .byte $fd,"hit",$fd,"the"               ; char
    .byte $fe,"town.",$fc,"S"               ; char
    .byte "ome",$fd,"area"                  ; char
    .byte "s",$fe,"might",$fd               ; char
    .byte "still",$fe,"be"                  ; char
    .byte $fd,"burning"                     ; char
    .byte ".",$ff                           ; char

MESSAGE_HOUSE_OUTSIDE_ABANDONED:
    .byte "T"                               ; Message 105
    .byte "he",$fd,"house"                  ; char
    .byte $fe,"outside"                     ; char
    .byte $fd,"town",$fd,"wa"               ; char
    .byte "sabandon"                        ; char
    .byte "ed",$fc,"and",$fd,"t"            ; char
    .byte "he",$fd,"Dwarf"                  ; char
    .byte "s",$fe,"are",$fd,"li"            ; char
    .byte "ving",$fe,"the"                  ; char
    .byte "re.",$fc,"Watc"                  ; char
    .byte "h",$fd,"out",$fd,"fo"            ; char
    .byte "r",$fe,"them.",$ff               ; char

MESSAGE_TOWER_OF_SUFFER_SOON:
    .byte "Y"                               ; Message 106
    .byte "ou'll",$fd,"ge"                  ; char
    .byte "t",$fd,"to",$fe,"the"            ; char
    .byte $fd,"Tower",$fd,"o"               ; char
    .byte "f",$fe,"Suffer"                  ; char
    .byte $fd,"soon.",$ff                   ; char

MESSAGE_KEEP_PENDANT:
    .byte "T"                               ; Message 107
    .byte "he",$fd,"penda"                  ; char
    .byte "nt",$fd,"has",$fe,"b"            ; char
    .byte "een",$fd,"a",$fd,"tr"            ; char
    .byte "easure",$fe,"o"                  ; char
    .byte "f",$fd,"the",$fd,"to"            ; char
    .byte "wn.",$fc,"But",$fd               ; char
    .byte "it",$fd,"is",$fd,"be"            ; char
    .byte "st",$fe,"for",$fd,"t"            ; char
    .byte "he",$fd,"town",$fd               ; char
    .byte "if",$fe,"you",$fd,"k"            ; char
    .byte "eep",$fd,"it.",$ff               ; char

MESSAGE_DWARVES_CHANTING:
    .byte "T"                               ; Message 108
    .byte "he",$fd,"Dwarf"                  ; char
    .byte "s",$fd,"are",$fe,"ch"            ; char
    .byte "anting",$fd,"t"                  ; char
    .byte "heir",$fe,"man"                  ; char
    .byte "tras",$fc,"to",$fd               ; char
    .byte "a",$fd,"segmen"                  ; char
    .byte "t",$fd,"of",$fe,"the"            ; char
    .byte $fd,"meteori"                     ; char
    .byte "te.",$fc,"They"                  ; char
    .byte $fd,"believe"                     ; char
    .byte $fd,"it",$fe,"has",$fd            ; char
    .byte "special",$fe                     ; char
    .byte "cosmic",$fd,"p"                  ; char
    .byte "ower.",$ff                       ; char

MESSAGE_METEORITE_WAS_MOVED:
    .byte "T"                               ; Message 109
    .byte "he",$fd,"meteo"                  ; char
    .byte "rite",$fe,"whi"                  ; char
    .byte "ch",$fd,"was",$fd,"i"            ; char
    .byte "n",$fd,"theTow"                  ; char
    .byte "er",$fd,"of",$fd,"Su"            ; char
    .byte "ffer",$fc,"has"                  ; char
    .byte $fd,"been",$fd,"mo"               ; char
    .byte "ved",$fe,"to",$fd,"t"            ; char
    .byte "he",$fd,"Tower"                  ; char
    .byte $fd,"of",$fe,"Mist"               ; char
    .byte ".",$fc,"The",$fd,"Dw"            ; char
    .byte "arfs",$fd,"mus"                  ; char
    .byte "t",$fe,"have",$fd,"l"            ; char
    .byte "earned",$fd,"o"                  ; char
    .byte "f",$fe,"your",$fd,"c"            ; char
    .byte "oming.",$ff                      ; char

MESSAGE_HOUR_GLASS:
    .byte "T"                               ; Message 110
    .byte "hey",$fd,"say",$fd               ; char
    .byte "the",$fe,"Hour"                  ; char
    .byte $fd,"Glass",$fd,"w"               ; char
    .byte "ill",$fe,"enab"                  ; char
    .byte "le",$fd,"you",$fc,"t"            ; char
    .byte "o",$fd,"move",$fd,"a"            ; char
    .byte "round",$fe,"wh"                  ; char
    .byte "ile",$fd,"the",$fd               ; char
    .byte "time",$fe,"sto"                  ; char
    .byte "ps.",$ff                         ; char

MESSAGE_HOUR_GLASS_USES_ENERGY:
    .byte "T"                               ; Message 111
    .byte "he",$fd,"Hour",$fd               ; char
    .byte "Glass",$fe,"wi"                  ; char
    .byte "ll",$fd,"exhau"                  ; char
    .byte "st",$fe,"your",$fd               ; char
    .byte "energy,",$fc                     ; char
    .byte "so",$fd,"be",$fd,"ca"            ; char
    .byte "reful",$fe,"wh"                  ; char
    .byte "en",$fd,"you",$fd,"u"            ; char
    .byte "se",$fd,"it.",$ff                ; char

MESSAGE_WELCOME_TO_VICTIM:
    .byte "W"                               ; Message 112
    .byte "elcome",$fd,"t"                  ; char
    .byte "o",$fd,"the",$fe,"To"            ; char
    .byte "wn",$fd,"of",$fd,"Vi"            ; char
    .byte "ctim.",$fc,"I",$fd               ; char
    .byte "have",$fd,"bee"                  ; char
    .byte "n",$fe,"unable"                  ; char
    .byte $fd,"to",$fd,"leav"               ; char
    .byte "e",$fe,"town.",$ff               ; char

MESSAGE_DANGEROUS_WITHOUT_MAGIC:
    .byte "I"                               ; Message 113
    .byte "t",$fd,"is",$fd,"dan"            ; char
    .byte "gerous",$fe,"t"                  ; char
    .byte "o",$fd,"leave",$fd               ; char
    .byte "town",$fe,"unl"                  ; char
    .byte "ess",$fd,"you",$fd               ; char
    .byte "have",$fe,"a",$fd,"m"            ; char
    .byte "agic",$fd,"shi"                  ; char
    .byte "eld.",$ff                        ; char

MESSAGE_MAGIC_HALL_OUTSIDE_TOWN:
    .byte "T"                               ; Message 114
    .byte "here",$fd,"is",$fd               ; char
    .byte "a",$fd,"magich"                  ; char
    .byte "all",$fd,"outs"                  ; char
    .byte "ide",$fe,"town"                  ; char
    .byte ".",$ff                           ; char

MESSAGE_MAGIC_CANE:
    .byte "T"                               ; Message 115
    .byte "here",$fd,"is",$fd               ; char
    .byte "a",$fd,"magicc"                  ; char
    .byte "ane",$fd,"whic"                  ; char
    .byte "h",$fd,"will",$fe,"g"            ; char
    .byte "ive",$fd,"you",$fd               ; char
    .byte "magic",$fe,"po"                  ; char
    .byte "wer.",$ff                        ; char

MESSAGE_GO_TO_CAPITAL:
    .byte "T"                               ; Message 116
    .byte "he",$fd,"door",$fd               ; char
    .byte "to",$fd,"the",$fe,"C"            ; char
    .byte "apital",$fd,"t"                  ; char
    .byte "own",$fe,"belo"                  ; char
    .byte "w",$fd,"is",$fd,"ope"            ; char
    .byte "n.",$fe,"Go",$fd,"to"            ; char
    .byte $fd,"it",$fd,"now."               ; char
    .byte $ff                               ; char

MESSAGE_GOT_ARMOR_FOR_BOTTLE:
    .byte "I"                               ; Message 117
    .byte "t",$fd,"was",$fd,"on"            ; char
    .byte "ly",$fd,"a",$fe,"rum"            ; char
    .byte "or.",$fd,"Sorr"                  ; char
    .byte "y",$fe,"about",$fd               ; char
    .byte "that.",$fc,"I",$fd               ; char
    .byte "got",$fd,"this"                  ; char
    .byte $fd,"armorin"                     ; char
    .byte $fd,"exchang"                     ; char
    .byte "e",$fd,"for",$fe,"a",$fd         ; char
    .byte "bottle.",$fc                     ; char
    .byte "If",$fd,"you",$fd,"w"            ; char
    .byte "ish,",$fe,"you"                  ; char
    .byte $fd,"can",$fd,"hav"               ; char
    .byte "e",$fd,"it.",$ff                 ; char

MESSAGE_ILL_HAVE_DRINK:
    .byte "I"                               ; Message 118
    .byte "'ll",$fd,"have"                  ; char
    .byte $fd,"a",$fe,"drink"               ; char
    .byte ".",$fe,"Well.."                  ; char
    .byte ".",$fe,"not",$fd,"ye"            ; char
    .byte "t.",$ff                          ; char

MESSAGE_IM_LOST:
    .byte "L"                               ; Message 119
    .byte "ooks",$fd,"lik"                  ; char
    .byte "e",$fe,"I'm",$fd,"lo"            ; char
    .byte "st.",$ff                         ; char

MESSAGE_IM_LOST_MAGIC_DOES_NOT_WORK:
    .byte "I"                               ; Message 120
    .byte "'m",$fd,"lost."                  ; char
    .byte $fe,"My",$fd,"magi"               ; char
    .byte "c",$fe,"does",$fd,"n"            ; char
    .byte "ot",$fd,"work."                  ; char
    .byte $ff                               ; char

MESSAGE_MAGIC_OF_JUSTICE_OR_DESTRUCTION:
    .byte "I"                               ; Message 121
    .byte "t",$fd,"can",$fd,"be"            ; char
    .byte $fd,"magic",$fe,"o"               ; char
    .byte "f",$fd,"justic"                  ; char
    .byte "e",$fe,"or",$fd,"a",$fd,"m"      ; char
    .byte "agic",$fd,"of",$fe               ; char
    .byte "destruct"                        ; char
    .byte "ion.",$fc,"It",$fd               ; char
    .byte "all",$fd,"depe"                  ; char
    .byte "nds",$fe,"on",$fd,"w"            ; char
    .byte "ho",$fd,"uses",$fd               ; char
    .byte "it.",$ff                         ; char

MESSAGE_MAGIC_INDIVIDUAL_POWERS:
    .byte "M"                               ; Message 122
    .byte "agics",$fd,"ha"                  ; char
    .byte "ve",$fe,"indiv"                  ; char
    .byte "idual",$fe,"po"                  ; char
    .byte "wers.",$ff                       ; char

MESSAGE_MAGIC_CONSUMES_POWER:
    .byte "M"                               ; Message 123
    .byte "agic",$fd,"of",$fd               ; char
    .byte "offencei"                        ; char
    .byte "s",$fd,"effect"                  ; char
    .byte "ive,",$fe,"but"                  ; char
    .byte $fd,"it",$fd,"cons"               ; char
    .byte "umes",$fe,"pow"                  ; char
    .byte "er.",$ff                         ; char

MESSAGE_METEORITE_BECOMES_BLACK_ONYX:
    .byte "W"                               ; Message 124
    .byte "hen",$fd,"you",$fd               ; char
    .byte "hold",$fe,"the"                  ; char
    .byte $fd,"Dwarf's"                     ; char
    .byte $fe,"meteori"                     ; char
    .byte "te",$fd,"in",$fe,"yo"            ; char
    .byte "ur",$fd,"hand,"                  ; char
    .byte $fc,"it",$fd,"will"               ; char
    .byte $fd,"become",$fe                  ; char
    .byte "Black",$fd,"On"                  ; char
    .byte "yx",$fd,"with",$fe               ; char
    .byte "power",$fd,"in"                  ; char
    .byte "side.",$ff                       ; char

MESSAGE_DIRECTIONS_TO_TOWER_OF_MIST:
    .byte "I"                               ; Message 125
    .byte "f",$fd,"you",$fd,"go"            ; char
    .byte $fe,"straigh"                     ; char
    .byte "t",$fd,"ahead,"                  ; char
    .byte $fc,"you",$fd,"wil"               ; char
    .byte "l",$fd,"get",$fd,"to"            ; char
    .byte $fe,"the",$fd,"Tow"               ; char
    .byte "er",$fd,"of",$fe,"Mi"            ; char
    .byte "st.",$fc,"If",$fd,"y"            ; char
    .byte "ou",$fd,"defea"                  ; char
    .byte "t",$fe,"the",$fd,"dw"            ; char
    .byte "arf",$fd,"who",$fe               ; char
    .byte "lives",$fd,"in"                  ; char
    .byte $fd,"the",$fe,"Tow"               ; char
    .byte "er",$fc,"and",$fd,"g"            ; char
    .byte "et",$fd,"the",$fe,"m"            ; char
    .byte "eteorite"                        ; char
    .byte ",",$fe,"come",$fd,"b"            ; char
    .byte "ack",$fd,"here"                  ; char
    .byte ".",$ff                           ; char

MESSAGE_USE_KEY_FOR_CONFLATE:
    .byte "A"                               ; Message 126
    .byte "s",$fd,"long",$fd,"a"            ; char
    .byte "s",$fd,"therea"                  ; char
    .byte "re",$fd,"craze"                  ; char
    .byte "d",$fe,"Dwarfs"                  ; char
    .byte ",",$fc,"the",$fd,"de"            ; char
    .byte "adly",$fe,"thr"                  ; char
    .byte "eat",$fd,"of",$fd,"t"            ; char
    .byte "he",$fe,"meteo"                  ; char
    .byte "rite",$fc,"wil"                  ; char
    .byte "l",$fd,"loom",$fd,"o"            ; char
    .byte "ver",$fe,"the",$fd               ; char
    .byte "Elves.",$fc,"U"                  ; char
    .byte "se",$fd,"this",$fd               ; char
    .byte "key",$fd,"to",$fe,"o"            ; char
    .byte "pen",$fd,"the",$fd               ; char
    .byte "next",$fe,"doo"                  ; char
    .byte "r",$fd,"to",$fd,"get"            ; char
    .byte $fd,"to",$fe,"Conf"               ; char
    .byte "late.",$fc,"Fi"                  ; char
    .byte "ght",$fd,"for",$fd               ; char
    .byte "the",$fe,"Elve"                  ; char
    .byte "s.",$ff                          ; char

MESSAGE_YOU_NEED_KEY_ACE:
    .byte "I"                               ; Message 127
    .byte $fd,"give",$fd,"ke"               ; char
    .byte "ys",$fd,"to",$fe,"tr"            ; char
    .byte "avelers",$fd                     ; char
    .byte "like",$fe,"you"                  ; char
    .byte "rself.",$fc,"Y"                  ; char
    .byte "ou",$fd,"have",$fd               ; char
    .byte "an",$fe,"\"Ace\""                ; char
    .byte $fd,"key,",$fe,"do"               ; char
    .byte "n't",$fd,"you?"                  ; char
    .byte $ff                               ; char

MESSAGE_WELCOME_TO_CONFLATE:
    .byte "T"                               ; Message 128
    .byte "his",$fd,"is",$fd,"a"            ; char
    .byte $fe,"trading"                     ; char
    .byte $fd,"town",$fe,"ca"               ; char
    .byte "lled",$fe,"Con"                  ; char
    .byte "flate.",$ff                      ; char

MESSAGE_LEGENDARY_SHIELD_HELMET:
    .byte "Y"                               ; Message 129
    .byte "ou'll",$fd,"fi"                  ; char
    .byte "nd",$fd,"the",$fe,"l"            ; char
    .byte "egendary"                        ; char
    .byte $fd,"shielda"                     ; char
    .byte "nd",$fd,"helme"                  ; char
    .byte "t",$fc,"in",$fd,"the"            ; char
    .byte $fd,"World",$fd,"o"               ; char
    .byte "f",$fe,"Branch"                  ; char
    .byte ".",$ff                           ; char

MESSAGE_TOWN_SURROUNDED_BY_DOORS:
    .byte "T"                               ; Message 130
    .byte "he",$fd,"town",$fd               ; char
    .byte "is",$fe,"surro"                  ; char
    .byte "unded",$fd,"by"                  ; char
    .byte $fe,"doors",$fd,"f"               ; char
    .byte "or",$fe,"prote"                  ; char
    .byte "ction.",$ff                      ; char

MESSAGE_SEE_GURU_AFTER_SHIELD_HELMET:
    .byte "W"                               ; Message 131
    .byte "hen",$fd,"you",$fd               ; char
    .byte "get",$fd,"thes"                  ; char
    .byte "hield",$fd,"an"                  ; char
    .byte "d",$fe,"helmet"                  ; char
    .byte ",",$fd,"go",$fd,"to",$fe         ; char
    .byte "see",$fd,"the",$fd               ; char
    .byte "Guru.",$ff                       ; char

MESSAGE_GUARDIAN_OF_GURU:
    .byte "I"                               ; Message 132
    .byte $fd,"am",$fd,"a",$fd,"gu"         ; char
    .byte "ardian",$fe,"o"                  ; char
    .byte "f",$fd,"the",$fd,"Gu"            ; char
    .byte "ru.",$fe,"He",$fd,"i"            ; char
    .byte "s",$fd,"an",$fd,"im-"            ; char
    .byte $fe,"portant"                     ; char
    .byte $fd,"person."                     ; char
    .byte $ff                               ; char

MESSAGE_SOMETHING_YOU_CAN_GET:
    .byte "T"                               ; Message 133
    .byte "here",$fd,"sho"                  ; char
    .byte "uld",$fd,"be",$fe,"s"            ; char
    .byte "omething"                        ; char
    .byte $fd,"you",$fe,"can"               ; char
    .byte $fd,"get.",$ff                    ; char

MESSAGE_DONT_RELY_ON_MAGIC_FINAL_BATTLE:
    .byte "D"                               ; Message 134
    .byte "on't",$fd,"rel"                  ; char
    .byte "y",$fd,"on",$fe,"you"            ; char
    .byte "r",$fd,"magic",$fd               ; char
    .byte "power",$fc,"du"                  ; char
    .byte "ring",$fd,"the"                  ; char
    .byte $fd,"finalba"                     ; char
    .byte "ttle",$fd,"wit"                  ; char
    .byte "h",$fd,"the",$fe,"Dw"            ; char
    .byte "arfs.",$ff                       ; char

MESSAGE_USED_TO_TRADE_WITH_DWARVES:
    .byte "T"                               ; Message 135
    .byte "he",$fd,"town",$fd               ; char
    .byte "used",$fd,"top"                  ; char
    .byte "rosper",$fd,"f"                  ; char
    .byte "rom",$fe,"trad"                  ; char
    .byte "ing",$fd,"with"                  ; char
    .byte $fd,"theDwar"                     ; char
    .byte "fs.",$ff                         ; char

MESSAGE_USED_TO_BE_SKILLED:
    .byte "T"                               ; Message 136
    .byte "hey",$fd,"are",$fe               ; char
    .byte "terrible"                        ; char
    .byte $fd,"now,",$fc,"bu"               ; char
    .byte "t",$fd,"they",$fd,"u"            ; char
    .byte "sed",$fd,"tobe"                  ; char
    .byte $fd,"skilled"                     ; char
    .byte $fe,"craftsm"                     ; char
    .byte "en.",$ff                         ; char

MESSAGE_USED_TO_VISIT_DWARVES:
    .byte "I"                               ; Message 137
    .byte $fd,"used",$fd,"to"               ; char
    .byte $fd,"go",$fd,"to",$fe,"t"         ; char
    .byte "he",$fd,"town",$fd               ; char
    .byte "of",$fe,"Dwarf"                  ; char
    .byte "s",$fd,"quite",$fe               ; char
    .byte "often",$fc,"wh"                  ; char
    .byte "en",$fd,"we",$fd,"ha"            ; char
    .byte "d",$fe,"busine"                  ; char
    .byte "ss",$fd,"with",$fe               ; char
    .byte "them.",$ff                       ; char

MESSAGE_I_AM_PICKPOCKET:
    .byte "D"                               ; Message 138
    .byte "o",$fd,"you",$fd,"wa"            ; char
    .byte "nt",$fd,"to",$fe,"kn"            ; char
    .byte "ow",$fd,"what",$fd               ; char
    .byte "I",$fd,"do?",$fc,"I",$fd         ; char
    .byte "am",$fe,"the",$fd,"p"            ; char
    .byte "ickpocke"                        ; char
    .byte "t",$fe,"Gingi."                  ; char
    .byte $fc,"I'm",$fd,"an",$fd            ; char
    .byte "importan"                        ; char
    .byte "tperson",$fd                     ; char
    .byte "around",$fe,"h"                  ; char
    .byte "ere.",$ff                        ; char

MESSAGE_NEED_FINAL_WEAPON_ARMOR:
    .byte "D"                               ; Message 139
    .byte "on't",$fd,"rel"                  ; char
    .byte "y",$fd,"on",$fe,"you"            ; char
    .byte "r",$fd,"magic",$fd               ; char
    .byte "power",$fc,"on"                  ; char
    .byte "ly",$fd,"durin"                  ; char
    .byte "g",$fd,"the",$fe,"fi"            ; char
    .byte "nal",$fd,"figh"                  ; char
    .byte "t",$fe,"agains"                  ; char
    .byte "t",$fd,"the",$fe,"Dw"            ; char
    .byte "arfs.",$fc,"Yo"                  ; char
    .byte "u",$fd,"can",$fd,"we"            ; char
    .byte "ar",$fd,"theBa"                  ; char
    .byte "ttle",$fd,"Hel"                  ; char
    .byte "met",$fe,"and",$fd               ; char
    .byte "Battle",$fd,"S"                  ; char
    .byte "uit",$fc,"only"                  ; char
    .byte $fd,"when",$fd,"yo"               ; char
    .byte "u",$fe,"have",$fd,"t"            ; char
    .byte "he",$fd,"Drago"                  ; char
    .byte "n",$fe,"Slayer"                  ; char
    .byte ".",$fc,"You",$fd,"wi"            ; char
    .byte "ll",$fd,"not",$fd,"b"            ; char
    .byte "e",$fe,"able",$fd,"t"            ; char
    .byte "o",$fd,"return"                  ; char
    .byte $fe,"us",$fd,"the",$fd            ; char
    .byte "Dragon",$fe,"S"                  ; char
    .byte "layer",$fc,"un"                  ; char
    .byte "til",$fd,"we",$fd,"h"            ; char
    .byte "ave",$fe,"true"                  ; char
    .byte $fd,"peace",$fd,"h"               ; char
    .byte "ere.",$ff                        ; char

MESSAGE_DIRECTIONS_DARTMORE:
    .byte "D"                               ; Message 140
    .byte "on't",$fd,"rel"                  ; char
    .byte "y",$fd,"on",$fe,"you"            ; char
    .byte "r",$fd,"magic",$fd               ; char
    .byte "power",$fc,"al"                  ; char
    .byte "one",$fd,"duri"                  ; char
    .byte "ng",$fd,"thela"                  ; char
    .byte "st",$fd,"fight"                  ; char
    .byte $fe,"against"                     ; char
    .byte $fd,"the",$fe,"Dwa"               ; char
    .byte "rfs.",$fc,"You"                  ; char
    .byte $fd,"can",$fd,"wea"               ; char
    .byte "r",$fd,"theBat"                  ; char
    .byte "tle",$fd,"Helm"                  ; char
    .byte "et",$fe,"and",$fd,"B"            ; char
    .byte "attle",$fd,"Su"                  ; char
    .byte "it",$fc,"only",$fd               ; char
    .byte "when",$fd,"you"                  ; char
    .byte $fe,"have",$fd,"th"               ; char
    .byte "e",$fd,"Dragon"                  ; char
    .byte $fe,"Slayer."                     ; char
    .byte $fc,"You",$fd,"wil"               ; char
    .byte "l",$fd,"not",$fd,"be"            ; char
    .byte $fe,"able",$fd,"to"               ; char
    .byte $fd,"return",$fe                  ; char
    .byte "us",$fd,"the",$fd,"D"            ; char
    .byte "ragon",$fe,"Sl"                  ; char
    .byte "ayer",$fc,"unt"                  ; char
    .byte "il",$fd,"we",$fd,"ha"            ; char
    .byte "ve",$fe,"true",$fd               ; char
    .byte "peace",$fd,"he"                  ; char
    .byte "re.",$fc,"This"                  ; char
    .byte $fd,"ring",$fd,"wi"               ; char
    .byte "ll",$fe,"open",$fd               ; char
    .byte "the",$fd,"door"                  ; char
    .byte $fd,"toDartm"                     ; char
    .byte "oor.",$fd,"Tak"                  ; char
    .byte "e",$fe,"it",$fd,"wit"            ; char
    .byte "h",$fd,"you.",$ff                ; char

MESSAGE_DIRECTIONS_DAYBREAK:
    .byte "D"                               ; Message 141
    .byte "aydreak",$fd                     ; char
    .byte "is",$fd,"a",$fe,"tow"            ; char
    .byte "n",$fd,"at",$fd,"the"            ; char
    .byte $fe,"border."                     ; char
    .byte $ff                               ; char

MESSAGE_FRIENDS_IN_DARTMOOR:
    .byte "I"                               ; Message 142
    .byte $fd,"have",$fd,"fr"               ; char
    .byte "iends",$fe,"in"                  ; char
    .byte $fd,"Dartmoo"                     ; char
    .byte "r",$fc,"which",$fd               ; char
    .byte "is",$fd,"known"                  ; char
    .byte $fe,"as",$fd,"an",$fd,"e"         ; char
    .byte "vil",$fe,"plac"                  ; char
    .byte "e.",$ff                          ; char

MESSAGE_LOOK_FOR_BATTLE_SUIT:
    .byte "L"                               ; Message 143
    .byte "ook",$fd,"for",$fd               ; char
    .byte "the",$fe,"Batt"                  ; char
    .byte "le",$fd,"Suit."                  ; char
    .byte $ff                               ; char

MESSAGE_FIND_MAGIC_CANE:
    .byte "D"                               ; Message 144
    .byte "id",$fd,"you",$fd,"f"            ; char
    .byte "ind",$fd,"them"                  ; char
    .byte "agic",$fd,"can"                  ; char
    .byte "e?",$ff                          ; char

MESSAGE_YOU_ARE_FAMOUS_GOOD_LOOKING:
    .byte "Y"                               ; Message 145
    .byte "ou",$fd,"are",$fd,"t"            ; char
    .byte "he",$fe,"famou"                  ; char
    .byte "s",$fd,"warrio"                  ; char
    .byte "r.",$fc,"You",$fd,"a"            ; char
    .byte "re",$fd,"as",$fd,"go"            ; char
    .byte "od",$fe,"looki"                  ; char
    .byte "ng",$fd,"as",$fd,"I'"            ; char
    .byte "ve",$fe,"heard"                  ; char
    .byte ".",$ff                           ; char

MESSAGE_AUTOGRAPH:
    .byte "Y"                               ; Message 146
    .byte "ou",$fd,"are",$fd,"t"            ; char
    .byte "he",$fe,"warri"                  ; char
    .byte "or",$fd,"every"                  ; char
    .byte "oneis",$fd,"ta"                  ; char
    .byte "lking",$fe,"ab"                  ; char
    .byte "out.",$fc,"Cou"                  ; char
    .byte "ld",$fd,"I",$fd,"hav"            ; char
    .byte "e",$fe,"your",$fd,"a"            ; char
    .byte "utograph"                        ; char
    .byte "?",$fc,"Are",$fd,"yo"            ; char
    .byte "u",$fd,"busy",$fe,"n"            ; char
    .byte "ow?",$fd,"Well"                  ; char
    .byte ",",$fd,"will",$fe,"y"            ; char
    .byte "ou",$fd,"come",$fd               ; char
    .byte "to",$fe,"visit"                  ; char
    .byte $fd,"me?",$fc,"My",$fd            ; char
    .byte "name",$fd,"is",$fd               ; char
    .byte "Moto.Ple"                        ; char
    .byte "ase",$fd,"don'"                  ; char
    .byte "t",$fe,"forget"                  ; char
    .byte ".",$ff                           ; char

MESSAGE_WHEN_TAKE_BATH:
    .byte "L"                               ; Message 147
    .byte "ook",$fd,"at",$fd,"y"            ; char
    .byte "ou!",$fe,"When"                  ; char
    .byte $fd,"did",$fd,"you"               ; char
    .byte $fe,"last",$fd,"ta"               ; char
    .byte "ke",$fd,"a",$fe,"bat"            ; char
    .byte "h?",$ff                          ; char

MESSAGE_GURU_CONFLATE_HAS_RING_DWARVES:
    .byte "T"                               ; Message 148
    .byte "he",$fd,"Guru",$fd               ; char
    .byte "of",$fe,"Confl"                  ; char
    .byte "ate",$fd,"has",$fd               ; char
    .byte "theRing",$fd                     ; char
    .byte "of",$fd,"Dwarf"                  ; char
    .byte "s.",$ff                          ; char

MESSAGE_DID_YOU_GET_BATTLE_SUIT:
    .byte "D"                               ; Message 149
    .byte "id",$fd,"you",$fd,"g"            ; char
    .byte "et",$fd,"the",$fe,"B"            ; char
    .byte "attle",$fd,"Su"                  ; char
    .byte "it?",$ff                         ; char

MESSAGE_DARTMORE_IS_MAZE:
    .byte "T"                               ; Message 150
    .byte "he",$fd,"castl"                  ; char
    .byte "e",$fd,"of",$fe,"Dar"            ; char
    .byte "tmoor",$fd,"is"                  ; char
    .byte $fd,"a",$fe,"compl"               ; char
    .byte "ex",$fd,"maze."                  ; char
    .byte $ff                               ; char

MESSAGE_IS_FIRST_VISIT_TO_STORE:
    .byte "I"                               ; Message 151
    .byte "s",$fd,"this",$fd,"y"            ; char
    .byte "our",$fe,"firs"                  ; char
    .byte "t",$fd,"visit",$fd               ; char
    .byte "to",$fe,"this",$fd               ; char
    .byte "store?",$fe,"I"                  ; char
    .byte "t",$fd,"is",$fd,"my",$fd         ; char
    .byte "first.",$ff                      ; char

MESSAGE_MAGIC_CANE_ABOVE_TOWER:
    .byte "H"                               ; Message 152
    .byte "ave",$fd,"not",$fd               ; char
    .byte "seen",$fe,"you"                  ; char
    .byte $fd,"for",$fd,"a",$fd,"w"         ; char
    .byte "hile.You"                        ; char
    .byte "'ll",$fd,"find"                  ; char
    .byte $fd,"a",$fe,"magic"               ; char
    .byte $fd,"cane",$fc,"wh"               ; char
    .byte "en",$fd,"you",$fd,"g"            ; char
    .byte "et",$fe,"above"                  ; char
    .byte $fd,"the",$fd,"tow"               ; char
    .byte "er",$fe,"of",$fd,"Pi"            ; char
    .byte "llar.",$ff                       ; char

MESSAGE_DIRECTIONS_TO_FRATERNAL:
    .byte "T"                               ; Message 153
    .byte "here",$fd,"is",$fd               ; char
    .byte "the",$fe,"Cast"                  ; char
    .byte "le",$fd,"of",$fe,"Fr"            ; char
    .byte "aternal",$fc                     ; char
    .byte "down",$fd,"bel"                  ; char
    .byte "ow",$fd,"the",$fe,"t"            ; char
    .byte "own",$fd,"of",$fe,"D"            ; char
    .byte "artmoor."                        ; char
    .byte $ff                               ; char

MESSAGE_YOU_NEED_DEMONS_RING:
    .byte "Y"                               ; Message 154
    .byte "ou",$fd,"need",$fd               ; char
    .byte "the",$fe,"Demo"                  ; char
    .byte "n's",$fd,"Ring"                  ; char
    .byte $fc,"to",$fd,"get",$fd            ; char
    .byte "into",$fd,"the"                  ; char
    .byte $fe,"fortres"                     ; char
    .byte "s",$fd,"of",$fe,"Zen"            ; char
    .byte "is.",$ff                         ; char

MESSAGE_KING_GRIEVE_HAS_DRAGON_SLAYER:
    .byte "D"                               ; Message 155
    .byte "ragon",$fd,"Sl"                  ; char
    .byte "ayer",$fd,"isi"                  ; char
    .byte "n",$fd,"the",$fd,"ha"            ; char
    .byte "nds",$fd,"of",$fe,"k"            ; char
    .byte "ing",$fd,"of",$fd,"t"            ; char
    .byte "he",$fe,"Dwarf"                  ; char
    .byte "s.",$ff                          ; char

MESSAGE_DEFEAT_EVIL_WITH_DRAGON_SLAYER:
    .byte "D"                               ; Message 156
    .byte "efeat",$fd,"th"                  ; char
    .byte "e",$fd,"Evil",$fe,"o"            ; char
    .byte "ne",$fd,"with",$fd               ; char
    .byte "Dragon",$fe,"S"                  ; char
    .byte "layer.",$ff                      ; char

MESSAGE_GO_TO_FRATERNAL_GURU:
    .byte "G"                               ; Message 157
    .byte "o",$fd,"to",$fd,"see"            ; char
    .byte $fd,"the",$fe,"Gur"               ; char
    .byte "u",$fd,"in",$fd,"the"            ; char
    .byte $fe,"Castle",$fd                  ; char
    .byte "of",$fe,"Frate"                  ; char
    .byte "rnal.",$ff                       ; char

MESSAGE_GURU_HAS_DEMONS_RING:
    .byte "I"                               ; Message 158
    .byte "f",$fd,"you",$fd,"se"            ; char
    .byte "e",$fd,"the",$fe,"Gu"            ; char
    .byte "ru,",$fd,"he'l"                  ; char
    .byte "l",$fd,"giveyo"                  ; char
    .byte "u",$fd,"the",$fd,"De"            ; char
    .byte "mon's",$fe,"Ri"                  ; char
    .byte "ng.",$ff                         ; char

MESSAGE_SEARCH_CASTLE_FOR_GURU:
    .byte "S"                               ; Message 159
    .byte "earch",$fd,"in"                  ; char
    .byte "side",$fe,"the"                  ; char
    .byte $fd,"castle."                     ; char
    .byte $fe,"You",$fd,"sho"               ; char
    .byte "uld",$fd,"find"                  ; char
    .byte $fe,"a",$fd,"Guru."               ; char
    .byte $ff                               ; char

MESSAGE_EVIL_IMMUNE_TO_MAGIC:
    .byte "T"                               ; Message 160
    .byte "he",$fd,"magic"                  ; char
    .byte $fd,"of",$fe,"offe"               ; char
    .byte "nce",$fd,"does"                  ; char
    .byte $fd,"notwork"                     ; char
    .byte $fd,"against"                     ; char
    .byte $fd,"theEvil"                     ; char
    .byte $fd,"one.",$ff                    ; char

MESSAGE_METEORITE_EXPOSITION_2:
    .byte "T"                               ; Message 161
    .byte "he",$fd,"Dwarf"                  ; char
    .byte "s",$fd,"re-",$fe,"ga"            ; char
    .byte "rd",$fd,"the",$fd,"m"            ; char
    .byte "eteor-it"                        ; char
    .byte "e",$fd,"as",$fd,"a",$fd,"c"      ; char
    .byte "osmic",$fe,"me"                  ; char
    .byte "ssenger."                        ; char
    .byte $fc,"It",$fd,"is",$fd,"a"         ; char
    .byte $fd,"dreadfu"                     ; char
    .byte "lthing",$fd,"a"                  ; char
    .byte "s",$fd,"you",$fe,"al"            ; char
    .byte "ready",$fd,"kn"                  ; char
    .byte "ow.",$fc,"It",$fd,"t"            ; char
    .byte "urns",$fd,"int"                  ; char
    .byte "o",$fd,"a",$fe,"pois"            ; char
    .byte "on",$fd,"when",$fe               ; char
    .byte "dissolve"                        ; char
    .byte "d",$fd,"in",$fe,"wat"            ; char
    .byte "er.",$fc,"It",$fd,"i"            ; char
    .byte "s",$fd,"not",$fd,"in"            ; char
    .byte "con-ceiv"                        ; char
    .byte "able",$fd,"tha"                  ; char
    .byte "t",$fc,"you",$fd,"wo"            ; char
    .byte "uld",$fd,"ex-",$fe               ; char
    .byte "perience"                        ; char
    .byte $fd,"mental",$fe                  ; char
    .byte "and",$fd,"phys"                  ; char
    .byte "ical",$fe,"cha"                  ; char
    .byte "nges",$fc,"whe"                  ; char
    .byte "n",$fd,"you",$fd,"ar"            ; char
    .byte "e",$fe,"near",$fd,"o"            ; char
    .byte "r",$fd,"touch",$fe               ; char
    .byte "it.",$fc,"That"                  ; char
    .byte $fd,"is",$fd,"why",$fd            ; char
    .byte "the",$fe,"Dwar"                  ; char
    .byte "fs",$fd,"have",$fe               ; char
    .byte "changed",$fd                     ; char
    .byte "and",$fd,"gone"                  ; char
    .byte "crazy.",$ff                      ; char

MESSAGE_DEFEATED_KING_GRIEVE:
    .byte "T"                               ; Message 162
    .byte "he",$fd,"monst"                  ; char
    .byte "er",$fe,"you'v"                  ; char
    .byte "e",$fd,"just",$fd,"d"            ; char
    .byte "e-",$fe,"feate"                  ; char
    .byte "d",$fd,"is",$fd,"Kin"            ; char
    .byte "g",$fe,"Grieve"                  ; char
    .byte ",",$fc,"the",$fd,"ki"            ; char
    .byte "ng",$fd,"of",$fd,"th"            ; char
    .byte "e",$fe,"Dwarfs"                  ; char
    .byte ".",$fd,"The",$fd,"Ev"            ; char
    .byte "ilOne",$fd,"ch"                  ; char
    .byte "anged",$fd,"hi"                  ; char
    .byte "s",$fe,"appear"                  ; char
    .byte "ance.",$fc,"Th"                  ; char
    .byte "e",$fd,"king",$fd,"p"            ; char
    .byte "ro-",$fe,"tect"                  ; char
    .byte "ed",$fd,"the",$fd,"s"            ; char
    .byte "wordfrom"                        ; char
    .byte $fd,"the",$fd,"Evi"               ; char
    .byte "l",$fe,"One",$fc,"by"            ; char
    .byte $fd,"hiding",$fd                  ; char
    .byte "it",$fe,"withi"                  ; char
    .byte "n",$fd,"his",$fd,"ow"            ; char
    .byte "n",$fe,"body.",$fc               ; char
    .byte "Use",$fd,"the",$fd               ; char
    .byte "sword",$fd,"to"                  ; char
    .byte "defeat",$fd,"t"                  ; char
    .byte "he",$fd,"Evil",$fe               ; char
    .byte "One",$fd,"in",$fd,"t"            ; char
    .byte "he",$fe,"fortr"                  ; char
    .byte "ess.",$fc,"Thi"                  ; char
    .byte "s",$fd,"will",$fd,"o"            ; char
    .byte "pen",$fe,"the",$fd               ; char
    .byte "door",$fd,"to",$fd               ; char
    .byte "the",$fe,"fort"                  ; char
    .byte "ress.",$ff                       ; char

MESSAGE_ILL_MEDITATE_FOR_YOU:
    .byte "I"                               ; Message 163
    .byte "'ll",$fd,"medi"                  ; char
    .byte "tate",$fe,"for"                  ; char
    .byte $fd,"you.",$ff                    ; char

MESSAGE_GLAD_YOURE_BACK:
    .byte "G"                               ; Message 164
    .byte "lad",$fd,"to",$fd,"h"            ; char
    .byte "ave",$fd,"youb"                  ; char
    .byte "ack",$fd,"safe"                  ; char
    .byte "ly.",$fc,"It",$fd,"w"            ; char
    .byte "ill",$fd,"take"                  ; char
    .byte $fe,"time,",$fe,"b"               ; char
    .byte "ut",$fd,"the",$fd,"E"            ; char
    .byte "lves",$fe,"and"                  ; char
    .byte $fd,"the",$fd,"Dwa"               ; char
    .byte "rfs",$fc,"will"                  ; char
    .byte $fd,"become",$fe                  ; char
    .byte "friends",$fd                     ; char
    .byte "and",$fd,"re-",$fe               ; char
    .byte "turn",$fd,"the"                  ; char
    .byte $fd,"peace",$fe,"t"               ; char
    .byte "o",$fd,"this",$fd,"l"            ; char
    .byte "and",$fc,"as",$fd,"i"            ; char
    .byte "t",$fd,"used",$fd,"t"            ; char
    .byte "o",$fe,"be.",$fd,"I",$fd         ; char
    .byte "understa"                        ; char
    .byte "ndyou",$fd,"wi"                  ; char
    .byte "ll",$fd,"leave"                  ; char
    .byte $fc,"to",$fd,"cont"               ; char
    .byte "inue",$fd,"you"                  ; char
    .byte "rjourney"                        ; char
    .byte ".",$fe,"What",$fd,"a"            ; char
    .byte $fd,"restles"                     ; char
    .byte "s",$fe,"guy!",$ff                ; char

MESSAGE_MARK_OF_QUEEN:
    .byte "T"                               ; Message 165
    .byte "here",$fd,"is",$fd               ; char
    .byte "the",$fe,"mark"                  ; char
    .byte $fd,"of",$fd,"\"Que"              ; char
    .byte "en\"",$fe,"by",$fd,"t"           ; char
    .byte "he",$fd,"key",$fd,"h"            ; char
    .byte "ole.",$ff                        ; char

MESSAGE_MARK_OF_KING:
    .byte "T"                               ; Message 166
    .byte "here",$fd,"is",$fd               ; char
    .byte "the",$fe,"mark"                  ; char
    .byte $fd,"of",$fd,"\"Kin"              ; char
    .byte "g\"",$fe,"by",$fd,"th"           ; char
    .byte "e",$fd,"key",$fd,"ho"            ; char
    .byte "le.",$ff                         ; char

MESSAGE_MARK_OF_ACE:
    .byte "T"                               ; Message 167
    .byte "here",$fd,"is",$fd               ; char
    .byte "the",$fe,"mark"                  ; char
    .byte $fd,"of",$fd,"\"Ace"              ; char
    .byte "\"",$fe,"by",$fd,"the"           ; char
    .byte $fd,"key",$fd,"hol"               ; char
    .byte "e.",$ff                          ; char

MESSAGE_MARK_OF_JOKER:
    .byte "T"                               ; Message 168
    .byte "here",$fd,"is",$fd               ; char
    .byte "the",$fe,"mark"                  ; char
    .byte $fd,"of",$fd,"\"Jok"              ; char
    .byte "er\"",$fe,"by",$fd,"t"           ; char
    .byte "he",$fd,"key",$fd,"h"            ; char
    .byte "ole.",$ff                        ; char

MESSAGE_NEED_RING_FOR_DOOR:
    .byte "D"                               ; Message 169
    .byte "o",$fd,"you",$fd,"ne"            ; char
    .byte "ed",$fe,"a",$fd,"rin"            ; char
    .byte "g",$fe,"to",$fd,"ope"            ; char
    .byte "n",$fd,"a",$fd,"door"            ; char
    .byte "?",$ff                           ; char

MESSAGE_USED_RED_POTION:
    .byte "I"                               ; Message 170
    .byte "'ve",$fd,"used"                  ; char
    .byte $fe,"Red",$fd,"Pot"               ; char
    .byte "ion.",$ff                        ; char

MESSAGE_USED_MATTOCK:
    .byte "I"                               ; Message 171
    .byte "'ve",$fd,"used"                  ; char
    .byte $fe,"Mattock"                     ; char
    .byte ".",$ff                           ; char

MESSAGE_USED_HOURGLASS:
    .byte "I"                               ; Message 172
    .byte "'ve",$fd,"used"                  ; char
    .byte $fe,"Hour",$fd,"Gl"               ; char
    .byte "ass.",$ff                        ; char

MESSAGE_USED_WINGBOOTS:
    .byte "I"                               ; Message 173
    .byte "'ve",$fd,"used"                  ; char
    .byte $fe,"Wing",$fd,"Bo"               ; char
    .byte "ots.",$ff                        ; char

MESSAGE_USED_KEY:
    .byte "I"                               ; Message 174
    .byte "'ve",$fd,"used"                  ; char
    .byte $fd,"key.",$ff                    ; char

MESSAGE_USED_ELIXIR:
    .byte "I"                               ; Message 175
    .byte "'ve",$fd,"used"                  ; char
    .byte $fe,"Elixir."                     ; char
    .byte $ff                               ; char

MESSAGE_HOLDING_ELIXIR:
    .byte "I"                               ; Message 176
    .byte "'m",$fd,"holdi"                  ; char
    .byte "ng",$fe,"Elixi"                  ; char
    .byte "r.",$ff                          ; char

MESSAGE_HOLDING_RED_POTION:
    .byte "I"                               ; Message 177
    .byte "'m",$fd,"holdi"                  ; char
    .byte "ng",$fe,"Red",$fd,"P"            ; char
    .byte "otion.",$ff                      ; char

MESSAGE_HOLDING_MATTOCK:
    .byte "I"                               ; Message 178
    .byte "'m",$fd,"holdi"                  ; char
    .byte "ng",$fe,"Matto"                  ; char
    .byte "ck.",$ff                         ; char

MESSAGE_HOLDING_WINGBOOTS:
    .byte "I"                               ; Message 179
    .byte "'m",$fd,"holdi"                  ; char
    .byte "ng",$fe,"Wing",$fd               ; char
    .byte "Boots.",$ff                      ; char

MESSAGE_HOLDING_HOURGLASS:
    .byte "I"                               ; Message 180
    .byte "'m",$fd,"holdi"                  ; char
    .byte "ng",$fe,"Hour",$fd               ; char
    .byte "Glass.",$ff                      ; char

MESSAGE_GOT_BATTLE_SUIT:
    .byte "I"                               ; Message 181
    .byte "'ve",$fd,"got",$fe               ; char
    .byte "the",$fd,"Batt"                  ; char
    .byte "le",$fd,"Suit."                  ; char
    .byte $ff                               ; char

MESSAGE_GOT_BATTLE_HELMET:
    .byte "I"                               ; Message 182
    .byte "'ve",$fd,"got",$fd               ; char
    .byte "the",$fe,"Batt"                  ; char
    .byte "le",$fd,"Helme"                  ; char
    .byte "t.",$ff                          ; char

MESSAGE_GOT_DRAGON_SLAYER:
    .byte "I"                               ; Message 183
    .byte "'ve",$fd,"got",$fd               ; char
    .byte "the",$fe,"Drag"                  ; char
    .byte "on",$fd,"Slaye"                  ; char
    .byte "r.",$ff                          ; char

MESSAGE_GOT_BLACK_ONYX:
    .byte "I"                               ; Message 184
    .byte "'ve",$fd,"got",$fe               ; char
    .byte "the",$fd,"Blac"                  ; char
    .byte "k",$fd,"Onyx.",$ff               ; char

MESSAGE_GOT_PENDANT:
    .byte "I"                               ; Message 185
    .byte "'ve",$fd,"got",$fe               ; char
    .byte "the",$fd,"Pend"                  ; char
    .byte "ant.",$ff                        ; char

MESSAGE_GOT_MAGICAL_ROD:
    .byte "I"                               ; Message 186
    .byte "'ve",$fd,"got",$fd               ; char
    .byte "the",$fe,"Magi"                  ; char
    .byte "cal",$fd,"Rod."                  ; char
    .byte $ff                               ; char

MESSAGE_TOUCHED_POISON:
    .byte "I"                               ; Message 187
    .byte "'ve",$fd,"touc"                  ; char
    .byte "hed",$fe,"Pois"                  ; char
    .byte "on.",$ff                         ; char

MESSAGE_GLOVE_INCREASES_POWER:
    .byte "T"                               ; Message 188
    .byte "he",$fd,"glove"                  ; char
    .byte $fe,"increas"                     ; char
    .byte "es",$fe,"offen"                  ; char
    .byte "sive",$fd,"pow"                  ; char
    .byte "er.",$ff                         ; char

MESSAGE_POWER_GLOVE_IS_GONE:
    .byte "T"                               ; Message 189
    .byte "he",$fd,"power"                  ; char
    .byte $fd,"of",$fe,"the",$fd            ; char
    .byte "Glove",$fe,"is"                  ; char
    .byte $fd,"gone.",$ff                   ; char

MESSAGE_USED_OINTMENT:
    .byte "I"                               ; Message 190
    .byte $fd,"am",$fd,"free"               ; char
    .byte $fd,"from",$fe,"in"               ; char
    .byte "jury",$fd,"bec"                  ; char
    .byte "ause",$fe,"of",$fd               ; char
    .byte "the",$fd,"oint"                  ; char
    .byte "ment.",$ff                       ; char

MESSAGE_OINTMENT_GONE:
    .byte "T"                               ; Message 191
    .byte "he",$fd,"power"                  ; char
    .byte $fd,"of",$fe,"the",$fd            ; char
    .byte "ointment"                        ; char
    .byte $fe,"is",$fd,"gone"               ; char
    .byte ".",$ff                           ; char

MESSAGE_WINGBOOTS_GONE:
    .byte "T"                               ; Message 192
    .byte "he",$fd,"power"                  ; char
    .byte $fd,"of",$fe,"the",$fd            ; char
    .byte "Wing",$fd,"Boo"                  ; char
    .byte "ts",$fe,"is",$fd,"go"            ; char
    .byte "ne.",$ff                         ; char

MESSAGE_HOURGLASS_GONE:
    .byte "T"                               ; Message 193
    .byte "he",$fd,"power"                  ; char
    .byte $fd,"of",$fe,"the",$fd            ; char
    .byte "Hour",$fd,"Gla"                  ; char
    .byte "ss",$fe,"is",$fd,"go"            ; char
    .byte "ne.",$ff                         ; char

EXTRA_TILE_GLYPH_END_DOUBLE_QUOTES:
    .byte $00,$10,$48,$28,$20,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte

EXTRA_TILE_GLYPH_SMALL_SQUARE:
    .byte $00,$78,$48,$48,$78,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte

EXTRA_TILE_GLYPH_LEFT_ARROW_TOP:
    .byte $00,$00,$00,$00,$02,$06,$0e,$1f   ; byte

EXTRA_TILE_GLYPH_LEFT_ARROW_BOTTOM:
    .byte $1f,$0e,$06,$02,$00,$00,$00,$00   ; byte

EXTRA_TILE_GLYPH_EQUAL_TOP:
    .byte $00,$00,$00,$00,$00,$00,$00,$fc   ; byte

EXTRA_TILE_GLYPH_EQUAL_BOTTOM:
    .byte $fc,$00,$00,$00,$00,$00,$00,$00   ; byte

EXTRA_TILE_GLYPH_EQUAL2_TOP:
    .byte $00,$00,$00,$00,$00,$00,$00,$1f   ; byte

EXTRA_TILE_GLYPH_EQUAL2_BOTTOM:
    .byte $1f,$00,$00,$00,$00,$00,$00,$00   ; byte

EXTRA_TILE_GLYPH_RIGHT_ARROW_TOP:
    .byte $00,$00,$00,$00,$20,$30,$38,$fc   ; byte

EXTRA_TILE_GLYPH_RIGHT_ARROW_BOTTOM:
    .byte $fc,$38,$30,$20,$00,$00,$00,$00   ; byte

EXTRA_TILE_GLYPH_END1_TOP:
    .byte $00,$00,$00,$7a,$42,$43,$42,$7a   ; byte

EXTRA_TILE_GLYPH_END1_BOTTOM:
    .byte $42,$42,$42,$7a,$00,$00,$00,$00   ; byte

EXTRA_TILE_GLYPH_END2_TOP:
    .byte $00,$00,$00,$2c,$2a,$29,$a9,$a9   ; byte

EXTRA_TILE_GLYPH_END2_BOTTOM:
    .byte $69,$29,$2a,$2c,$00,$00,$00,$00   ; byte
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff           ; undefined
