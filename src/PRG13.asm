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
MESSAGE_SHOP_GREETING:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你好！ / 有什么需要吗？ / 你想要什么？
    .byte $80,$0d,$80,$0e,$80,$0f,$fe,$80   
    .byte $10,$80,$11,$80,$12,$80,$13,$80   
    .byte $14,$80,$15,$80,$16,$fe,$80,$0d   
    .byte $80,$17,$80,$14,$80,$11,$80,$12   
    .byte $80,$16,$ff                       
MESSAGE_STRINGS:
; zh_version: the engine's scan starts HERE, so this is message 1 - it used to
; have no label of its own (only the table base), which is why the tools could not
; address it.  MESSAGEID_HELP_WITH_ANYTHING == 1 (build/constants.tsv), so the
; engine calls this block "help with anything"; the byte-identical greeting just
; above is the one a shop shows directly and is labelled MESSAGE_SHOP_GREETING.
MESSAGE_HELP_WITH_ANYTHING:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你好！ / 有什么需要吗？ / 你想要什么？
    .byte $80,$0d,$80,$0e,$80,$0f,$fe,$80   
    .byte $10,$80,$11,$80,$12,$80,$13,$80   
    .byte $14,$80,$15,$80,$16,$fe,$80,$0d   
    .byte $80,$17,$80,$14,$80,$11,$80,$12   
    .byte $80,$16,$ff                       

MESSAGE_THANK_YOU_FOR_SHOPPING:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 多谢惠顾！
    .byte $80,$18,$80,$19,$80,$1a,$80,$1b   
    .byte $80,$0f,$ff                       

MESSAGE_NOT_ENOUGH_GOLD:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你的金币不够
    .byte $80,$0d,$80,$1c,$80,$1d,$80,$1e   
    .byte $80,$1f,$80,$20,$ff               

MESSAGE_ANYTHING_ELSE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 还要别的吗？
    .byte $80,$21,$80,$14,$80,$22,$80,$1c   
    .byte $80,$15,$80,$16,$ff               

MESSAGE_COME_BACK_AGAIN:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 欢迎再来！
    .byte $80,$23,$80,$24,$80,$25,$80,$26   
    .byte $80,$0f,$ff                       

MESSAGE_CANT_CARRY_MORE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你拿不动了
    .byte $80,$0d,$80,$27,$80,$1f,$80,$28   
    .byte $80,$29,$ff                       

MESSAGE_DRIED_MEAT_50G:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 肉干能补充体力 / 需要50金币
    .byte $80,$2a,$80,$2b,$80,$2c,$80,$2d   
    .byte $80,$2e,$80,$2f,$80,$30,$fe,$80   
    .byte $13,$80,$14,$80,$08,$80,$03,$80   
    .byte $1d,$80,$1e,$ff                   

MESSAGE_DRIED_MEAT_150G:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 肉干能补充体力 / 需要150金币
    .byte $80,$2a,$80,$2b,$80,$2c,$80,$2d   
    .byte $80,$2e,$80,$2f,$80,$30,$fe,$80   
    .byte $13,$80,$14,$80,$04,$80,$08,$80   
    .byte $03,$80,$1d,$80,$1e,$ff           

MESSAGE_DRIED_MEAT_180G:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 肉干能补充体力 / 需要180金币
    .byte $80,$2a,$80,$2b,$80,$2c,$80,$2d   
    .byte $80,$2e,$80,$2f,$80,$30,$fe,$80   
    .byte $13,$80,$14,$80,$04,$80,$0b,$80   
    .byte $03,$80,$1d,$80,$1e,$ff           

MESSAGE_DRIED_MEAT_250G:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 肉干能补充体力 / 需要250金币
    .byte $80,$2a,$80,$2b,$80,$2c,$80,$2d   
    .byte $80,$2e,$80,$2f,$80,$30,$fe,$80   
    .byte $13,$80,$14,$80,$05,$80,$08,$80   
    .byte $03,$80,$1d,$80,$1e,$ff           

MESSAGE_DRIED_MEAT_350G:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 肉干能补充体力 / 需要350金币
    .byte $80,$2a,$80,$2b,$80,$2c,$80,$2d   
    .byte $80,$2e,$80,$2f,$80,$30,$fe,$80   
    .byte $13,$80,$14,$80,$06,$80,$08,$80   
    .byte $03,$80,$1d,$80,$1e,$ff           

MESSAGE_DRIED_MEAT_500G:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 肉干能补充体力 / 需要500金币
    .byte $80,$2a,$80,$2b,$80,$2c,$80,$2d   
    .byte $80,$2e,$80,$2f,$80,$30,$fe,$80   
    .byte $13,$80,$14,$80,$08,$80,$03,$80   
    .byte $03,$80,$1d,$80,$1e,$ff           

MESSAGE_DRIED_MEAT_800G:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 肉干能补充体力 / 需要800金币
    .byte $80,$2a,$80,$2b,$80,$2c,$80,$2d   
    .byte $80,$2e,$80,$2f,$80,$30,$fe,$80   
    .byte $13,$80,$14,$80,$0b,$80,$03,$80   
    .byte $03,$80,$1d,$80,$1e,$ff           

MESSAGE_I_SELL_KEYS:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你好！ / 我卖钥匙 / 你想要什么？
    .byte $80,$0d,$80,$0e,$80,$0f,$fe,$80   
    .byte $31,$80,$32,$80,$33,$80,$34,$fe   
    .byte $80,$0d,$80,$17,$80,$14,$80,$11   
    .byte $80,$12,$80,$16,$ff               

MESSAGE_I_SELL_TOOLS:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你好！ / 我卖道具 / 你想要什么？
    .byte $80,$0d,$80,$0e,$80,$0f,$fe,$80   
    .byte $31,$80,$32,$80,$35,$80,$36,$fe   
    .byte $80,$0d,$80,$17,$80,$14,$80,$11   
    .byte $80,$12,$80,$16,$ff               

MESSAGE_COME_HERE_TO_BUY_SELL:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 在这里买 / 在这里卖
    .byte $80,$37,$80,$38,$80,$39,$80,$3a   
    .byte $fe,$80,$37,$80,$38,$80,$39,$80   
    .byte $32,$ff                           

MESSAGE_NO_KEY:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你没有钥匙
    .byte $80,$0d,$80,$3b,$80,$10,$80,$33   
    .byte $80,$34,$ff                       

MESSAGE_NOTHING_TO_BUY:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你没有可卖的
    .byte $80,$0d,$80,$3b,$80,$10,$80,$3c   
    .byte $80,$32,$80,$1c,$ff               

MESSAGE_WHICH_TO_SELL:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 要卖哪一个？
    .byte $80,$14,$80,$32,$80,$3d,$80,$3e   
    .byte $80,$3f,$80,$16,$ff               

MESSAGE_WHAT_WOULD_YOU_LIKE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你想要什么？
    .byte $80,$0d,$80,$17,$80,$14,$80,$11   
    .byte $80,$12,$80,$16,$ff               

MESSAGE_MAGIC_200G:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 花200金币 / 我赐你魔法
    .byte $80,$40,$80,$05,$80,$03,$80,$03   
    .byte $80,$1d,$80,$1e,$fe,$80,$31,$80   
    .byte $41,$80,$0d,$80,$42,$80,$43,$ff   

MESSAGE_WATCH_POWER_LEVEL:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 注意体力
    .byte $80,$44,$80,$45,$80,$2f,$80,$30   
    .byte $ff                               

MESSAGE_MAGIC_FIRE_3000G:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 要学火焰魔法吗？ / 3000金币
    .byte $80,$14,$80,$46,$80,$47,$80,$48   
    .byte $80,$42,$80,$43,$80,$15,$80,$16   
    .byte $fe,$80,$06,$80,$03,$80,$03,$80   
    .byte $03,$80,$1d,$80,$1e,$ff           

MESSAGE_DONT_RELY_ON_MAGIC:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 别太依赖魔法
    .byte $80,$22,$80,$49,$80,$4a,$80,$4b   
    .byte $80,$42,$80,$43,$ff               

MESSAGE_MARTIAL_ARTS_200G:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 只要200金币 / 学武艺吗？
    .byte $80,$4c,$80,$14,$80,$05,$80,$03   
    .byte $80,$03,$80,$1d,$80,$1e,$fe,$80   
    .byte $46,$80,$4d,$80,$4e,$80,$15,$80   
    .byte $16,$ff                           

MESSAGE_DO_YOU_WANT_TREATMENT:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 要治疗吗？
    .byte $80,$14,$80,$4f,$80,$50,$80,$15   
    .byte $80,$16,$ff                       

MESSAGE_DONT_TRY_TOO_HARD:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 别太勉强
    .byte $80,$22,$80,$49,$80,$51,$80,$52   
    .byte $ff                               

MESSAGE_250G_PLEASE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 250金币
    .byte $80,$05,$80,$08,$80,$03,$80,$1d   
    .byte $80,$1e,$ff                       

MESSAGE_500G_PLEASE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 500金币
    .byte $80,$08,$80,$03,$80,$03,$80,$1d   
    .byte $80,$1e,$ff                       

MESSAGE_1000G_PLEASE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 1000金币
    .byte $80,$04,$80,$03,$80,$03,$80,$03   
    .byte $80,$1d,$80,$1e,$ff               

MESSAGE_2500G_PLEASE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 2500金币
    .byte $80,$05,$80,$08,$80,$03,$80,$03   
    .byte $80,$1d,$80,$1e,$ff               

MESSAGE_1800G_PLEASE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 1800金币
    .byte $80,$04,$80,$0b,$80,$03,$80,$03   
    .byte $80,$1d,$80,$1e,$ff               

MESSAGE_3000G_PLEASE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 3000金币
    .byte $80,$06,$80,$03,$80,$03,$80,$03   
    .byte $80,$1d,$80,$1e,$ff               

MESSAGE_MEDITATE_WITH_YOU:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你需要静心 / 我来为你冥想
    .byte $80,$0d,$80,$13,$80,$14,$80,$53   
    .byte $80,$54,$fe,$80,$31,$80,$26,$80   
    .byte $55,$80,$0d,$80,$56,$80,$17,$ff   

MESSAGE_NEW_TITLE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我赐你称号： / '[title]' / 别辜负它
    .byte $80,$31,$80,$41,$80,$0d,$80,$57   
    .byte $80,$58,$80,$59,$fe,$80,$02,$80   
    .byte $5a,$80,$5b,$80,$5c,$80,$5b,$80   
    .byte $5d,$80,$5e,$80,$5f,$80,$02,$fe   
    .byte $80,$22,$80,$60,$80,$61,$80,$62   
    .byte $ff                               

MESSAGE_REMEMBER_YOUR_MANTRA:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 不要有杂念 / 记住你的真言
    .byte $80,$1f,$80,$14,$80,$10,$80,$63   
    .byte $80,$64,$fe,$80,$65,$80,$66,$80   
    .byte $0d,$80,$1c,$80,$67,$80,$68,$ff   

MESSAGE_HEAR_AGAIN:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 要再听一次吗？
    .byte $80,$14,$80,$25,$80,$69,$80,$3e   
    .byte $80,$6a,$80,$15,$80,$16,$ff       

;============================================================================
; MESSAGE_INTRO - zh_version R1 TEST MESSAGE (Chinese + ASCII, mixed).
;
; This is the message the game's opening NPC shows, so it is the one to hijack
; while bringing the full-width path up: walk into Eolis at the start of the
; game and the textbox opens by itself.
;
; WHY HERE AND NOT MESSAGE 1: an earlier revision of this test put the bytes in
; MESSAGE_HELP_WITH_ANYTHING (message 1).  The renderer hook then never fired,
; because the opening script does not load message 1 at all - it runs
; ISCRIPT_INTRO (src/PRG12.asm), which loads MESSAGEID_INTRO = $26 = 38, i.e.
; THIS slot.  The scan-based loader was working correctly the whole time; see
; docs/hanhua-12x12.md ("Step C 消息定位") for the byte-level evidence, and
; hanhua/check_message_load.py which re-derives it from the built ROM.
;
; ENCODING (see src/PRG9_code.asm and docs/hanhua-12x12.md section 10):
;     $20-$7E         ASCII, one byte, half-width -> the original writer
;     $80,$nn         one full-width character; nn = glyph index in
;                     hanhua/text/chars_zh.txt (line order == index)
;     $FE / $FC / $FF newline / pause / end   (original control codes)
;
; GENERATED - do not hand-edit.  Regenerate with:
;     python3 hanhua/script_codec.py encode --text "你好世界\n汉化 OK 测试"
; and check the built ROM decodes back to the same text with:
;     python3 hanhua/script_codec.py verify --label MESSAGE_INTRO --text "..."
;
; The original English intro text is in git (HEAD of this file).  It comes back,
; translated, once the character set covers the whole script (Step E).
;============================================================================
MESSAGE_INTRO:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我远行归来 / 故乡已荒芜 / 城门紧闭 / 人去楼空 / 我想知道 / 这里出了什么事？
    .byte $80,$31,$80,$6b,$80,$6c,$80,$6d   
    .byte $80,$26,$fe,$80,$6e,$80,$6f,$80   
    .byte $70,$80,$71,$80,$72,$fe,$80,$73   
    .byte $80,$74,$80,$75,$80,$76,$fe,$80   
    .byte $77,$80,$78,$80,$79,$80,$7a,$fe   
    .byte $80,$31,$80,$17,$80,$7b,$80,$35   
    .byte $fe,$80,$38,$80,$39,$80,$7c,$80   
    .byte $29,$80,$11,$80,$12,$80,$7d,$80   
    .byte $16,$ff                           

MESSAGE_GO_SEE_KING:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 虽然你刚到 / 你要立刻去见国王
    .byte $80,$7e,$80,$7f,$80,$0d,$80,$80   
    .byte $80,$81,$fe,$80,$0d,$80,$14,$80   
    .byte $82,$80,$83,$80,$78,$80,$84,$80   
    .byte $85,$80,$86,$ff                   

MESSAGE_DIRECTIONS_APOLUNE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 一直往前走 / 就能到阿波伦镇
    .byte $80,$3e,$80,$87,$80,$88,$80,$89   
    .byte $80,$8a,$fe,$80,$8b,$80,$2c,$80   
    .byte $81,$80,$8c,$80,$8d,$80,$8e,$80   
    .byte $8f,$ff                           

MESSAGE_MARK_OF_JACK:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 钥匙孔旁有 / "杰克"的记号
    .byte $80,$33,$80,$34,$80,$90,$80,$91   
    .byte $80,$10,$fe,$80,$01,$80,$92,$80   
    .byte $93,$80,$01,$80,$1c,$80,$65,$80   
    .byte $58,$ff                           

MESSAGE_THIS_IS_EOLIS:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 这里是精灵镇 / 埃奥利斯 / 它位于世界树的 / 底部 / 精灵们住在这里 / 拜见国王之前 / 先去见神父
    .byte $80,$38,$80,$39,$80,$94,$80,$95   
    .byte $80,$96,$80,$8f,$fe,$80,$97,$80   
    .byte $98,$80,$99,$80,$9a,$fe,$80,$62   
    .byte $80,$9b,$80,$9c,$80,$9d,$80,$9e   
    .byte $80,$9f,$80,$1c,$fe,$80,$a0,$80   
    .byte $a1,$fe,$80,$95,$80,$96,$80,$a2   
    .byte $80,$66,$80,$37,$80,$38,$80,$39   
    .byte $fe,$80,$a3,$80,$84,$80,$85,$80   
    .byte $86,$80,$a4,$80,$89,$fe,$80,$a5   
    .byte $80,$78,$80,$84,$80,$a6,$80,$a7   
    .byte $ff                               

MESSAGE_LOOK_FOR_RINGS:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 有许多带魔力的 / 戒指 / 把它们一一找齐
    .byte $80,$10,$80,$a8,$80,$18,$80,$a9   
    .byte $80,$42,$80,$30,$80,$1c,$fe,$80   
    .byte $aa,$80,$ab,$fe,$80,$ac,$80,$62   
    .byte $80,$a2,$80,$3e,$80,$3e,$80,$ad   
    .byte $80,$ae,$ff                       

MESSAGE_TAKE_RING_TO_KING:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 如果你去见国王 / 把这枚戒指带上 / 它能证明身份 / 别弄丢了
    .byte $80,$af,$80,$b0,$80,$0d,$80,$78   
    .byte $80,$84,$80,$85,$80,$86,$fe,$80   
    .byte $ac,$80,$38,$80,$b1,$80,$aa,$80   
    .byte $ab,$80,$a9,$80,$b2,$fe,$80,$62   
    .byte $80,$2c,$80,$b3,$80,$b4,$80,$b5   
    .byte $80,$b6,$fe,$80,$22,$80,$b7,$80   
    .byte $b8,$80,$29,$ff                   

MESSAGE_VISIT_GURUS_GET_TITLE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 沿途拜访每一位 / 神父 / 他们会按你的 / 经历赐予称号
    .byte $80,$b9,$80,$ba,$80,$a3,$80,$bb   
    .byte $80,$bc,$80,$3e,$80,$9b,$fe,$80   
    .byte $a6,$80,$a7,$fe,$80,$bd,$80,$a2   
    .byte $80,$be,$80,$bf,$80,$0d,$80,$1c   
    .byte $fe,$80,$c0,$80,$c1,$80,$41,$80   
    .byte $c2,$80,$57,$80,$58,$ff           

MESSAGE_LAST_WELL_ALMOST_DRY:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 最后一口井 / 也快干涸了
    .byte $80,$c3,$80,$c4,$80,$3e,$80,$c5   
    .byte $80,$c6,$fe,$80,$c7,$80,$c8,$80   
    .byte $2b,$80,$c9,$80,$29,$ff           

MESSAGE_THIS_IS_FOREPAW:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 福尔波镇里 / 有一眼泉水
    .byte $80,$ca,$80,$cb,$80,$8d,$80,$8f   
    .byte $80,$39,$fe,$80,$10,$80,$3e,$80   
    .byte $cc,$80,$cd,$80,$ce,$ff           

MESSAGE_DWARVES_ARE_HERE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 矮人已经进了镇子 / 看来末日将至
    .byte $80,$cf,$80,$77,$80,$70,$80,$c0   
    .byte $80,$d0,$80,$29,$80,$8f,$80,$d1   
    .byte $fe,$80,$d2,$80,$26,$80,$d3,$80   
    .byte $d4,$80,$d5,$80,$d6,$ff           

MESSAGE_DO_YOU_HAVE_WEAPON:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你有能战斗的 / 武器吗？
    .byte $80,$0d,$80,$10,$80,$2c,$80,$d7   
    .byte $80,$d8,$80,$1c,$fe,$80,$4d,$80   
    .byte $d9,$80,$15,$80,$16,$ff           

MESSAGE_CANT_LET_YOU_GO:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我不能放你走
    .byte $80,$31,$80,$1f,$80,$2c,$80,$da   
    .byte $80,$0d,$80,$8a,$ff               

MESSAGE_KING_IS_WAITING:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 国王在等你
    .byte $80,$85,$80,$86,$80,$37,$80,$db   
    .byte $80,$0d,$ff                       

MESSAGE_GOOD_LUCK:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 祝你好运！
    .byte $80,$dc,$80,$0d,$80,$0e,$80,$dd   
    .byte $80,$0f,$ff                       

MESSAGE_KING_EXPOSITION:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 很高兴你来了 / 灾难降临了 / 精灵的泉水 / 我们的命脉 / 已经枯竭 / 井也在干涸 / 许多人出去 / 再没回来 / 你是最后的希望 / 这是1500金币 / 给你做路费 / 旅途危险 / 照顾好自己
    .byte $80,$de,$80,$df,$80,$e0,$80,$0d   
    .byte $80,$26,$80,$29,$fe,$80,$e1,$80   
    .byte $e2,$80,$e3,$80,$e4,$80,$29,$fe   
    .byte $80,$95,$80,$96,$80,$1c,$80,$cd   
    .byte $80,$ce,$fe,$80,$31,$80,$a2,$80   
    .byte $1c,$80,$e5,$80,$e6,$fe,$80,$70   
    .byte $80,$c0,$80,$e7,$80,$e8,$fe,$80   
    .byte $c6,$80,$c7,$80,$37,$80,$2b,$80   
    .byte $c9,$fe,$80,$a8,$80,$18,$80,$77   
    .byte $80,$7c,$80,$78,$fe,$80,$25,$80   
    .byte $3b,$80,$e9,$80,$26,$fe,$80,$0d   
    .byte $80,$94,$80,$c3,$80,$c4,$80,$1c   
    .byte $80,$ea,$80,$eb,$fe,$80,$38,$80   
    .byte $94,$80,$04,$80,$08,$80,$03,$80   
    .byte $03,$80,$1d,$80,$1e,$fe,$80,$ec   
    .byte $80,$0d,$80,$ed,$80,$ee,$80,$ef   
    .byte $fe,$80,$f0,$80,$ba,$80,$f1,$80   
    .byte $f2,$fe,$80,$f3,$80,$1b,$80,$0e   
    .byte $80,$f4,$80,$f5,$ff               

MESSAGE_NOTHING_MORE_TO_HELP:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我已经帮不上 / 什么忙了 / 等你的好消息
    .byte $80,$31,$80,$70,$80,$c0,$80,$f6   
    .byte $80,$1f,$80,$b2,$fe,$80,$11,$80   
    .byte $12,$80,$f7,$80,$29,$fe,$80,$db   
    .byte $80,$0d,$80,$1c,$80,$0e,$80,$f8   
    .byte $80,$f9,$ff                       

MESSAGE_DWARVES_ROBBING_ELVES:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 矮人在抢劫 / 精灵的财物
    .byte $80,$cf,$80,$77,$80,$37,$80,$fa   
    .byte $80,$fb,$fe,$80,$95,$80,$96,$80   
    .byte $1c,$80,$fc,$80,$fd,$ff           

MESSAGE_METEORITE_EXPOSITION:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 陨石落进世界树 / 造成了大混乱 / 混乱平息后 / 地底的矮人 / 爬了上来 / 袭击了精灵 / 没人知道原因
    .byte $80,$fe,$81,$00,$81,$01,$80,$d0   
    .byte $80,$9d,$80,$9e,$80,$9f,$fe,$81   
    .byte $02,$81,$03,$80,$29,$81,$04,$81   
    .byte $05,$81,$06,$fe,$81,$05,$81,$06   
    .byte $81,$07,$80,$f9,$80,$c4,$fe,$81   
    .byte $08,$80,$a0,$80,$1c,$80,$cf,$80   
    .byte $77,$fe,$81,$09,$80,$29,$80,$b2   
    .byte $80,$26,$fe,$81,$0a,$81,$0b,$80   
    .byte $29,$80,$95,$80,$96,$fe,$80,$3b   
    .byte $80,$77,$80,$7b,$80,$35,$81,$0c   
    .byte $81,$0d,$ff                       

MESSAGE_LISTEN_TO_PEOPLE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 多听听人们的话 / 只顾着赶路 / 会一无所获
    .byte $80,$18,$80,$69,$80,$69,$80,$77   
    .byte $80,$a2,$80,$1c,$81,$0e,$fe,$80   
    .byte $4c,$80,$1b,$81,$0f,$81,$10,$80   
    .byte $ee,$fe,$80,$be,$80,$3e,$81,$11   
    .byte $81,$12,$81,$13,$ff               

MESSAGE_DONT_TRY_TOO_HARD_2:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 别太勉强
    .byte $80,$22,$80,$49,$80,$51,$80,$52   
    .byte $ff                               

MESSAGE_WELCOME_TO_APOLUNE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 欢迎来到 / 阿波伦镇
    .byte $80,$23,$80,$24,$80,$26,$80,$81   
    .byte $fe,$80,$8c,$80,$8d,$80,$8e,$80   
    .byte $8f,$ff                           

MESSAGE_DIRECTIONS_FOREPAW:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 前面就是 / 福尔波镇
    .byte $80,$89,$81,$14,$80,$8b,$80,$94   
    .byte $fe,$80,$ca,$80,$cb,$80,$8d,$80   
    .byte $8f,$ff                           

MESSAGE_DIRECTIONS_TO_TRUNK:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 树干塔里到处 / 都是矮人 / 出镇后向右 / 一直走 / 就能看到 / 树干塔
    .byte $80,$9f,$80,$2b,$81,$15,$80,$39   
    .byte $80,$81,$81,$16,$fe,$81,$17,$80   
    .byte $94,$80,$cf,$80,$77,$fe,$80,$7c   
    .byte $80,$8f,$80,$c4,$81,$18,$81,$19   
    .byte $fe,$80,$3e,$80,$87,$80,$8a,$fe   
    .byte $80,$8b,$80,$2c,$80,$d2,$80,$81   
    .byte $fe,$80,$9f,$80,$2b,$81,$15,$ff   

MESSAGE_GOOD_LUCK_2:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 祝你好运！
    .byte $80,$dc,$80,$0d,$80,$0e,$80,$dd   
    .byte $80,$0f,$ff                       

MESSAGE_SHOULD_HAVE_SHIELD:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你该带面盾牌 / 它能挡住 / 矮人的攻击
    .byte $80,$0d,$81,$1a,$80,$a9,$81,$14   
    .byte $81,$1b,$81,$1c,$fe,$80,$62,$80   
    .byte $2c,$81,$1d,$80,$66,$fe,$80,$cf   
    .byte $80,$77,$80,$1c,$81,$1e,$81,$0b   
    .byte $ff                               

MESSAGE_MATTOCK_IN_TOWER:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 鹤嘴锄应该 / 就在塔里 / 打倒矮人 / 就能拿到
    .byte $81,$1f,$81,$20,$81,$21,$81,$22   
    .byte $81,$1a,$fe,$80,$8b,$80,$37,$81   
    .byte $15,$80,$39,$fe,$81,$23,$81,$24   
    .byte $80,$cf,$80,$77,$fe,$80,$8b,$80   
    .byte $2c,$80,$27,$80,$81,$ff           

MESSAGE_BLOCKED_PASSAGE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我们筑起高墙 / 封住了通往 / 邻镇的路 / 可矮人还是 / 不断涌来
    .byte $80,$31,$80,$a2,$81,$25,$81,$26   
    .byte $80,$df,$81,$27,$fe,$81,$28,$80   
    .byte $66,$80,$29,$81,$29,$80,$88,$fe   
    .byte $81,$2a,$80,$8f,$80,$1c,$80,$ee   
    .byte $fe,$80,$3c,$80,$cf,$80,$77,$80   
    .byte $21,$80,$94,$fe,$80,$1f,$81,$2b   
    .byte $81,$2c,$80,$26,$ff               

MESSAGE_MATTOCK_BREAKS_WALL:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 有鹤嘴锄 / 就能砸开墙 / 如果没有……
    .byte $80,$10,$81,$1f,$81,$20,$81,$21   
    .byte $fe,$80,$8b,$80,$2c,$81,$2d,$81   
    .byte $2e,$81,$27,$fe,$80,$af,$80,$b0   
    .byte $80,$3b,$80,$10,$81,$2f,$81,$2f   
    .byte $ff                               

MESSAGE_YOU_NEED_KEY:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你需要钥匙
    .byte $80,$0d,$80,$13,$80,$14,$80,$33   
    .byte $80,$34,$ff                       

MESSAGE_YOU_NEED_DIFFERENT_KEY:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你需要另一把 / 钥匙
    .byte $80,$0d,$80,$13,$80,$14,$81,$30   
    .byte $80,$3e,$80,$ac,$fe,$80,$33,$80   
    .byte $34,$ff                           

MESSAGE_DOCTOR_CAN_HELP:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 受伤了吗？ / 我们的医生 / 能帮你
    .byte $81,$31,$81,$32,$80,$29,$80,$15   
    .byte $80,$16,$fe,$80,$31,$80,$a2,$80   
    .byte $1c,$81,$33,$81,$34,$fe,$80,$2c   
    .byte $80,$f6,$80,$0d,$ff               

MESSAGE_POISON_IS_BAD:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 小心那罐毒药 / 它会夺走 / 你的体力
    .byte $81,$35,$80,$54,$81,$36,$81,$37   
    .byte $81,$38,$81,$39,$fe,$80,$62,$80   
    .byte $be,$81,$3a,$80,$8a,$fe,$80,$0d   
    .byte $80,$1c,$80,$2f,$80,$30,$ff       

MESSAGE_LEARN_MANTRAS:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你学会神父的 / 真言了吗？ / 真言能让你 / 回到这个世界 / 一定要记牢
    .byte $80,$0d,$80,$46,$80,$be,$80,$a6   
    .byte $80,$a7,$80,$1c,$fe,$80,$67,$80   
    .byte $68,$80,$29,$80,$15,$80,$16,$fe   
    .byte $80,$67,$80,$68,$80,$2c,$81,$3b   
    .byte $80,$0d,$fe,$80,$e9,$80,$81,$80   
    .byte $38,$80,$3f,$80,$9d,$80,$9e,$fe   
    .byte $80,$3e,$81,$3c,$80,$14,$80,$65   
    .byte $81,$3d,$ff                       

MESSAGE_SECRET_GURU_IN_TOWER:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 要塞塔里 / 有位隐修神父 / 你会得到 / 重要的情报 / 和一把钥匙
    .byte $80,$14,$81,$3e,$81,$15,$80,$39   
    .byte $fe,$80,$10,$80,$9b,$81,$3f,$81   
    .byte $40,$80,$a6,$80,$a7,$fe,$80,$0d   
    .byte $80,$be,$81,$41,$80,$81,$fe,$81   
    .byte $42,$80,$14,$80,$1c,$81,$43,$81   
    .byte $44,$fe,$81,$45,$80,$3e,$80,$ac   
    .byte $80,$33,$80,$34,$ff               

MESSAGE_CARRY_ITEMS:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你最多带8件道具 / 每件都重要 / 要好好挑选
    .byte $80,$0d,$80,$c3,$80,$18,$80,$a9   
    .byte $80,$0b,$81,$46,$80,$35,$80,$36   
    .byte $fe,$80,$bc,$81,$46,$81,$17,$81   
    .byte $42,$80,$14,$fe,$80,$14,$80,$0e   
    .byte $80,$0e,$81,$47,$81,$48,$ff       

MESSAGE_WELCOME_TO_FOREPAW:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 这里是 / 福尔波镇
    .byte $80,$38,$80,$39,$80,$94,$fe,$80   
    .byte $ca,$80,$cb,$80,$8d,$80,$8f,$ff   

MESSAGE_FOUNTAIN_WILL_FLOW_TO_TOWN:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 只要泉水 / 重新涌出 / 水就会回到 / 镇里
    .byte $80,$4c,$80,$14,$80,$cd,$80,$ce   
    .byte $fe,$81,$42,$81,$49,$81,$2c,$80   
    .byte $7c,$fe,$80,$ce,$80,$8b,$80,$be   
    .byte $80,$e9,$80,$81,$fe,$80,$8f,$80   
    .byte $39,$ff                           

MESSAGE_FIND_3_SPRINGS:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 三处泉水 / 汇入喷泉 / 找到这三处 / 泉水 / 把水还给它
    .byte $81,$4a,$81,$16,$80,$cd,$80,$ce   
    .byte $fe,$81,$4b,$81,$4c,$81,$4d,$80   
    .byte $cd,$fe,$80,$ad,$80,$81,$80,$38   
    .byte $81,$4a,$81,$16,$fe,$80,$cd,$80   
    .byte $ce,$fe,$80,$ac,$80,$ce,$80,$21   
    .byte $80,$ec,$80,$62,$ff               

MESSAGE_WATER_IS_FLOWING:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我们的泉水 / 又涌出来了 / 多亏了你
    .byte $80,$31,$80,$a2,$80,$1c,$80,$cd   
    .byte $80,$ce,$fe,$81,$4e,$81,$2c,$80   
    .byte $7c,$80,$26,$80,$29,$fe,$80,$18   
    .byte $81,$4f,$80,$29,$80,$0d,$ff       

MESSAGE_FOUNTAIN_IN_SKY:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我常听人说起 / 天上的泉水 / 从镇上往下走 / 会到一处 / 天空开阔的地方 / 据说那里 / 天上有泉水 / 但需要羽翼靴……
    .byte $80,$31,$81,$50,$80,$69,$80,$77   
    .byte $81,$51,$81,$26,$fe,$81,$52,$80   
    .byte $b2,$80,$1c,$80,$cd,$80,$ce,$fe   
    .byte $81,$53,$80,$8f,$80,$b2,$80,$88   
    .byte $81,$54,$80,$8a,$fe,$80,$be,$80   
    .byte $81,$80,$3e,$81,$16,$fe,$81,$52   
    .byte $80,$7a,$81,$2e,$81,$55,$80,$1c   
    .byte $81,$08,$81,$56,$fe,$81,$57,$81   
    .byte $51,$81,$36,$80,$39,$fe,$81,$52   
    .byte $80,$b2,$80,$10,$80,$cd,$80,$ce   
    .byte $fe,$81,$58,$80,$13,$80,$14,$81   
    .byte $59,$81,$5a,$81,$5b,$81,$2f,$81   
    .byte $2f,$ff                           

MESSAGE_PUSH_FOUNTAIN_ROCK:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 如果你能把 / 石头从泉水旁 / 推开 / 就能找到 / 去马斯康的路 / 但没有红宝石 / 戒指就推不动 / 泉水边的老人 / 应该有一枚 / 去问问他
    .byte $80,$af,$80,$b0,$80,$0d,$80,$2c   
    .byte $80,$ac,$fe,$81,$00,$81,$5c,$81   
    .byte $53,$80,$cd,$80,$ce,$80,$91,$fe   
    .byte $81,$5d,$81,$2e,$fe,$80,$8b,$80   
    .byte $2c,$80,$ad,$80,$81,$fe,$80,$78   
    .byte $81,$5e,$80,$9a,$81,$5f,$80,$1c   
    .byte $80,$ee,$fe,$81,$58,$80,$3b,$80   
    .byte $10,$81,$60,$81,$61,$81,$00,$fe   
    .byte $80,$aa,$80,$ab,$80,$8b,$81,$5d   
    .byte $80,$1f,$80,$28,$fe,$80,$cd,$80   
    .byte $ce,$81,$62,$80,$1c,$81,$63,$80   
    .byte $77,$fe,$81,$22,$81,$1a,$80,$10   
    .byte $80,$3e,$80,$b1,$fe,$80,$78,$81   
    .byte $64,$81,$64,$80,$bd,$ff           

MESSAGE_SPRING_IN_TOWER:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 要塞塔里 / 有一处泉水 / 你会找到 / 干涸的喷泉 / 塔的入口 / 就在这座镇子 / 正上方 / 再见
    .byte $80,$14,$81,$3e,$81,$15,$80,$39   
    .byte $fe,$80,$10,$80,$3e,$81,$16,$80   
    .byte $cd,$80,$ce,$fe,$80,$0d,$80,$be   
    .byte $80,$ad,$80,$81,$fe,$80,$2b,$80   
    .byte $c9,$80,$1c,$81,$4d,$80,$cd,$fe   
    .byte $81,$15,$80,$1c,$81,$4c,$80,$c5   
    .byte $fe,$80,$8b,$80,$37,$80,$38,$81   
    .byte $65,$80,$8f,$80,$d1,$fe,$81,$66   
    .byte $80,$b2,$81,$56,$fe,$80,$25,$80   
    .byte $84,$ff                           

MESSAGE_WINGBOOTS_IN_TOWER:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 住在塔里的 / 矮人有羽翼靴 / 拿到之后 / 去找天上的 / 泉水吧
    .byte $80,$66,$80,$37,$81,$15,$80,$39   
    .byte $80,$1c,$fe,$80,$cf,$80,$77,$80   
    .byte $10,$81,$59,$81,$5a,$81,$5b,$fe   
    .byte $80,$27,$80,$81,$80,$a4,$80,$c4   
    .byte $fe,$80,$78,$80,$ad,$81,$52,$80   
    .byte $b2,$80,$1c,$fe,$80,$cd,$80,$ce   
    .byte $81,$67,$ff                       

MESSAGE_DIRECTIONS_TO_MASCON:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 把石头从 / 泉水旁推开 / 就能找到 / 去马斯康的路 / 但你需要 / 红宝石戒指
    .byte $80,$ac,$81,$00,$81,$5c,$81,$53   
    .byte $fe,$80,$cd,$80,$ce,$80,$91,$81   
    .byte $5d,$81,$2e,$fe,$80,$8b,$80,$2c   
    .byte $80,$ad,$80,$81,$fe,$80,$78,$81   
    .byte $5e,$80,$9a,$81,$5f,$80,$1c,$80   
    .byte $ee,$fe,$81,$58,$80,$0d,$80,$13   
    .byte $80,$14,$fe,$81,$60,$81,$61,$81   
    .byte $00,$80,$aa,$80,$ab,$ff           

MESSAGE_LOOK_FOR_WINGBOOTS:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 去找羽翼靴
    .byte $80,$78,$80,$ad,$81,$59,$81,$5a   
    .byte $81,$5b,$ff                       

MESSAGE_FOUNTAIN_IN_SKY_HINT:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 走到蓝天下 / 你会找到 / 天上的泉水
    .byte $80,$8a,$80,$81,$81,$68,$81,$52   
    .byte $81,$54,$fe,$80,$0d,$80,$be,$80   
    .byte $ad,$80,$81,$fe,$81,$52,$80,$b2   
    .byte $80,$1c,$80,$cd,$80,$ce,$ff       

MESSAGE_USE_THIS_KEY_FOR_FIRST_SPRING:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 用这把钥匙 / 打开下面的门 / 你会找到 / 第一处泉水
    .byte $81,$69,$80,$38,$80,$ac,$80,$33   
    .byte $80,$34,$fe,$81,$23,$81,$2e,$81   
    .byte $54,$81,$14,$80,$1c,$80,$74,$fe   
    .byte $80,$0d,$80,$be,$80,$ad,$80,$81   
    .byte $fe,$81,$6a,$80,$3e,$81,$16,$80   
    .byte $cd,$80,$ce,$ff                   

MESSAGE_GET_JOKER_OR_COME_BACK:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 如果没有 / 小丑钥匙 / 就请回吧
    .byte $80,$af,$80,$b0,$80,$3b,$80,$10   
    .byte $fe,$81,$35,$81,$6b,$80,$33,$80   
    .byte $34,$fe,$80,$8b,$81,$6c,$80,$e9   
    .byte $81,$67,$ff                       

MESSAGE_HO_HO_HO_ZZZ:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 呵呵呵！ / 我来讲讲 / 泉水的故事 / …… / …… / 哎呀！ / ……睡着了 / 水被下了毒 / 毒快散尽了 / 可以叫醒他 / 看着 / …… …… / 有点不对…… / 哎呀！
    .byte $81,$6d,$81,$6d,$81,$6d,$80,$0f   
    .byte $fe,$80,$31,$80,$26,$81,$6e,$81   
    .byte $6e,$fe,$80,$cd,$80,$ce,$80,$1c   
    .byte $80,$6e,$80,$7d,$fe,$81,$2f,$81   
    .byte $2f,$fe,$81,$2f,$81,$2f,$fe,$81   
    .byte $6f,$81,$70,$80,$0f,$fe,$81,$2f   
    .byte $81,$2f,$81,$71,$81,$0f,$80,$29   
    .byte $fe,$80,$ce,$81,$72,$81,$54,$80   
    .byte $29,$81,$38,$fe,$81,$38,$80,$c8   
    .byte $81,$73,$81,$74,$80,$29,$fe,$80   
    .byte $3c,$81,$75,$81,$76,$81,$77,$80   
    .byte $bd,$fe,$80,$d2,$81,$0f,$fe,$81   
    .byte $2f,$81,$2f,$80,$00,$81,$2f,$81   
    .byte $2f,$fe,$80,$10,$81,$78,$80,$1f   
    .byte $81,$79,$81,$2f,$81,$2f,$fe,$81   
    .byte $6f,$81,$70,$80,$0f,$ff           

MESSAGE_GET_KEY_FIND_FOUNTAIN:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 去要塞塔找 / 隐修神父 / 拿钥匙 / 再寻找那处 / 没人发现过的 / 第一处泉水
    .byte $80,$78,$80,$14,$81,$3e,$81,$15   
    .byte $80,$ad,$fe,$81,$3f,$81,$40,$80   
    .byte $a6,$80,$a7,$fe,$80,$27,$80,$33   
    .byte $80,$34,$fe,$80,$25,$81,$7a,$80   
    .byte $ad,$81,$36,$81,$16,$fe,$80,$3b   
    .byte $80,$77,$81,$7b,$81,$7c,$81,$7d   
    .byte $80,$1c,$fe,$81,$6a,$80,$3e,$81   
    .byte $16,$80,$cd,$80,$ce,$ff           

MESSAGE_THIS_IS_SPRING_OF_TRUNK_GET_ELIXIR:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你能到这里 / 真不容易 / 这是树干泉水 / 要让泉水复活 / 需要灵药 / 能把药给我吗？
    .byte $80,$0d,$80,$2c,$80,$81,$80,$38   
    .byte $80,$39,$fe,$80,$67,$80,$1f,$81   
    .byte $7e,$81,$7f,$fe,$80,$38,$80,$94   
    .byte $80,$9f,$80,$2b,$80,$cd,$80,$ce   
    .byte $fe,$80,$14,$81,$3b,$80,$cd,$80   
    .byte $ce,$81,$80,$81,$81,$fe,$80,$13   
    .byte $80,$14,$80,$96,$81,$39,$fe,$80   
    .byte $2c,$80,$ac,$81,$39,$80,$ec,$80   
    .byte $31,$80,$15,$80,$16,$ff           

MESSAGE_2_MORE_SPRINGS:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 这处泉水 / 会重新涌出 / 还有两处 / 快去找吧
    .byte $80,$38,$81,$16,$80,$cd,$80,$ce   
    .byte $fe,$80,$be,$81,$42,$81,$49,$81   
    .byte $2c,$80,$7c,$fe,$80,$21,$80,$10   
    .byte $81,$82,$81,$16,$fe,$80,$c8,$80   
    .byte $78,$80,$ad,$81,$67,$ff           

MESSAGE_COME_BACK_WITH_MEDICINE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 带着药再来
    .byte $80,$a9,$81,$0f,$81,$39,$80,$25   
    .byte $80,$26,$ff                       

MESSAGE_FIND_POISON_IN_MASCON:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 泉水一恢复 / 就去马斯康 / 找出矮人藏的毒 / 否则精灵 / 会被毁灭
    .byte $80,$cd,$80,$ce,$80,$3e,$81,$83   
    .byte $81,$80,$fe,$80,$8b,$80,$78,$81   
    .byte $5e,$80,$9a,$81,$5f,$fe,$80,$ad   
    .byte $80,$7c,$80,$cf,$80,$77,$81,$84   
    .byte $80,$1c,$81,$38,$fe,$81,$85,$81   
    .byte $86,$80,$95,$80,$96,$fe,$80,$be   
    .byte $81,$72,$81,$87,$81,$88,$ff       

MESSAGE_WILL_REVIVE_SPRING:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 谢谢你来！ / 我这就让 / 泉水复活
    .byte $80,$19,$80,$19,$80,$0d,$80,$26   
    .byte $80,$0f,$fe,$80,$31,$80,$38,$80   
    .byte $8b,$81,$3b,$fe,$80,$cd,$80,$ce   
    .byte $81,$80,$81,$81,$ff               

MESSAGE_GIVING_RING_OF_RUBY:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我把红宝石 / 戒指给你 / 现在去把石头 / 从泉水旁推开
    .byte $80,$31,$80,$ac,$81,$60,$81,$61   
    .byte $81,$00,$fe,$80,$aa,$80,$ab,$80   
    .byte $ec,$80,$0d,$fe,$81,$7c,$80,$37   
    .byte $80,$78,$80,$ac,$81,$00,$81,$5c   
    .byte $fe,$81,$53,$80,$cd,$80,$ce,$80   
    .byte $91,$81,$5d,$81,$2e,$ff           

MESSAGE_TRUST_YOUR_POWER:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 相信你的力量 / 你是被选中的 / 战士 / 来拯救 / 这个世界
    .byte $81,$89,$81,$8a,$80,$0d,$80,$1c   
    .byte $80,$30,$81,$8b,$fe,$80,$0d,$80   
    .byte $94,$81,$72,$81,$48,$81,$8c,$80   
    .byte $1c,$fe,$80,$d7,$81,$8d,$fe,$80   
    .byte $26,$81,$8e,$81,$8f,$fe,$80,$38   
    .byte $80,$3f,$80,$9d,$80,$9e,$ff       

MESSAGE_WELCOME_TO_MASCON:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你来这里 / 有何贵干？ / 这里是雾中的 / 马斯康镇
    .byte $80,$0d,$80,$26,$80,$38,$80,$39   
    .byte $fe,$80,$10,$81,$90,$81,$91,$80   
    .byte $2b,$80,$16,$fe,$80,$38,$80,$39   
    .byte $80,$94,$81,$92,$81,$8c,$80,$1c   
    .byte $fe,$81,$5e,$80,$9a,$81,$5f,$80   
    .byte $8f,$ff                           

MESSAGE_PREPARE_BEFORE_FOREPAW:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 福尔波塔 / 还很远 / 做好准备 / 再出发
    .byte $80,$ca,$80,$cb,$80,$8d,$81,$15   
    .byte $fe,$80,$21,$80,$de,$80,$6b,$fe   
    .byte $80,$ed,$80,$0e,$81,$93,$81,$94   
    .byte $fe,$80,$25,$80,$7c,$81,$7b,$ff   

MESSAGE_METEORITE_BECOMES_POISON:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 陨石溶进水里 / 就会变成 / 让人生病的毒 / 一切始于 / 矮人把它 / 带进世界树
    .byte $80,$fe,$81,$00,$81,$95,$80,$d0   
    .byte $80,$ce,$80,$39,$fe,$80,$8b,$80   
    .byte $be,$81,$96,$81,$03,$fe,$81,$3b   
    .byte $80,$77,$81,$34,$81,$97,$80,$1c   
    .byte $81,$38,$fe,$80,$3e,$81,$98,$81   
    .byte $99,$80,$9c,$fe,$80,$cf,$80,$77   
    .byte $80,$ac,$80,$62,$fe,$80,$a9,$80   
    .byte $d0,$80,$9d,$80,$9e,$80,$9f,$ff   

MESSAGE_DID_YOU_GET_PENDANT:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 拿到吊坠了吗？ / 它能增强 / 你的攻击力
    .byte $80,$27,$80,$81,$81,$9a,$81,$9b   
    .byte $80,$29,$80,$15,$80,$16,$fe,$80   
    .byte $62,$80,$2c,$81,$9c,$80,$52,$fe   
    .byte $80,$0d,$80,$1c,$81,$1e,$81,$0b   
    .byte $80,$30,$ff                       

MESSAGE_STORES_OUTSIDE_TOWN:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 镇外也有商店 / 它们卖些 / 有用的东西 / 只是路不太好走 / 走路时 / 抬头找一找
    .byte $80,$8f,$81,$9d,$80,$c7,$80,$10   
    .byte $81,$9e,$81,$9f,$fe,$80,$62,$80   
    .byte $a2,$80,$32,$81,$a0,$fe,$80,$10   
    .byte $81,$69,$80,$1c,$81,$a1,$81,$a2   
    .byte $fe,$80,$4c,$80,$94,$80,$ee,$80   
    .byte $1f,$80,$49,$80,$0e,$80,$8a,$fe   
    .byte $80,$8a,$80,$ee,$81,$a3,$fe,$81   
    .byte $a4,$81,$5c,$80,$ad,$80,$3e,$80   
    .byte $ad,$ff                           

MESSAGE_THIS_IS_LARGE_SHIELD:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 这是一面 / 又大又漂亮的 / 盾牌
    .byte $80,$38,$80,$94,$80,$3e,$81,$14   
    .byte $fe,$81,$4e,$81,$04,$81,$4e,$81   
    .byte $a5,$81,$a6,$80,$1c,$fe,$81,$1b   
    .byte $81,$1c,$ff                       

MESSAGE_DIRECTIONS_TO_SUFFER:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 陨石被供奉在 / 苦难塔 / 塔就在一位 / 神父的上方 / 小心行事
    .byte $80,$fe,$81,$00,$81,$72,$81,$a7   
    .byte $81,$a8,$80,$37,$fe,$81,$a9,$80   
    .byte $e2,$81,$15,$fe,$81,$15,$80,$8b   
    .byte $80,$37,$80,$3e,$80,$9b,$fe,$80   
    .byte $a6,$80,$a7,$80,$1c,$80,$b2,$81   
    .byte $56,$fe,$81,$35,$80,$54,$80,$6c   
    .byte $80,$7d,$ff                       

MESSAGE_NEED_WING_BOOTS_FOR_MIST:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 要去雾中的 / 维克提姆镇 / 你需要羽翼靴 / 去苦难塔找
    .byte $80,$14,$80,$78,$81,$92,$81,$8c   
    .byte $80,$1c,$fe,$81,$aa,$80,$93,$81   
    .byte $ab,$81,$ac,$80,$8f,$fe,$80,$0d   
    .byte $80,$13,$80,$14,$81,$59,$81,$5a   
    .byte $81,$5b,$fe,$80,$78,$81,$a9,$80   
    .byte $e2,$81,$15,$80,$ad,$ff           

MESSAGE_WELCOME_TO_MIST:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 自从陨石 / 砸中镇子 / 这里就被 / 浓雾笼罩 / 有些地方 / 可能还在燃烧
    .byte $80,$f4,$81,$53,$80,$fe,$81,$00   
    .byte $fe,$81,$2d,$81,$8c,$80,$8f,$80   
    .byte $d1,$fe,$80,$38,$80,$39,$80,$8b   
    .byte $81,$72,$fe,$81,$ad,$81,$92,$81   
    .byte $ae,$81,$af,$fe,$80,$10,$81,$a0   
    .byte $81,$08,$81,$56,$fe,$80,$3c,$80   
    .byte $2c,$80,$21,$80,$37,$81,$b0,$81   
    .byte $b1,$ff                           

MESSAGE_HOUSE_OUTSIDE_ABANDONED:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 镇外那间屋子 / 被废弃了 / 现在住着矮人 / 小心他们
    .byte $80,$8f,$81,$9d,$81,$36,$81,$b2   
    .byte $81,$b3,$80,$d1,$fe,$81,$72,$81   
    .byte $b4,$81,$b5,$80,$29,$fe,$81,$7c   
    .byte $80,$37,$80,$66,$81,$0f,$80,$cf   
    .byte $80,$77,$fe,$81,$35,$80,$54,$80   
    .byte $bd,$80,$a2,$ff                   

MESSAGE_TOWER_OF_SUFFER_SOON:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你很快就能 / 到达苦难塔
    .byte $80,$0d,$80,$de,$80,$c8,$80,$8b   
    .byte $80,$2c,$fe,$80,$81,$81,$b6,$81   
    .byte $a9,$80,$e2,$81,$15,$ff           

MESSAGE_KEEP_PENDANT:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 吊坠一直是 / 镇上的宝物 / 但由你保管 / 对镇上更好
    .byte $81,$9a,$81,$9b,$80,$3e,$80,$87   
    .byte $80,$94,$fe,$80,$8f,$80,$b2,$80   
    .byte $1c,$81,$61,$80,$fd,$fe,$81,$58   
    .byte $81,$b7,$80,$0d,$81,$b8,$81,$b9   
    .byte $fe,$81,$79,$80,$8f,$80,$b2,$81   
    .byte $ba,$80,$0e,$ff                   

MESSAGE_DWARVES_CHANTING:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 矮人对着 / 一块陨石 / 念诵真言 / 他们相信它 / 有特殊的 / 宇宙之力
    .byte $80,$cf,$80,$77,$81,$79,$81,$0f   
    .byte $fe,$80,$3e,$81,$bb,$80,$fe,$81   
    .byte $00,$fe,$80,$64,$81,$bc,$80,$67   
    .byte $80,$68,$fe,$80,$bd,$80,$a2,$81   
    .byte $89,$81,$8a,$80,$62,$fe,$80,$10   
    .byte $81,$bd,$81,$be,$80,$1c,$fe,$81   
    .byte $bf,$81,$c0,$80,$a4,$80,$30,$ff   

MESSAGE_METEORITE_WAS_MOVED:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 原本在苦难塔的 / 陨石 / 已经被移到 / 迷雾塔 / 矮人一定 / 知道了你要来
    .byte $81,$0c,$81,$c1,$80,$37,$81,$a9   
    .byte $80,$e2,$81,$15,$80,$1c,$fe,$80   
    .byte $fe,$81,$00,$fe,$80,$70,$80,$c0   
    .byte $81,$72,$81,$c2,$80,$81,$fe,$81   
    .byte $c3,$81,$92,$81,$15,$fe,$80,$cf   
    .byte $80,$77,$80,$3e,$81,$3c,$fe,$80   
    .byte $7b,$80,$35,$80,$29,$80,$0d,$80   
    .byte $14,$80,$26,$ff                   

MESSAGE_HOUR_GLASS:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 据说沙漏能让你 / 在时间停止时 / 行动
    .byte $81,$57,$81,$51,$81,$c4,$81,$c5   
    .byte $80,$2c,$81,$3b,$80,$0d,$fe,$80   
    .byte $37,$81,$a3,$81,$b2,$81,$c6,$81   
    .byte $c7,$81,$a3,$fe,$80,$6c,$80,$28   
    .byte $ff                               

MESSAGE_HOUR_GLASS_USES_ENERGY:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 沙漏会消耗 / 你的体力 / 用的时候 / 要小心
    .byte $81,$c4,$81,$c5,$80,$be,$80,$f8   
    .byte $81,$c8,$fe,$80,$0d,$80,$1c,$80   
    .byte $2f,$80,$30,$fe,$81,$69,$80,$1c   
    .byte $81,$a3,$81,$c9,$fe,$80,$14,$81   
    .byte $35,$80,$54,$ff                   

MESSAGE_WELCOME_TO_VICTIM:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 欢迎来到 / 维克提姆镇 / 我一直 / 出不了镇
    .byte $80,$23,$80,$24,$80,$26,$80,$81   
    .byte $fe,$81,$aa,$80,$93,$81,$ab,$81   
    .byte $ac,$80,$8f,$fe,$80,$31,$80,$3e   
    .byte $80,$87,$fe,$80,$7c,$80,$1f,$80   
    .byte $29,$80,$8f,$ff                   

MESSAGE_DANGEROUS_WITHOUT_MAGIC:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 没有魔法护盾 / 出镇很危险
    .byte $80,$3b,$80,$10,$80,$42,$80,$43   
    .byte $81,$ca,$81,$1b,$fe,$80,$7c,$80   
    .byte $8f,$80,$de,$80,$f1,$80,$f2,$ff   

MESSAGE_MAGIC_HALL_OUTSIDE_TOWN:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 镇外有一座 / 魔法堂
    .byte $80,$8f,$81,$9d,$80,$10,$80,$3e   
    .byte $81,$65,$fe,$80,$42,$80,$43,$81   
    .byte $cb,$ff                           

MESSAGE_MAGIC_CANE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 有一根魔杖 / 能赐你 / 魔法之力
    .byte $80,$10,$80,$3e,$81,$cc,$80,$42   
    .byte $81,$cd,$fe,$80,$2c,$80,$41,$80   
    .byte $0d,$fe,$80,$42,$80,$43,$80,$a4   
    .byte $80,$30,$ff                       

MESSAGE_GO_TO_CAPITAL:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 通往首都的 / 门已经开了 / 现在就出发
    .byte $81,$29,$80,$88,$81,$ce,$81,$17   
    .byte $80,$1c,$fe,$80,$74,$80,$70,$80   
    .byte $c0,$81,$2e,$80,$29,$fe,$81,$7c   
    .byte $80,$37,$80,$8b,$80,$7c,$81,$7b   
    .byte $ff                               

MESSAGE_GOT_ARMOR_FOR_BOTTLE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 那只是传言 / 抱歉 / 我用一个瓶子 / 换来了这副铠甲 / 你想要的话 / 就拿去吧
    .byte $81,$36,$80,$4c,$80,$94,$81,$cf   
    .byte $80,$68,$fe,$81,$d0,$81,$d1,$fe   
    .byte $80,$31,$81,$69,$80,$3e,$80,$3f   
    .byte $81,$d2,$80,$d1,$fe,$81,$d3,$80   
    .byte $26,$80,$29,$80,$38,$81,$d4,$81   
    .byte $d5,$81,$d6,$fe,$80,$0d,$80,$17   
    .byte $80,$14,$80,$1c,$81,$0e,$fe,$80   
    .byte $8b,$80,$27,$80,$78,$81,$67,$ff   

MESSAGE_ILL_HAVE_DRINK:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我要喝一杯 / 嗯…… / 还是算了
    .byte $80,$31,$80,$14,$81,$d7,$80,$3e   
    .byte $81,$d8,$fe,$81,$d9,$81,$2f,$81   
    .byte $2f,$fe,$80,$21,$80,$94,$81,$da   
    .byte $80,$29,$ff                       

MESSAGE_IM_LOST:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我好像 / 迷路了
    .byte $80,$31,$80,$0e,$81,$db,$fe,$81   
    .byte $c3,$80,$ee,$80,$29,$ff           

MESSAGE_IM_LOST_MAGIC_DOES_NOT_WORK:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我迷路了 / 我的魔法 / 不管用了
    .byte $80,$31,$81,$c3,$80,$ee,$80,$29   
    .byte $fe,$80,$31,$80,$1c,$80,$42,$80   
    .byte $43,$fe,$80,$1f,$81,$b9,$81,$69   
    .byte $80,$29,$ff                       

MESSAGE_MAGIC_OF_JUSTICE_OR_DESTRUCTION:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 它可以是正义 / 的魔法 / 也可以是 / 灭亡的魔法 / 全看谁来用
    .byte $80,$62,$80,$3c,$81,$75,$80,$94   
    .byte $81,$66,$81,$dc,$fe,$80,$1c,$80   
    .byte $42,$80,$43,$fe,$80,$c7,$80,$3c   
    .byte $81,$75,$80,$94,$fe,$81,$88,$81   
    .byte $dd,$80,$1c,$80,$42,$80,$43,$fe   
    .byte $81,$de,$80,$d2,$81,$df,$80,$26   
    .byte $81,$69,$ff                       

MESSAGE_MAGIC_INDIVIDUAL_POWERS:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 每种魔法 / 各有各的力量
    .byte $80,$bc,$81,$e0,$80,$42,$80,$43   
    .byte $fe,$81,$e1,$80,$10,$81,$e1,$80   
    .byte $1c,$80,$30,$81,$8b,$ff           

MESSAGE_MAGIC_CONSUMES_POWER:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 攻击魔法很有效 / 但会消耗体力
    .byte $81,$1e,$81,$0b,$80,$42,$80,$43   
    .byte $80,$de,$80,$10,$81,$e2,$fe,$81   
    .byte $58,$80,$be,$80,$f8,$81,$c8,$80   
    .byte $2f,$80,$30,$ff                   

MESSAGE_METEORITE_BECOMES_BLACK_ONYX:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 把矮人的陨石 / 握在手里 / 它就会变成 / 黑玛瑙 / 它藏着力量
    .byte $80,$ac,$80,$cf,$80,$77,$80,$1c   
    .byte $80,$fe,$81,$00,$fe,$81,$e3,$80   
    .byte $37,$81,$e4,$80,$39,$fe,$80,$62   
    .byte $80,$8b,$80,$be,$81,$96,$81,$03   
    .byte $fe,$81,$e5,$81,$e6,$81,$e7,$fe   
    .byte $80,$62,$81,$84,$81,$0f,$80,$30   
    .byte $81,$8b,$ff                       

MESSAGE_DIRECTIONS_TO_TOWER_OF_MIST:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 一直往前走 / 就能到迷雾塔 / 打倒塔里的矮人 / 拿到陨石 / 再回到这里
    .byte $80,$3e,$80,$87,$80,$88,$80,$89   
    .byte $80,$8a,$fe,$80,$8b,$80,$2c,$80   
    .byte $81,$81,$c3,$81,$92,$81,$15,$fe   
    .byte $81,$23,$81,$24,$81,$15,$80,$39   
    .byte $80,$1c,$80,$cf,$80,$77,$fe,$80   
    .byte $27,$80,$81,$80,$fe,$81,$00,$fe   
    .byte $80,$25,$80,$e9,$80,$81,$80,$38   
    .byte $80,$39,$ff                       

MESSAGE_USE_KEY_FOR_CONFLATE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 只要还有 / 疯狂的矮人 / 陨石的致命威胁 / 就笼罩着精灵 / 用这把钥匙 / 打开下一道门 / 前往康弗雷特 / 为精灵而战
    .byte $80,$4c,$80,$14,$80,$21,$80,$10   
    .byte $fe,$81,$e8,$81,$e9,$80,$1c,$80   
    .byte $cf,$80,$77,$fe,$80,$fe,$81,$00   
    .byte $80,$1c,$81,$ea,$80,$e5,$81,$eb   
    .byte $81,$ec,$fe,$80,$8b,$81,$ae,$81   
    .byte $af,$81,$0f,$80,$95,$80,$96,$fe   
    .byte $81,$69,$80,$38,$80,$ac,$80,$33   
    .byte $80,$34,$fe,$81,$23,$81,$2e,$81   
    .byte $54,$80,$3e,$80,$35,$80,$74,$fe   
    .byte $80,$89,$80,$88,$81,$5f,$81,$ed   
    .byte $81,$ee,$81,$bd,$fe,$80,$55,$80   
    .byte $95,$80,$96,$81,$ef,$80,$d7,$ff   

MESSAGE_YOU_NEED_KEY_ACE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我给像你这样的 / 旅人发钥匙 / 你手上是 / "王牌"钥匙吧？
    .byte $80,$31,$80,$ec,$81,$db,$80,$0d   
    .byte $80,$38,$81,$f0,$80,$1c,$fe,$80   
    .byte $f0,$80,$77,$81,$7b,$80,$33,$80   
    .byte $34,$fe,$80,$0d,$81,$e4,$80,$b2   
    .byte $80,$94,$fe,$80,$01,$80,$86,$81   
    .byte $1c,$80,$01,$80,$33,$80,$34,$81   
    .byte $67,$80,$16,$ff                   

MESSAGE_WELCOME_TO_CONFLATE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 这里是 / 商业城镇 / 康弗雷特
    .byte $80,$38,$80,$39,$80,$94,$fe,$81   
    .byte $9e,$81,$f1,$80,$73,$80,$8f,$fe   
    .byte $81,$5f,$81,$ed,$81,$ee,$81,$bd   
    .byte $ff                               

MESSAGE_LEGENDARY_SHIELD_HELMET:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 传说中的盾与盔 / 就在树枝界
    .byte $81,$cf,$81,$51,$81,$8c,$80,$1c   
    .byte $81,$1b,$81,$f2,$81,$f3,$fe,$80   
    .byte $8b,$80,$37,$80,$9f,$81,$f4,$80   
    .byte $9e,$ff                           

MESSAGE_TOWN_SURROUNDED_BY_DOORS:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 镇子被重重 / 门扉环绕 / 用来保护自己
    .byte $80,$8f,$80,$d1,$81,$72,$81,$42   
    .byte $81,$42,$fe,$80,$74,$81,$f5,$81   
    .byte $f6,$81,$f7,$fe,$81,$69,$80,$26   
    .byte $81,$b8,$81,$ca,$80,$f4,$80,$f5   
    .byte $ff                               

MESSAGE_SEE_GURU_AFTER_SHIELD_HELMET:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 拿到盾与盔之后 / 去见神父
    .byte $80,$27,$80,$81,$81,$1b,$81,$f2   
    .byte $81,$f3,$80,$a4,$80,$c4,$fe,$80   
    .byte $78,$80,$84,$80,$a6,$80,$a7,$ff   

MESSAGE_GUARDIAN_OF_GURU:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我是神父的守卫 / 他是一位 / 重要人物
    .byte $80,$31,$80,$94,$80,$a6,$80,$a7   
    .byte $80,$1c,$81,$f8,$81,$f9,$fe,$80   
    .byte $bd,$80,$94,$80,$3e,$80,$9b,$fe   
    .byte $81,$42,$80,$14,$80,$77,$80,$fd   
    .byte $ff                               

MESSAGE_SOMETHING_YOU_CAN_GET:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 应该有什么 / 你能拿走的东西
    .byte $81,$22,$81,$1a,$80,$10,$80,$11   
    .byte $80,$12,$fe,$80,$0d,$80,$2c,$80   
    .byte $27,$80,$8a,$80,$1c,$81,$a1,$81   
    .byte $a2,$ff                           

MESSAGE_DONT_RELY_ON_MAGIC_FINAL_BATTLE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 与矮人的 / 最后一战 / 别依赖魔法
    .byte $81,$f2,$80,$cf,$80,$77,$80,$1c   
    .byte $fe,$80,$c3,$80,$c4,$80,$3e,$80   
    .byte $d7,$fe,$80,$22,$80,$4a,$80,$4b   
    .byte $80,$42,$80,$43,$ff               

MESSAGE_USED_TO_TRADE_WITH_DWARVES:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 这座镇子曾因 / 与矮人通商 / 而繁荣
    .byte $80,$38,$81,$65,$80,$8f,$80,$d1   
    .byte $81,$fa,$81,$0d,$fe,$81,$f2,$80   
    .byte $cf,$80,$77,$81,$29,$81,$9e,$fe   
    .byte $81,$ef,$81,$fb,$81,$fc,$ff       

MESSAGE_USED_TO_BE_SKILLED:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 他们如今很可怕 / 但从前都是 / 能工巧匠
    .byte $80,$bd,$80,$a2,$80,$af,$81,$fd   
    .byte $80,$de,$80,$3c,$81,$fe,$fe,$81   
    .byte $58,$81,$53,$80,$89,$81,$17,$80   
    .byte $94,$fe,$80,$2c,$82,$00,$82,$01   
    .byte $82,$02,$ff                       

MESSAGE_USED_TO_VISIT_DWARVES:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 从前有生意时 / 我常去矮人镇
    .byte $81,$53,$80,$89,$80,$10,$81,$34   
    .byte $80,$45,$81,$a3,$fe,$80,$31,$81   
    .byte $50,$80,$78,$80,$cf,$80,$77,$80   
    .byte $8f,$ff                           

MESSAGE_I_AM_PICKPOCKET:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 想知道我 / 是干什么的？ / 我是扒手金吉 / 在这附近 / 我可是个人物
    .byte $80,$17,$80,$7b,$80,$35,$80,$31   
    .byte $fe,$80,$94,$80,$2b,$80,$11,$80   
    .byte $12,$80,$1c,$80,$16,$fe,$80,$31   
    .byte $80,$94,$82,$03,$81,$e4,$80,$1d   
    .byte $82,$04,$fe,$80,$37,$80,$38,$82   
    .byte $05,$82,$06,$fe,$80,$31,$80,$3c   
    .byte $80,$94,$80,$3f,$80,$77,$80,$fd   
    .byte $ff                               

MESSAGE_NEED_FINAL_WEAPON_ARMOR:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 与矮人的 / 最后一战 / 别只靠魔法 / 只有拿到屠龙剑 / 才能穿上 / 战斗头盔和战服 / 在真正的和平 / 到来之前 / 屠龙剑 / 不能还给我们
    .byte $81,$f2,$80,$cf,$80,$77,$80,$1c   
    .byte $fe,$80,$c3,$80,$c4,$80,$3e,$80   
    .byte $d7,$fe,$80,$22,$80,$4c,$82,$07   
    .byte $80,$42,$80,$43,$fe,$80,$4c,$80   
    .byte $10,$80,$27,$80,$81,$82,$08,$82   
    .byte $09,$82,$0a,$fe,$82,$0b,$80,$2c   
    .byte $82,$0c,$80,$b2,$fe,$80,$d7,$80   
    .byte $d8,$81,$5c,$81,$f3,$81,$45,$80   
    .byte $d7,$82,$0d,$fe,$80,$37,$80,$67   
    .byte $81,$66,$80,$1c,$81,$45,$81,$07   
    .byte $fe,$80,$81,$80,$26,$80,$a4,$80   
    .byte $89,$fe,$82,$08,$82,$09,$82,$0a   
    .byte $fe,$80,$1f,$80,$2c,$80,$21,$80   
    .byte $ec,$80,$31,$80,$a2,$ff           

MESSAGE_DIRECTIONS_DARTMORE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 与矮人的 / 最后一战 / 别只靠魔法 / 只有拿到屠龙剑 / 才能穿上 / 战斗头盔和战服 / 在真正的和平 / 到来之前 / 屠龙剑 / 不能还给我们 / 这枚戒指能打开 / 通往达特穆尔 / 带上它
    .byte $81,$f2,$80,$cf,$80,$77,$80,$1c   
    .byte $fe,$80,$c3,$80,$c4,$80,$3e,$80   
    .byte $d7,$fe,$80,$22,$80,$4c,$82,$07   
    .byte $80,$42,$80,$43,$fe,$80,$4c,$80   
    .byte $10,$80,$27,$80,$81,$82,$08,$82   
    .byte $09,$82,$0a,$fe,$82,$0b,$80,$2c   
    .byte $82,$0c,$80,$b2,$fe,$80,$d7,$80   
    .byte $d8,$81,$5c,$81,$f3,$81,$45,$80   
    .byte $d7,$82,$0d,$fe,$80,$37,$80,$67   
    .byte $81,$66,$80,$1c,$81,$45,$81,$07   
    .byte $fe,$80,$81,$80,$26,$80,$a4,$80   
    .byte $89,$fe,$82,$08,$82,$09,$82,$0a   
    .byte $fe,$80,$1f,$80,$2c,$80,$21,$80   
    .byte $ec,$80,$31,$80,$a2,$fe,$80,$38   
    .byte $80,$b1,$80,$aa,$80,$ab,$80,$2c   
    .byte $81,$23,$81,$2e,$fe,$81,$29,$80   
    .byte $88,$81,$b6,$81,$bd,$82,$0e,$80   
    .byte $cb,$fe,$80,$a9,$80,$b2,$80,$62   
    .byte $ff                               

MESSAGE_DIRECTIONS_DAYBREAK:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 黎明镇是边境上的 / 一座小镇
    .byte $82,$0f,$80,$b4,$80,$8f,$80,$94   
    .byte $81,$62,$82,$10,$80,$b2,$80,$1c   
    .byte $fe,$80,$3e,$81,$65,$81,$35,$80   
    .byte $8f,$ff                           

MESSAGE_FRIENDS_IN_DARTMOOR:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我在达特穆尔 / 有朋友 / 那里是出了名的 / 凶险之地
    .byte $80,$31,$80,$37,$81,$b6,$81,$bd   
    .byte $82,$0e,$80,$cb,$fe,$80,$10,$82   
    .byte $11,$82,$12,$fe,$81,$36,$80,$39   
    .byte $80,$94,$80,$7c,$80,$29,$82,$13   
    .byte $80,$1c,$fe,$82,$14,$80,$f2,$80   
    .byte $a4,$81,$08,$ff                   

MESSAGE_LOOK_FOR_BATTLE_SUIT:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 去找战斗服
    .byte $80,$78,$80,$ad,$80,$d7,$80,$d8   
    .byte $82,$0d,$ff                       

MESSAGE_FIND_MAGIC_CANE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你找到魔杖了吗？
    .byte $80,$0d,$80,$ad,$80,$81,$80,$42   
    .byte $81,$cd,$80,$29,$80,$15,$80,$16   
    .byte $ff                               

MESSAGE_YOU_ARE_FAMOUS_GOOD_LOOKING:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你就是那位 / 有名的战士 / 你果然和 / 传闻中一样 / 英俊
    .byte $80,$0d,$80,$8b,$80,$94,$81,$36   
    .byte $80,$9b,$fe,$80,$10,$82,$13,$80   
    .byte $1c,$80,$d7,$81,$8d,$fe,$80,$0d   
    .byte $80,$b0,$80,$7f,$81,$45,$fe,$81   
    .byte $cf,$82,$15,$81,$8c,$80,$3e,$81   
    .byte $f0,$fe,$82,$16,$82,$17,$ff       

MESSAGE_AUTOGRAPH:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你就是大家 / 谈论的战士 / 能给我签个名吗？ / 你现在忙吗？ / 那改天来 / 看我吧？ / 我叫摩多 / 别忘了我
    .byte $80,$0d,$80,$8b,$80,$94,$81,$04   
    .byte $82,$18,$fe,$82,$19,$82,$1a,$80   
    .byte $1c,$80,$d7,$81,$8d,$fe,$80,$2c   
    .byte $80,$ec,$80,$31,$82,$1b,$80,$3f   
    .byte $82,$13,$80,$15,$80,$16,$fe,$80   
    .byte $0d,$81,$7c,$80,$37,$80,$f7,$80   
    .byte $15,$80,$16,$fe,$81,$36,$82,$1c   
    .byte $81,$52,$80,$26,$fe,$80,$d2,$80   
    .byte $31,$81,$67,$80,$16,$fe,$80,$31   
    .byte $81,$76,$82,$1d,$80,$18,$fe,$80   
    .byte $22,$82,$1e,$80,$29,$80,$31,$ff   

MESSAGE_WHEN_TAKE_BATH:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 看看你！ / 你上次洗澡 / 是什么时候？
    .byte $80,$d2,$80,$d2,$80,$0d,$80,$0f   
    .byte $fe,$80,$0d,$80,$b2,$80,$6a,$82   
    .byte $1f,$82,$20,$fe,$80,$94,$80,$11   
    .byte $80,$12,$81,$a3,$81,$c9,$80,$16   
    .byte $ff                               

MESSAGE_GURU_CONFLATE_HAS_RING_DWARVES:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 康弗雷特的 / 神父有 / 矮人戒指
    .byte $81,$5f,$81,$ed,$81,$ee,$81,$bd   
    .byte $80,$1c,$fe,$80,$a6,$80,$a7,$80   
    .byte $10,$fe,$80,$cf,$80,$77,$80,$aa   
    .byte $80,$ab,$ff                       

MESSAGE_DID_YOU_GET_BATTLE_SUIT:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 拿到战斗服了吗？
    .byte $80,$27,$80,$81,$80,$d7,$80,$d8   
    .byte $82,$0d,$80,$29,$80,$15,$80,$16   
    .byte $ff                               

MESSAGE_DARTMORE_IS_MAZE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 达特穆尔城堡 / 是一座 / 复杂的迷宫
    .byte $81,$b6,$81,$bd,$82,$0e,$80,$cb   
    .byte $80,$73,$82,$21,$fe,$80,$94,$80   
    .byte $3e,$81,$65,$fe,$81,$80,$80,$63   
    .byte $80,$1c,$81,$c3,$82,$22,$ff       

MESSAGE_IS_FIRST_VISIT_TO_STORE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你是第一次 / 来这家店吗？ / 我也是第一次
    .byte $80,$0d,$80,$94,$81,$6a,$80,$3e   
    .byte $80,$6a,$fe,$80,$26,$80,$38,$82   
    .byte $18,$81,$9f,$80,$15,$80,$16,$fe   
    .byte $80,$31,$80,$c7,$80,$94,$81,$6a   
    .byte $80,$3e,$80,$6a,$ff               

MESSAGE_MAGIC_CANE_ABOVE_TOWER:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 好久不见！ / 到石柱塔上方 / 你就能找到魔杖
    .byte $80,$0e,$82,$23,$80,$1f,$80,$84   
    .byte $80,$0f,$fe,$80,$81,$81,$00,$82   
    .byte $24,$81,$15,$80,$b2,$81,$56,$fe   
    .byte $80,$0d,$80,$8b,$80,$2c,$80,$ad   
    .byte $80,$81,$80,$42,$81,$cd,$ff       

MESSAGE_DIRECTIONS_TO_FRATERNAL:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 弗拉特纳城堡 / 就在达特穆尔镇 / 的下方
    .byte $81,$ed,$82,$25,$81,$bd,$82,$26   
    .byte $80,$73,$82,$21,$fe,$80,$8b,$80   
    .byte $37,$81,$b6,$81,$bd,$82,$0e,$80   
    .byte $cb,$80,$8f,$fe,$80,$1c,$81,$54   
    .byte $81,$56,$ff                       

MESSAGE_YOU_NEED_DEMONS_RING:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 要进入泽尼斯要塞 / 你需要恶魔戒指
    .byte $80,$14,$80,$d0,$81,$4c,$82,$27   
    .byte $82,$28,$80,$9a,$80,$14,$81,$3e   
    .byte $fe,$80,$0d,$80,$13,$80,$14,$82   
    .byte $29,$80,$42,$80,$aa,$80,$ab,$ff   

MESSAGE_KING_GRIEVE_HAS_DRAGON_SLAYER:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 屠龙剑在 / 矮人国王 / 手里
    .byte $82,$08,$82,$09,$82,$0a,$80,$37   
    .byte $fe,$80,$cf,$80,$77,$80,$85,$80   
    .byte $86,$fe,$81,$e4,$80,$39,$ff       

MESSAGE_DEFEAT_EVIL_WITH_DRAGON_SLAYER:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 用屠龙剑 / 打败邪恶
    .byte $81,$69,$82,$08,$82,$09,$82,$0a   
    .byte $fe,$81,$23,$82,$2a,$82,$2b,$82   
    .byte $29,$ff                           

MESSAGE_GO_TO_FRATERNAL_GURU:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 去弗拉特纳城堡 / 见神父
    .byte $80,$78,$81,$ed,$82,$25,$81,$bd   
    .byte $82,$26,$80,$73,$82,$21,$fe,$80   
    .byte $84,$80,$a6,$80,$a7,$ff           

MESSAGE_GURU_HAS_DEMONS_RING:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 见到神父 / 他就会把 / 恶魔戒指给你
    .byte $80,$84,$80,$81,$80,$a6,$80,$a7   
    .byte $fe,$80,$bd,$80,$8b,$80,$be,$80   
    .byte $ac,$fe,$82,$29,$80,$42,$80,$aa   
    .byte $80,$ab,$80,$ec,$80,$0d,$ff       

MESSAGE_SEARCH_CASTLE_FOR_GURU:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 在城堡里 / 仔细搜查 / 你应该能找到 / 一位神父
    .byte $80,$37,$80,$73,$82,$21,$80,$39   
    .byte $fe,$82,$2c,$82,$2d,$82,$2e,$82   
    .byte $2f,$fe,$80,$0d,$81,$22,$81,$1a   
    .byte $80,$2c,$80,$ad,$80,$81,$fe,$80   
    .byte $3e,$80,$9b,$80,$a6,$80,$a7,$ff   

MESSAGE_EVIL_IMMUNE_TO_MAGIC:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 攻击魔法 / 对邪恶无效
    .byte $81,$1e,$81,$0b,$80,$42,$80,$43   
    .byte $fe,$81,$79,$82,$2b,$82,$29,$81   
    .byte $11,$81,$e2,$ff                   

MESSAGE_METEORITE_EXPOSITION_2:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 矮人把陨石 / 视为宇宙的使者 / 你已经知道 / 它是可怕的东西 / 溶进水里 / 就会变成毒 / 靠近或触碰它 / 身心都可能 / 发生变化 / 所以矮人才会 / 发疯
    .byte $80,$cf,$80,$77,$80,$ac,$80,$fe   
    .byte $81,$00,$fe,$82,$30,$80,$55,$81   
    .byte $bf,$81,$c0,$80,$1c,$82,$31,$82   
    .byte $32,$fe,$80,$0d,$80,$70,$80,$c0   
    .byte $80,$7b,$80,$35,$fe,$80,$62,$80   
    .byte $94,$80,$3c,$81,$fe,$80,$1c,$81   
    .byte $a1,$81,$a2,$fe,$81,$95,$80,$d0   
    .byte $80,$ce,$80,$39,$fe,$80,$8b,$80   
    .byte $be,$81,$96,$81,$03,$81,$38,$fe   
    .byte $82,$07,$82,$06,$82,$33,$82,$34   
    .byte $82,$35,$80,$62,$fe,$80,$b5,$80   
    .byte $54,$81,$17,$80,$3c,$80,$2c,$fe   
    .byte $81,$7b,$81,$34,$81,$96,$82,$36   
    .byte $fe,$81,$12,$81,$75,$80,$cf,$80   
    .byte $77,$82,$0b,$80,$be,$fe,$81,$7b   
    .byte $81,$e8,$ff                       

MESSAGE_DEFEATED_KING_GRIEVE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你刚刚打败的 / 怪物是格里夫王 / 矮人的国王 / 邪恶改变了 / 他的样貌 / 国王把剑 / 藏在自己体内 / 从邪恶手中 / 保护了它 / 用这把剑 / 去要塞打败邪恶 / 门会就此打开
    .byte $80,$0d,$80,$80,$80,$80,$81,$23   
    .byte $82,$2a,$80,$1c,$fe,$82,$37,$80   
    .byte $fd,$80,$94,$82,$38,$80,$39,$82   
    .byte $39,$80,$86,$fe,$80,$cf,$80,$77   
    .byte $80,$1c,$80,$85,$80,$86,$fe,$82   
    .byte $2b,$82,$29,$82,$1c,$81,$96,$80   
    .byte $29,$fe,$80,$bd,$80,$1c,$81,$f0   
    .byte $82,$3a,$fe,$80,$85,$80,$86,$80   
    .byte $ac,$82,$0a,$fe,$81,$84,$80,$37   
    .byte $80,$f4,$80,$f5,$80,$2f,$82,$3b   
    .byte $fe,$81,$53,$82,$2b,$82,$29,$81   
    .byte $e4,$81,$8c,$fe,$81,$b8,$81,$ca   
    .byte $80,$29,$80,$62,$fe,$81,$69,$80   
    .byte $38,$80,$ac,$82,$0a,$fe,$80,$78   
    .byte $80,$14,$81,$3e,$81,$23,$82,$2a   
    .byte $82,$2b,$82,$29,$fe,$80,$74,$80   
    .byte $be,$80,$8b,$82,$3c,$81,$23,$81   
    .byte $2e,$ff                           

MESSAGE_ILL_MEDITATE_FOR_YOU:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我来为你 / 冥想
    .byte $80,$31,$80,$26,$80,$55,$80,$0d   
    .byte $fe,$80,$56,$80,$17,$ff           

MESSAGE_GLAD_YOURE_BACK:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 很高兴你平安归来 / 需要时间 / 但精灵与矮人 / 会成为朋友 / 这片土地 / 会重归和平 / 我知道你 / 还要继续旅行 / 真是个 / 闲不住的人！
    .byte $80,$de,$80,$df,$80,$e0,$80,$0d   
    .byte $81,$07,$82,$3d,$80,$6d,$80,$26   
    .byte $fe,$80,$13,$80,$14,$81,$a3,$81   
    .byte $b2,$fe,$81,$58,$80,$95,$80,$96   
    .byte $81,$f2,$80,$cf,$80,$77,$fe,$80   
    .byte $be,$81,$03,$80,$55,$82,$11,$82   
    .byte $12,$fe,$80,$38,$82,$3e,$82,$3f   
    .byte $81,$08,$fe,$80,$be,$81,$42,$80   
    .byte $6d,$81,$45,$81,$07,$fe,$80,$31   
    .byte $80,$7b,$80,$35,$80,$0d,$fe,$80   
    .byte $21,$80,$14,$82,$40,$82,$41,$80   
    .byte $f0,$80,$6c,$fe,$80,$67,$80,$94   
    .byte $80,$3f,$fe,$82,$42,$80,$1f,$80   
    .byte $66,$80,$1c,$80,$77,$80,$0f,$ff   

MESSAGE_MARK_OF_QUEEN:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 钥匙孔旁有 / "王后"的记号
    .byte $80,$33,$80,$34,$80,$90,$80,$91   
    .byte $80,$10,$fe,$80,$01,$80,$86,$80   
    .byte $c4,$80,$01,$80,$1c,$80,$65,$80   
    .byte $58,$ff                           

MESSAGE_MARK_OF_KING:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 钥匙孔旁有 / "国王"的记号
    .byte $80,$33,$80,$34,$80,$90,$80,$91   
    .byte $80,$10,$fe,$80,$01,$80,$85,$80   
    .byte $86,$80,$01,$80,$1c,$80,$65,$80   
    .byte $58,$ff                           

MESSAGE_MARK_OF_ACE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 钥匙孔旁有 / "王牌"的记号
    .byte $80,$33,$80,$34,$80,$90,$80,$91   
    .byte $80,$10,$fe,$80,$01,$80,$86,$81   
    .byte $1c,$80,$01,$80,$1c,$80,$65,$80   
    .byte $58,$ff                           

MESSAGE_MARK_OF_JOKER:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 钥匙孔旁有 / "小丑"的记号
    .byte $80,$33,$80,$34,$80,$90,$80,$91   
    .byte $80,$10,$fe,$80,$01,$81,$35,$81   
    .byte $6b,$80,$01,$80,$1c,$80,$65,$80   
    .byte $58,$ff                           

MESSAGE_NEED_RING_FOR_DOOR:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 你需要戒指 / 来开门吗？
    .byte $80,$0d,$80,$13,$80,$14,$80,$aa   
    .byte $80,$ab,$fe,$80,$26,$81,$2e,$80   
    .byte $74,$80,$15,$80,$16,$ff           

MESSAGE_USED_RED_POTION:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我用了红药水
    .byte $80,$31,$81,$69,$80,$29,$81,$60   
    .byte $81,$39,$80,$ce,$ff               

MESSAGE_USED_MATTOCK:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我用了鹤嘴锄
    .byte $80,$31,$81,$69,$80,$29,$81,$1f   
    .byte $81,$20,$81,$21,$ff               

MESSAGE_USED_HOURGLASS:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我用了沙漏
    .byte $80,$31,$81,$69,$80,$29,$81,$c4   
    .byte $81,$c5,$ff                       

MESSAGE_USED_WINGBOOTS:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我用了羽翼靴
    .byte $80,$31,$81,$69,$80,$29,$81,$59   
    .byte $81,$5a,$81,$5b,$ff               

MESSAGE_USED_KEY:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我用了钥匙
    .byte $80,$31,$81,$69,$80,$29,$80,$33   
    .byte $80,$34,$ff                       

MESSAGE_USED_ELIXIR:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我用了灵药
    .byte $80,$31,$81,$69,$80,$29,$80,$96   
    .byte $81,$39,$ff                       

MESSAGE_HOLDING_ELIXIR:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我带着灵药
    .byte $80,$31,$80,$a9,$81,$0f,$80,$96   
    .byte $81,$39,$ff                       

MESSAGE_HOLDING_RED_POTION:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我带着红药水
    .byte $80,$31,$80,$a9,$81,$0f,$81,$60   
    .byte $81,$39,$80,$ce,$ff               

MESSAGE_HOLDING_MATTOCK:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我带着鹤嘴锄
    .byte $80,$31,$80,$a9,$81,$0f,$81,$1f   
    .byte $81,$20,$81,$21,$ff               

MESSAGE_HOLDING_WINGBOOTS:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我带着羽翼靴
    .byte $80,$31,$80,$a9,$81,$0f,$81,$59   
    .byte $81,$5a,$81,$5b,$ff               

MESSAGE_HOLDING_HOURGLASS:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我带着沙漏
    .byte $80,$31,$80,$a9,$81,$0f,$81,$c4   
    .byte $81,$c5,$ff                       

MESSAGE_GOT_BATTLE_SUIT:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我拿到了战斗服
    .byte $80,$31,$80,$27,$80,$81,$80,$29   
    .byte $80,$d7,$80,$d8,$82,$0d,$ff       

MESSAGE_GOT_BATTLE_HELMET:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我拿到了战斗头盔
    .byte $80,$31,$80,$27,$80,$81,$80,$29   
    .byte $80,$d7,$80,$d8,$81,$5c,$81,$f3   
    .byte $ff                               

MESSAGE_GOT_DRAGON_SLAYER:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我拿到了屠龙剑
    .byte $80,$31,$80,$27,$80,$81,$80,$29   
    .byte $82,$08,$82,$09,$82,$0a,$ff       

MESSAGE_GOT_BLACK_ONYX:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我拿到了黑玛瑙
    .byte $80,$31,$80,$27,$80,$81,$80,$29   
    .byte $81,$e5,$81,$e6,$81,$e7,$ff       

MESSAGE_GOT_PENDANT:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我拿到了吊坠
    .byte $80,$31,$80,$27,$80,$81,$80,$29   
    .byte $81,$9a,$81,$9b,$ff               

MESSAGE_GOT_MAGICAL_ROD:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我拿到了魔杖
    .byte $80,$31,$80,$27,$80,$81,$80,$29   
    .byte $80,$42,$81,$cd,$ff               

MESSAGE_TOUCHED_POISON:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 我碰到了毒
    .byte $80,$31,$82,$35,$80,$81,$80,$29   
    .byte $81,$38,$ff                       

MESSAGE_GLOVE_INCREASES_POWER:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 手套能提升 / 攻击力
    .byte $81,$e4,$82,$43,$80,$2c,$81,$ab   
    .byte $82,$44,$fe,$81,$1e,$81,$0b,$80   
    .byte $30,$ff                           

MESSAGE_POWER_GLOVE_IS_GONE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 手套的力量 / 消失了
    .byte $81,$e4,$82,$43,$80,$1c,$80,$30   
    .byte $81,$8b,$fe,$80,$f8,$82,$45,$80   
    .byte $29,$ff                           

MESSAGE_USED_OINTMENT:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 药膏治好了 / 我的伤
    .byte $81,$39,$82,$46,$80,$4f,$80,$0e   
    .byte $80,$29,$fe,$80,$31,$80,$1c,$81   
    .byte $32,$ff                           

MESSAGE_OINTMENT_GONE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 药膏的力量 / 消失了
    .byte $81,$39,$82,$46,$80,$1c,$80,$30   
    .byte $81,$8b,$fe,$80,$f8,$82,$45,$80   
    .byte $29,$ff                           

MESSAGE_WINGBOOTS_GONE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 羽翼靴的力量 / 消失了
    .byte $81,$59,$81,$5a,$81,$5b,$80,$1c   
    .byte $80,$30,$81,$8b,$fe,$80,$f8,$82   
    .byte $45,$80,$29,$ff                   

MESSAGE_HOURGLASS_GONE:
    ; GENERATED by hanhua/script_codec.py apply from hanhua/textscn.tsv - do not hand-edit
    ; 沙漏的力量 / 消失了
    .byte $81,$c4,$81,$c5,$80,$1c,$80,$30   
    .byte $81,$8b,$fe,$80,$f8,$82,$45,$80   
    .byte $29,$ff                           

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
