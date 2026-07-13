;============================================================================
; Faxanadu (U).nes
;
; PRG6 ($8000 - $bfff)
;============================================================================

    .segment "PRG6"
    .reloc

    bank_offset_16 BANK6_SPRITEADDRS_START  ; BANK6_SPRITEADDRS_START

BANK6_SPRITEADDRS_START:
    bank_offset_16 SPRITE_TILES_START       ; [0]:
    bank_offset_16 SPRITE_TILES_START       ; [1]: Dropped: Bread
    bank_offset_16 SPRITE_TILES_START       ; [2]: Dropped: Coin
    bank_offset_16 SPRITE_TILES_START       ; [3]: Enemy: ?
    bank_offset_16 SPRITE_TILES_ENEMY_RAIDEN_00 ; [4]: Enemy: Raiden
    bank_offset_16 SPRITE_TILES_ENEMY_NECRON_AIDES_00 ; [5]: Enemy: Necron
                                                      ; Aides
    bank_offset_16 SPRITE_TILES_ENEMY_ZOMBIE_00 ; [6]: Enemy: Zombie
    bank_offset_16 SPRITE_TILES_ENEMY_HORNET_00 ; [7]: Enemy: Hornet
    bank_offset_16 SPRITE_TILES_ENEMY_BIHORUDA_00 ; [8]: Enemy: Bihoruda
    bank_offset_16 SPRITE_TILES_ENEMY_LILITH_00 ; [9]: Enemy: Lilith
    bank_offset_16 SPRITE_TILES_EFFECT_ENEMY_DEATH_00 ; [10]: Magic: ?
    bank_offset_16 SPRITE_TILES_ENEMY_YUINARU_00 ; [11]: Enemy: Yuinaru
    bank_offset_16 SPRITE_TILES_ENEMY_SNOWMAN_00 ; [12]: Enemy: Snowman
    bank_offset_16 SPRITE_TILES_ENEMY_NASH_00 ; [13]: Enemy: Nash
    bank_offset_16 SPRITE_TILES_ENEMY_FIRE_GIANT_00 ; [14]: Enemy: Fire Giant
    bank_offset_16 SPRITE_TILES_ENEMY_ISHIISU_00 ; [15]: Enemy: Ishiisu
    bank_offset_16 SPRITE_TILES_ENEMY_EXECUTION_HOOD_00 ; [16]: Enemy:
                                                        ; Execution Hood
    bank_offset_16 SPRITE_TILES_BOSS_ROKUSUTAHN_00 ; [17]: Boss: Rokusutahn
    bank_offset_16 SPRITE_TILES_BOSS_UNUSED_SNAKE_00 ; [18]: Boss: unused
                                                     ; (round body of snake
                                                     ; boss)
    bank_offset_16 SPRITE_TILES_EFFECT_ENEMY_DEATH_00 ; [19]: Effect: Enemy
                                                      ; death
    bank_offset_16 SPRITE_TILES_EFFECT_ENEMY_DEATH_00 ; [20]: Effect:
                                                      ; Lightning ball
    bank_offset_16 SPRITE_TILES_ENEMY_CHARRON_00 ; [21]: Enemy: Charron
    bank_offset_16 SPRITE_TILES_EFFECT_ENEMY_DEATH_00 ; [22]: Enemy: ?
                                                      ; (Unused)
    bank_offset_16 SPRITE_TILES_ENEMY_GERIBUTA_00 ; [23]: Enemy: Geributa
    bank_offset_16 SPRITE_TILES_ENEMY_SUGATA_00 ; [24]: Enemy: Sugata
    bank_offset_16 SPRITE_TILES_ENEMY_GRIMLOCK_00 ; [25]: Enemy: Grimlock
    bank_offset_16 SPRITE_TILES_ENEMY_GIANT_BEES_00 ; [26]: Enemy: Giant Bees
    bank_offset_16 SPRITE_TILES_ENEMY_MYCONID_00 ; [27]: Enemy: Myconid
    bank_offset_16 SPRITE_TILES_ENEMY_NAGA_00 ; [28]: Enemy: Naga
    bank_offset_16 SPRITE_TILES_ENEMY_UNUSED_SKELETON_KNIGHT_00 ; [29]:
                                                                ; Enemy:
                                                                ; Skeleton
                                                                ; Knight
                                                                ; (unused)
    bank_offset_16 SPRITE_TILES_ENEMY_GIANT_STRIDER_00 ; [30]: Enemy: Giant
                                                       ; Strider
    bank_offset_16 SPRITE_TILES_ENEMY_SIR_GAWAINE_00 ; [31]: Enemy: Sir
                                                     ; Gawaine
    bank_offset_16 SPRITE_TILES_ENEMY_MASKMAN_00 ; [32]: Enemy: Maskman
    bank_offset_16 SPRITE_TILES_ENEMY_WOLFMAN_00 ; [33]: Enemy: Wolfman
    bank_offset_16 SPRITE_TILES_ENEMY_YAREEKA_00 ; [34]: Enemy: Yareeka
    bank_offset_16 SPRITE_TILES_ENEMY_MAGMAN_00 ; [35]: Enemy: Magman
    bank_offset_16 SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_00 ; [36]: Enemy:
                                                         ; Curly-tailed guy
                                                         ; with spear
                                                         ; (unused)
    bank_offset_16 SPRITE_TILES_EFFECT_ENEMY_DEATH_00 ; [37]: Enemy: ?
                                                      ; (unused)
    bank_offset_16 SPRITE_TILES_ENEMY_IKEDA_00 ; [38]: Enemy: Ikeda
    bank_offset_16 SPRITE_TILES_ENEMY_UNUSED_MUPPET_GUY_00 ; [39]: Enemy:
                                                           ; Muppet guy
                                                           ; (unused)
    bank_offset_16 SPRITE_TILES_ENEMY_LAMPREY_00 ; [40]: Enemy: Lamprey
    bank_offset_16 SPRITE_TILES_EFFECT_ENEMY_DEATH_00 ; [41]: Enemy: ?
                                                      ; (unused)
    bank_offset_16 SPRITE_TILES_ENEMY_MONODRON_00 ; [42]: Enemy: Monodron
    bank_offset_16 SPRITE_TILES_ENEMY_UNUSED_WINGED_SKELETON_00 ; [43]:
                                                                ; Enemy:
                                                                ; Winged
                                                                ; skeleton
                                                                ; (unused)
    bank_offset_16 SPRITE_TILES_ENEMY_TAMAZUTSU_00 ; [44]: Enemy: Tamazutsu
    bank_offset_16 SPRITE_TILES_BOSS_RIPASHEIKU_00 ; [45]: Boss: Ripasheiku
    bank_offset_16 SPRITE_TILES_BOSS_ZORADOHNA_00 ; [46]: Boss: Zoradohna
    bank_offset_16 SPRITE_TILES_BOSS_BORABOHRA_00 ; [47]: Boss: Borabohra
    bank_offset_16 SPRITE_TILES_BOSS_PAKUKAME_00 ; [48]: Boss: Pakukame
    bank_offset_16 SPRITE_TILES_BOSS_ZORUGERIRU_00 ; [49]: Boss: Zorugeriru
    bank_offset_16 SPRITE_TILES_BOSS_KING_GRIEVE_00 ; [50]: Boss: King Grieve
    bank_offset_16 SPRITE_TILES_BOSS_SHADOW_EURA_00 ; [51]: Boss: Shadow Eura
    bank_offset_16 SPRITE_TILES_NPC_WALKING_MAN_00 ; [52]: NPC: Walking Man 1
    bank_offset_16 SPRITE_TILES_NPC_UNUSED_BLUE_LADY_00 ; [53]: NPC: Blue
                                                        ; lady (unused)
    bank_offset_16 SPRITE_TILES_NPC_UNUSED_CHILD_00 ; [54]: NPC: Child
                                                    ; (unused)
    bank_offset_16 DAT_PRG6__be32           ; [55]:


;============================================================================
; Enemy Tiles: Raiden
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8002]
;     BANK6_SPRITEADDRS_START [$PRG6::8004]
;     BANK6_SPRITEADDRS_START [$PRG6::8006]
;     BANK6_SPRITEADDRS_START [$PRG6::8008]
;     BANK6_SPRITEADDRS_START [$PRG6::800a]
;============================================================================

;
; ......░▒
; ....░░██
; ...░████
; ...█████
; ...██░░░
; ...░░█░░
; ..███▒██
; ..██▒▒██
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8002]
;     BANK6_SPRITEADDRS_START [$PRG6::8004]
;     BANK6_SPRITEADDRS_START [$PRG6::8006]
;     BANK6_SPRITEADDRS_START [$PRG6::8008]
;     BANK6_SPRITEADDRS_START [$PRG6::800a]
;
SPRITE_TILES_ENEMY_RAIDEN_00:
SPRITE_TILES_START:
    .byte $02                               ; NPC: Martial Artist
    .byte $0f,$1f,$1f,$1f,$1f,$3b,$33,$01   ; byte
    .byte $03,$0f,$1f,$18,$04,$3f,$3f       ; byte


;
; ▒▒░░....
; ██▒▒░...
; ███▒▒░..
; ███▒▒░..
; ░█░░▒░..
; ██▒░░...
; █▒█░....
; █░░░....
;
SPRITE_TILES_ENEMY_RAIDEN_01:
    .byte $30                               ; NPC: Guru
    .byte $c8,$e4,$e4,$f4,$d8,$b0,$f0,$c0   ; byte
    .byte $f0,$f8,$f8,$48,$e0,$e0,$80       ; byte


;
; ...░░███
; ...░░░██
; ...████░
; ....░░░░
; ...░█░██
; ..░██░██
; ..░█░░██
; .░░▒▒▒░░
;
SPRITE_TILES_ENEMY_RAIDEN_02:
    .byte $1f                               ; NPC: King
    .byte $1f,$1f,$0f,$1f,$3f,$3f,$63,$07   ; byte
    .byte $03,$1e,$00,$0b,$1b,$13,$1c       ; byte


;
; █░░░░░..
; ░░░▒▒▒░.
; ░░███▒▒░
; ██████▒░
; ██████▒░
; ██░███░░
; █▒░████░
; ░░░▒███░
;
SPRITE_TILES_ENEMY_RAIDEN_03:
    .byte $fc                               ; NPC: Magic Teacher
    .byte $e2,$f9,$fd,$fd,$ff,$bf,$ef,$80   ; byte
    .byte $1c,$3e,$fe,$fe,$dc,$de,$1e       ; byte


;
; ░██░██▒░
; ░██░██░█
; ░░░░██░█
; ....░█░▒
; ...░░██░
; ..░▒░░░░
; .░██▒░░░
; ░███▒░░░
;
SPRITE_TILES_ENEMY_RAIDEN_04:
    .byte $fd                               ; NPC: Key Salesman
    .byte $ff,$ff,$0e,$1f,$2f,$77,$f7,$6e   ; byte
    .byte $6d,$0d,$05,$06,$10,$38,$78       ; byte


;
; █░░░▒██░
; ██░███▒░
; █▒░███▒░
; ▒░░▒▒▒░.
; ░█▒░░░..
; ███▒░...
; ███▒░...
; ██▒░░...
;
SPRITE_TILES_ENEMY_RAIDEN_05:
    .byte $f7                               ; NPC: Smoking Man
    .byte $fd,$bd,$62,$dc,$e8,$e8,$d8,$8e   ; byte
    .byte $de,$de,$9c,$60,$f0,$f0,$e0       ; byte


;
; ░██▒░░.░
; ░█▒▒░...
; .░▒▒░...
; ..░▒░..░
; .░▒▒░░.░
; ░██▒▒░..
; ░███▒░..
; ░░░░░░..
;
SPRITE_TILES_ENEMY_RAIDEN_06:
    .byte $ed                               ; NPC: Man in Chair
    .byte $c8,$48,$29,$4d,$e4,$f4,$fc,$70   ; byte
    .byte $70,$30,$10,$30,$78,$78,$00       ; byte


;
; ▒▒▒░....
; ░▒▒░....
; ░█▒░....
; ██▒░░...
; ███▒░...
; ░░░░░...
; ........
; ........
;
SPRITE_TILES_ENEMY_RAIDEN_07:
    .byte $10                               ; NPC: Sitting Man
    .byte $90,$d0,$d8,$e8,$f8,$00,$00,$e0   ; byte
    .byte $60,$60,$e0,$f0,$00,$00,$00       ; byte


;
; ........
; ......░▒
; ....░░██
; ...░████
; ...█████
; ...██░░░
; ...░░█░░
; ..███▒██
;
SPRITE_TILES_ENEMY_RAIDEN_08:
    .byte $00                               ; NPC: Meat Salesman
    .byte $02,$0f,$1f,$1f,$1f,$1f,$3b,$00   ; byte
    .byte $01,$03,$0f,$1f,$18,$04,$3f       ; byte


;
; ........
; ▒▒░░....
; ██▒▒░...
; ███▒▒░..
; ███▒▒░..
; ░█░░▒░..
; ██▒░░...
; █▒█░....
;
SPRITE_TILES_ENEMY_RAIDEN_09:
    .byte $00                               ; NPC: Lady in Blue Dress with
                                            ; Cup
    .byte $30,$c8,$e4,$e4,$f4,$d8,$b0,$00   ; byte
    .byte $c0,$f0,$f8,$f8,$48,$e0,$e0       ; byte


;
; ...░░███
; ...░░░██
; ...░░░██
; ..░████░
; ...░█░░█
; ..░██░██
; ..░▒░░█░
; ..░█▒▒░█
;
SPRITE_TILES_ENEMY_RAIDEN_10:
    .byte $1f                               ; NPC: Guard
    .byte $1f,$1f,$3f,$1f,$3f,$2f,$33,$07   ; byte
    .byte $03,$03,$1e,$09,$1b,$12,$1d       ; byte


;
; █░░░░░..
; █░░█▒▒░.
; ░░████▒░
; ██████▒░
; ██░███▒░
; ░░░▒██░░
; █░░▒███░
; ██░░▒██░
;
SPRITE_TILES_ENEMY_RAIDEN_11:
    .byte $fc                               ; NPC: Doctor
    .byte $f2,$fd,$fd,$fd,$ef,$ef,$f7,$80   ; byte
    .byte $9c,$3e,$fe,$de,$1c,$9e,$ce       ; byte


;
; .░░██▒░█
; ░█░██▒░▒
; ░█░▒██░░
; ░░░░██░░
; ░█▒░░░░░
; ███▒░░░░
; ███▒░░░░
; ██▒░░░..
;
SPRITE_TILES_ENEMY_RAIDEN_12:
    .byte $7b                               ; NPC: Walking Woman 1
    .byte $fa,$ef,$ff,$df,$ef,$ef,$dc,$1d   ; byte
    .byte $5d,$5c,$0c,$60,$f0,$f0,$e0       ; byte


;
; ███░░▒█░
; █▒█████░
; ░░▒███▒░
; ░░░▒▒▒░.
; ░░░░░░..
; ░░░░░...
; ░██░░...
; ███▒░...
;
SPRITE_TILES_ENEMY_RAIDEN_13:
    .byte $fb                               ; NPC: Walking Woman 2
    .byte $bf,$dd,$e2,$fc,$f8,$f8,$e8,$e6   ; byte
    .byte $fe,$3e,$1c,$00,$00,$60,$f0       ; byte


;
; ░▒▒░...░
; .░▒▒░..░
; .░░▒░...
; ░███▒░..
; .░░░░░..
; ........
; .......░
; .......░
;
SPRITE_TILES_ENEMY_RAIDEN_14:
    .byte $91                               ; Enemy: Eyeball (unused)
    .byte $49,$68,$f4,$7c,$00,$01,$01,$60   ; byte
    .byte $30,$10,$78,$00,$00,$00,$00       ; byte


;
; ██▒░░...
; ██▒░....
; ░▒▒░....
; .░▒▒░...
; .░▒▒░...
; ░██▒░...
; ████░...
; ░░░░░...
;
SPRITE_TILES_ENEMY_RAIDEN_15:
    .byte $d8                               ; Enemy: Zozura
    .byte $d0,$90,$48,$48,$e8,$f8,$f8,$e0   ; byte
    .byte $e0,$60,$30,$30,$70,$f0,$00       ; byte


;============================================================================
; Enemy Tiles: Necron Aides
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::800c]
;============================================================================

;
; ........
; .......▒
; ......▒░
; .....▒█░
; ....██▒█
; ...████░
; ...█▒▒▒█
; ....░░░░
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::800c]
;
SPRITE_TILES_ENEMY_NECRON_AIDES_00:
    .byte $00                               ; Item: Glove
    .byte $00,$01,$03,$0d,$1f,$11,$0f,$00   ; byte
    .byte $01,$02,$06,$0f,$1e,$1f,$00       ; byte


;
; ........
; █░▒▒░░..
; ░█░█▒▒░.
; ░█░██▒▒░
; █░███▒▒░
; ░███▒▒▒░
; ██▒▒▒▒▒░
; ▒▒▒▒▒▒░.
;
SPRITE_TILES_ENEMY_NECRON_AIDES_01:
    .byte $00                               ; Item: Black Onyx
    .byte $cc,$f2,$f9,$f9,$f1,$c1,$02,$00   ; byte
    .byte $b0,$5c,$5e,$be,$7e,$fe,$fc       ; byte


;
; .....█░█
; ....░▒▒▒
; .....░░░
; ......░░
; ........
; ........
; ........
; .....▒▒▒
;
SPRITE_TILES_ENEMY_NECRON_AIDES_02:
    .byte $07                               ; Item: Pendant
    .byte $08,$07,$03,$00,$00,$00,$00,$05   ; byte
    .byte $07,$00,$00,$00,$00,$00,$07       ; byte


;
; ░░░░░░░.
; ░▒░░░░░.
; ░░░░░░░.
; ░░░░░░░░
; ...░░▒░░
; ....░▒▒░
; ....▒█▒░
; ▒▒▒▒█▒░░
;
SPRITE_TILES_ENEMY_NECRON_AIDES_03:
    .byte $fe                               ; Item: Red Potion
    .byte $be,$fe,$ff,$1b,$09,$05,$0b,$00   ; byte
    .byte $40,$00,$00,$04,$06,$0e,$fc       ; byte


;
; ...▒▒███
; ..▒██▒▒▒
; .▒█▒▒▒▒░
; .▒█▒▒░░█
; ▒█▒▒░░█░
; ▒█▒▒░.░.
; ▒█▒░░...
; ▒█▒░░...
;
SPRITE_TILES_ENEMY_NECRON_AIDES_04:
    .byte $07                               ; Item: Poison
    .byte $18,$21,$27,$4f,$4a,$58,$58,$1f   ; byte
    .byte $3f,$7e,$79,$f2,$f0,$e0,$e0       ; byte


;
; ███▒▒▒░.
; ▒▒▒▒░░..
; ░░░░░...
; ███░░...
; ░░▒█▒░..
; ..░▒█▒░.
; ...░▒▒░.
; ....░▒▒░
;
SPRITE_TILES_ENEMY_NECRON_AIDES_05:
    .byte $e2                               ; Item: Elixir
    .byte $0c,$f8,$f8,$d4,$2a,$12,$09,$fc   ; byte
    .byte $f0,$00,$e0,$38,$1c,$0c,$06       ; byte


;
; ▒█▒▒░...
; ▒▒▒▒░░..
; .▒█▒▒░░.
; .▒▒█▒▒░░
; ..▒▒██▒▒
; ...▒▒▒█▒
; ....▒▒▒▒
; ......░░
;
SPRITE_TILES_ENEMY_NECRON_AIDES_06:
    .byte $48                               ; Item: Ointment
    .byte $0c,$26,$13,$0c,$02,$00,$03,$f0   ; byte
    .byte $f0,$78,$7c,$3f,$1f,$0f,$00       ; byte


;
; ....░█▒░
; ....░▒▒░
; ....░█▒░
; ░..░▒▒▒░
; ░░░▒█▒▒░
; ▒▒▒▒▒▒░.
; ▒▒▒▒░░░.
; ░░░░░...
;
SPRITE_TILES_ENEMY_NECRON_AIDES_07:
    .byte $0d                               ; Trigger: Intro
    .byte $09,$0d,$91,$e9,$02,$0e,$f8,$06   ; byte
    .byte $06,$06,$0e,$1e,$fc,$f0,$00       ; byte


;
; ....██░▒
; ...░░█▒░
; ..█░░▒▒░
; .███▒▒░█
; ████████
; █▒▒░░▒██
; .█.█.░▒▒
; ......░░
;
SPRITE_TILES_ENEMY_NECRON_AIDES_08:
    .byte $0e                               ; Item: Mattock
    .byte $1d,$39,$73,$ff,$9b,$54,$03,$0d   ; byte
    .byte $06,$26,$7d,$ff,$e7,$53,$00       ; byte


;
; ▒░░.....
; █▒▒░....
; ██▒▒░...
; ██▒▒░...
; █▒▒▒░...
; ▒▒▒░░...
; ▒░░░....
; ░░░░....
;
SPRITE_TILES_ENEMY_NECRON_AIDES_09:
    .byte $60                               ; Magic: ?
    .byte $90,$c8,$c8,$88,$18,$70,$f0,$80   ; byte
    .byte $e0,$f0,$f0,$f0,$e0,$80,$00       ; byte


;
; ......▒░
; .█.█.█▒░
; .█░█░▒░░
; .░▒▒▒░░.
; ..░░░░..
; ........
; ........
; ........
;
SPRITE_TILES_ENEMY_NECRON_AIDES_10:
    .byte $01                               ; Effect: Fountain
    .byte $55,$7b,$46,$3c,$00,$00,$00,$02   ; byte
    .byte $56,$54,$38,$00,$00,$00,$00       ; byte


;
; ░░░.....
; ░░░░....
; ░░░░....
; ░▒░░....
; ░▒▒░░...
; .█▒░░...
; .▒▒░░...
; .█▒░░...
;
SPRITE_TILES_ENEMY_NECRON_AIDES_11:
    .byte $e0                               ; Magic: ?
    .byte $f0,$f0,$b0,$98,$58,$18,$58,$00   ; byte
    .byte $00,$00,$40,$60,$60,$60,$60       ; byte


;
; .......▒
; .....▒▒▒
; ...▒▒███
; ..▒██▒▒▒
; .▒█▒▒░░░
; .▒█▒░░..
; ▒█▒░░...
; ▒█▒░....
;
SPRITE_TILES_ENEMY_NECRON_AIDES_12:
    .byte $00                               ; Magic: Enemy Fireball
    .byte $00,$07,$18,$27,$2c,$58,$50,$01   ; byte
    .byte $07,$1f,$3f,$78,$70,$e0,$e0       ; byte


;
; ▒█▒░░...
; █▒▒░....
; ▒▒░░....
; ░░░.....
; ........
; ...░░...
; ...▒█░..
; ░░░.▒█░.
;
SPRITE_TILES_ENEMY_NECRON_AIDES_13:
    .byte $58                               ; Item: Wing Boots
    .byte $90,$30,$e0,$00,$18,$0c,$e6,$e0   ; byte
    .byte $e0,$c0,$00,$00,$00,$18,$0c       ; byte


;
; ▒█▒░...░
; ▒█▒░░.░▒
; ▒█▒▒░░▒█
; .▒█▒▒▒▒█
; .▒██▒▒█▒
; ..▒███▒▒
; ...▒▒▒▒░
; ....░░░.
;
SPRITE_TILES_ENEMY_NECRON_AIDES_14:
    .byte $51                               ; Item: Hour Glass
    .byte $5a,$4d,$21,$32,$1c,$01,$0e,$e0   ; byte
    .byte $e1,$f3,$7f,$7f,$3f,$1e,$00       ; byte


;
; ▒▒▒░.█▒░
; ██▒░.▒█░
; ███▒░▒█░
; ▒░█▒░▒█░
; ░░█▒░█▒░
; ░░▒▒▒▒▒░
; ..░▒▒▒░.
; ...░░░..
;
SPRITE_TILES_ENEMY_NECRON_AIDES_15:
    .byte $15                               ; Item: Magical Rod
    .byte $d3,$eb,$6b,$ed,$c1,$22,$1c,$e6   ; byte
    .byte $e6,$f6,$b6,$36,$3e,$1c,$00       ; byte


;============================================================================
; Enemy Tiles: Zombie
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::800e]
;============================================================================

;
; ..░░███▒
; .░██████
; .███████
; .░░█████
; ░██░░███
; █░██░░██
; ░███░░██
; ░░░░░██░
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::800e]
;
SPRITE_TILES_ENEMY_ZOMBIE_00:
    .byte $3e                               ; Item: Battle Suit
    .byte $7f,$7f,$7f,$ff,$ff,$ff,$ff,$0f   ; byte
    .byte $3f,$7f,$1f,$67,$b3,$73,$06       ; byte


;
; ░░......
; █▒░░....
; ███░░...
; ███▒░░..
; █░█▒░░..
; ██░▒░░..
; ░█░▒░...
; █░▒░....
;
SPRITE_TILES_ENEMY_ZOMBIE_01:
    .byte $c0                               ; Item: Battle Helmet
    .byte $b0,$f8,$ec,$ec,$ec,$e8,$d0,$00   ; byte
    .byte $c0,$e0,$f0,$b0,$d0,$50,$a0       ; byte


;
; █░░█████
; █.█░█░█░
; ..█.░░█░
; ....░█░░
; ....░█░░
; ..█.█░.░
; ..░█░..░
; .......░
;
SPRITE_TILES_ENEMY_ZOMBIE_02:
    .byte $ff                               ; Item: Dragon Slayer
    .byte $bf,$2f,$0f,$0f,$2d,$39,$01,$9f   ; byte
    .byte $aa,$22,$04,$04,$28,$10,$00       ; byte


;
; ░░░░....
; ░░▒▒░...
; ░▒██▒░..
; ░███▒░..
; ░████▒░.
; ▒░███▒░.
; ▒▒░▒██░.
; ▒▒▒░░█▒░
;
SPRITE_TILES_ENEMY_ZOMBIE_03:
    .byte $f0                               ; Item: Mattock
    .byte $c8,$b4,$f4,$fa,$7a,$2e,$1d,$00   ; byte
    .byte $30,$78,$78,$7c,$bc,$dc,$e6       ; byte


;
; .......░
; .......░
; .......░
; .......░
; ......░█
; ....░░░▒
; ...░▒▒▒▒
; ...░░░▒░
;
SPRITE_TILES_ENEMY_ZOMBIE_04:
    .byte $01                               ; Item: Wing Boots (from quest)
    .byte $01,$01,$01,$03,$0e,$10,$1d,$00   ; byte
    .byte $00,$00,$00,$01,$01,$0f,$02       ; byte


;
; ▒▒▒░██▒░
; ▒▒▒░███░
; ▒▒▒▒░██░
; █▒▒▒░██░
; ███░▒██░
; ▒▒▒░███░
; ▒▒▒▒░██░
; ░░░░▒░░.
;
SPRITE_TILES_ENEMY_ZOMBIE_05:
    .byte $1d                               ; Item: Red Potion
    .byte $1f,$0f,$8f,$f7,$1f,$0f,$f6,$ee   ; byte
    .byte $ee,$f6,$f6,$ee,$ee,$f6,$08       ; byte


;
; ..░███░░
; .░███░░▒
; .░██░░.░
; ..░█▒░..
; ...░█▒░.
; ...░██░░
; .░░███▒░
; ░███░░░░
;
SPRITE_TILES_ENEMY_ZOMBIE_06:
    .byte $3f                               ; Item: Poison
    .byte $7e,$7d,$34,$1a,$1f,$7d,$ff,$1c   ; byte
    .byte $39,$30,$18,$0c,$0c,$1e,$70       ; byte


;
; ▒███░░..
; ███░....
; ██▒░....
; ░██▒░░..
; .░███▒░.
; ..░███░.
; .░███░..
; .██░░...
;
SPRITE_TILES_ENEMY_ZOMBIE_07:
    .byte $7c                               ; Item: Glove
    .byte $f0,$d0,$ec,$7a,$3e,$7c,$78,$f0   ; byte
    .byte $e0,$e0,$70,$3c,$1c,$38,$60       ; byte


;
; █░░████░
; █.█░█░█░
; ..█.░░█░
; .░░░██░░
; ..░░░░.░
; .......░
; ......░▒
; .....░██
;
SPRITE_TILES_ENEMY_ZOMBIE_08:
    .byte $ff                               ; Item: Ointment
    .byte $bf,$2f,$7f,$3d,$01,$02,$07,$9e   ; byte
    .byte $aa,$22,$0c,$00,$00,$01,$03       ; byte


;
; ░░▒▒░...
; ░▒██▒░..
; ░▒███▒░.
; ▒░▒██▒░.
; ▒▒░░██░.
; ▒▒░▒██░.
; ▒▒░▒██░.
; ▒▒░░█▒..
;
SPRITE_TILES_ENEMY_ZOMBIE_09:
    .byte $c8                               ; Effect: Spring of Trunk
    .byte $b4,$ba,$5a,$3e,$2e,$2e,$38,$30   ; byte
    .byte $78,$7c,$bc,$cc,$dc,$dc,$cc       ; byte


;
; .....░██
; .....░▒░
; ....░░▒▒
; ....░▒▒▒
; ....░▒▒▒
; ...░░░░░
; .....░█░
; ....░▒██
;
SPRITE_TILES_ENEMY_ZOMBIE_10:
    .byte $07                               ; Effect: Spring of Sky
    .byte $05,$0c,$08,$08,$1f,$07,$0b,$03   ; byte
    .byte $02,$03,$07,$07,$00,$02,$07       ; byte


;
; █░███░..
; ░░███░..
; ▒▒░█░░..
; ▒▒▒░▒░..
; ▒▒▒▒▒░..
; ▒▒▒▒░...
; ░░▒░░...
; ▒░░░....
;
SPRITE_TILES_ENEMY_ZOMBIE_11:
    .byte $fc                               ; Effect: Spring of Tower
    .byte $fc,$3c,$14,$04,$08,$d8,$70,$b8   ; byte
    .byte $38,$d0,$e8,$f8,$f0,$20,$80       ; byte


;
; ....░▒██
; .....░██
; ......░█
; ......░█
; ......░█
; .......░
; .....░░█
; ....░███
;
SPRITE_TILES_ENEMY_ZOMBIE_12:
    .byte $0b                               ; Effect: Boss Death
    .byte $07,$03,$03,$03,$01,$07,$0f,$07   ; byte
    .byte $03,$01,$01,$01,$00,$01,$07       ; byte


;
; ▒░......
; ░░......
; ▒░......
; █░......
; █▒░.....
; █░░.....
; █▒░.....
; ▒░░.....
;
SPRITE_TILES_ENEMY_ZOMBIE_13:
    .byte $40,$c0,$40,$c0,$a0,$e0,$a0,$60   ; byte
    .byte $80,$00,$80,$80,$c0,$80,$c0,$80   ; byte


;
; ..░██▒░░
; .░███▒▒░
; .░██▒░░.
; .░██▒░..
; ..░██▒░.
; ...░██░░
; ..░███▒░
; .░█▒░░░░
;
SPRITE_TILES_ENEMY_ZOMBIE_14:
    .byte $3b,$79,$76,$74,$3a,$1f,$3d,$6f   ; byte
    .byte $1c,$3e,$38,$38,$1c,$0c,$1e,$30   ; byte


;
; ░░░░░...
; ░▒▒░....
; ░██░░...
; .░█▒░...
; ..░██░..
; ..░█░░..
; .░█░....
; .░░.....
;
SPRITE_TILES_ENEMY_ZOMBIE_15:
    .byte $f8,$90,$f8,$68,$3c,$3c,$70,$60   ; byte
    .byte $00,$60,$60,$30,$18,$10,$20,$00   ; byte


;============================================================================
; Enemy Tiles: Hornet
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8010]
;============================================================================

;
; ..░░....
; .░██░...
; .░█▒█░.░
; .░█▒█░.░
; ..░█▒░░█
; ...░░░░▒
; ..░░░░░░
; .░▒░░▒▒▒
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8010]
;
SPRITE_TILES_ENEMY_HORNET_00:
    .byte $30,$78,$6d,$6d,$37,$1e,$3f,$58   ; byte
    .byte $00,$30,$38,$38,$19,$01,$00,$27   ; byte


;
; .░░░....
; ░███░...
; ██▒▒█░..
; █▒███░..
; ▒██░░...
; █░░▒░░░.
; ░▒▒░▒▒░░
; ░░▒░▒▒▒░
;
SPRITE_TILES_ENEMY_HORNET_01:
    .byte $70,$f8,$cc,$bc,$78,$ee,$93,$d1   ; byte
    .byte $00,$70,$f8,$f8,$e0,$90,$6c,$2e   ; byte


;
; ░▒░░▒██▒
; ░▒░░▒█▒▒
; ░▒░░▒▒▒▒
; .░░░▒▒▒▒
; ..░░░▒▒▒
; .░░▒░░░░
; ░...░░▒░
; ...░...▒
;
SPRITE_TILES_ENEMY_HORNET_02:
    .byte $b6,$b4,$b0,$70,$38,$6f,$8d,$10   ; byte
    .byte $4f,$4f,$4f,$0f,$07,$10,$02,$01   ; byte


;
; ▒░▒▒░▒▒░
; ▒░▒▒░▒▒░
; ▒░▒▒░▒▒░
; ▒░▒░▒▒░.
; ░░░░░░..
; .▒░.▒░..
; .▒░.▒░..
; ░.▒░.▒░.
;
SPRITE_TILES_ENEMY_HORNET_03:
    .byte $49,$49,$49,$52,$fc,$24,$24,$92   ; byte
    .byte $b6,$b6,$b6,$ac,$00,$48,$48,$24   ; byte


;
; ........
; ........
; .......░
; ......░█
; .....░█░
; ..░░░░░░
; .░▒░░▒▒▒
; ░▒░░▒██▒
;
SPRITE_TILES_ENEMY_HORNET_04:
    .byte $00,$00,$01,$03,$07,$3f,$58,$b6   ; byte
    .byte $00,$00,$00,$01,$02,$00,$27,$4f   ; byte


;
; ........
; ........
; ░░.░░...
; █░░██░..
; ░█████░.
; █▒▒▒▒█░.
; ░░███░░.
; ▒░░░▒░░.
;
SPRITE_TILES_ENEMY_HORNET_05:
    .byte $00,$00,$d8,$fc,$fe,$86,$fe,$76   ; byte
    .byte $00,$00,$00,$98,$7c,$fc,$38,$88   ; byte


;
; ░▒░░▒█▒▒
; ░▒░░▒▒▒▒
; .░░░▒▒▒▒
; ..░░░▒▒▒
; .░░▒░░░░
; ░...░░▒░
; ...░...▒
; ........
;
SPRITE_TILES_ENEMY_HORNET_06:
    .byte $b4,$b0,$70,$38,$6f,$8d,$10,$00   ; byte
    .byte $4f,$4f,$0f,$07,$10,$02,$01,$00   ; byte


;
; ▒░▒░▒░░.
; ▒░▒░▒░..
; ▒░░░░░..
; ░▒░.▒░..
; .▒░.▒░..
; ..▒░.▒░.
; ░.......
; ........
;
SPRITE_TILES_ENEMY_HORNET_07:
    .byte $56,$54,$7c,$a4,$24,$12,$80,$00   ; byte
    .byte $a8,$a8,$80,$48,$48,$24,$00,$00   ; byte


;============================================================================
; Enemy Tiles: Bihoruda
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8012]
;============================================================================

;
; .....░░░
; ...░▒███
; ..░▒█▒▒▒
; .░█▒░░░░
; .▒▒░░░██
; ░█░░█▒░█
; ░▒░░░░░█
; ░░░█░░█▒
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8012]
;
SPRITE_TILES_ENEMY_BIHORUDA_00:
    .byte $07,$17,$28,$6f,$1f,$fb,$bf,$fe   ; byte
    .byte $00,$0f,$1f,$30,$63,$4d,$41,$13   ; byte


;
; ░░░.....
; █▒░░░...
; ▒█▒▒░░..
; ░▒█▒▒░░.
; █░▒█▒░░.
; █▒░▒▒▒░░
; ▒█▒░░░░░
; █▒▒░░░░░
;
SPRITE_TILES_ENEMY_BIHORUDA_01:
    .byte $e0,$b8,$4c,$a6,$d6,$a3,$5f,$9f   ; byte
    .byte $00,$c0,$f0,$78,$b8,$dc,$e0,$e0   ; byte


;
; ░▒░▒████
; ░▒▒░▒██▒
; ░▒▒▒░░░░
; .▒▒█████
; .▒░░░░░░
; .▒█▒░█░░
; ..█▒░░░░
; ...█.▒▒▒
;
SPRITE_TILES_ENEMY_BIHORUDA_02:
    .byte $af,$96,$8f,$1f,$3f,$2f,$2f,$10   ; byte
    .byte $5f,$6f,$70,$7f,$40,$74,$30,$17   ; byte


;
; ▒▒░█▒▒░░
; ▒░█▒▒░░░
; ░█▒█▒░░░
; ▒▒▒▒█▒░.
; ░░░░░▒░.
; █░█▒░▒..
; ░░█▒░...
; ▒░█░....
;
SPRITE_TILES_ENEMY_BIHORUDA_03:
    .byte $33,$67,$d7,$0a,$fa,$e8,$e8,$70   ; byte
    .byte $dc,$b8,$78,$fc,$04,$b4,$30,$a0   ; byte


;
; .....░░░
; ...░▒███
; ..░▒█▒▒▒
; .░█▒░░░░
; .▒▒░███░
; ░█░██▒█░
; ░▒░▒▒██░
; ░░░██▒██
;
SPRITE_TILES_ENEMY_BIHORUDA_04:
    .byte $07,$17,$28,$6f,$1f,$fb,$a7,$fb   ; byte
    .byte $00,$0f,$1f,$30,$6e,$5e,$5e,$1f   ; byte


;
; ░░░.....
; █▒░░░...
; ▒█▒▒░░..
; ░▒█▒▒░░.
; ░░▒▒▒░░.
; █░░░░░░░
; ░░░░░░░░
; ░░░▒█▒░░
;
SPRITE_TILES_ENEMY_BIHORUDA_05:
    .byte $e0,$b8,$4c,$a6,$c6,$ff,$ff,$eb   ; byte
    .byte $00,$c0,$f0,$78,$38,$80,$00,$1c   ; byte


;============================================================================
; Enemy Tiles: Lilith
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8014]
;============================================================================

;
; .█.....▒
; █▒█..███
; █▒▒.█▒▒█
; █░.█▒░░█
; █▒.░░░░█
; .█.█▒░█▒
; .█.░░░█▒
; .░.░░█▒▒
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8014]
;
SPRITE_TILES_ENEMY_LILITH_00:
    .byte $40,$a7,$89,$d7,$9f,$56,$5e,$5c   ; byte
    .byte $41,$e7,$ef,$99,$c1,$5b,$43,$07   ; byte


;
; ███.....
; █▒▒█....
; █▒░.▒...
; █▒▒░░...
; ███▒▒░..
; ████▒░..
; ▒█▒▒▒▒░.
; ▒███▒▒░.
;
SPRITE_TILES_ENEMY_LILITH_01:
    .byte $e0,$90,$a0,$98,$e4,$f4,$42,$72   ; byte
    .byte $e0,$f0,$c8,$e0,$f8,$f8,$fc,$fc   ; byte


;
; █▒.██▒▒░
; ▒▒▒..▒░░
; █████▒░█
; .░██████
; .▒▒▒████
; .█.▒▒▒▒▒
; .█.▒▒░░░
; ..▒▒░░▒▒
;
SPRITE_TILES_ENEMY_LILITH_02:
    .byte $99,$03,$fb,$7f,$0f,$40,$47,$0c   ; byte
    .byte $de,$e4,$fd,$3f,$7f,$5f,$58,$33   ; byte


;
; ▒▒███▒░.
; █████▒▒░
; ███▒██▒░
; ██░░██▒░
; ▒░█▒█▒▒░
; ░░▒▒█▒▒░
; ░█▒░▒▒▒░
; ▒▒░░░░▒▒
;
SPRITE_TILES_ENEMY_LILITH_03:
    .byte $3a,$f9,$ed,$fd,$69,$c9,$d1,$3c   ; byte
    .byte $fc,$fe,$fe,$ce,$be,$3e,$6e,$c3   ; byte


;
; █▒▒▒....
; ▒▒░..░..
; ▒░░░....
; █▒▒.░...
; ██▒░....
; ███▒░.░.
; ██▒▒░...
; ███▒▒░░.
;
SPRITE_TILES_ENEMY_LILITH_04:
    .byte $80,$24,$70,$88,$d0,$ea,$c8,$e6   ; byte
    .byte $f0,$c0,$80,$e0,$e0,$f0,$f0,$f8   ; byte


;
; ▒█▒█▒▒.░
; ████▒░░.
; █████▒░.
; ██▒▒█▒▒░
; ▒░░██▒░.
; ░░██▒▒▒░
; ██▒▒█▒░.
; ▒▒▒░░█▒▒
;
SPRITE_TILES_ENEMY_LILITH_05:
    .byte $51,$f6,$fa,$c9,$7a,$f1,$ca,$1c   ; byte
    .byte $fc,$f8,$fc,$fe,$9c,$3e,$fc,$e7   ; byte


;============================================================================
; Enemy Tiles: Yuinaru
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8018]
;============================================================================

;
; ...▒██▒░
; ..░▒▒▒▒▒
; ..░░░░░▒
; ..█░█░░▒
; ..░░░░░░
; .▒▒░░░░█
; ░░▒▒▒▒▒▒
; ░░░▒░▒░░
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8018]
;
SPRITE_TILES_ENEMY_YUINARU_00:
    .byte $0d,$20,$3e,$3e,$3f,$1f,$c0,$eb   ; byte
    .byte $1e,$1f,$01,$29,$00,$61,$3f,$14   ; byte


;
; ........
; ░.......
; ▒░......
; ▒░......
; ░██▒....
; ██▒▒▒...
; ▒▒▒▒░...
; ▒▒▒▒▒...
;
SPRITE_TILES_ENEMY_YUINARU_01:
    .byte $00,$80,$40,$40,$e0,$c0,$08,$00   ; byte
    .byte $00,$00,$80,$80,$70,$f8,$f0,$f8   ; byte


;
; ▒▒░▒█░█▒
; ▒█░▒▒█▒▒
; ░▒█░░▒▒░
; .░▒██░░░
; ..░░░█░▒
; ...░░░▒▒
; ....░░░▒
; ......░░
;
SPRITE_TILES_ENEMY_YUINARU_02:
    .byte $2e,$64,$b9,$5f,$3e,$1c,$0e,$03   ; byte
    .byte $db,$df,$66,$38,$05,$03,$01,$00   ; byte


;
; ░▒▒███..
; ░░▒▒▒▒█▒
; ░░░░░░░.
; ░▒▒.....
; ░▒▒▒..▒▒
; ▒░▒▒▒▒▒░
; ▒▒░░▒░░.
; ░░░░░...
;
SPRITE_TILES_ENEMY_YUINARU_03:
    .byte $9c,$c2,$fe,$80,$80,$41,$36,$f8   ; byte
    .byte $7c,$3f,$00,$60,$73,$be,$c8,$00   ; byte


;
; ........
; ░.......
; ▒░......
; ░██░....
; ████░...
; ▒▒██░...
; ▒▒██▒...
; ░░▒███..
;
SPRITE_TILES_ENEMY_YUINARU_04:
    .byte $00,$80,$40,$f0,$f8,$38,$30,$dc   ; byte
    .byte $00,$00,$80,$60,$f0,$f0,$f8,$3c   ; byte


;
; ░░░▒▒▒█▒
; ░░░░░░░.
; ░▒▒....▒
; ░▒▒▒..▒░
; ▒░▒▒▒▒▒░
; ▒▒░░▒░░.
; ░░░░░...
; ░░░.....
;
SPRITE_TILES_ENEMY_YUINARU_05:
    .byte $e2,$fe,$80,$81,$41,$36,$f8,$e0   ; byte
    .byte $1f,$00,$61,$72,$be,$c8,$00,$00   ; byte


;============================================================================
; Enemy Tiles: Snowman
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::801a]
;============================================================================

;
; ░█░..█▒▒
; ░██░████
; .░█░████
; ..░███░░
; ...░░░░█
; ...██░░░
; ..████░░
; ..█░████
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::801a]
;
SPRITE_TILES_ENEMY_SNOWMAN_00:
    .byte $e4,$ff,$7f,$3f,$1f,$1f,$3f,$3f   ; byte
    .byte $47,$6f,$2f,$1c,$01,$18,$3c,$2f   ; byte


;
; ░░░....█
; ▒░░████░
; ▒░████▒░
; ░░██▒▒░░
; ░░░░░░░.
; ░░█▒░...
; ░░█▒░...
; ░██▒░░..
;
SPRITE_TILES_ENEMY_SNOWMAN_01:
    .byte $e1,$7f,$7d,$f3,$fe,$e8,$e8,$ec   ; byte
    .byte $01,$9e,$be,$3c,$00,$30,$30,$70   ; byte


;
; .██████░
; ..░░░░██
; ..█████░
; ..████░▒
; ...░░░▒▒
; ..░░▒▒▒░
; ░░██▒▒░█
; ███░▒░██
;
SPRITE_TILES_ENEMY_SNOWMAN_02:
    .byte $7f,$3f,$3f,$3e,$1c,$31,$f3,$f7   ; byte
    .byte $7e,$03,$3e,$3d,$03,$0e,$3d,$eb   ; byte


;
; ▒█▒░░░░.
; ░░░█▒▒░.
; ▒░████▒░
; ▒░▒███▒░
; ▒▒░████░
; ░▒░▒███░
; █░░░░██▒
; ███████▒
;
SPRITE_TILES_ENEMY_SNOWMAN_03:
    .byte $5e,$f2,$7d,$5d,$3f,$af,$fe,$fe   ; byte
    .byte $e0,$1c,$be,$be,$de,$5e,$87,$ff   ; byte


;
; ███░░░░█
; ░█░░.░░█
; .....░▒░
; ....░░▒▒
; ...░░░▒▒
; ..░█▒░░▒
; .░███▒░░
; ░███▒░░.
;
SPRITE_TILES_ENEMY_SNOWMAN_04:
    .byte $ff,$f7,$05,$0c,$1c,$36,$7b,$f6   ; byte
    .byte $e1,$41,$02,$03,$03,$19,$3c,$78   ; byte


;
; ██▒░███▒
; ▒▒░░▒▒▒░
; ░░▒░░░░.
; ▒▒▒▒░░..
; ▒▒▒░░░..
; ▒▒░░██░.
; ░░░▒███░
; ..░▒▒██░
;
SPRITE_TILES_ENEMY_SNOWMAN_05:
    .byte $de,$31,$de,$0c,$1c,$3e,$ef,$27   ; byte
    .byte $ef,$ce,$20,$f0,$e0,$cc,$1e,$1e   ; byte


;
; ░██▒░░..
; ░█▒░....
; ░▒▒░....
; .░▒▒░...
; ..░▒█░..
; .░▒██░..
; ░▒██░...
; ░██░....
;
SPRITE_TILES_ENEMY_SNOWMAN_06:
    .byte $ec,$d0,$90,$48,$2c,$5c,$b8,$f0   ; byte
    .byte $70,$60,$60,$30,$18,$38,$70,$60   ; byte


;
; ..░▒██░.
; .░▒█░░..
; ░▒█░░...
; ░░░█░░..
; ..░░██░.
; ....░░..
; ........
; ........
;
SPRITE_TILES_ENEMY_SNOWMAN_07:
    .byte $2e,$5c,$b8,$fc,$3e,$0c,$00,$00   ; byte
    .byte $1c,$30,$60,$10,$0c,$00,$00,$00   ; byte


;
; .██████░
; ..░░░░░░
; ...░░░██
; ..█████░
; ...███░▒
; ....░░░░
; ..░█░░██
; .███░███
;
SPRITE_TILES_ENEMY_SNOWMAN_08:
    .byte $7f,$3f,$1f,$3f,$1e,$0f,$3f,$7f   ; byte
    .byte $7e,$00,$03,$3e,$1d,$00,$13,$77   ; byte


;
; ▒█▒░░░░.
; ░░░█▒▒░.
; ░░████▒░
; ░░████▒░
; ▒░▒███▒░
; ▒▒░▒███░
; ░░░░██░░
; ███████░
;
SPRITE_TILES_ENEMY_SNOWMAN_09:
    .byte $5e,$f2,$fd,$fd,$5d,$2f,$ff,$ff   ; byte
    .byte $e0,$1c,$3e,$3e,$be,$de,$0c,$fe   ; byte


;
; .███░███
; ..█░.░▒▒
; .....░░░
; ....░░▒▒
; ...░██░▒
; ..░███▒░
; .░███▒▒░
; .░██▒▒░.
;
SPRITE_TILES_ENEMY_SNOWMAN_10:
    .byte $7f,$34,$07,$0c,$1e,$3d,$79,$72   ; byte
    .byte $77,$23,$00,$03,$0d,$1e,$3e,$3c   ; byte


;
; ▒░█████░
; ░░▒▒██░.
; ▒▒░░░░..
; ▒▒▒▒▒░..
; ▒▒▒░░░..
; ▒▒░░█▒░.
; ░░░▒███░
; ..░░▒██▒
;
SPRITE_TILES_ENEMY_SNOWMAN_11:
    .byte $7f,$ce,$3c,$04,$1c,$3a,$ef,$36   ; byte
    .byte $be,$3c,$c0,$f8,$e0,$cc,$1e,$0f   ; byte


;============================================================================
; Enemy Tiles: Nash
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::801c]
;============================================================================

;
; ......░░
; .....░░░
; ....░░██
; ....░███
; ...░░██░
; ...░░█░░
; ...░░██░
; ...░░░██
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::801c]
;
SPRITE_TILES_ENEMY_NASH_00:
    .byte $03,$07,$0f,$0f,$1f,$1f,$1f,$1f   ; byte
    .byte $00,$00,$03,$07,$06,$04,$06,$03   ; byte


;
; ░.......
; ░░░.....
; ░░░░....
; ░░░░░...
; ░░░░░...
; █░░░░...
; █░░░░...
; ░░░░█░..
;
SPRITE_TILES_ENEMY_NASH_01:
    .byte $80,$e0,$f0,$f8,$f8,$f8,$f8,$fc   ; byte
    .byte $00,$00,$00,$00,$00,$80,$80,$08   ; byte


;
; ...░░░░░
; ....░░░░
; ...░█░░░
; ...░░█░░
; ...░▒░██
; ...░█░██
; ..░█▒▒░░
; ..░▒▒█▒█
;
SPRITE_TILES_ENEMY_NASH_02:
    .byte $1f,$0f,$1f,$1f,$17,$1f,$33,$25   ; byte
    .byte $00,$00,$08,$04,$0b,$0b,$1c,$1f   ; byte


;
; ░░░░█░..
; ░░░█░░..
; ░██░░░..
; █░░░▒░░.
; ░▒░░▒░░.
; ░▒░░▒░░░
; ▒▒░░▒▒░░
; ▒▒░░█▒░░
;
SPRITE_TILES_ENEMY_NASH_03:
    .byte $fc,$fc,$fc,$f6,$b6,$b7,$33,$3b   ; byte
    .byte $08,$10,$60,$88,$48,$48,$cc,$cc   ; byte


;
; ..░▒░▒█▒
; .░▒▒░▒█▒
; .░▒░░▒▒░
; ..░▒░▒▒░
; ...░░▒░░
; ....░░░░
; ....░░░░
; ....░▒▒░
;
SPRITE_TILES_ENEMY_NASH_04:
    .byte $2a,$4a,$59,$29,$1b,$0f,$0f,$09   ; byte
    .byte $17,$37,$26,$16,$04,$00,$00,$06   ; byte


;
; ▒░░█▒▒░.
; ░░██▒░░.
; ░▒▒▒▒░░.
; ▒█▒░░░░.
; █▒▒░░░..
; ▒░░░░...
; ░▒░░░...
; ░░░░....
;
SPRITE_TILES_ENEMY_NASH_05:
    .byte $72,$f6,$86,$5e,$9c,$78,$b8,$f0   ; byte
    .byte $9c,$38,$78,$e0,$e0,$80,$40,$00   ; byte


;
; ....░░░▒
; ....░▒░░
; ....░▒▒░
; ....░▒▒░
; ....░▒█▒
; ....░▒██
; ....░░▒▒
; ...░░▒░▒
;
SPRITE_TILES_ENEMY_NASH_06:
    .byte $0e,$0b,$09,$09,$0a,$0b,$0c,$1a   ; byte
    .byte $01,$04,$06,$06,$07,$07,$03,$05   ; byte


;
; ░░░░....
; ▒▒░░....
; ░░░░░...
; ░░░░░...
; ░░░░░...
; ▒░░░░...
; ▒▒▒▒░░..
; ▒░░░░░░░
;
SPRITE_TILES_ENEMY_NASH_07:
    .byte $f0,$30,$f8,$f8,$f8,$78,$0c,$7f   ; byte
    .byte $00,$c0,$00,$00,$00,$80,$f0,$80   ; byte


;
; ...░░░░░
; ....░░░░
; ...░█░░░
; ...░░█░░
; .░░░▒░██
; ░▒▒▒█░██
; ▒░░▒▒▒░░
; ▒░▒░▒█▒█
;
SPRITE_TILES_ENEMY_NASH_08:
    .byte $1f,$0f,$1f,$1f,$77,$8f,$63,$55   ; byte
    .byte $00,$00,$08,$04,$0b,$7b,$9c,$af   ; byte


;
; ░░░░█░..
; ░░░█░░..
; ░██░░░..
; █░░░░░░.
; ░░░░▒▒▒░
; ░░░▒░░▒▒
; ▒▒░░▒▒░▒
; ▒▒░▒█▒░▒
;
SPRITE_TILES_ENEMY_NASH_09:
    .byte $fc,$fc,$fc,$fe,$f1,$ec,$32,$2a   ; byte
    .byte $08,$10,$60,$80,$0e,$13,$cd,$dd   ; byte


;
; ░██░▒▒█▒
; ░▒█░▒▒█▒
; .░░░░▒▒░
; ..░░░▒▒░
; ....░▒░░
; ....░░░░
; ....░░░░
; ....░▒▒░
;
SPRITE_TILES_ENEMY_NASH_10:
    .byte $f2,$b2,$79,$39,$0b,$0f,$0f,$09   ; byte
    .byte $6f,$6f,$06,$06,$04,$00,$00,$06   ; byte


;
; ▒░░▒█░░▒
; ░░░░▒░▒░
; ░░░░░▒░.
; ░░░░░░..
; ░░░░....
; ░░░░....
; ░░░░....
; ░░░░....
;
SPRITE_TILES_ENEMY_NASH_11:
    .byte $6e,$f5,$fa,$fc,$f0,$f0,$f0,$f0   ; byte
    .byte $99,$0a,$04,$00,$00,$00,$00,$00   ; byte


;
; .░▒▒▒░░░
; ░▒░░▒▒░░
; ░▒░▒░▒░░
; ░▒░█▒░░▒
; ░▒░██░░█
; ░▒░▒█░░█
; .░▒░░▒░░
; ..░▒▒░░▒
;
SPRITE_TILES_ENEMY_NASH_12:
    .byte $47,$b3,$ab,$b6,$bf,$af,$5b,$26   ; byte
    .byte $38,$4c,$54,$59,$59,$59,$24,$19   ; byte


;
; ▒▒▒▒▒▒░.
; ░░▒██▒░.
; ▒▒░▒█▒░.
; █▒░▒▒░░.
; █▒░▒░░░.
; ▒░░▒░░..
; ░░▒░░░..
; ▒▒░░░░..
;
SPRITE_TILES_ENEMY_NASH_13:
    .byte $02,$da,$2a,$a6,$ae,$6c,$dc,$3c   ; byte
    .byte $fc,$3c,$dc,$d8,$d0,$90,$20,$c0   ; byte


;
; ...░▒▒█▒
; ...░▒▒█▒
; ....░▒▒░
; ....░▒▒░
; ....░▒░░
; ....░░░░
; ....░░░░
; ....░▒▒░
;
SPRITE_TILES_ENEMY_NASH_14:
    .byte $12,$12,$09,$09,$0b,$0f,$0f,$09   ; byte
    .byte $0f,$0f,$06,$06,$04,$00,$00,$06   ; byte


;
; ░░░░░...
; ░░░░....
; ░░░.....
; ░░░.....
; ░░░.....
; ░░░.....
; ░░░.....
; ░░░░....
;
SPRITE_TILES_ENEMY_NASH_15:
    .byte $f8,$f0,$e0,$e0,$e0,$e0,$e0,$f0   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;============================================================================
; Enemy Tiles: Fire Giant
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::801e]
;============================================================================

;
; ..▒...░░
; ..░▒░░░░
; ...░█▒▒▒
; ..░█▒▒▒▒
; ..░▒▒░░░
; ...░░█░░
; ..██▒▒██
; ..▒▒▒█▒▒
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::801e]
;
SPRITE_TILES_ENEMY_FIRE_GIANT_00:
    .byte $03,$2f,$18,$30,$27,$1f,$33,$04   ; byte
    .byte $20,$10,$0f,$1f,$18,$04,$3f,$3f   ; byte


;
; ░░░...█.
; ░░░░.█▒.
; ░░▒██▒▒.
; ▒░▒▒▒▒..
; ░░░░░░..
; ▒░░░░░░.
; ▒░░░░░░.
; ▒░░░░░░.
;
SPRITE_TILES_ENEMY_FIRE_GIANT_01:
    .byte $e2,$f4,$d8,$40,$fc,$7e,$7e,$7e   ; byte
    .byte $02,$06,$3e,$bc,$00,$80,$80,$80   ; byte


;
; ...░░▒▒▒
; ...░░░▒▒
; ...▒▒▒▒░
; ....░░░░
; ...░▒░▒▒
; ..░█▒░▒█
; ..░▒░░▒█
; ░░░▒▒▒░░
;
SPRITE_TILES_ENEMY_FIRE_GIANT_02:
    .byte $18,$1c,$01,$0f,$14,$35,$2d,$e3   ; byte
    .byte $07,$03,$1e,$00,$0b,$1b,$13,$1c   ; byte


;
; ▒░░░░░..
; ░░░▒▒▒░.
; ░░▒█▒▒▒░
; ▒▒▒▒█▒▒░
; ▒▒▒▒▒▒▒░
; █▒░▒▒░░░
; ▒▒░▒█▒▒░
; ░░░▒█▒▒░
;
SPRITE_TILES_ENEMY_FIRE_GIANT_03:
    .byte $7c,$e2,$d1,$09,$01,$a7,$29,$e9   ; byte
    .byte $80,$1c,$3e,$fe,$fe,$d8,$de,$1e   ; byte


;
; ██▒██▒▒░
; ▒░▒██▒░█
; ░░▒▒▒▒░█
; ..░▒▒▒░▒
; ...░▒▒▒░
; ..░▒░░░░
; .░▒▒▒░░░
; ░▒█▒▒░░.
;
SPRITE_TILES_ENEMY_FIRE_GIANT_04:
    .byte $d9,$5b,$c3,$22,$11,$2f,$47,$a6   ; byte
    .byte $fe,$bd,$3d,$1d,$0e,$10,$38,$78   ; byte


;
; █░░░▒▒▒░
; ▒▒░██▒▒░
; ▒▒░▒▒▒▒░
; ▒░░▒▒▒░.
; ░▒▒░░░..
; ▒██▒░...
; ▒█▒░░...
; ▒▒▒░░...
;
SPRITE_TILES_ENEMY_FIRE_GIANT_05:
    .byte $f1,$39,$21,$62,$9c,$68,$58,$18   ; byte
    .byte $8e,$de,$de,$9c,$60,$f0,$e0,$e0   ; byte


;
; ░█▒▒░░.░
; ░▒▒░░...
; .░░░░...
; ..░▒░...
; .░░░░░..
; ░▒█▒░░..
; ░▒▒▒▒░..
; ░░░░░░..
;
SPRITE_TILES_ENEMY_FIRE_GIANT_06:
    .byte $cd,$98,$78,$28,$7c,$ac,$84,$fc   ; byte
    .byte $70,$60,$00,$10,$00,$70,$78,$00   ; byte


;
; ▒▒░░....
; ░░░░....
; ░▒░░....
; ██▒░░...
; ▒▒▒▒░...
; ░░░░░...
; ........
; ........
;
SPRITE_TILES_ENEMY_FIRE_GIANT_07:
    .byte $30,$f0,$b0,$d8,$08,$f8,$00,$00   ; byte
    .byte $c0,$00,$40,$e0,$f0,$00,$00,$00   ; byte


;
; ........
; ..▒...░░
; ..░▒░░░░
; ...░█▒▒▒
; ..░█▒▒▒▒
; ..░▒▒░░░
; ...░░█░░
; ..██▒▒██
;
SPRITE_TILES_ENEMY_FIRE_GIANT_08:
    .byte $00,$03,$2f,$18,$30,$27,$1f,$33   ; byte
    .byte $00,$20,$10,$0f,$1f,$18,$04,$3f   ; byte


;
; ........
; ░░░...█.
; ░░░░.█▒.
; ░░▒██▒▒.
; ▒░▒▒▒▒..
; ░░░░░░..
; ▒░░░░░░.
; ▒░░░░░░.
;
SPRITE_TILES_ENEMY_FIRE_GIANT_09:
    .byte $00,$e2,$f4,$d8,$40,$fc,$7e,$7e   ; byte
    .byte $00,$02,$06,$3e,$bc,$00,$80,$80   ; byte


;
; ...░░█▒▒
; ...░░░▒▒
; ...░░░▒▒
; ..░▒▒▒▒░
; ...▒▒░░█
; ..░█▒░▒▒
; ..░▒░░▒░
; ..░▒▒▒░█
;
SPRITE_TILES_ENEMY_FIRE_GIANT_10:
    .byte $1c,$1c,$1c,$21,$07,$34,$2d,$23   ; byte
    .byte $07,$03,$03,$1e,$19,$1b,$12,$1d   ; byte


;
; ▒░░░░░..
; ▒░░▒▒▒░.
; ░░▒█▒▒▒░
; █▒▒▒█▒▒░
; ▒▒░▒▒▒▒░
; ░░░▒▒░░░
; █░░▒█▒▒░
; █▒░░█▒▒░
;
SPRITE_TILES_ENEMY_FIRE_GIANT_11:
    .byte $7c,$62,$d1,$89,$21,$e7,$e9,$b9   ; byte
    .byte $80,$9c,$3e,$fe,$de,$18,$9e,$ce   ; byte


;
; ..▒██▒░█
; ░░░██▒░▒
; ██░▒▒▒░░
; ░░░░▒▒░░
; ░▒▒░░░░░
; ▒██▒░░░░
; ▒▒▒▒░░░░
; ▒▒▒░░░.░
;
SPRITE_TILES_ENEMY_FIRE_GIANT_12:
    .byte $1b,$fa,$e3,$f3,$9f,$6f,$0f,$1d   ; byte
    .byte $3d,$1d,$dc,$0c,$60,$f0,$f0,$e0   ; byte


;
; ▒▒▒░░▒▒░
; ▒▒░▒▒▒▒░
; ░░▒▒▒▒▒░
; ░░░▒▒▒░.
; ░░░░░░..
; ░░░░░...
; ░▒▒░░...
; ▒██▒░...
;
SPRITE_TILES_ENEMY_FIRE_GIANT_13:
    .byte $19,$21,$c1,$e2,$fc,$f8,$98,$68   ; byte
    .byte $e6,$de,$3e,$1c,$00,$00,$60,$f0   ; byte


;
; ░▒░░...░
; .░░░░..░
; ..░░░...
; .▒▒▒░░..
; .░░░░░..
; ........
; .......░
; .......░
;
SPRITE_TILES_ENEMY_FIRE_GIANT_14:
    .byte $b1,$79,$38,$0c,$7c,$00,$01,$01   ; byte
    .byte $40,$00,$00,$70,$00,$00,$00,$00   ; byte


;
; ▒█▒░░...
; ▒▒▒░....
; ░▒░░....
; .░░░░...
; .░░░░...
; ░█▒▒░...
; █▒▒▒▒...
; ░░░░░...
;
SPRITE_TILES_ENEMY_FIRE_GIANT_15:
    .byte $58,$10,$b0,$78,$78,$c8,$80,$f8   ; byte
    .byte $e0,$e0,$40,$00,$00,$70,$f8,$00   ; byte


;============================================================================
; Enemy Tiles: Ishiisu
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8020]
;============================================================================

;
; ......░░
; .....░░░
; ....░███
; ....░███
; ....░█▒▒
; ....░█▒█
; ....░███
; .....░█▒
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8020]
;
SPRITE_TILES_ENEMY_ISHIISU_00:
    .byte $03,$07,$0f,$0f,$0c,$0d,$0f,$06   ; byte
    .byte $00,$00,$07,$07,$07,$07,$07,$03   ; byte


;
; ░.......
; ░░......
; ░░░.....
; ░░░.....
; █░░░....
; █░░░░...
; ▒░░░░░░.
; ░░░░░░..
;
SPRITE_TILES_ENEMY_ISHIISU_01:
    .byte $80,$c0,$e0,$e0,$f0,$f8,$7e,$fc   ; byte
    .byte $00,$00,$00,$00,$80,$80,$80,$00   ; byte


;
; .....░░░
; ....░█▒▒
; ...░████
; ...░████
; ...░██▒█
; ....░█▒▒
; ...░░░░░
; ..░█░▒▒▒
;
SPRITE_TILES_ENEMY_ISHIISU_02:
    .byte $07,$0c,$1f,$1f,$1d,$0c,$1f,$38   ; byte
    .byte $00,$07,$0f,$0f,$0f,$07,$00,$17   ; byte


;
; ░▒██░░░░
; ▒████░..
; ███▒▒░░░
; ██▒░░░..
; █▒░█▒░..
; ▒▒░▒█▒░.
; ░░░░█▒░.
; ▒░░░██░.
;
SPRITE_TILES_ENEMY_ISHIISU_03:
    .byte $bf,$7c,$e7,$dc,$b4,$2a,$fa,$7e   ; byte
    .byte $70,$f8,$f8,$e0,$d8,$dc,$0c,$8c   ; byte


;
; .░██░▒██
; .░█░▒███
; ..░░▒███
; ....▒███
; ....▒███
; ....▒███
; ....▒███
; ....▒███
;
SPRITE_TILES_ENEMY_ISHIISU_04:
    .byte $7b,$77,$37,$07,$07,$07,$07,$07   ; byte
    .byte $37,$2f,$0f,$0f,$0f,$0f,$0f,$0f   ; byte


;
; ▒▒░░▒█░.
; █▒░░░█░.
; █▒░░░█░.
; ██▒░░█░.
; █▒░░░░░.
; ▒░░░....
; █▒░░....
; █▒░░....
;
SPRITE_TILES_ENEMY_ISHIISU_05:
    .byte $36,$be,$be,$de,$be,$70,$b0,$b0   ; byte
    .byte $cc,$c4,$c4,$e4,$c0,$80,$c0,$c0   ; byte


;
; ....▒███
; ....▒███
; ....░▒██
; ....░▒█▒
; ....░▒██
; ....░▒▒█
; ...░▒░▒▒
; ..░▒░▒░▒
;
SPRITE_TILES_ENEMY_ISHIISU_06:
    .byte $07,$07,$0b,$0a,$0b,$09,$14,$2a   ; byte
    .byte $0f,$0f,$07,$07,$07,$07,$0b,$15   ; byte


;
; █▒░░....
; ▒░░░....
; ▒░░░....
; ░░░░....
; ▒░░░....
; █▒░░....
; █▒░▒░░..
; ▒▒▒░▒▒░.
;
SPRITE_TILES_ENEMY_ISHIISU_07:
    .byte $b0,$70,$70,$f0,$70,$b0,$ac,$12   ; byte
    .byte $c0,$80,$80,$00,$80,$c0,$d0,$ec   ; byte


;
; ....░▒█▒
; ....░▒█▒
; ....░░▒█
; ....░▒██
; ....░▒█▒
; ....░▒█▒
; ....░░█░
; ...░░▒░█
;
SPRITE_TILES_ENEMY_ISHIISU_08:
    .byte $0a,$0a,$0d,$0b,$0a,$0a,$0f,$1b   ; byte
    .byte $07,$07,$03,$07,$07,$07,$02,$05   ; byte


;
; ▒░░.....
; ░░░.....
; ▒░░.....
; ▒░░.....
; ░░░.....
; ░▒░░....
; █▒▒░░...
; ▒▒░░░░..
;
SPRITE_TILES_ENEMY_ISHIISU_09:
    .byte $60,$e0,$60,$60,$e0,$b0,$98,$3c   ; byte
    .byte $80,$00,$80,$80,$00,$40,$e0,$c0   ; byte


;
; .....░░░
; ....░███
; ...░████
; ..░░████
; .░█░██▒█
; ░███░█▒▒
; .░░░░░░░
; ....░▒▒▒
;
SPRITE_TILES_ENEMY_ISHIISU_10:
    .byte $07,$0f,$1f,$3f,$7d,$fc,$7f,$08   ; byte
    .byte $00,$07,$0f,$0f,$2f,$77,$00,$07   ; byte


;
; ░██░░░░.
; ████░░..
; ██░░░░░.
; █░██░░..
; ░██░██░.
; ▒░░░██░.
; ░░░░░░..
; ▒░░░....
;
SPRITE_TILES_ENEMY_ISHIISU_11:
    .byte $fe,$fc,$fe,$fc,$fe,$7e,$fc,$70   ; byte
    .byte $60,$f0,$c0,$b0,$6c,$8c,$00,$80   ; byte


;
; ......░░
; .....░░░
; ..░..███
; .░█░░███
; ░███░█▒▒
; .░░░░█▒█
; ....░███
; .....░██
;
SPRITE_TILES_ENEMY_ISHIISU_12:
    .byte $03,$07,$27,$7f,$fc,$7d,$0f,$07   ; byte
    .byte $00,$00,$07,$27,$77,$07,$07,$03   ; byte


;
; ░.......
; ░░░░....
; ░░██░...
; ░██▒█░..
; ░░░░██░.
; █░░░▒█░.
; █░░░██░.
; ░░░██▒░.
;
SPRITE_TILES_ENEMY_ISHIISU_13:
    .byte $80,$f0,$f8,$ec,$fe,$f6,$fe,$fa   ; byte
    .byte $00,$00,$30,$78,$0c,$8c,$8c,$1c   ; byte


;
; .....░░░
; ....░███
; ...░████
; ...░████
; ...░██▒█
; ....░█▒▒
; ....░░░░
; ....░▒▒▒
;
SPRITE_TILES_ENEMY_ISHIISU_14:
    .byte $07,$0f,$1f,$1f,$1d,$0c,$0f,$08   ; byte
    .byte $00,$07,$0f,$0f,$0f,$07,$00,$07   ; byte


;
; ░█▒░█░..
; ███▒░...
; ██▒░....
; ██▒░....
; █▒░.....
; ▒▒░.....
; ░░░.....
; ▒░░░....
;
SPRITE_TILES_ENEMY_ISHIISU_15:
    .byte $dc,$e8,$d0,$d0,$a0,$20,$e0,$70   ; byte
    .byte $68,$f0,$e0,$e0,$c0,$c0,$00,$80   ; byte


;
; ....░▒██
; ....▒███
; ....▒███
; ....▒███
; ....▒███
; ....▒███
; ....░▒██
; ....░▒██
;
SPRITE_TILES_ENEMY_ISHIISU_16:
    .byte $0b,$07,$07,$07,$07,$07,$0b,$0b   ; byte
    .byte $07,$0f,$0f,$0f,$0f,$0f,$07,$07   ; byte


;
; ▒▒░░....
; █▒░░....
; █▒░.....
; █▒░.....
; ▒░░.....
; ▒░░.....
; ▒░░.....
; ▒░░.....
;
SPRITE_TILES_ENEMY_ISHIISU_17:
    .byte $30,$b0,$a0,$a0,$60,$60,$60,$60   ; byte
    .byte $c0,$c0,$c0,$c0,$80,$80,$80,$80   ; byte


;============================================================================
; Enemy Tiles: Execution Hood
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8022]
;============================================================================

;
; .......░
; .░░░░.░█
; ░████░██
; ░███░███
; ░█░████▒
; .░.░░█▒░
; ....░░▒.
; ...██░..
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8022]
;
SPRITE_TILES_ENEMY_EXECUTION_HOOD_00:
    .byte $01,$7b,$ff,$ff,$fe,$5d,$0c,$1c   ; byte
    .byte $00,$01,$7b,$77,$5f,$06,$02,$18   ; byte


;
; ▒█░░....
; ████░...
; █████░..
; ▒░▒██░..
; ░.░▒██░.
; ..░▒██░.
; ..░▒██░.
; .░▒██▒░.
;
SPRITE_TILES_ENEMY_EXECUTION_HOOD_01:
    .byte $70,$f8,$fc,$5c,$ae,$2e,$2e,$5a   ; byte
    .byte $c0,$f0,$f8,$b8,$1c,$1c,$1c,$3c   ; byte


;
; ........
; ......░░
; ....░░▒█
; ...░▒███
; ..░▒██▒▒
; .░▒██▒▒▒
; .░░▒▒▒▒░
; .██░▒▒░░
;
SPRITE_TILES_ENEMY_EXECUTION_HOOD_02:
    .byte $00,$03,$0d,$17,$2c,$58,$61,$73   ; byte
    .byte $00,$00,$03,$0f,$1f,$3f,$1e,$6c   ; byte


;
; ░▒███▒░.
; ▒███▒░░.
; ███░░░░.
; ██░░█▒░░
; █▒░███▒░
; ░░░░██░░
; ░░░░░░▒░
; ██░░░░░░
;
SPRITE_TILES_ENEMY_EXECUTION_HOOD_03:
    .byte $ba,$76,$fe,$fb,$bd,$ff,$fd,$ff   ; byte
    .byte $7c,$f8,$e0,$cc,$de,$0c,$02,$c0   ; byte


;
; .░██░░░█
; .██░█▒░█
; .░░██▒░░
; .░████▒░
; █░█████▒
; █░████▒░
; ██░██░░░
; ▒██░░░██
;
SPRITE_TILES_ENEMY_EXECUTION_HOOD_04:
    .byte $7f,$7b,$7b,$7d,$fe,$fd,$ff,$7f   ; byte
    .byte $31,$6d,$1c,$3e,$bf,$be,$d8,$e3   ; byte


;
; ░██░░░░░
; ███░░░░.
; ██░░░░░.
; ░░░▒▒░░.
; ░░▒▒▒░░.
; ░███▒▒░░
; ███▒▒░█░
; ██▒▒░░█░
;
SPRITE_TILES_ENEMY_EXECUTION_HOOD_05:
    .byte $ff,$fe,$fe,$e6,$c6,$f3,$e7,$cf   ; byte
    .byte $60,$e0,$c0,$18,$38,$7c,$fa,$f2   ; byte


;
; ░███░███
; ░░█████▒
; .░░███░░
; .░█░░░░░
; ░█▒░░░░░
; ██░████░
; ░░.░▒███
; ....░░░░
;
SPRITE_TILES_ENEMY_EXECUTION_HOOD_06:
    .byte $ff,$fe,$7f,$7f,$df,$ff,$d7,$0f   ; byte
    .byte $77,$3f,$1c,$20,$60,$de,$0f,$00   ; byte


;
; █▒░░░░░░
; ▒░░░░▒░░
; ░░░░██▒░
; █░░░██▒░
; █░▒░███░
; ░█░.░██░
; █░░░███░
; ░.░███░░
;
SPRITE_TILES_ENEMY_EXECUTION_HOOD_07:
    .byte $bf,$7b,$fd,$fd,$df,$ef,$ff,$bf   ; byte
    .byte $c0,$84,$0e,$8e,$ae,$46,$8e,$1c   ; byte


;
; ...░░░..
; ..░████░
; ..░███░█
; ..░█░███
; ...░.░░█
; ......░░
; ....░░░█
; ....███░
;
SPRITE_TILES_ENEMY_EXECUTION_HOOD_08:
    .byte $1c,$3f,$3f,$3f,$17,$03,$0f,$0f   ; byte
    .byte $00,$1e,$1d,$17,$01,$00,$01,$0e   ; byte


;
; ░▒██▒░..
; ██████░.
; ███▒██▒░
; ██░░▒██░
; █░..░██░
; █░..░██░
; ░..░██▒░
; ..░███░.
;
SPRITE_TILES_ENEMY_EXECUTION_HOOD_09:
    .byte $b4,$fe,$ed,$f7,$cf,$cf,$9d,$3e   ; byte
    .byte $78,$fc,$fe,$ce,$86,$86,$0e,$1c   ; byte


;
; ░██░░░░.
; ███░░░░.
; ██░▒▒░░.
; ░▒▒█▒▒░.
; ███▒▒▒░░
; █▒▒░░░░░
; ▒░░░░▒░░
; ░░░░▒▒░.
;
SPRITE_TILES_ENEMY_EXECUTION_HOOD_10:
    .byte $fe,$fe,$e6,$92,$e3,$9f,$7b,$f2   ; byte
    .byte $60,$e0,$d8,$7c,$fc,$e0,$84,$0c   ; byte


;
; ░░░███░░
; ░░█░░░░░
; ░░█░░░░░
; .░░░░░░░
; .█░░░░░░
; .░░████░
; ░█░.████
; █░░░.░░░
;
SPRITE_TILES_ENEMY_EXECUTION_HOOD_11:
    .byte $ff,$ff,$ff,$7f,$7f,$7f,$ef,$f7   ; byte
    .byte $1c,$20,$20,$00,$40,$1e,$4f,$80   ; byte


;
; ░░░░█▒▒░
; █░░░██▒░
; █░░░██▒░
; ░░░░░█░░
; ░░░░███░
; ░▒░███░░
; █░.░░░░.
; ░.......
;
SPRITE_TILES_ENEMY_EXECUTION_HOOD_12:
    .byte $f9,$fd,$fd,$ff,$ff,$bf,$de,$80   ; byte
    .byte $0e,$8e,$8e,$04,$0e,$5c,$80,$00   ; byte


;============================================================================
; Boss Tiles: Rokusutahn
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8024]
;============================================================================

;
; ........
; .......░
; ......░▒
; ....░░█▒
; ...░██▒▒
; ..░█▒░░▒
; .░█▒░░█▒
; ░██▒░█▒▒
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8024]
;
SPRITE_TILES_BOSS_ROKUSUTAHN_00:
    .byte $00,$01,$02,$0e,$1c,$36,$6e,$ec   ; byte
    .byte $00,$00,$01,$03,$0f,$19,$33,$77   ; byte


;
; .░░░░░░░
; ░██▒▒█▒▒
; █░░░▒▒█▒
; ░█░░░▒░▒
; ░░░░░▒░▒
; ░░░░░░▒░
; ▒░░██░░░
; ▒▒█▒▒▒░░
;
SPRITE_TILES_BOSS_ROKUSUTAHN_01:
    .byte $7f,$e4,$f2,$fa,$fa,$fd,$7f,$23   ; byte
    .byte $00,$7f,$8f,$45,$05,$02,$98,$fc   ; byte


;
; ░░░░░░░.
; ▒▒██▒▒▒░
; ▒█▒▒▒██▒
; ▒░▒▒▒▒█▒
; ▒░▒░░░█░
; ░▒░░░░░░
; ░░░██░░▒
; ░░▒▒▒█▒▒
;
SPRITE_TILES_BOSS_ROKUSUTAHN_02:
    .byte $fe,$31,$46,$42,$5f,$bf,$fe,$c4   ; byte
    .byte $00,$fe,$ff,$bf,$a2,$40,$19,$3f   ; byte


;
; ........
; ░.......
; █░......
; ██░░....
; ▒▒██░...
; ▒░░▒█░..
; ▒█░░▒█░.
; ▒▒█░▒██░
;
SPRITE_TILES_BOSS_ROKUSUTAHN_03:
    .byte $00,$80,$c0,$f0,$38,$6c,$76,$37   ; byte
    .byte $00,$00,$80,$c0,$f0,$98,$cc,$ee   ; byte


;
; ░▒▒██▒▒▒
; ▒░░░▒▒░▒
; █░░▒░░░░
; .░░█░░░▒
; .░▒░░░██
; ..░░▒░██
; ...░░░██
; .....░░█
;
SPRITE_TILES_BOSS_ROKUSUTAHN_04:
    .byte $98,$72,$ef,$7e,$5f,$37,$1f,$07   ; byte
    .byte $7f,$8d,$90,$11,$23,$0b,$03,$01   ; byte


;
; ▒██▒▒▒░▒
; ▒█▒▒▒░░█
; ▒▒▒░░░░▒
; ░░░░░░▒░
; ░░░▒▒░░▒
; ░░▒██▒░░
; ░░██▒▒░▒
; ░▒██▒░░░
;
SPRITE_TILES_BOSS_ROKUSUTAHN_05:
    .byte $62,$47,$1e,$fd,$e6,$db,$f2,$b7   ; byte
    .byte $fd,$f9,$e1,$02,$19,$3c,$3d,$78   ; byte


;
; ▒░▒▒▒██▒
; █░░▒▒▒█▒
; ▒░░░░▒▒▒
; ░▒░░░░░░
; ▒░░▒▒░░░
; ░░▒██▒░░
; ▒░▒▒██░░
; ░░░▒▒█░░
;
SPRITE_TILES_BOSS_ROKUSUTAHN_06:
    .byte $46,$e2,$78,$bf,$67,$db,$4f,$e7   ; byte
    .byte $bf,$9f,$87,$40,$98,$3c,$bc,$1c   ; byte


;
; ▒▒▒██▒▒░
; ▒░▒▒░░░▒
; ░░░░▒░░█
; ░░░░█░░.
; █▒░░░░..
; ██░░....
; ██......
; █.......
;
SPRITE_TILES_BOSS_ROKUSUTAHN_07:
    .byte $19,$4e,$f7,$fe,$bc,$f0,$c0,$80   ; byte
    .byte $fe,$b1,$09,$08,$c0,$c0,$c0,$80   ; byte


;
; ░██▒▒░░░
; ░▒▒▒░░░.
; ░░░░░░░.
; ░██░░░░.
; ░█▒▒░░..
; ░▒▒░░░..
; ░█▒▒░░..
; ░▒▒▒░░..
;
SPRITE_TILES_BOSS_ROKUSUTAHN_08:
    .byte $e7,$8e,$fe,$fe,$cc,$9c,$cc,$8c   ; byte
    .byte $78,$70,$00,$60,$70,$60,$70,$70   ; byte


;
; ░█▒░░░..
; ░▒▒▒░░..
; ░▒▒░░░..
; ░█░░░░..
; ░▒▒▒░░..
; ░█▒░░░..
; ░▒▒▒░░..
; ░█░░░░..
;
SPRITE_TILES_BOSS_ROKUSUTAHN_09:
    .byte $dc,$8c,$9c,$fc,$8c,$dc,$8c,$fc   ; byte
    .byte $60,$70,$60,$40,$70,$60,$70,$40   ; byte


;
; ░▒▒░░░..
; ░░░░░░..
; ░▒█▒░░..
; ░█▒█░░..
; ▒█░█░░..
; █▒░█░░..
; █▒░░░░..
; █░░▒░░..
;
SPRITE_TILES_BOSS_ROKUSUTAHN_10:
    .byte $9c,$fc,$ac,$dc,$7c,$bc,$bc,$ec   ; byte
    .byte $60,$00,$70,$70,$d0,$d0,$c0,$90   ; byte


;
; ..░░░▒█░
; ..░░▒▒▒░
; ..░░░▒▒░
; .░░░░░█░
; .░▒░▒▒▒░
; ░░░░░▒█░
; ...░▒▒▒░
; ...░░░█░
;
SPRITE_TILES_BOSS_ROKUSUTAHN_11:
    .byte $3b,$31,$39,$7f,$51,$fb,$11,$1f   ; byte
    .byte $06,$0e,$06,$02,$2e,$06,$0e,$02   ; byte


;
; ..░▒▒░..
; ..░▒░░..
; ..░▒▒░..
; ..░░░░..
; ..░▒▒░..
; .░▒▒░▒░.
; .▒▒░.░░.
; ░▒░...░.
;
SPRITE_TILES_BOSS_ROKUSUTAHN_12:
    .byte $24,$2c,$24,$3c,$24,$4a,$16,$a2   ; byte
    .byte $18,$10,$18,$00,$18,$34,$60,$40   ; byte


;
; ...░░▒█░
; ...░▒▒▒░
; ...░░▒█░
; ...░░░░░
; ...░█▒░░
; ..░▒█▒█▒
; .░▒█░░▒█
; ..▒█░░░█
;
SPRITE_TILES_BOSS_ROKUSUTAHN_13:
    .byte $1b,$11,$1b,$1f,$1b,$2a,$5d,$1f   ; byte
    .byte $06,$0e,$06,$00,$0c,$1f,$33,$31   ; byte


;
; ▒▒▒█▒▒░▒
; ▒█▒▒▒░░█
; ▒▒▒░░░░▒
; ░░░░░░▒▒
; ░░▒▒▒░░░
; ░▒██▒░░░
; ░▒██▒░░░
; ▒█▒▒▒░.░
;
SPRITE_TILES_BOSS_ROKUSUTAHN_14:
    .byte $12,$47,$1e,$fc,$c7,$b7,$b7,$45   ; byte
    .byte $fd,$f9,$e1,$03,$38,$78,$78,$f8   ; byte


;
; ......▒█
; .....▒██
; ....▒▒█▒
; ...▒██▒▒
; ..░██▒▒░
; ..░█▒▒░.
; ...░░░░.
; ..░░░░..
;
SPRITE_TILES_BOSS_ROKUSUTAHN_15:
    .byte $01,$03,$02,$0c,$39,$32,$1e,$3c   ; byte
    .byte $03,$07,$0f,$1f,$1e,$1c,$00,$00   ; byte


;
; █▒▒░░░..
; ▒▒░░░░..
; ▒░░░▒░..
; ░░░▒▒▒░.
; ..░░▒▒░.
; ...░▒▒░░
; ...░▒▒▒░
; ....░▒▒░
;
SPRITE_TILES_BOSS_ROKUSUTAHN_16:
    .byte $9c,$3c,$74,$e2,$32,$13,$11,$09   ; byte
    .byte $e0,$c0,$88,$1c,$0c,$0c,$0e,$06   ; byte


;
; ..░█▒░░.
; ..░▒█▒░.
; ..░█▒░░.
; ..░▒▒▒░.
; ..░█▒▒░.
; ..░█▒░░.
; ..░▒▒▒░.
; ..░█▒░░.
;
SPRITE_TILES_BOSS_ROKUSUTAHN_17:
    .byte $36,$2a,$36,$22,$32,$36,$22,$36   ; byte
    .byte $18,$1c,$18,$1c,$1c,$18,$1c,$18   ; byte


;
; ....░▒░░
; ....░▒▒░
; ....░▒░░
; ....░▒▒░
; ....░▒░░
; ....░▒▒░
; ....░▒▒░
; ....░▒░░
;
SPRITE_TILES_BOSS_ROKUSUTAHN_18:
    .byte $0b,$09,$0b,$09,$0b,$09,$09,$0b   ; byte
    .byte $04,$06,$04,$06,$04,$06,$06,$04   ; byte


;
; ..░█▒░░.
; ..░█▒▒░.
; ..░█▒░░.
; ..░░░░░.
; ..░██▒░.
; .░▒█░█▒░
; .▒█░.░█░
; ░█░...▒░
;
SPRITE_TILES_BOSS_ROKUSUTAHN_19:
    .byte $36,$32,$36,$3e,$3a,$5d,$37,$e1   ; byte
    .byte $18,$1c,$18,$00,$1c,$36,$62,$42   ; byte


;
; ....░▒▒░
; ....░▒▒░
; ....░▒▒░
; ....░░░░
; ....░▒▒░
; ...░▒▒░▒
; ...▒▒░.░
; ..░▒░...
;
SPRITE_TILES_BOSS_ROKUSUTAHN_20:
    .byte $09,$09,$09,$0f,$09,$12,$05,$28   ; byte
    .byte $06,$06,$06,$00,$06,$0d,$18,$10   ; byte


;
; .......░
; .......░
; .......░
; .......░
; ......░▒
; ......░░
; ......░▒
; ......░▒
;
SPRITE_TILES_BOSS_ROKUSUTAHN_21:
    .byte $01,$01,$01,$01,$02,$03,$02,$02   ; byte
    .byte $00,$00,$00,$00,$01,$00,$01,$01   ; byte


;
; ░▒█▒▒░░░
; ░█▒▒░░░.
; ░█▒▒░░..
; ░█▒▒░...
; ▒█▒▒░...
; ▒█▒▒░...
; ░▒▒░░...
; ░░░░░...
;
SPRITE_TILES_BOSS_ROKUSUTAHN_22:
    .byte $a7,$ce,$cc,$c8,$48,$48,$98,$f8   ; byte
    .byte $78,$70,$70,$70,$f0,$f0,$60,$00   ; byte


;
; ..░▒▒██░
; ..░░▒▒▒░
; ...░░░░░
; ...░░██░
; ...░▒▒█░
; ...░░▒▒░
; ...░▒▒█░
; ...░▒▒▒░
;
SPRITE_TILES_BOSS_ROKUSUTAHN_23:
    .byte $27,$31,$1f,$1f,$13,$19,$13,$11   ; byte
    .byte $1e,$0e,$00,$06,$0e,$06,$0e,$0e   ; byte


;
; ......░▒
; ......░░
; ......░▒
; ......░▒
; ......░░
; ......░▒
; ......░▒
; ......░▒
;
SPRITE_TILES_BOSS_ROKUSUTAHN_24:
    .byte $02,$03,$02,$02,$03,$02,$02,$02   ; byte
    .byte $01,$00,$01,$01,$00,$01,$01,$01   ; byte


;
; ░█▒░░...
; ░▒▒▒░...
; ░▒▒░░...
; ░█░░░...
; ░▒▒▒░...
; ░█▒░░...
; ░▒▒▒░...
; ░█░░░...
;
SPRITE_TILES_BOSS_ROKUSUTAHN_25:
    .byte $d8,$88,$98,$f8,$88,$d8,$88,$f8   ; byte
    .byte $60,$70,$60,$40,$70,$60,$70,$40   ; byte


;
; ......░▒
; ......░▒
; ......░▒
; ......░░
; ......░▒
; .....░▒▒
; ....░▒▒░
; ....░░░.
;
SPRITE_TILES_BOSS_ROKUSUTAHN_26:
    .byte $02,$02,$02,$03,$02,$04,$09,$0e   ; byte
    .byte $01,$01,$01,$00,$01,$03,$06,$00   ; byte


;
; ...░░▒▒░
; ...░░░░░
; ...░▒█▒░
; ...░█▒█░
; ...░█░█▒
; ...░█░▒█
; ...░░░▒█
; ...░░.░█
;
SPRITE_TILES_BOSS_ROKUSUTAHN_27:
    .byte $19,$1f,$15,$1b,$1e,$1d,$1d,$1b   ; byte
    .byte $06,$00,$0e,$0e,$0b,$0b,$03,$01   ; byte


;
; ░█▒░░...
; ░▒▒▒░...
; ░█▒░░...
; ░░░░░...
; ░░▒█░...
; ▒█▒█▒░..
; █▒░░█▒..
; █░░░█▒..
;
SPRITE_TILES_BOSS_ROKUSUTAHN_28:
    .byte $d8,$88,$d8,$f8,$d8,$54,$b8,$f8   ; byte
    .byte $60,$70,$60,$00,$30,$f8,$cc,$8c   ; byte


;
; ......░░
; ......░▒
; ......░▒
; ......░░
; ......░▒
; .....░▒▒
; .....░▒░
; .....░░.
;
SPRITE_TILES_BOSS_ROKUSUTAHN_29:
    .byte $03,$02,$02,$03,$02,$04,$05,$06   ; byte
    .byte $00,$01,$01,$00,$01,$03,$02,$00   ; byte


;
; ▒░......
; ▒░......
; ▒░......
; ░░......
; ▒░......
; ▒▒░.....
; ░▒▒░....
; .░░░....
;
SPRITE_TILES_BOSS_ROKUSUTAHN_30:
    .byte $40,$40,$40,$c0,$40,$20,$90,$70   ; byte
    .byte $80,$80,$80,$00,$80,$c0,$60,$00   ; byte


;
; ▒▒▒█▒▒░▒
; ▒█▒▒▒░░█
; ▒▒▒░░░░▒
; ░░░░░░▒░
; ░░░▒▒░░▒
; ░░▒██▒░░
; ░░▒██▒░▒
; ░░▒██▒░░
;
SPRITE_TILES_BOSS_ROKUSUTAHN_31:
    .byte $12,$47,$1e,$fd,$e6,$db,$da,$db   ; byte
    .byte $fd,$f9,$e1,$02,$19,$3c,$3d,$3c   ; byte


;
; ........
; .......░
; ......░▒
; .....░▒▒
; ....░▒▒░
; ...░▒▒▒▒
; ...░░░░░
; ...░▒▒░.
;
SPRITE_TILES_BOSS_ROKUSUTAHN_32:
    .byte $00,$01,$02,$04,$09,$10,$1f,$12   ; byte
    .byte $00,$00,$01,$03,$06,$0f,$00,$0c   ; byte


;
; ░░▒▒█▒░░
; ▒░░▒█▒░░
; ░░░▒█▒▒░
; ░░░▒██▒░
; ░░.▒██▒░
; ░..▒▒█▒░
; ...░▒▒░░
; ...░░░░░
;
SPRITE_TILES_BOSS_ROKUSUTAHN_33:
    .byte $cb,$6b,$e9,$ed,$cd,$85,$13,$1f   ; byte
    .byte $3c,$9c,$1e,$1e,$1e,$1e,$0c,$00   ; byte


;
; ..░░▒▒..
; ..░▒▒░..
; ..░░▒▒..
; ..░▒▒░..
; ..░░▒░..
; ..░░▒▒..
; ..░▒▒░..
; ..░░▒▒..
;
SPRITE_TILES_BOSS_ROKUSUTAHN_34:
    .byte $30,$24,$30,$24,$34,$30,$24,$30   ; byte
    .byte $0c,$18,$0c,$18,$08,$0c,$18,$0c   ; byte


;
; ...░█▒░░
; ...░▒█▒░
; ...░█▒░░
; ...░▒▒▒░
; ...░█▒▒░
; ...░█▒░░
; ...░▒▒▒░
; ...░█▒░░
;
SPRITE_TILES_BOSS_ROKUSUTAHN_35:
    .byte $1b,$15,$1b,$11,$19,$1b,$11,$1b   ; byte
    .byte $0c,$0e,$0c,$0e,$0e,$0c,$0e,$0c   ; byte


;
; ..░▒▒░..
; ..░▒▒░..
; ..░▒▒░..
; ..░░░░..
; ..░▒▒░..
; .░▒▒░▒░.
; .▒▒░.░░.
; ░▒░...░.
;
SPRITE_TILES_BOSS_ROKUSUTAHN_36:
    .byte $24,$24,$24,$3c,$24,$4a,$16,$a2   ; byte
    .byte $18,$18,$18,$00,$18,$34,$60,$40   ; byte


;
; ...░█▒░░
; ...░█▒▒░
; ...░█▒░░
; ...░░░░░
; ...░██▒░
; ..░▒█░█▒
; ..▒█░.░█
; .░█░...▒
;
SPRITE_TILES_BOSS_ROKUSUTAHN_37:
    .byte $1b,$19,$1b,$1f,$1d,$2e,$1b,$70   ; byte
    .byte $0c,$0e,$0c,$00,$0e,$1b,$31,$21   ; byte


;============================================================================
; Boss Tiles: Unused Snake
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8026]
;============================================================================

;
; ........
; .......░
; .....░░▒
; ....░▒▒░
; ...░▒▒░░
; ...░▒░░░
; ..░▒█▒▒▒
; .░▒█████
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8026]
;
SPRITE_TILES_BOSS_UNUSED_SNAKE_00:
    .byte $00,$01,$06,$09,$13,$17,$28,$5f   ; byte
    .byte $00,$00,$01,$06,$0c,$08,$1f,$3f   ; byte


;
; .░░▒░█..
; ░▒▒▒░█..
; ▒░░░▒░█.
; ░░░▒██░.
; ░░▒██▒░.
; ▒▒██▒░█.
; ███▒░█..
; ██▒░░█..
;
SPRITE_TILES_BOSS_UNUSED_SNAKE_01:
    .byte $6c,$8c,$76,$ee,$da,$36,$ec,$dc   ; byte
    .byte $14,$74,$8a,$1c,$3c,$fa,$f4,$e4   ; byte


;
; .░▒█████
; ░▒██▒▒▒█
; ░▒█▒░░░▒
; ░▒▒░▒▒▒░
; ░▒░▒███▒
; ░░░▒████
; ░░.░▒██▒
; ....░░░░
;
SPRITE_TILES_BOSS_UNUSED_SNAKE_02:
    .byte $5f,$b1,$ae,$91,$ae,$ef,$d6,$0f   ; byte
    .byte $3f,$7f,$71,$6e,$5f,$1f,$0f,$00   ; byte


;
; ██▒░▒░█.
; ██▒░▒█░.
; ▒▒░▒▒░..
; ░░▒▒░░..
; ▒▒█▒░░..
; █▒▒░░░..
; ▒░░▒░░..
; ░▒▒░░...
;
SPRITE_TILES_BOSS_UNUSED_SNAKE_03:
    .byte $d6,$d6,$24,$cc,$2c,$9c,$6c,$98   ; byte
    .byte $ea,$ec,$d8,$30,$f0,$e0,$90,$60   ; byte


;
; .░▒█████
; ░▒██▒▒▒▒
; ░▒█▒░░█░
; ░▒▒░█░█░
; ░▒░░█░░░
; ░░█░░░░░
; ░..░░░░▒
; ....░▒██
;
SPRITE_TILES_BOSS_UNUSED_SNAKE_04:
    .byte $5f,$b0,$af,$9f,$bf,$ff,$9e,$0b   ; byte
    .byte $3f,$7f,$72,$6a,$48,$20,$01,$07   ; byte


;
; █▒░░▒░█.
; ▒░░░▒█░.
; █░░░▒░..
; ░░░▒░░..
; ░░░▒░░..
; ░▒▒▒░░..
; ▒██▒░░..
; ██▒░░...
;
SPRITE_TILES_BOSS_UNUSED_SNAKE_05:
    .byte $b6,$76,$f4,$ec,$ec,$8c,$6c,$d8   ; byte
    .byte $ca,$8c,$88,$10,$10,$70,$f0,$e0   ; byte


;
; ........
; ........
; .....░░░
; ...░░▒▒▒
; ..░▒▒▒░░
; .░▒███▒▒
; ░▒▒▒▒███
; ░░░░░▒██
;
SPRITE_TILES_BOSS_UNUSED_SNAKE_06:
    .byte $00,$00,$07,$18,$23,$5c,$87,$fb   ; byte
    .byte $00,$00,$00,$07,$1c,$3f,$7f,$07   ; byte


;
; .....░█░
; ░░░░░█░▒
; ▒▒▒▒▒░█▒
; ░░░░▒░█▒
; ░░▒██▒░█
; ▒▒█▒▒░░░
; ██▒░░░░█
; ██▒░░░█▒
;
SPRITE_TILES_BOSS_UNUSED_SNAKE_07:
    .byte $07,$fe,$06,$f6                   ; byte


;
; ░░▒██▒░█
; ▒▒█▒▒░░░
; ██▒░░░░█
; ██▒░░░█▒
; .▒...▒░▒
; .▒.▒▒░▒░
; ░░█░█▒░█
; ..▒.█▒█░
;
    .byte $db,$27,$df,$de,$02,$05,$fb,$0b   ; byte
    .byte $3d,$f8,$e1,$e3                   ; byte


;
; .░▒▒▒░▒█
; .░▒██▒░▒
; ..░▒██▒░
; ..░▒███▒
; ...░▒███
; ....░▒██
; .....░▒▒
; ....░░░░
;
SPRITE_TILES_BOSS_UNUSED_SNAKE_08:
    .byte $45,$5a,$2d,$2e                   ; byte


;
; ...░▒███
; ....░▒██
; .....░▒▒
; ....░░░░
; ▒▒░█░▒█░
; ..█░██▒░
; ▒▒.██░█▒
; ..▒██░░░
;
    .byte $17,$0b,$04,$0f,$3b,$3d,$1e,$1f   ; byte
    .byte $0f,$07,$03,$00                   ; byte


;
; ██▒░▒░█▒
; ▒▒░▒█░█▒
; ░░▒██▒░█
; ▒▒███▒▒▒
; ████▒░░.
; ████▒░░.
; ███▒░░..
; ▒▒░░░...
;
SPRITE_TILES_BOSS_UNUSED_SNAKE_09:
    .byte $d6,$2e,$db,$38                   ; byte


;
; ████▒░░.
; ████▒░░.
; ███▒░░..
; ▒▒░░░...
; ░██▒█▒░█
; ░█▒██▒█░
; ..████▒█
; ░░██████
;
    .byte $f6,$f6,$ec,$38,$eb,$db,$3d,$ff   ; byte
    .byte $f8,$f8,$f0,$c0                   ; byte


;
; .█░█░░▒█
; .█░█░█░▒
; ..░░░█░░
; ..░░░░░█
; .░░░░░░░
; .░█▒░░░░
; .░▒███▒▒
; ..░▒▒███
;
SPRITE_TILES_BOSS_UNUSED_SNAKE_10:
    .byte $7d,$7e,$3f,$3f,$7f,$6f,$5c,$27   ; byte
    .byte $53,$55,$04,$01,$00,$30,$3f,$1f   ; byte


;
; ██▒░█░█▒
; ▒▒░░█░█▒
; ░░░░█▒░█
; ░█░░█▒▒▒
; ░░░▒█▒░.
; ░░▒█▒░░.
; ▒█▒▒░░..
; █▒░░░░..
;
SPRITE_TILES_BOSS_UNUSED_SNAKE_11:
    .byte $de,$3e,$fb,$f8,$ea,$d6,$4c,$bc   ; byte
    .byte $eb,$cb,$0d,$4f,$1c,$38,$f0,$c0   ; byte


;
; ....░░░░
; ..░░▒█▒░
; .░▒▒░▒█▒
; .░░▒░░▒█
; ░▒░░░░░▒
; ░▒▒▒▒░░▒
; ░▒██▒░░▒
; ░▒██▒▒░░
;
SPRITE_TILES_BOSS_UNUSED_SNAKE_12:
    .byte $0f,$35,$4a,$6d,$be,$86,$b6,$b3   ; byte
    .byte $00,$0e,$37,$13,$41,$79,$79,$7c   ; byte


;
; ░░░░....
; ▒▒░░░...
; ░▒░░▒░..
; ▒░░▒░░..
; ▒░░░▒█░.
; █▒░▒░▒░.
; █▒░░▒▒▒.
; ▒▒░░░░░.
;
SPRITE_TILES_BOSS_UNUSED_SNAKE_13:
    .byte $f0,$38,$b4,$6c,$76,$aa,$b0,$3e   ; byte
    .byte $00,$c0,$48,$90,$8c,$d4,$ce,$c0   ; byte


;
; .▒▒███▒░
; .░▒███▒░
; .░▒██▒░░
; .░░▒▒░░▒
; .░░░░░░▒
; .░▒▒▒░░▒
; ..░▒▒░░▒
; ...░░▒░░
;
SPRITE_TILES_BOSS_UNUSED_SNAKE_14:
    .byte $1d,$5d,$5b,$66,$7e,$46,$26,$1b   ; byte
    .byte $7e,$3e,$3c,$19,$01,$39,$19,$04   ; byte


;
; ▒█▒░▒░▒.
; ▒▒░▒█▒▒.
; ▒▒░░▒░░.
; █▒░▒░▒░.
; █░░░▒░░.
; ▒░░▒░░..
; █▒░░░...
; ▒▒░.....
;
SPRITE_TILES_BOSS_UNUSED_SNAKE_15:
    .byte $54,$28,$36,$aa,$f6,$6c,$b8,$20   ; byte
    .byte $ea,$de,$c8,$d4,$88,$90,$c0,$c0   ; byte


;============================================================================
; Effect Tiles: Enemy Death
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8016]
;     BANK6_SPRITEADDRS_START [$PRG6::8028]
;     BANK6_SPRITEADDRS_START [$PRG6::802a]
;     BANK6_SPRITEADDRS_START [$PRG6::802e]
;     BANK6_SPRITEADDRS_START [$PRG6::804c]
;     BANK6_SPRITEADDRS_START [$PRG6::8054]
;============================================================================

;
; ......░▒
; ....░░██
; ...░████
; ...█████
; ...██░░░
; ...░░█░░
; ..███▒██
; ..██▒▒██
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8016]
;     BANK6_SPRITEADDRS_START [$PRG6::8028]
;     BANK6_SPRITEADDRS_START [$PRG6::802a]
;     BANK6_SPRITEADDRS_START [$PRG6::802e]
;     BANK6_SPRITEADDRS_START [$PRG6::804c]
;     BANK6_SPRITEADDRS_START [$PRG6::8054]
;
SPRITE_TILES_EFFECT_ENEMY_DEATH_00:
    .byte $02,$0f,$1f,$1f,$1f,$1f,$3b,$33   ; byte
    .byte $01,$03,$0f,$1f,$18,$04,$3f,$3f   ; byte


;============================================================================
; Enemy Tiles: Charron
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::802c]
;============================================================================

;
; ........
; ........
; ....░░░░
; ..░████▒
; .░██████
; .░░░░███
; .░░░░░██
; ░░░░░░░█
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::802c]
;
SPRITE_TILES_ENEMY_CHARRON_00:
    .byte $00,$00,$0f,$3e,$7f,$7f,$7f,$ff   ; byte
    .byte $00,$00,$00,$1f,$3f,$07,$03,$01   ; byte


;
; ........
; ........
; ........
; ░░......
; ▒▒░.....
; █▒░.....
; ██▒░....
; ██▒░░...
;
SPRITE_TILES_ENEMY_CHARRON_01:
    .byte $00,$00,$00,$c0                   ; byte


;
; ..█.....
; █.█.....
; ██.█....
; ██.██...
; ........
; ........
; ........
; ........
;
    .byte $20,$a0,$d0,$d8,$00,$00,$00,$00   ; byte
    .byte $c0,$c0,$e0,$e0                   ; byte


;
; ░░░░░░░█
; ▒░░░░░██
; ░█████▒▒
; .░▒░░░░░
; ░▒██▒▒▒█
; ▒█░▒████
; ██░█████
; ▒▒░▒████
;
SPRITE_TILES_ENEMY_CHARRON_02:
    .byte $ff,$7f,$fc,$5f,$b1,$6f,$ff,$2f   ; byte
    .byte $01,$83,$7f,$20,$7f,$df,$df,$df   ; byte


;
; █▒░░░░..
; ▒░██▒░..
; ░████▒░.
; █████▒░.
; █████▒░.
; ████▒░░.
; ███▒▒░..
; ▒▒▒▒░...
;
SPRITE_TILES_ENEMY_CHARRON_03:
    .byte $bc,$74,$fa,$fa,$fa,$f6,$e4,$08   ; byte
    .byte $c0,$b8,$7c,$fc,$fc,$f8,$f8,$f0   ; byte


;
; ░▒░▒▒▒▒▒
; .░░░░░░░
; .░░░░░░░
; ░█████▒░
; ░▒███▒▒░
; ░░▒▒▒▒░░
; ░░░░░░░░
; ░▒░▒░░▒░
;
SPRITE_TILES_ENEMY_CHARRON_04:
    .byte $a0,$7f,$7f,$fd,$b9,$c3,$ff,$ad   ; byte
    .byte $5f,$00,$00,$7e,$7e,$3c,$00,$52   ; byte


;
; ▒▒░░░...
; ░░░░░░..
; ░░░░░░░.
; ░░░░░░░.
; ░░░░░░░░
; ░▒░▒░░░░
; ░▒░▒░░░░
; ▒░░▒░░░░
;
SPRITE_TILES_ENEMY_CHARRON_05:
    .byte $38,$fc,$fe,$fe,$ff,$af,$af,$6f   ; byte
    .byte $c0,$00,$00,$00,$00,$50,$50,$90   ; byte


;
; ░▒░▒░░░▒
; .░░░░░░▒
; .░█▒░..░
; ░█▒▒░..░
; █▒░░░...
; ░░......
; ........
; .......░
;
SPRITE_TILES_ENEMY_CHARRON_06:
    .byte $ae,$7e,$69,$c9,$b8,$c0,$00,$01   ; byte
    .byte $51,$01,$30,$70,$c0,$00,$00,$00   ; byte


;
; ░▒░░▒░░░
; ░░▒░▒░░░
; ▒░▒░▒░░.
; ▒░░░▒░░.
; ░▒░▒░░..
; .░░░░...
; ░█▒▒░...
; ███▒░...
;
SPRITE_TILES_ENEMY_CHARRON_07:
    .byte $b7,$d7,$56,$76,$ac,$78,$c8,$e8   ; byte
    .byte $48,$28,$a8,$88,$50,$00,$70,$f0   ; byte


;
; ....░░░░
; ...░▒██▒
; ..░█████
; .░▒░░███
; .░░░░░██
; ..░░░░░█
; ..░░░░░▒
; .░░░░░▒█
;
SPRITE_TILES_ENEMY_CHARRON_08:
    .byte $0f,$16,$3f,$5f,$7f,$3f,$3e,$7d   ; byte
    .byte $00,$0f,$1f,$27,$03,$01,$01,$03   ; byte


;
; ░.......
; ▒░......
; █▒░.....
; █▒░.....
; ██▒░....
; ███▒░...
; ███▒░...
; ███▒░...
;
SPRITE_TILES_ENEMY_CHARRON_09:
    .byte $80,$40,$a0,$a0,$d0,$e8,$e8,$e8   ; byte
    .byte $00,$80,$c0,$c0,$e0,$f0,$f0,$f0   ; byte


;
; ░▒░░░▒██
; ▒▒██████
; ▒▒▒▒▒▒▒▒
; ▒░█████▒
; █░▒██▒▒░
; ██░▒▒░░█
; ██▒▒░▒██
; ▒██░████
;
SPRITE_TILES_ENEMY_CHARRON_10:
    .byte $bb,$3f,$00,$7e,$d9,$e7,$cb,$7f   ; byte
    .byte $47,$ff,$ff,$bf,$be,$d9,$f7,$ef   ; byte


;
; ██▒░░░░.
; ▒▒░██▒░.
; ▒░███▒▒░
; ░█████▒░
; ██████▒░
; █████▒▒░
; █████▒▒░
; ████▒▒░.
;
SPRITE_TILES_ENEMY_CHARRON_11:
    .byte $de,$3a,$79,$fd,$fd,$f9,$f9,$f2   ; byte
    .byte $e0,$dc,$be,$7e,$fe,$fe,$fe,$fc   ; byte


;
; ░██░████
; ░▒▒░▒█▒█
; .░░▒▒▒▒▒
; ░░░░░░░░
; ░░█████▒
; ░░▒███▒▒
; ░▒░▒▒▒░░
; ░▒░░░░▒▒
;
SPRITE_TILES_ENEMY_CHARRON_12:
    .byte $ff,$95,$60,$ff,$fe,$dc,$a3,$bc   ; byte
    .byte $6f,$6f,$1f,$00,$3f,$3f,$5c,$43   ; byte


;
; ██▒▒▒░..
; ▒▒▒▒░░░.
; ▒▒░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░▒░▒▒░░░
; ▒▒▒▒░▒░░
; ░▒░▒░▒░░
;
SPRITE_TILES_ENEMY_CHARRON_13:
    .byte $c4,$0e,$3f,$ff,$ff,$a7,$0b,$ab   ; byte
    .byte $f8,$f0,$c0,$00,$00,$58,$f4,$54   ; byte


;
; ░▒░▒░░▒▒
; ░▒░░▒░░░
; ░▒▒░▒░░░
; .░▒░▒░░.
; ..░░░░░.
; ..░▒░░.░
; .░██▒▒░.
; ░██▒▒░..
;
SPRITE_TILES_ENEMY_CHARRON_14:
    .byte $ac,$b7,$97,$56,$3e,$2d,$72,$e4   ; byte
    .byte $53,$48,$68,$28,$00,$10,$3c,$78   ; byte


;
; ░▒░░░░░░
; ░░░░░░░░
; ░░░░░░░.
; ░░░░░░..
; ░█▒▒░...
; ██▒▒░...
; ░░░░░...
; ........
;
SPRITE_TILES_ENEMY_CHARRON_15:
    .byte $bf,$ff,$fe,$fc,$c8,$c8,$f8,$00   ; byte
    .byte $40,$00,$00,$00,$70,$f0,$00,$00   ; byte


;
; .░..░░░░
; ░▒░░▒██▒
; █░░█████
; ▒░▒░░███
; ░░░░░░██
; ▒░░░░░▒█
; ▒░░░░░░▒
; ▒░░░░░░█
;
SPRITE_TILES_ENEMY_CHARRON_16:
    .byte $4f,$b6,$ff,$5f,$ff,$7d,$7e,$7f   ; byte
    .byte $00,$4f,$9f,$a7,$03,$83,$81,$81   ; byte


;
; ░..░░...
; ▒░.░█░..
; █▒░▒▒░..
; █▒░█░░░.
; ██░░░▒░.
; ██░▒▒█▒░
; █▒░▒██▒░
; █░▒███▒░
;
SPRITE_TILES_ENEMY_CHARRON_17:
    .byte $98,$5c,$a4,$be,$fa,$e5,$ad,$dd   ; byte
    .byte $00,$88,$d8,$d0,$c4,$de,$de,$be   ; byte


;
; ░▒░░░▒██
; ░▒█████▒
; ░░▒▒▒▒▒▒
; ░▒░░░░▒▒
; ░▒▒▒░░░▒
; ░░▒▒▒▒▒▒
; ░░░▒▒▒▒▒
; ░▒▒░▒▒▒▒
;
SPRITE_TILES_ENEMY_CHARRON_18:
    .byte $bb,$be,$c0,$bc,$8e,$c0,$e0,$90   ; byte
    .byte $47,$7f,$3f,$43,$71,$3f,$1f,$6f   ; byte


;
; ▒▒░███▒░
; ▒░░███▒░
; ░░▒███▒░
; ░▒▒██▒▒░
; ▒▒▒██▒░.
; ▒▒▒▒▒░░.
; ▒▒░▒░░..
; ▒▒▒░░░..
;
SPRITE_TILES_ENEMY_CHARRON_19:
    .byte $3d,$7d,$dd,$99,$1a,$06,$2c,$1c   ; byte
    .byte $de,$9e,$3e,$7e,$fc,$f8,$d0,$e0   ; byte


;
; .░▒▒▒▒▒▒
; .░▒▒▒▒▒▒
; .░░▒▒▒▒▒
; ░░░░░░░░
; ░░█████▒
; ░░▒███▒▒
; ░▒░▒▒▒░░
; ░▒░░░░▒▒
;
SPRITE_TILES_ENEMY_CHARRON_20:
    .byte $40,$40,$60,$ff,$fe,$dc,$a3,$bc   ; byte
    .byte $3f,$3f,$1f,$00,$3f,$3f,$5c,$43   ; byte


;
; ▒▒▒▒▒░..
; ▒▒▒▒░░░.
; ▒░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░▒░▒▒░░░
; ▒▒▒▒░▒░░
; ░▒░▒░▒░░
;
SPRITE_TILES_ENEMY_CHARRON_21:
    .byte $04,$0e,$7f,$ff,$ff,$a7,$0b,$ab   ; byte
    .byte $f8,$f0,$80,$00,$00,$58,$f4,$54   ; byte


;============================================================================
; Enemy Tiles: Geributa
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8030]
;============================================================================

;
; ........
; ........
; ........
; ........
; ......██
; .....█▒▒
; .....█▒▒
; .....█▒░
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8030]
;
SPRITE_TILES_ENEMY_GERIBUTA_00:
    .byte $00,$00,$00,$00,$03,$04,$04,$05   ; byte
    .byte $00,$00,$00,$00,$03,$07,$07,$06   ; byte


;
; ........
; ...▒....
; ..▒░░...
; .▒▒░░...
; ░▒░░░░..
; ░░▒░░░..
; ░░░░░░░.
; ░▒▒░░░░.
;
SPRITE_TILES_ENEMY_GERIBUTA_01:
    .byte $00,$00,$18,$18,$bc,$dc,$fe,$9e   ; byte
    .byte $00,$10,$20,$60,$40,$20,$00,$60   ; byte


;
; ...██░░░
; ..█▒▒▒░█
; ..░░▒░░█
; ..░░░░░░
; ..░███░█
; .░███░░░
; .░░░░░░░
; .░░░███░
;
SPRITE_TILES_ENEMY_GERIBUTA_02:
    .byte $1f,$23,$37,$3f,$3f,$7f,$7f,$7f   ; byte
    .byte $18,$3d,$09,$00,$1d,$38,$00,$0e   ; byte


;
; █▒░░░░░.
; ▒▒░░░░░░
; ▒░░░░░░░
; ░░░░░░░░
; ██░░░░░.
; ████░░░.
; ░░░░░░░░
; ░░░░░░░░
;
SPRITE_TILES_ENEMY_GERIBUTA_03:
    .byte $be,$3f,$7f,$ff,$fe,$fe,$ff,$ff   ; byte
    .byte $c0,$c0,$80,$00,$c0,$f0,$00,$00   ; byte


;
; .░░█░░░▒
; .░░█▒▒▒▒
; .░░░░░░░
; .░░██▒░░
; .░█▒▒░░░
; .░█▒▒░██
; .░░▒░█▒▒
; ░░▒░░█▒▒
;
SPRITE_TILES_ENEMY_GERIBUTA_04:
    .byte $7e,$70,$7f,$7b,$67,$67,$6c,$dc   ; byte
    .byte $11,$1f,$00,$1c,$38,$3b,$17,$27   ; byte


;
; ░░░░░░░░
; ░░░░░░░░
; ░▒░░░░░░
; ▒▒░░▒░░.
; ▒░░▒▒░░.
; ░▒░▒░░░.
; ░░░░░░░.
; ░▒▒░░░..
;
SPRITE_TILES_ENEMY_GERIBUTA_05:
    .byte $ff,$ff,$bf,$36,$66,$ae,$fe,$9c   ; byte
    .byte $00,$00,$40,$c8,$98,$50,$00,$60   ; byte


;
; ░█▒▒░░.░
; ░▒▒░░...
; .░░░░...
; ..░▒░...
; ...░░░..
; .▒█▒░░..
; ░▒▒▒▒░..
; ░░░░░░..
;
SPRITE_TILES_ENEMY_GERIBUTA_06:
    .byte $cd,$98,$78,$28,$1c,$2c,$84,$fc   ; byte
    .byte $70,$60,$00,$10,$00,$70,$78,$00   ; byte


;
; ▒▒░░....
; ░░░░....
; ░▒░░....
; ██▒░░...
; ▒▒▒▒░...
; ░░░░░...
; ........
; ........
;
SPRITE_TILES_ENEMY_GERIBUTA_07:
    .byte $30,$f0,$b0,$d8,$08,$f8,$00,$00   ; byte
    .byte $c0,$00,$40,$e0,$f0,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ......██
; .....█▒▒
; .....█▒▒
; .....█▒░
; ...██░░░
;
SPRITE_TILES_ENEMY_GERIBUTA_08:
    .byte $00,$00,$00,$03,$04,$04,$05,$1f   ; byte
    .byte $00,$00,$00,$03,$07,$07,$06,$18   ; byte


;
; ...▒....
; ..▒░░...
; .▒▒░░...
; ░▒░░░░..
; ░░▒░░░..
; ░░░░░░░.
; ░▒▒░░░░.
; █▒░░░░░.
;
SPRITE_TILES_ENEMY_GERIBUTA_09:
    .byte $00,$18,$18,$bc,$dc,$fe,$9e,$be   ; byte
    .byte $10,$20,$60,$40,$20,$00,$60,$c0   ; byte


;
; ..█▒▒▒░█
; ..░░▒░░█
; ..░░░░░░
; ..░███░█
; .░███░░░
; .░░░░░░░
; .░░░████
; ░░██░░░░
;
SPRITE_TILES_ENEMY_GERIBUTA_10:
    .byte $23,$37,$3f,$3f,$7f,$7f,$7f,$ff   ; byte
    .byte $3d,$09,$00,$1d,$38,$00,$0f,$30   ; byte


;
; ▒▒░░░░░░
; ▒░░░░░░░
; ░░░░░░░░
; ██░░░░░.
; ████░░░.
; ░░░░░░░░
; ░░░░░░░░
; ▒▒░░░░░░
;
SPRITE_TILES_ENEMY_GERIBUTA_11:
    .byte $3f,$7f,$ff,$fe,$fe,$ff,$ff,$3f   ; byte
    .byte $c0,$80,$00,$c0,$f0,$00,$00,$c0   ; byte


;
; ░█░░▒▒▒▒
; ░░░░░░░░
; .░░██▒░░
; .░█▒▒░░░
; .░█▒▒░██
; .░░▒░█▒▒
; .░░░░█▒▒
; ░▒▒░░▒▒░
;
SPRITE_TILES_ENEMY_GERIBUTA_12:
    .byte $f0,$ff,$7b,$67,$67,$6c,$7c,$99   ; byte
    .byte $4f,$00,$1c,$38,$3b,$17,$07,$66   ; byte


;
; ░░▒▒░░░░
; ░▒░░░░░░
; ▒▒░░▒░░.
; ▒░░▒▒░░░
; ░▒░▒░░░░
; ░░░░░░░.
; ░░░▒░░░.
; ░░▒░░░..
;
SPRITE_TILES_ENEMY_GERIBUTA_13:
    .byte $cf,$bf,$36,$67,$af,$fe,$ee,$dc   ; byte
    .byte $30,$40,$c8,$98,$50,$00,$10,$20   ; byte


;
; ░▒░░...░
; .░░░░..░
; ..░░░...
; .▒▒▒░░..
; .░░░░░..
; ........
; .......░
; .......░
;
SPRITE_TILES_ENEMY_GERIBUTA_14:
    .byte $b1,$79,$38,$0c,$7c,$00,$01,$01   ; byte
    .byte $40,$00,$00,$70,$00,$00,$00,$00   ; byte


;
; ▒█▒░░...
; ▒▒▒░....
; ░▒░░....
; .░░░░...
; .░░░░...
; ░█▒▒░...
; █▒▒▒▒...
; ░░░░░...
;
SPRITE_TILES_ENEMY_GERIBUTA_15:
    .byte $58,$10,$b0,$78,$78,$c8,$80,$f8   ; byte
    .byte $e0,$e0,$40,$00,$00,$70,$f8,$00   ; byte


;============================================================================
; Enemy Tiles: Sugata
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8032]
;============================================================================

;
; .....░█░
; ......░█
; ......░░
; ......░░
; .....░█░
; ....░███
; .....░██
; ░....░██
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8032]
;
SPRITE_TILES_ENEMY_SUGATA_00:
    .byte $07,$03,$03,$03,$07,$0f,$07,$87   ; byte
    .byte $02,$01,$00,$00,$02,$07,$03,$03   ; byte


;
; .██..░░░
; ░█░██░..
; █░░░░░..
; ░█░░░░..
; ░░█░░...
; ██░█░...
; █░░░█░..
; █▒░░░▒░.
;
SPRITE_TILES_ENEMY_SUGATA_01:
    .byte $67,$fc,$fc,$fc,$f8,$f8,$fc,$ba   ; byte
    .byte $60,$58,$80,$40,$20,$d0,$88,$c4   ; byte


;
; █░...░██
; █▒...░░░
; ██░█...░
; ██░██░.░
; ▒██░██░░
; ░██░███░
; .▒██.███
; .░██░███
;
SPRITE_TILES_ENEMY_SUGATA_02:
    .byte $c7,$87,$f1,$fd,$7f,$ff,$37,$7f   ; byte
    .byte $83,$c0,$d0,$d8,$ec,$6e,$77,$37   ; byte


;
; ▒░░░.░░.
; ░▒▒░░...
; ▒▒▒░▒░..
; ▒▒░██▒..
; ▒░▒███░.
; ▒░░███░.
; ░░░███░.
; ██░███░.
;
SPRITE_TILES_ENEMY_SUGATA_03:
    .byte $76,$98,$14,$38,$5e,$7e,$fe,$fe   ; byte
    .byte $80,$60,$e8,$dc,$bc,$9c,$1c,$dc   ; byte


;
; ..░█░░█░
; ...░░.░░
; ........
; .......░
; .......░
; ......░▒
; .....░▒▒
; ...░░░░░
;
SPRITE_TILES_ENEMY_SUGATA_04:
    .byte $3f,$1b,$00,$01,$01,$02,$04,$1f   ; byte
    .byte $12,$00,$00,$00,$00,$01,$03,$00   ; byte


;
; █████▒░.
; ░███▒░░.
; ░░▒▒░▒░.
; ▒▒░░▒▒░.
; ▒▒▒▒▒▒░.
; ▒▒▒▒▒▒░.
; ▒▒▒▒▒░░.
; ░░░░░░..
;
SPRITE_TILES_ENEMY_SUGATA_05:
    .byte $fa,$f6,$ca,$32,$02,$02,$06,$fc   ; byte
    .byte $fc,$78,$34,$cc,$fc,$fc,$f8,$00   ; byte


;
; ..░███░▒
; .░██░░░█
; .░▒▒░..░
; ..░█▒░..
; ...░█▒░.
; ....██▒░
; ...███░░
; .███░░░░
;
SPRITE_TILES_ENEMY_SUGATA_06:
    .byte $3e,$7f,$49,$34,$1a,$0d,$1f,$7f   ; byte
    .byte $1d,$31,$30,$18,$0c,$0e,$1c,$70   ; byte


;
; ███▒░...
; ██▒░....
; ██▒░....
; ░██▒░░..
; .░███▒░.
; ...███░.
; ..███░..
; .██░░...
;
SPRITE_TILES_ENEMY_SUGATA_07:
    .byte $e8,$d0,$d0,$ec,$7a,$1e,$3c,$78   ; byte
    .byte $f0,$e0,$e0,$70,$3c,$1c,$38,$60   ; byte


;
; █░...░██
; █▒...░░░
; ██░.....
; ██░....░
; ▒██...░█
; ░██░.░██
; .▒█░.░░█
; .░██░█░▒
;
SPRITE_TILES_ENEMY_SUGATA_08:
    .byte $c7,$87,$e0,$e1,$63,$f7,$37,$7e   ; byte
    .byte $83,$c0,$c0,$c0,$e1,$63,$61,$35   ; byte


;
; ▒░░█.░░.
; ░░██░...
; ░██░█░..
; ██░██▒..
; █░▒███░.
; █░░███░.
; ██░███░.
; ███▒██░.
;
SPRITE_TILES_ENEMY_SUGATA_09:
    .byte $76,$f8,$fc,$f8,$de,$fe,$fe,$ee   ; byte
    .byte $90,$30,$68,$dc,$bc,$9c,$dc,$fc   ; byte


;
; ..░█░░█░
; ...░░.░░
; ........
; .......░
; .......░
; ......░▒
; .....░▒▒
; ...░░░░░
;
SPRITE_TILES_ENEMY_SUGATA_10:
    .byte $3f,$1b,$00,$01,$01,$02,$04,$1f   ; byte
    .byte $12,$00,$00,$00,$00,$01,$03,$00   ; byte


;
; ▒████▒░.
; ░███▒░░.
; ░░▒▒░▒░.
; ▒▒░░▒▒░.
; ▒▒▒▒▒▒░.
; ▒▒▒▒▒▒░.
; ▒▒▒▒▒░░.
; ░░░░░░..
;
SPRITE_TILES_ENEMY_SUGATA_11:
    .byte $7a,$f6,$ca,$32,$02,$02,$06,$fc   ; byte
    .byte $fc,$78,$34,$cc,$fc,$fc,$f8,$00   ; byte


;
; ......█▒
; ......█▒
; .......█
; .......▒
; .......▒
; .......░
; .......█
; .....██▒
;
SPRITE_TILES_ENEMY_SUGATA_12:
    .byte $02,$02,$01,$00,$00,$01,$01,$06   ; byte
    .byte $03,$03,$01,$01,$01,$00,$01,$07   ; byte


;
; ░░......
; ▒░......
; █░......
; █░......
; █░......
; █░......
; █▒░.....
; ▒░░.....
;
SPRITE_TILES_ENEMY_SUGATA_13:
    .byte $c0,$40,$c0,$c0,$c0,$c0,$a0,$60   ; byte
    .byte $00,$80,$80,$80,$80,$80,$c0,$80   ; byte


;============================================================================
; Enemy Tiles: Grimlock
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8034]
;============================================================================

;
; ........
; ........
; ........
; ........
; .....░░░
; ...░░███
; ..░████░
; .░████░░
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8034]
;
SPRITE_TILES_ENEMY_GRIMLOCK_00:
    .byte $00,$00,$00,$00,$07,$1f,$3f,$7f   ; byte
    .byte $00,$00,$00,$00,$00,$07,$1e,$3c   ; byte


;
; ........
; ........
; ........
; ........
; ░..░░...
; ▒░░█░...
; ░██░....
; █░█░....
;
SPRITE_TILES_ENEMY_GRIMLOCK_01:
    .byte $00,$00,$00,$00,$98,$78,$f0,$f0   ; byte
    .byte $00,$00,$00,$00,$00,$90,$60,$a0   ; byte


;
; ..░░░███
; ..░░██░█
; .░███░░░
; .██.█.█░
; ..█.░█░░
; ...░█░░.
; ....░░..
; ........
;
SPRITE_TILES_ENEMY_GRIMLOCK_02:
    .byte $3f,$3f,$7f,$6b,$2f,$1e,$0c,$00   ; byte
    .byte $07,$0d,$38,$6a,$24,$08,$00,$00   ; byte


;
; ██░░....
; ░░▒▒░...
; ░▒██▒░..
; ░███▒░..
; ░▒███▒░.
; ░░███▒░.
; ░▒░███░.
; ░▒▒░░█▒░
;
SPRITE_TILES_ENEMY_GRIMLOCK_03:
    .byte $f0,$c8,$b4,$f4,$ba,$fa,$be,$9d   ; byte
    .byte $c0,$30,$78,$78,$7c,$3c,$5c,$66   ; byte


;
; ........
; ........
; ........
; .......░
; .......█
; ......░▒
; .....░▒▒
; ....░░░░
;
SPRITE_TILES_ENEMY_GRIMLOCK_04:
    .byte $00,$00,$00,$01,$01,$02,$04,$0f   ; byte
    .byte $00,$00,$00,$00,$01,$01,$03,$00   ; byte


;
; ░▒▒░█░█░
; ░▒▒░▒██░
; ░▒▒▒░██░
; █▒▒▒░█▒░
; ███▒░█▒░
; ▒▒▒░███░
; ▒▒▒▒░██░
; ░░░░░░░.
;
SPRITE_TILES_ENEMY_GRIMLOCK_05:
    .byte $9f,$97,$8f,$8d,$ed,$1f,$0f,$fe   ; byte
    .byte $6a,$6e,$76,$f6,$f6,$ee,$f6,$00   ; byte


;
; ..░███░▒
; .░██░░░█
; .░▒░░.░█
; ..░▒░░.░
; ...░▒░░.
; ...░██░░
; .░░███░░
; ░███░░░░
;
SPRITE_TILES_ENEMY_GRIMLOCK_06:
    .byte $3e,$7f,$5b,$2d,$16,$1f,$7f,$ff   ; byte
    .byte $1d,$31,$21,$10,$08,$0c,$1c,$70   ; byte


;
; ███▒░...
; ██▒░....
; ██▒░....
; ░██▒░░..
; .░██▒▒░.
; ..░██▒░.
; .░██▒░..
; .██░░...
;
SPRITE_TILES_ENEMY_GRIMLOCK_07:
    .byte $e8,$d0,$d0,$ec,$72,$3a,$74,$78   ; byte
    .byte $f0,$e0,$e0,$70,$3c,$1c,$38,$60   ; byte


;
; .....░██
; .....░██
; ......░█
; ......░█
; ......░█
; .......░
; .....░░█
; ....░███
;
SPRITE_TILES_ENEMY_GRIMLOCK_08:
    .byte $07,$07,$03,$03,$03,$01,$07,$0f   ; byte
    .byte $03,$03,$01,$01,$01,$00,$01,$07   ; byte


;
; ▒░░░....
; ▒▒░.....
; █▒░.....
; █░......
; █░......
; █░......
; ██░.....
; █░░.....
;
SPRITE_TILES_ENEMY_GRIMLOCK_09:
    .byte $70,$20,$a0,$c0,$c0,$c0,$e0,$e0   ; byte
    .byte $80,$c0,$c0,$80,$80,$80,$c0,$80   ; byte


;
; ..░███▒▒
; .░███▒░░
; .░█▒░░..
; .░██▒░..
; ..░██▒░.
; ...░██░░
; ..░████░
; .░█▒░░░░
;
SPRITE_TILES_ENEMY_GRIMLOCK_10:
    .byte $3c,$7b,$6c,$74,$3a,$1f,$3f,$6f   ; byte
    .byte $1f,$3c,$30,$38,$1c,$0c,$1e,$30   ; byte


;
; ░░▒░░...
; ░▒░░....
; ░░▒░░...
; .░█▒░...
; ..░██░..
; ..░█░░..
; .░█░....
; ..░.....
;
SPRITE_TILES_ENEMY_GRIMLOCK_11:
    .byte $d8,$b0,$d8,$68,$3c,$3c,$70,$20   ; byte
    .byte $20,$40,$20,$30,$18,$10,$20,$00   ; byte


;
; ..░░░███
; ..░░██░█
; .░███░░░
; .██.█.░▒
; ..█..░█░
; ....██░▒
; ...██░▒░
; ......░░
;
SPRITE_TILES_ENEMY_GRIMLOCK_12:
    .byte $3f,$3f,$7f,$6a,$27,$0e,$1d,$03   ; byte
    .byte $07,$0d,$38,$69,$22,$0d,$1a,$00   ; byte


;
; ██░░....
; ░░░░░...
; ░▒░░░...
; ▒░▒▒░░..
; ░▒█▒▒░..
; ░███▒░..
; ▒███░░..
; ███▒░░..
;
SPRITE_TILES_ENEMY_GRIMLOCK_13:
    .byte $f0,$f8,$b8,$4c,$a4,$f4,$7c,$ec   ; byte
    .byte $c0,$00,$40,$b0,$78,$78,$f0,$f0   ; byte


;
; .░░...░█
; ░██░░░▒█
; ░███████
; ░█▒▒███▒
; .░░░░░░░
; ...░█░▒▒
; ..░███░▒
; .░███░█░
;
SPRITE_TILES_ENEMY_GRIMLOCK_14:
    .byte $63,$fd,$ff,$ce,$7f,$1c,$3e,$7f   ; byte
    .byte $01,$63,$7f,$7f,$00,$0b,$1d,$3a   ; byte


;
; ███░▒░..
; ██░▒▒░..
; █░░▒▒░..
; ░██░░░..
; ████░░..
; ░░░██░..
; ▒▒▒░▒░..
; ░▒▒▒░░..
;
SPRITE_TILES_ENEMY_GRIMLOCK_15:
    .byte $f4,$e4,$e4,$fc,$fc,$fc,$14,$8c   ; byte
    .byte $e8,$d8,$98,$60,$f0,$18,$e8,$70   ; byte


;
; .░████░░
; .░░█████
; ..░░░░░█
; .......░
; ........
; ........
; ........
; ........
;
SPRITE_TILES_ENEMY_GRIMLOCK_16:
    .byte $7f,$7f,$3f,$01,$00,$00,$00,$00   ; byte
    .byte $3c,$1f,$01,$00,$00,$00,$00,$00   ; byte


;
; .░░▒▒░..
; ░..░░...
; █░░.....
; ██░█░...
; ░█░░█░..
; .░░.░░..
; ........
; ........
;
SPRITE_TILES_ENEMY_GRIMLOCK_17:
    .byte $64,$98,$e0,$f8,$fc,$6c,$00,$00   ; byte
    .byte $18,$00,$80,$d0,$48,$00,$00,$00   ; byte


;============================================================================
; Enemy Tiles: Giant Bees
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8036]
;============================================================================

;
; ...█▒...
; ....█..█
; ...░░.▒█
; .█░▒░░█.
; █▒░█▒░░░
; ▒░░▒▒░▒░
; ░█▒░▒░▒░
; .█░░░░░░
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8036]
;
SPRITE_TILES_ENEMY_GIANT_BEES_00:
    .byte $10,$09,$19,$6e,$b7,$65,$d5,$7f   ; byte
    .byte $18,$09,$03,$52,$d8,$9a,$6a,$40   ; byte


;
; ........
; █.......
; ........
; ........
; ░.......
; ░░......
; ▒░......
; ░.......
;
SPRITE_TILES_ENEMY_GIANT_BEES_01:
    .byte $00,$80,$00,$00,$80,$c0,$40,$80   ; byte
    .byte $00,$80,$00,$00,$00,$00,$80,$00   ; byte


;
; ...▒.█..
; ........
; ........
; ........
; ........
; .......█
; ......▒░
; .....█▒░
;
SPRITE_TILES_ENEMY_GIANT_BEES_02:
    .byte $04,$00,$00,$00,$00,$01,$01,$05   ; byte
    .byte $14,$00,$00,$00,$00,$01,$02,$06   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ░░......
; ▒░░███..
; █▒░░░░..
;
SPRITE_TILES_ENEMY_GIANT_BEES_03:
    .byte $00,$00,$00,$00,$00,$c0,$7c,$bc   ; byte
    .byte $00,$00,$00,$00,$00,$00,$9c,$c0   ; byte


;
; .....▒░░
; .....░▒▒
; .....░█░
; ......█.
; ........
; ........
; ........
; ........
;
SPRITE_TILES_ENEMY_GIANT_BEES_04:
    .byte $03,$04,$07,$02,$00,$00,$00,$00   ; byte
    .byte $04,$03,$02,$02,$00,$00,$00,$00   ; byte


;
; ▒▒░▒░▒░.
; ░▒░▒░▒░.
; ░░░░░░..
; ░.█.....
; ........
; ........
; ........
; ........
;
SPRITE_TILES_ENEMY_GIANT_BEES_05:
    .byte $2a,$aa,$fc,$a0,$00,$00,$00,$00   ; byte
    .byte $d4,$54,$00,$20,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ..█░░...
; .█░▒░░██
; █▒░█▒░░░
; ▒░░▒▒░▒░
; ░█▒░▒░▒░
; .█░░░░░░
;
SPRITE_TILES_ENEMY_GIANT_BEES_06:
    .byte $00,$00,$38,$6f,$b7,$65,$d5,$7f   ; byte
    .byte $00,$00,$20,$53,$d8,$9a,$6a,$40   ; byte


;
; ........
; ........
; ........
; █.......
; ░.......
; ░░......
; ▒░......
; ░.......
;
SPRITE_TILES_ENEMY_GIANT_BEES_07:
    .byte $00,$00,$00,$80,$80,$c0,$40,$80   ; byte
    .byte $00,$00,$00,$80,$00,$00,$80,$00   ; byte


;
; ...▒.█..
; ........
; ........
; ........
; ........
; ........
; ......▒░
; .....█▒░
;
SPRITE_TILES_ENEMY_GIANT_BEES_08:
    .byte $04,$00,$00,$00,$00,$00,$01,$05   ; byte
    .byte $14,$00,$00,$00,$00,$00,$02,$06   ; byte


;
; ........
; ........
; ........
; ▒▒......
; .█..██..
; ░░.▒█...
; ▒░░█....
; █▒░░░░..
;
SPRITE_TILES_ENEMY_GIANT_BEES_09:
    .byte $00,$00,$00,$00,$4c,$c8,$70,$bc   ; byte
    .byte $00,$00,$00,$c0,$4c,$18,$90,$c0   ; byte


;
; .....▒░░
; .....░▒▒
; .....░█░
; ......█.
; ........
; ........
; ........
; ........
;
SPRITE_TILES_ENEMY_GIANT_BEES_10:
    .byte $03,$04,$07,$02,$00,$00,$00,$00   ; byte
    .byte $04,$03,$02,$02,$00,$00,$00,$00   ; byte


;
; ▒▒░▒░▒░.
; ░▒░▒░▒░.
; ░░░░░░..
; ░.█.....
; ........
; ........
; ........
; ........
;
SPRITE_TILES_ENEMY_GIANT_BEES_11:
    .byte $2a,$aa,$fc,$a0,$00,$00,$00,$00   ; byte
    .byte $d4,$54,$00,$20,$00,$00,$00,$00   ; byte


;============================================================================
; Enemy Tiles: Myconid
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8038]
;============================================================================

;
; ......▒▒
; ...▒▒██▒
; .▒▒██▒▒▒
; ▒▒██▒▒▒▒
; ▒▒██▒██▒
; .▒▒▒█▒▒▒
; ..░░█▒▒▒
; ...░░░░▒
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8038]
;
SPRITE_TILES_ENEMY_MYCONID_00:
    .byte $00,$06,$18,$30,$36,$08,$38,$1e   ; byte
    .byte $03,$1f,$7f,$ff,$ff,$7f,$0f,$01   ; byte


;
; ▒░..░...
; ▒▒░░....
; ▒▒▒░░.░.
; ░▒▒▒░░..
; ▒░▒▒▒░░.
; ▒▒░▒░░░░
; ▒▒░▒░░░░
; ▒▒░░░░░.
;
SPRITE_TILES_ENEMY_MYCONID_01:
    .byte $48,$30,$1a,$8c,$46,$2f,$2f,$3e   ; byte
    .byte $80,$c0,$e0,$70,$b8,$d0,$d0,$c0   ; byte


;
; ...██░░░
; ...▒██░░
; ..▒▒▒░░▒
; ..█.▒▒▒░
; .....░▒░
; ...█.▒░▒
; ...▒▒▒░▒
; ....░░▒░
;
SPRITE_TILES_ENEMY_MYCONID_02:
    .byte $1f,$0f,$06,$21,$05,$12,$02,$0d   ; byte
    .byte $18,$1c,$39,$2e,$02,$15,$1d,$02   ; byte


;
; ░░░░░.░.
; ░░░░.░..
; ░░░░░.░.
; ▒░░░.░..
; ░░░░░░.░
; ░░░░░.░.
; ░█▒░░░.░
; ██▒▒░░░.
;
SPRITE_TILES_ENEMY_MYCONID_03:
    .byte $fa,$f4,$fa,$74,$fd,$fa,$dd,$ce   ; byte
    .byte $00,$00,$00,$80,$00,$00,$60,$f0   ; byte


;
; .....░░█
; ...░░▒░█
; ..▒█▒▒▒▒
; .▒█░▒░░░
; ░▒▒░░░░▒
; ░▒░.░▒▒░
; .░▒.░▒░░
; ..░..░░▒
;
SPRITE_TILES_ENEMY_MYCONID_04:
    .byte $07,$1b,$10,$37,$9e,$a9,$4b,$26   ; byte
    .byte $01,$05,$3f,$68,$61,$46,$24,$01   ; byte


;
; ██▒▒░░..
; ▒▒▒░░░░.
; ▒░░░░░.░
; ░░░░░░░░
; ▒░░░░░░.
; ░░▒▒▒░.░
; ░███▒░░.
; ███▒▒░░░
;
SPRITE_TILES_ENEMY_MYCONID_05:
    .byte $cc,$1e,$7d,$ff,$7e,$c5,$f6,$e7   ; byte
    .byte $f0,$e0,$80,$00,$80,$38,$78,$f8   ; byte


;
; .....░▒█
; ....░█▒█
; ...░█▒▒░
; ..░▒░░░░
; ..█▒▒░░░
; ..░█░░..
; ...▒▒░░.
; .▒▒▒▒░..
;
SPRITE_TILES_ENEMY_MYCONID_06:
    .byte $05,$0d,$19,$2f,$27,$3c,$06,$04   ; byte
    .byte $03,$07,$0e,$10,$38,$10,$18,$78   ; byte


;
; █▒▒▒░░░.
; ▒▒░░░░░.
; ░░░░░...
; .░░░░...
; .░▒░░░..
; ..░▒▒▒░.
; ...▒▒░░.
; ..▒░░...
;
SPRITE_TILES_ENEMY_MYCONID_07:
    .byte $8e,$3e,$f8,$78,$5c,$22,$06,$18   ; byte
    .byte $f0,$c0,$00,$00,$20,$1c,$18,$20   ; byte


;
; ........
; .......▒
; ....▒▒██
; ..▒▒██▒▒
; .▒▒██▒▒▒
; .▒▒██▒██
; ..▒▒▒█▒▒
; ...░░█▒▒
;
SPRITE_TILES_ENEMY_MYCONID_08:
    .byte $00,$00,$03,$0c,$18,$1b,$04,$1c   ; byte
    .byte $00,$01,$0f,$3f,$7f,$7f,$3f,$07   ; byte


;
; ........
; ▒▒░.....
; ▒▒▒░░...
; ▒▒▒▒░░..
; ▒░▒▒▒░░.
; ▒▒░▒▒▒░░
; ▒▒▒░▒░░░
; ▒▒▒░▒░░░
;
SPRITE_TILES_ENEMY_MYCONID_09:
    .byte $00,$20,$18,$0c,$46,$23,$17,$17   ; byte
    .byte $00,$c0,$e0,$f0,$b8,$dc,$e8,$e8   ; byte


;
; ....░░░░
; ....██░░
; ...▒▒██░
; ...█▒▒░░
; .....▒▒▒
; ......░▒
; ......▒░
; ....▒▒▒░
;
SPRITE_TILES_ENEMY_MYCONID_10:
    .byte $0f,$0f,$07,$13,$00,$02,$01,$01   ; byte
    .byte $00,$0c,$1e,$1c,$07,$01,$02,$0e   ; byte


;
; ▒▒▒░░░░░
; ░░░░░░..
; ░░░░░..░
; ▒░░░░░..
; ░▒░░░...
; ░░░░░░░.
; ▒░░░░░..
; ▒░█▒░░░.
;
SPRITE_TILES_ENEMY_MYCONID_11:
    .byte $1f,$fc,$f9,$7c,$b8,$fe,$7c,$6e   ; byte
    .byte $e0,$00,$00,$80,$40,$00,$80,$b0   ; byte


;
; .....░▒█
; ....░▒█▒
; ....░█▒▒
; ....░█▒░
; .....░▒▒
; ......░░
; ........
; ......▒▒
;
SPRITE_TILES_ENEMY_MYCONID_12:
    .byte $05,$0a,$0c,$0d,$04,$03,$00,$00   ; byte
    .byte $03,$07,$07,$06,$03,$00,$00,$03   ; byte


;
; █▒▒▒░░░.
; ▒▒░░░░..
; ░░░░....
; ░░......
; ░░░░....
; ▒░░.░...
; ▒░░░░...
; ▒░░░....
;
SPRITE_TILES_ENEMY_MYCONID_13:
    .byte $8e,$3c,$f0,$c0,$f0,$68,$78,$70   ; byte
    .byte $f0,$c0,$00,$00,$00,$80,$80,$80   ; byte


;============================================================================
; Enemy Tiles: Naga
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::803a]
;============================================================================

;
; ........
; ........
; .....██▒
; ...▒░█░█
; .███▒░░░
; ▒▒▒▒▒███
; ....▒▒▒▒
; .....▒░░
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::803a]
;
SPRITE_TILES_ENEMY_NAGA_00:
    .byte $00,$00,$06,$0f,$77,$07,$00,$03   ; byte
    .byte $00,$00,$07,$15,$78,$ff,$0f,$04   ; byte


;
; ...███..
; .██░░...
; ░░░▒▒...
; ░▒███▒▒▒
; ░░░░░░..
; ░▒██░...
; ▒░░░█▒..
; ░▒▒░░...
;
SPRITE_TILES_ENEMY_NAGA_01:
    .byte $1c,$78,$e0,$b8,$fc,$b8,$78,$98   ; byte
    .byte $1c,$60,$18,$7f,$00,$70,$8c,$60   ; byte


;
; .......░
; ......░█
; .....░█▒
; ...▒▒▒░░
; ....░░░.
; ........
; ....▒▒▒▒
; ..▒▒▒███
;
SPRITE_TILES_ENEMY_NAGA_02:
    .byte $01,$03,$06,$03,$0e,$00,$00,$07   ; byte
    .byte $00,$01,$03,$1c,$00,$00,$0f,$3f   ; byte


;
; ░░░▒▒░..
; ░░░░░░..
; ░░░▒░░..
; ..▒█▒░..
; .░▒█▒░..
; ▒▒▒█▒░..
; ▒██▒░░..
; █▒▒▒░...
;
SPRITE_TILES_ENEMY_NAGA_03:
    .byte $e4,$fc,$ec,$14,$54,$14,$6c,$88   ; byte
    .byte $18,$00,$10,$38,$38,$f8,$f0,$f0   ; byte


;
; .▒▒██▒▒▒
; ▒██▒▒▒░░
; ▒█▒▒░░░.
; ▒█▒░░...
; ▒█▒░....
; ░█▒▒░░░░
; ░▒█▒▒▒▒▒
; .░▒█▒▒██
;
SPRITE_TILES_ENEMY_NAGA_04:
    .byte $18,$63,$4e,$58,$50,$cf,$a0,$53   ; byte
    .byte $7f,$fc,$f0,$e0,$e0,$70,$7f,$3f   ; byte


;
; ▒▒░░░...
; ░░░░....
; ........
; ........
; ........
; ░░░.....
; ▒▒▒░░...
; ███▒▒░..
;
SPRITE_TILES_ENEMY_NAGA_05:
    .byte $38,$f0,$00,$00,$00,$e0,$18,$e4   ; byte
    .byte $c0,$00,$00,$00,$00,$00,$e0,$f8   ; byte


;
; ..░░▒▒▒▒
; ....░░░░
; ........
; .░░░░░..
; ░▒████▒░
; .░░░▒▒██
; ....░░▒▒
; ......░░
;
SPRITE_TILES_ENEMY_NAGA_06:
    .byte $30,$0f,$00,$7c,$bd,$73,$0c,$03   ; byte
    .byte $0f,$00,$00,$00,$7e,$0f,$03,$00   ; byte


;
; ▒▒▒█▒▒░.
; ░░▒▒█▒░.
; ..░▒█▒░.
; ..░▒█▒░.
; ░░▒▒█▒░.
; ████▒▒░.
; ███▒▒░..
; ░░░░░...
;
SPRITE_TILES_ENEMY_NAGA_07:
    .byte $12,$ca,$2a,$2a,$ca,$f2,$e4,$f8   ; byte
    .byte $fc,$3c,$1c,$1c,$3c,$fc,$f8,$00   ; byte


;
; ........
; ........
; ........
; ........
; .....██▒
; ...▒▒█░█
; ..▒█▒░░░
; ▒███████
;
SPRITE_TILES_ENEMY_NAGA_08:
    .byte $00,$00,$00,$00,$06,$07,$17,$7f   ; byte
    .byte $00,$00,$00,$00,$07,$1d,$38,$ff   ; byte


;
; ........
; ........
; ........
; .████▒..
; ▒░░░....
; ░▒███▒▒.
; ░░░░....
; ░▒████..
;
SPRITE_TILES_ENEMY_NAGA_09:
    .byte $00,$00,$00,$78,$70,$b8,$f0,$bc   ; byte
    .byte $00,$00,$00,$7c,$80,$7e,$00,$7c   ; byte


;
; .░░░░░▒░
; .▒███▒.░
; ..▒▒▒▒▒░
; .....░░░
; ........
; ....▒▒▒▒
; ...▒▒███
; ..▒▒█▒▒▒
;
SPRITE_TILES_ENEMY_NAGA_10:
    .byte $7d,$39,$01,$07,$00,$00,$07,$08   ; byte
    .byte $02,$7c,$3e,$00,$00,$0f,$1f,$3f   ; byte


;
; ░▒▒░░░..
; ░░░▒▒▒░.
; ░░░░▒▒░.
; ░░░░▒█▒░
; .▒▒██▒▒░
; ▒███▒▒░░
; █▒▒▒▒░░.
; ▒▒░░░░..
;
SPRITE_TILES_ENEMY_NAGA_11:
    .byte $9c,$e2,$f2,$f5,$19,$73,$86,$3c   ; byte
    .byte $60,$1c,$0c,$0e,$7e,$fc,$f8,$c0   ; byte


;
; ..▒█▒▒░░
; ..▒█▒▒░░
; ..▒▒█▒▒▒
; ...▒▒███
; ....▒▒▒▒
; .....░░░
; ........
; ........
;
SPRITE_TILES_ENEMY_NAGA_12:
    .byte $13,$13,$08,$07,$00,$07,$00,$00   ; byte
    .byte $3c,$3c,$3f,$1f,$0f,$00,$00,$00   ; byte


;
; ░░░░....
; ░░░░░...
; ▒▒▒▒░░..
; ▒██▒▒░░.
; ▒▒▒█▒▒░░
; ░░░▒█▒░░
; ...░▒▒░░
; ..▒▒█▒░░
;
SPRITE_TILES_ENEMY_NAGA_13:
    .byte $f0,$f8,$0c,$66,$13,$eb,$13,$0b   ; byte
    .byte $00,$00,$f0,$f8,$fc,$1c,$0c,$3c   ; byte


;
; ....░▒▒▒
; ...▒████
; ..▒██▒▒▒
; ..▒█▒░░░
; ..▒█▒░..
; ...█▒░..
; ....█▒..
; .....█▒.
;
SPRITE_TILES_ENEMY_NAGA_14:
    .byte $08,$0f,$18,$17,$14,$14,$08,$04   ; byte
    .byte $07,$1f,$3f,$38,$38,$18,$0c,$06   ; byte


;
; ▒▒▒█▒░░.
; ███▒▒░░.
; ▒▒▒▒░░..
; ░░░░....
; ........
; ........
; ........
; ........
;
SPRITE_TILES_ENEMY_NAGA_15:
    .byte $16,$e6,$0c,$f0,$00,$00,$00,$00   ; byte
    .byte $f8,$f8,$f0,$00,$00,$00,$00,$00   ; byte


;============================================================================
; Enemy Tiles: Unused Skeleton Knight
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::803c]
;============================================================================

;
; ........
; ........
; ........
; .█...▒██
; .▒█░▒██▒
; .░▒▒▒▒█▒
; ..░▒░▒█▒
; ...░░░░░
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::803c]
;
SPRITE_TILES_ENEMY_UNUSED_SKELETON_KNIGHT_00:
    .byte $00,$00,$00,$43,$36,$42,$2a,$1f   ; byte
    .byte $00,$00,$00,$47,$6f,$3f,$17,$00   ; byte


;
; ........
; ........
; ........
; ▒▒░....█
; ▒▒░░..█░
; ░▒░░▒▒▒░
; ░▒░░░▒░.
; ░░▒▒░░..
;
SPRITE_TILES_ENEMY_UNUSED_SKELETON_KNIGHT_01:
    .byte $00,$00,$00,$21,$33,$b1,$ba,$cc   ; byte
    .byte $00,$00,$00,$c1,$c2,$4e,$44,$30   ; byte


;
; ...░█░░█
; .░▒▒████
; ░▒███░░█
; ▒████░░▒
; ▒█░░░░░░
; ▒█░░░░░░
; ▒████░░█
; ▒█▒██░░█
;
SPRITE_TILES_ENEMY_UNUSED_SKELETON_KNIGHT_02:
    .byte $1f,$4f,$bf,$7e,$7f,$7f,$7f,$5f   ; byte
    .byte $09,$3f,$79,$f9,$c0,$c0,$f9,$f9   ; byte


;
; ░░░▒░░..
; ██░░█▒░.
; █▒▒░░█▒░
; ▒▒▒▒░░▒░
; ░░▒▒░░▒░
; ░░▒▒▒░░░
; █▒▒▒░░░░
; ▒▒█▒░░▒░
;
SPRITE_TILES_ENEMY_UNUSED_SKELETON_KNIGHT_03:
    .byte $ec,$fa,$9d,$0d,$cd,$c7,$8f,$2d   ; byte
    .byte $10,$cc,$e6,$f2,$32,$38,$f0,$f2   ; byte


;
; ▒█▒▒█░░█
; ░▒█▒█░░▒
; .▒▒███▒▒
; .░▒███▒▒
; ..░▒▒▒▒▒
; ..░░░░░░
; .░██▒░░▒
; .▒█▒▒░░▒
;
SPRITE_TILES_ENEMY_UNUSED_SKELETON_KNIGHT_04:
    .byte $4f,$ae,$1c,$5c,$20,$3f,$76,$26   ; byte
    .byte $f9,$79,$7f,$3f,$1f,$00,$39,$79   ; byte


;
; ▒▒█▒▒░▒░
; ▒██▒░░░░
; ██▒▒░░░.
; ▒▒▒░░░..
; ░░░░░░..
; ▒█▒▒░░..
; ██▒▒░░..
; █▒▒░░...
;
SPRITE_TILES_ENEMY_UNUSED_SKELETON_KNIGHT_05:
    .byte $25,$6f,$ce,$1c,$fc,$4c,$cc,$98   ; byte
    .byte $fa,$f0,$f0,$e0,$00,$f0,$f0,$e0   ; byte


;
; .▒█▒░░░▒
; .░█▒▒░░▒
; ..░█▒▒░░
; ...░▒▒░░
; ....░▒▒░
; ...░█▒▒░
; ..░█▒▒░░
; ..░░░░░█
;
SPRITE_TILES_ENEMY_UNUSED_SKELETON_KNIGHT_06:
    .byte $2e,$66,$33,$13,$09,$19,$33,$3f   ; byte
    .byte $71,$39,$1c,$0c,$06,$0e,$1c,$01   ; byte


;
; █▒░░....
; ▒▒▒░....
; █▒▒░....
; ░▒▒▒░...
; ░█▒▒░...
; ▒█▒▒░...
; █▒▒░....
; ▒▒░.....
;
SPRITE_TILES_ENEMY_UNUSED_SKELETON_KNIGHT_07:
    .byte $b0,$10,$90,$88,$c8,$48,$90,$20   ; byte
    .byte $c0,$e0,$e0,$70,$70,$f0,$e0,$c0   ; byte


;
; .█...▒██
; .▒█░▒██▒
; .░▒▒▒▒█▒
; ..░▒░░█▒
; ...░░░░░
; ....░█░░
; ....▒░█▒
; ....▒░█▒
;
SPRITE_TILES_ENEMY_UNUSED_SKELETON_KNIGHT_08:
    .byte $43,$36,$42,$2e,$1f,$0f,$06,$06   ; byte
    .byte $47,$6f,$3f,$13,$00,$04,$0b,$0b   ; byte


;
; ▒▒░....█
; ▒▒░░..█░
; ░▒░░▒▒▒░
; ░░▒▒░▒░.
; ░░░▒░░..
; █░█░░░..
; ░░█░░...
; ░░█░░...
;
SPRITE_TILES_ENEMY_UNUSED_SKELETON_KNIGHT_09:
    .byte $21,$33,$b1,$ca,$ec,$fc,$f8,$f8   ; byte
    .byte $c1,$c2,$4e,$34,$10,$a0,$20,$20   ; byte


;
; ░██▒▒░░.
; ░██▒░░..
; .░██▒░..
; ..░█▒░..
; ..███▒░.
; .███▒▒░.
; ██▒▒░░..
; ░░░░....
;
SPRITE_TILES_ENEMY_UNUSED_SKELETON_KNIGHT_10:
    .byte $e6,$ec,$74,$34,$3a,$72,$cc,$f0   ; byte
    .byte $78,$70,$38,$18,$3c,$7c,$f0,$00   ; byte


;
; ▒█▒░░...
; ░█▒▒░...
; .░█▒▒░..
; ..░█▒▒░.
; ..░█▒▒░.
; .░█▒▒░░.
; ░█▒▒░░..
; ░░░░....
;
SPRITE_TILES_ENEMY_UNUSED_SKELETON_KNIGHT_11:
    .byte $58,$c8,$64,$32,$32,$66,$cc,$f0   ; byte
    .byte $e0,$70,$38,$1c,$1c,$38,$70,$00   ; byte


;
; ........
; ........
; ...▒....
; ...▒▒...
; ...░█░..
; ....▒▒..
; ....░█░.
; .....█▒.
;
SPRITE_TILES_ENEMY_UNUSED_SKELETON_KNIGHT_12:
    .byte $00,$00,$00,$00,$1c,$00,$0e,$04   ; byte
    .byte $00,$00,$10,$18,$08,$0c,$04,$06   ; byte


;
; .....░█░
; ......█▒
; ......░█
; .......█
; .......░
; ........
; ........
; ........
;
SPRITE_TILES_ENEMY_UNUSED_SKELETON_KNIGHT_13:
    .byte $07,$02,$03,$01,$01,$00,$00,$00   ; byte
    .byte $02,$03,$01,$01,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; .......░
; ▒▒██████
; ...░░░▒░
; ........
;
SPRITE_TILES_ENEMY_UNUSED_SKELETON_KNIGHT_14:
    .byte $00,$00,$00,$00,$01,$3f,$1d,$00   ; byte
    .byte $00,$00,$00,$00,$00,$ff,$02,$00   ; byte


;
; ........
; ........
; ........
; .....▒░.
; ░░░░██▒░
; ▒█▒░█░▒░
; ░░░░░▒▒░
; .....░░░
;
SPRITE_TILES_ENEMY_UNUSED_SKELETON_KNIGHT_15:
    .byte $00,$00,$00,$02,$fd,$5d,$f9,$07   ; byte
    .byte $00,$00,$00,$04,$0e,$ea,$06,$00   ; byte


;============================================================================
; Enemy Tiles: Giant Strider
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::803e]
;============================================================================

;
; ........
; ........
; .....░░░
; ....░▒██
; ...░██░░
; ..░██░██
; ..░░░█░█
; .░██░███
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::803e]
;
SPRITE_TILES_ENEMY_GIANT_STRIDER_00:
    .byte $00,$00,$07,$0b,$1f,$3f,$3f,$7f   ; byte
    .byte $00,$00,$00,$07,$0c,$1b,$05,$37   ; byte


;
; ........
; ........
; ░░......
; █▒░.....
; ░█▒░....
; ░░█▒░...
; █░░░░...
; █░▒░░...
;
SPRITE_TILES_ENEMY_GIANT_STRIDER_01:
    .byte $00,$00,$c0,$a0,$d0,$e8,$f8,$d8   ; byte
    .byte $00,$00,$00,$c0,$60,$30,$80,$a0   ; byte


;
; ░█░██░██
; ██████░░
; ███░░░░░
; █......█
; █.██████
; ..░░██▒▒
; ...░░░░░
; .......░
;
SPRITE_TILES_ENEMY_GIANT_STRIDER_02:
    .byte $ff,$ff,$ff,$81,$bf,$3c,$1f,$01   ; byte
    .byte $5b,$fc,$e0,$81,$bf,$0f,$00,$00   ; byte


;
; ░░█▒░...
; ░░█▒░...
; █▒░░░...
; █▒░░....
; ▒░░.....
; ░░░.....
; ░▒░.....
; █▒░░░░..
;
SPRITE_TILES_ENEMY_GIANT_STRIDER_03:
    .byte $e8,$e8,$b8,$b0,$60,$e0,$a0,$bc   ; byte
    .byte $30,$30,$c0,$c0,$80,$00,$40,$c0   ; byte


;
; ......░█
; .....░██
; .....░█░
; ....░▒░▒
; ....░▒▒▒
; ....░▒▒▒
; ...░▒▒▒▒
; ...░░▒▒▒
;
SPRITE_TILES_ENEMY_GIANT_STRIDER_04:
    .byte $03,$07,$07,$0a,$08,$08,$10,$18   ; byte
    .byte $01,$03,$02,$05,$07,$07,$0f,$07   ; byte


;
; ▒░░██▒░.
; ░░█░██▒░
; ░██░░█▒░
; ██░█░██░
; ░███░░█░
; ▒░░░░.░.
; ▒░░▒░...
; ░██▒░...
;
SPRITE_TILES_ENEMY_GIANT_STRIDER_05:
    .byte $7a,$fd,$fd,$ff,$ff,$7a,$68,$e8   ; byte
    .byte $9c,$2e,$66,$d6,$72,$80,$90,$70   ; byte


;
; ..░▒█░░░
; ..░██▒░.
; .░▒██░░.
; .░██▒░..
; .░██░...
; .░█▒░...
; ░██░░...
; ░░░░░...
;
SPRITE_TILES_ENEMY_GIANT_STRIDER_06:
    .byte $2f,$3a,$5e,$74,$78,$68,$f8,$f8   ; byte
    .byte $18,$1c,$38,$38,$30,$30,$60,$00   ; byte


;
; ███▒░...
; ██▒░░...
; ██▒░....
; █▒░░....
; ░▒▒░....
; .░▒▒░...
; ██░▒░░..
; ░░░░░░..
;
SPRITE_TILES_ENEMY_GIANT_STRIDER_07:
    .byte $e8,$d8,$d0,$b0,$90,$48,$ec,$fc   ; byte
    .byte $f0,$e0,$e0,$c0,$60,$30,$d0,$00   ; byte


;
; .....░██
; ....░██░
; .░░░██░█
; ░███░░█░
; ██░██░██
; ██████░█
; █░░░███░
; ░...░░░░
;
SPRITE_TILES_ENEMY_GIANT_STRIDER_08:
    .byte $07,$0f,$7f,$ff,$ff,$ff,$ff,$8f   ; byte
    .byte $03,$06,$0d,$72,$db,$fd,$8e,$00   ; byte


;
; ██▒░....
; ░░█▒░...
; █░░█▒░..
; ██░░░░..
; ██░█░░..
; █░░█▒░..
; ░░░█▒░..
; ░█▒░░...
;
SPRITE_TILES_ENEMY_GIANT_STRIDER_09:
    .byte $d0,$e8,$f4,$fc,$fc,$f4,$f4,$d8   ; byte
    .byte $e0,$30,$98,$c0,$d0,$98,$18,$60   ; byte


;
; ......░░
; .....░██
; ...░░██▒
; ..░████░
; ...░█░░░
; ....░..░
; ......░█
; ......░█
;
SPRITE_TILES_ENEMY_GIANT_STRIDER_10:
    .byte $03,$07,$1e,$3f,$1f,$09,$03,$03   ; byte
    .byte $00,$03,$07,$1e,$08,$00,$01,$01   ; byte


;
; ██▒░░...
; █▒░░....
; ▒░░.....
; ░▒░.....
; █▒░..░░░
; █▒░.░███
; ▒░.░██░░
; ▒░░██░▒░
;
SPRITE_TILES_ENEMY_GIANT_STRIDER_11:
    .byte $d8,$b0,$60,$a0,$a7,$af,$5f,$7d   ; byte
    .byte $e0,$c0,$80,$40,$c0,$c7,$8c,$9a   ; byte


;
; .....░██
; .....░█▒
; .....░█░
; ....░░░░
; ....░▒▒▒
; ....░▒▒▒
; ....░▒▒▒
; ....░▒▒▒
;
SPRITE_TILES_ENEMY_GIANT_STRIDER_12:
    .byte $07,$06,$07,$0f,$08,$08,$08,$08   ; byte
    .byte $03,$03,$02,$00,$07,$07,$07,$07   ; byte


;
; ▒░░█░▒▒░
; ░░██░▒░.
; ░██░▒▒░.
; ██░▒▒░..
; ░█▒▒░░..
; ▒░░░░...
; ▒░▒░░...
; ░██▒░...
;
SPRITE_TILES_ENEMY_GIANT_STRIDER_13:
    .byte $79,$fa,$f2,$e4,$cc,$78,$58,$e8   ; byte
    .byte $96,$34,$6c,$d8,$70,$80,$a0,$70   ; byte


;
; ....░▒▒░
; .....░░█
; .....░██
; .....░█▒
; .....░█▒
; .....░█▒
; ....░██▒
; ...░██▒░
;
SPRITE_TILES_ENEMY_GIANT_STRIDER_14:
    .byte $09,$07,$07,$06,$06,$06,$0e,$1d   ; byte
    .byte $06,$01,$03,$03,$03,$03,$07,$0e   ; byte


;
; ███▒░...
; ██▒░░...
; ▒▒░░....
; ░░░.....
; ░░......
; ░.......
; ░.......
; ░.......
;
SPRITE_TILES_ENEMY_GIANT_STRIDER_15:
    .byte $e8,$d8,$30,$e0,$c0,$80,$80,$80   ; byte
    .byte $f0,$e0,$c0,$00,$00,$00,$00,$00   ; byte


;
; ░...░█░░
; █░.░██▒░
; ░█░██░░.
; ░███▒░..
; .░█▒░...
; ..░░....
; ........
; ........
;
SPRITE_TILES_ENEMY_GIANT_STRIDER_16:
    .byte $8f,$dd,$fe,$f4,$68,$30,$00,$00   ; byte
    .byte $04,$8e,$58,$78,$30,$00,$00,$00   ; byte


;
; ░░██░...
; .░▒██░░.
; ..░░░█▒░
; ....░▒▒░
; ...░█▒░.
; ..░█▒░..
; ..░█░...
; ...░....
;
SPRITE_TILES_ENEMY_GIANT_STRIDER_17:
    .byte $f8,$5e,$3d,$09,$1a,$34,$38,$10   ; byte
    .byte $30,$38,$06,$06,$0c,$18,$10,$00   ; byte


;============================================================================
; Enemy Tiles: Sir Gawaine
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8040]
;============================================================================

;
; .......█
; ......█░
; .....█░.
; ...░█░..
; ..░█▒...
; .░█▒....
; ░█▒.....
; ▒▒......
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8040]
;
SPRITE_TILES_ENEMY_SIR_GAWAINE_00:
    .byte $01,$03,$06,$1c,$30,$60,$c0,$00   ; byte
    .byte $01,$02,$04,$08,$18,$30,$60,$c0   ; byte


;
; ..█████▒
; ..▒▒▒▒▒▒
; ..▒▒▒▒▒▒
; ...░░░░▒
; ...░█░░░
; ..▒░░░▒░
; ..▒▒░██▒
; ░░.░▒▒▒▒
;
SPRITE_TILES_ENEMY_SIR_GAWAINE_01:
    .byte $3e,$00,$00,$1e,$1f,$1d,$0e,$d0   ; byte
    .byte $3f,$3f,$3f,$01,$08,$22,$37,$0f   ; byte


;
; ░░█░░...
; ███▒░...
; █▒▒░....
; ▒▒░░░...
; ▒░░▒▒░..
; ░░███▒░.
; ░█▒█▒▒░.
; ░█▒▒▒▒▒░
;
SPRITE_TILES_ENEMY_SIR_GAWAINE_02:
    .byte $f8,$e8,$90,$38,$64,$fa,$d2,$c1   ; byte
    .byte $20,$f0,$e0,$c0,$98,$3c,$7c,$7e   ; byte


;
; █▒░..▒▒▒
; ▒░░.▒▒▒░
; ▒▒░.░░░░
; ▒▒▒░....
; ▒█▒░▒█▒█
; ▒█▒░▒░▒▒
; ▒█▒░░▒░░
; ▒▒▒░░░░░
;
SPRITE_TILES_ENEMY_SIR_GAWAINE_03:
    .byte $a0,$61,$2f,$10,$55,$54,$5b,$1f   ; byte
    .byte $c7,$8e,$c0,$e0,$ef,$eb,$e4,$e0   ; byte


;
; ░░░░░▒▒░
; ░░██▒░▒░
; ░░█▒▒░▒░
; ░█▒▒░░▒░
; ▒▒▒░░░░.
; ▒▒░░▒░░.
; ░░░▒▒░░.
; ░▒▒▒▒░░.
;
SPRITE_TILES_ENEMY_SIR_GAWAINE_04:
    .byte $f9,$f5,$e5,$cd,$1e,$36,$e6,$86   ; byte
    .byte $06,$3a,$3a,$72,$e0,$c8,$18,$78   ; byte


;
; ▒▒▒░▒█▒░
; ░▒░▒█▒░░
; ░▒░░░░..
; .░.░▒░░.
; ....░▒░░
; ....░▒▒░
; ...░▒▒▒░
; ..░▒▒░░░
;
SPRITE_TILES_ENEMY_SIR_GAWAINE_05:
    .byte $15,$ab,$bc,$56,$0b,$09,$11,$27   ; byte
    .byte $ee,$5c,$40,$08,$04,$06,$0e,$18   ; byte


;
; ▒▒█▒▒░..
; ▒█▒▒░...
; ▒▒▒▒░...
; .░▒▒▒░░.
; ..░▒▒▒▒░
; ░..░▒▒▒░
; ░.░█▒▒░.
; ░.█▒░░..
;
SPRITE_TILES_ENEMY_SIR_GAWAINE_06:
    .byte $24,$48,$08,$46,$21,$91,$b2,$ac   ; byte
    .byte $f8,$f0,$f0,$38,$1e,$0e,$1c,$30   ; byte


;
; ........
; ........
; ........
; .......█
; ......█░
; .....█░.
; ...░█░..
; ..░█▒...
;
SPRITE_TILES_ENEMY_SIR_GAWAINE_07:
    .byte $00,$00,$00,$01,$03,$06,$1c,$30   ; byte
    .byte $00,$00,$00,$01,$02,$04,$08,$18   ; byte


;
; ▒▒▒░░▒▒░
; ░▒░..░░░
; ░▒░...░█
; .░....░█
; ......░█
; .......░
; ......░░
; .....░▒▒
;
SPRITE_TILES_ENEMY_SIR_GAWAINE_08:
    .byte $19,$a7,$a3,$43,$03,$01,$03,$04   ; byte
    .byte $e6,$40,$41,$01,$01,$00,$00,$03   ; byte


;
; ▒▒█▒▒░..
; ██▒▒░░..
; ▒▒▒░░...
; ▒▒░.....
; ▒▒░.....
; ▒▒░░....
; ░▒▒░....
; ▒▒▒░....
;
SPRITE_TILES_ENEMY_SIR_GAWAINE_09:
    .byte $24,$cc,$18,$20,$20,$30,$90,$10   ; byte
    .byte $f8,$f0,$e0,$c0,$c0,$c0,$60,$e0   ; byte


;
; .▒.█████
; ░▒░▒▒▒▒▒
; ▒▒░▒▒▒▒▒
; ▒▒░.░░░░
; ▒▒░.░█░░
; ▒▒░▒░░░▒
; ▒▒░▒▒░██
; ▒▒░░░▒▒▒
;
SPRITE_TILES_ENEMY_SIR_GAWAINE_10:
    .byte $1f,$a0,$20,$2f,$2f,$2e,$27,$38   ; byte
    .byte $5f,$5f,$df,$c0,$c4,$d1,$db,$c7   ; byte


;
; ▒░░█░...
; ▒███▒...
; ▒█▒▒....
; ▒▒▒.....
; ░▒░.....
; ░░░░▒░..
; ▒░░███▒.
; ▒░░██▒▒░
;
SPRITE_TILES_ENEMY_SIR_GAWAINE_11:
    .byte $78,$70,$40,$00,$a0,$f4,$7c,$79   ; byte
    .byte $90,$f8,$f0,$e0,$40,$08,$9e,$9e   ; byte


;
; ▒▒░▒▒░░▒
; ▒▒░▒█▒█░
; ▒▒░░▒▒▒█
; ▒▒░.░░▒▒
; ░▒...░░░
; .▒...░▒▒
; ......░▒
; .....░▒▒
;
SPRITE_TILES_ENEMY_SIR_GAWAINE_12:
    .byte $26,$2b,$31,$2c,$87,$04,$02,$04   ; byte
    .byte $d9,$de,$cf,$c3,$40,$43,$01,$03   ; byte


;
; ▒░░░░▒▒░
; ░░█▒▒░▒▒
; ██▒▒▒░▒▒
; ▒▒▒▒▒░░▒
; ▒▒▒░░░░░
; ░░░░▒▒░░
; ▒▒▒▒▒▒░░
; ░▒▒▒▒░░.
;
SPRITE_TILES_ENEMY_SIR_GAWAINE_13:
    .byte $79,$e4,$c4,$06,$1f,$f3,$03,$86   ; byte
    .byte $86,$3b,$fb,$f9,$e0,$0c,$fc,$78   ; byte


;
; ...░▒█▒░
; ..░▒█▒░░
; ..░░░░..
; ...░▒░░.
; ....░▒░░
; ....░▒▒░
; ...░▒▒▒░
; ..░▒▒░░░
;
SPRITE_TILES_ENEMY_SIR_GAWAINE_14:
    .byte $15,$2b,$3c,$16,$0b,$09,$11,$27   ; byte
    .byte $0e,$1c,$00,$08,$04,$06,$0e,$18   ; byte


;
; ........
; ........
; ▒.......
; ░█▒░....
; .░██▒░..
; ...░██▒░
; .....▒██
; .......▒
;
SPRITE_TILES_ENEMY_SIR_GAWAINE_15:
    .byte $00,$00,$00,$d0,$74,$1d,$03,$00   ; byte
    .byte $00,$00,$80,$60,$38,$0e,$07,$01   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ▒░..█...
; ██▒█....
;
SPRITE_TILES_ENEMY_SIR_GAWAINE_16:
    .byte $00,$00,$00,$00,$00,$00,$48,$d0   ; byte
    .byte $00,$00,$00,$00,$00,$00,$88,$f0   ; byte


;
; .▒▒█░▒░░
; ..█░▒██░
; ..█.▒▒▒░
; ..█...░░
; ........
; ........
; ........
; ........
;
SPRITE_TILES_ENEMY_SIR_GAWAINE_17:
    .byte $1b,$37,$21,$23,$00,$00,$00,$00   ; byte
    .byte $74,$2e,$2e,$20,$00,$00,$00,$00   ; byte


;============================================================================
; Enemy Tiles: Maskman
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8042]
;============================================================================

;
; ...░█▒▒░
; ..████▒▒
; .▒████▒▒
; ░██░░░▒▒
; ▒█░░░█▒░
; ██████▒░
; █████▒▒░
; ▒████▒░▒
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8042]
;
SPRITE_TILES_ENEMY_MASKMAN_00:
    .byte $19,$3c,$3c,$fc,$7d,$fd,$f9,$7a   ; byte
    .byte $0e,$3f,$7f,$63,$c6,$fe,$fe,$fd   ; byte


;
; ........
; ░.░.....
; ░░......
; ░░░░░...
; ░░░.....
; ░░░░....
; ▒██▒░...
; █▒▒▒▒░..
;
SPRITE_TILES_ENEMY_MASKMAN_01:
    .byte $00,$a0,$c0,$f8,$e0,$f0,$68,$84   ; byte
    .byte $00,$00,$00,$00,$00,$00,$f0,$f8   ; byte


;
; .██▒▒░░▒
; .░░░░▒░░
; ..░▒██▒░
; .░▒██▒▒░
; ░░▒███▒░
; ▒░▒██▒▒░
; ▒░░▒▒▒░▒
; ░░░░░░█▒
;
SPRITE_TILES_ENEMY_MASKMAN_02:
    .byte $66,$7b,$2d,$59,$dd,$59,$62,$fe   ; byte
    .byte $79,$04,$1e,$3e,$3e,$be,$9d,$03   ; byte


;
; ░░░░░░..
; ░▒▒▒░...
; ░▒██▒░..
; ░▒▒██░..
; ░░▒▒█▒░.
; ▒░░▒▒▒░.
; ▒░░░▒▒░.
; ░░░▒▒▒░.
;
SPRITE_TILES_ENEMY_MASKMAN_03:
    .byte $fc,$88,$b4,$9c,$ca,$62,$72,$e2   ; byte
    .byte $00,$70,$78,$78,$3c,$9c,$8c,$1c   ; byte


;
; ..░▒██▒░
; ..░░░░░▒
; ..░██▒▒░
; .░█▒▒▒▒░
; ░████▒▒░
; ▒░░░▒▒░░
; ▒█▒░░░░░
; ░█▒▒░░░░
;
SPRITE_TILES_ENEMY_MASKMAN_04:
    .byte $2d,$3e,$39,$61,$f9,$73,$5f,$cf   ; byte
    .byte $1e,$01,$1e,$3e,$7e,$8c,$e0,$70   ; byte


;
; ░░▒▒▒░..
; ░░█▒░░..
; ░█▒▒░...
; █▒▒░....
; ▒▒░░....
; ░░░.....
; ░░......
; ░░......
;
SPRITE_TILES_ENEMY_MASKMAN_05:
    .byte $c4,$ec,$c8,$90,$30,$e0,$c0,$c0   ; byte
    .byte $38,$30,$70,$e0,$c0,$00,$00,$00   ; byte


;
; ░█▒▒░.░░
; .██▒░..░
; .░█▒░..░
; ..█▒▒░..
; ..██▒░..
; ..░█▒░..
; ░███▒░..
; █▒▒▒▒░..
;
SPRITE_TILES_ENEMY_MASKMAN_06:
    .byte $cb,$69,$69,$24,$34,$34,$f4,$84   ; byte
    .byte $70,$70,$30,$38,$38,$18,$78,$f8   ; byte


;
; ░░......
; ▒▒░.....
; ▒▒░░....
; ░▒▒░░...
; .░▒▒▒░..
; ..▒▒░░..
; .▒▒░░...
; ▒▒▒.....
;
SPRITE_TILES_ENEMY_MASKMAN_07:
    .byte $c0,$20,$30,$98,$44,$0c,$18,$00   ; byte
    .byte $00,$c0,$c0,$60,$38,$30,$60,$e0   ; byte


;
; .██▒▒░░▒
; .░░░░▒░░
; ..░▒██▒░
; .░▒██▒▒░
; ░░▒███▒░
; ▒░▒██▒░▒
; ▒░░▒▒░▒█
; ░░░░░░▒▒
;
SPRITE_TILES_ENEMY_MASKMAN_08:
    .byte $66,$7b,$2d,$59,$dd,$5a,$65,$fc   ; byte
    .byte $79,$04,$1e,$3e,$3e,$bd,$9b,$03   ; byte


;
; ░░░░░░..
; ▒▒▒▒░...
; ▒██▒▒░..
; ░▒██▒░░.
; ░░░██▒░.
; ▒████▒░.
; █▒▒▒▒▒░.
; ▒▒░░░░..
;
SPRITE_TILES_ENEMY_MASKMAN_09:
    .byte $fc,$08,$64,$b6,$fa,$7a,$82,$3c   ; byte
    .byte $00,$f0,$f8,$78,$1c,$fc,$fc,$c0   ; byte


;
; ..░▒█▒░░
; ..░░░░░░
; ..░▒██▒░
; ..▒██▒▒▒
; ..██▒░░▒
; ..▒▒░▒▒░
; ..░░█▒▒░
; ..▒░█▒▒░
;
SPRITE_TILES_ENEMY_MASKMAN_10:
    .byte $2b,$3f,$2d,$18,$36,$09,$39,$19   ; byte
    .byte $1c,$00,$1e,$3f,$39,$36,$0e,$2e   ; byte


;
; ░░░.....
; ░░░.....
; ░░......
; ░░......
; ░░......
; ░.......
; ........
; ........
;
SPRITE_TILES_ENEMY_MASKMAN_11:
    .byte $e0,$e0,$c0,$c0,$c0,$80,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ..▒░█▒▒░
; ..▒░█▒▒░
; ..▒▒░▒▒░
; ...▒░█▒░
; ...▒░█▒▒
; ...▒░░█▒
; ..░▒░█▒▒
; ..▒░█▒▒░
;
SPRITE_TILES_ENEMY_MASKMAN_12:
    .byte $19,$19,$09,$0d,$0c,$0e,$2c,$19   ; byte
    .byte $2e,$2e,$36,$16,$17,$13,$17,$2e   ; byte


;
; ...░░░░.
; .░░░░░░░
; .░░▒▒░░░
; .░▒░▒░░░
; .░▒░▒▒░░
; .▒█▒█▒░░
; ..░▒▒▒░░
; ..▒▒▒░░░
;
SPRITE_TILES_ENEMY_MASKMAN_13:
    .byte $1e,$7f,$67,$57,$53,$2b,$23,$07   ; byte
    .byte $00,$00,$18,$28,$2c,$7c,$1c,$38   ; byte


;
; ........
; ░.......
; ░.......
; ░░......
; ░░......
; ░░░░....
; ░░░.░...
; ░░░░....
;
SPRITE_TILES_ENEMY_MASKMAN_14:
    .byte $00,$80,$80,$c0,$c0,$f0,$e8,$f0   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ...░░░░▒
; ...░░▒░█
; ...░▒░█░
; ..░▒░██░
; ..████▒▒
; ..░▒▒▒▒░
; ...░▒░▒░
; ...░░▒░▒
;
SPRITE_TILES_ENEMY_MASKMAN_15:
    .byte $1e,$1b,$17,$2f,$3c,$21,$15,$1a   ; byte
    .byte $01,$05,$0a,$16,$3f,$1e,$0a,$05   ; byte


;
; █░░░░...
; ░▒░░░░░.
; ▒▒▒░....
; ▒█▒▒....
; ░▒█▒....
; ░▒▒▒░...
; ░░▒▒░...
; ░░█▒░...
;
SPRITE_TILES_ENEMY_MASKMAN_16:
    .byte $f8,$be,$10,$40,$a0,$88,$c8,$e8   ; byte
    .byte $80,$40,$e0,$f0,$70,$70,$30,$30   ; byte


;
; ...░█░█░
; ..░██▒▒▒
; ..░███▒▒
; ..▒███▒▒
; ..░░░▒██
; ..▒▒░░░░
; ..▒▒▒░▒█
; .░█▒▒░██
;
SPRITE_TILES_ENEMY_MASKMAN_17:
    .byte $1f,$38,$3c,$1c,$3b,$0f,$05,$67   ; byte
    .byte $0a,$1f,$1f,$3f,$07,$30,$3b,$3b   ; byte


;
; ░░█▒░...
; ░░█▒....
; ░▒▒▒....
; ▒░▒░....
; ░▒▒░....
; ░░░░....
; ░░░.....
; ▒░......
;
SPRITE_TILES_ENEMY_MASKMAN_18:
    .byte $e8,$e0,$80,$50,$90,$f0,$e0,$40   ; byte
    .byte $30,$30,$70,$a0,$60,$00,$00,$80   ; byte


;
; .░█▒░.▒█
; .░▒█░..█
; .░▒▒░..░
; ..░▒░...
; ..░▒░...
; ..░▒░...
; .░█▒░...
; ▒█▒▒░...
;
SPRITE_TILES_ENEMY_MASKMAN_19:
    .byte $69,$59,$49,$28,$28,$28,$68,$48   ; byte
    .byte $33,$31,$30,$10,$10,$10,$30,$f0   ; byte


;
; ▒░......
; ▒▒......
; █▒░.....
; ░▒▒░....
; .░▒▒░...
; ..░▒▒...
; .░▒▒░...
; ▒▒▒░....
;
SPRITE_TILES_ENEMY_MASKMAN_20:
    .byte $40,$00,$a0,$90,$48,$20,$48,$10   ; byte
    .byte $80,$c0,$c0,$60,$30,$18,$30,$e0   ; byte


;
; ...░█░▒░
; ...▒█▒▒░
; ...▒██▒▒
; ...▒██▒░
; ...░░▒█░
; ...░░░░░
; ...░▒░▒█
; ....▒░█▒
;
SPRITE_TILES_ENEMY_MASKMAN_21:
    .byte $1d,$09,$0c,$0d,$1b,$1f,$15,$06   ; byte
    .byte $0a,$1e,$1f,$1e,$06,$00,$0b,$0b   ; byte


;
; ░▒▒▒░...
; ░█▒░....
; ░█▒░....
; ▒▒░.....
; ▒▒░.....
; ░░░.....
; ▒░░.....
; ▒░......
;
SPRITE_TILES_ENEMY_MASKMAN_22:
    .byte $88,$d0,$d0,$20,$20,$e0,$60,$40   ; byte
    .byte $70,$60,$60,$c0,$c0,$00,$80,$80   ; byte


;
; ....░██▒
; ....░█▒▒
; ....░█▒░
; ....░▒▒░
; ....░▒▒░
; ....░▒▒░
; ....█▒▒░
; ...█▒▒▒░
;
SPRITE_TILES_ENEMY_MASKMAN_23:
    .byte $0e,$0c,$0d,$09,$09,$09,$09,$11   ; byte
    .byte $07,$07,$06,$06,$06,$06,$0e,$1e   ; byte


;
; ........
; ........
; ........
; ..█.....
; █▒░░█...
; .░█▒░...
; █▒▒▒░▒..
; .░█▒░░░.
;
SPRITE_TILES_ENEMY_MASKMAN_24:
    .byte $00,$00,$00,$20,$b8,$68,$88,$6e   ; byte
    .byte $00,$00,$00,$20,$c8,$30,$f4,$30   ; byte


;
; .█░░▒██▒
; .....░▒█
; .......░
; ........
; ........
; ........
; ........
; ........
;
SPRITE_TILES_ENEMY_MASKMAN_25:
    .byte $76,$05,$01,$00,$00,$00,$00,$00   ; byte
    .byte $4f,$03,$00,$00,$00,$00,$00,$00   ; byte


;
; ░.......
; █▒░.....
; ▒██▒░...
; .░▒██░░.
; ...░▒█░▒
; ....░▒▒▒
; ......░▒
; .......░
;
SPRITE_TILES_ENEMY_MASKMAN_26:
    .byte $80,$a0,$68,$5e,$16,$08,$02,$01   ; byte
    .byte $00,$c0,$f0,$38,$0d,$07,$01,$00   ; byte


;
; ........
; ........
; ........
; .......░
; .....░██
; ...░██▒░
; .░██▒░░.
; ░██░░...
;
SPRITE_TILES_ENEMY_MASKMAN_27:
    .byte $00,$00,$00,$01,$07,$1d,$76,$f8   ; byte
    .byte $00,$00,$00,$00,$03,$0e,$38,$60   ; byte


;
; ....█.█.
; ..░░█▒░█
; .░█▒▒█░░
; ██▒░░▒░█
; ▒░░.░░█.
; ░.......
; ........
; ........
;
SPRITE_TILES_ENEMY_MASKMAN_28:
    .byte $0a,$3b,$67,$db,$6e,$80,$00,$00   ; byte
    .byte $0a,$0d,$3c,$e5,$82,$00,$00,$00   ; byte


;
; ░██▒▒▒░░
; .░▒█▒▒▒░
; ...░▒▒▒▒
; .....░▒▒
; ......░█
; .......▒
; ........
; ........
;
SPRITE_TILES_ENEMY_MASKMAN_29:
    .byte $e3,$51,$10,$04,$03,$00,$00,$00   ; byte
    .byte $7c,$3e,$0f,$03,$01,$01,$00,$00   ; byte


;
; ░░░.....
; ░▒▒░░░..
; ░░░▒▒▒░.
; ▒▒░░▒▒░.
; ▒▒..░▒░.
; ▒▒..░▒░.
; ▒▒░..░▒.
; .▒▒.....
;
SPRITE_TILES_ENEMY_MASKMAN_30:
    .byte $e0,$9c,$e2,$32,$0a,$0a,$24,$00   ; byte
    .byte $00,$60,$1c,$cc,$c4,$c4,$c2,$60   ; byte


;============================================================================
; Enemy Tiles: Wolfman
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8044]
;============================================================================

;
; .▒▒...░█
; ▒▒░..▒██
; ▒░░.▒▒▒█
; ▒░..▒░░█
; ▒░..░░█▒
; █░.░▒▒▒░
; █░.▒▒.█.
; █░..█.▒▒
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8044]
;
SPRITE_TILES_ENEMY_WOLFMAN_00:
    .byte $03,$23,$61,$47,$4e,$d1,$c2,$c8   ; byte
    .byte $61,$c7,$8f,$89,$83,$8e,$9a,$8b   ; byte


;
; █▒▒▒░░..
; █▒████░.
; ▒▒███▒▒░
; ▒░▒▒▒▒░░
; ░░░░░░░.
; ░░░░░░..
; ░░███▒░.
; ░▒▒▒▒▒▒░
;
SPRITE_TILES_ENEMY_WOLFMAN_01:
    .byte $8c,$be,$39,$43,$fe,$fc,$fa,$81   ; byte
    .byte $f0,$fc,$fe,$bc,$00,$00,$3c,$7e   ; byte


;
; █░░.▒▒▒░
; █░░.░░░░
; █░░..░░█
; ▒░░░░▒█▒
; ▒▒░▒░▒▒░
; ▒▒░▒░░██
; ▒▒░░░▒█▒
; .▒░..░▒▒
;
SPRITE_TILES_ENEMY_WOLFMAN_02:
    .byte $e1,$ef,$e7,$7a,$29,$2f,$3a,$24   ; byte
    .byte $8e,$80,$81,$87,$d6,$d3,$c7,$43   ; byte


;
; ░░▒░░░▒▒
; ▒░░▒▒░░▒
; ▒░▒██▒░▒
; ░░▒▒██░▒
; ▒░░▒▒█▒░
; ▒░░▒▒██░
; ░█▒░▒▒█▒
; █▒░░░▒▒▒
;
SPRITE_TILES_ENEMY_WOLFMAN_03:
    .byte $dc,$66,$5a,$ce,$65,$67,$d2,$b8   ; byte
    .byte $23,$99,$bd,$3d,$9e,$9e,$6f,$c7   ; byte


;
; .....▒██
; ▒▒▒▒▒░░░
; ░░█▒██░█
; ...░░░░▒
; .....░░░
; .....░▒▒
; ....░░░▒
; ...░██░░
;
SPRITE_TILES_ENEMY_WOLFMAN_04:
    .byte $03,$07,$ef,$1e,$07,$04,$0e,$1f   ; byte
    .byte $07,$f8,$3d,$01,$00,$03,$01,$0c   ; byte


;
; ▒░░░█▒▒▒
; ░░██▒▒▒░
; ███▒▒░░░
; ██▒░░░░░
; ░░░░░░░░
; ▒░▒▒▒░░.
; ░░░▒▒░░.
; ░██░░░..
;
SPRITE_TILES_ENEMY_WOLFMAN_05:
    .byte $78,$f1,$e7,$df,$ff,$46,$e6,$fc   ; byte
    .byte $8f,$3e,$f8,$e0,$00,$b8,$18,$60   ; byte


;
; ..░▒█▒▒░
; ..░▒▒░░░
; ..░▒▒░..
; ...█▒▒░.
; ...█▒▒░.
; ..░█▒░..
; .░█▒▒░..
; ▒▒▒▒▒░..
;
SPRITE_TILES_ENEMY_WOLFMAN_06:
    .byte $29,$27,$24,$12,$12,$34,$64,$04   ; byte
    .byte $1e,$18,$18,$1c,$1c,$18,$38,$f8   ; byte


;
; ▒█▒▒░...
; ▒█▒░....
; ▒▒▒▒░...
; .░█▒▒░░.
; ..░█▒▒▒░
; ....▒▒▒░
; ...█▒▒░.
; ..█▒░░..
;
SPRITE_TILES_ENEMY_WOLFMAN_07:
    .byte $48,$50,$08,$66,$31,$01,$12,$2c   ; byte
    .byte $f0,$e0,$f0,$38,$1e,$0e,$1c,$30   ; byte


;
; ▒█████▒▒
; ...░▒▒▒▒
; .......░
; ........
; ........
; ........
; ........
; ........
;
SPRITE_TILES_ENEMY_WOLFMAN_08:
    .byte $7c,$10,$01,$00,$00,$00,$00,$00   ; byte
    .byte $ff,$0f,$00,$00,$00,$00,$00,$00   ; byte


;
; .....░▒▒
; .....░░░
; ▒▒▒▒▒░░▒
; ░░█▒██▒▒
; ...░░░░▒
; .......░
; .......░
; .......░
;
SPRITE_TILES_ENEMY_WOLFMAN_09:
    .byte $04,$07,$06,$ec,$1e,$01,$01,$01   ; byte
    .byte $03,$00,$f9,$3f,$01,$00,$00,$00   ; byte


;
; ░░░░█▒▒▒
; ▒░▒█▒▒▒░
; ▒█▒▒▒░░░
; █▒░░░░░░
; ░░▒▒▒░░.
; ░▒█▒▒░..
; ░█▒▒░░..
; █▒▒░░...
;
SPRITE_TILES_ENEMY_WOLFMAN_10:
    .byte $f8,$51,$47,$bf,$c6,$a4,$cc,$98   ; byte
    .byte $0f,$be,$f8,$c0,$38,$78,$70,$e0   ; byte


;
; .......▒
; .......█
; .......▒
; ........
; ........
; ........
; .......█
; .....░▒▒
;
SPRITE_TILES_ENEMY_WOLFMAN_11:
    .byte $00,$01,$00,$00,$00,$00,$01,$04   ; byte
    .byte $01,$01,$01,$00,$00,$00,$01,$03   ; byte


;
; ▒▒░░....
; ▒░░.....
; ▒▒░░....
; █▒░▒....
; █▒░▒░...
; █▒▒░░...
; ▒▒▒░░...
; ▒░░░░...
;
SPRITE_TILES_ENEMY_WOLFMAN_12:
    .byte $30,$60,$30,$a0,$a8,$98,$18,$78   ; byte
    .byte $c0,$80,$c0,$d0,$d0,$e0,$e0,$80   ; byte


;
; ........
; ▒█████▒▒
; ...░▒▒▒▒
; .......░
; ........
; ........
; ........
; ........
;
SPRITE_TILES_ENEMY_WOLFMAN_13:
    .byte $00,$7c,$10,$01,$00,$00,$00,$00   ; byte
    .byte $00,$ff,$0f,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ......░█
; .....▒██
; ....▒▒▒█
; ....▒░░█
; ....░░█▒
;
SPRITE_TILES_ENEMY_WOLFMAN_14:
    .byte $00,$00,$00,$03,$03,$01,$07,$0e   ; byte
    .byte $00,$00,$00,$01,$07,$0f,$09,$03   ; byte


;
; ........
; ........
; ........
; ███▒░░..
; █▒████░.
; ▒▒███▒▒░
; ▒░▒▒▒▒▒░
; ░░░░░░░░
;
SPRITE_TILES_ENEMY_WOLFMAN_15:
    .byte $00,$00,$00,$ec,$be,$39,$41,$ff   ; byte
    .byte $00,$00,$00,$f0,$fc,$fe,$be,$00   ; byte


;
; ...░██▒░
; ...▒▒.█.
; .█▒.█...
; ▒▒░....█
; █░░..█..
; █░...░.█
; ░░░░░░░░
; ▒█▒██▒▒░
;
SPRITE_TILES_ENEMY_WOLFMAN_16:
    .byte $1d,$02,$48,$21,$e4,$c5,$ff,$59   ; byte
    .byte $0e,$1a,$68,$c1,$84,$81,$00,$fe   ; byte


;
; ░░░░░░░.
; ▒░░██▒░.
; .░█▒▒▒▒░
; .░▒░░░▒▒
; ▒░░▒▒░░▒
; ▒░▒██▒░▒
; ░▒███▒░▒
; ▒██▒▒░░▒
;
SPRITE_TILES_ENEMY_WOLFMAN_17:
    .byte $fe,$7a,$61,$5c,$66,$5a,$ba,$66   ; byte
    .byte $00,$9c,$3e,$23,$99,$bd,$7d,$f9   ; byte


;
; ██░▒████
; ░░▒▒▒▒▒▒
; ▒▒░░░░▒▒
; ▒░░░░░░░
; █░..▒▒░░
; █░..░▒▒█
; ▒▒.▒░░▒█
; .▒.░▒▒░░
;
SPRITE_TILES_ENEMY_WOLFMAN_18:
    .byte $ef,$c0,$3c,$7f,$c3,$c9,$0d,$13   ; byte
    .byte $df,$3f,$c3,$80,$8c,$87,$d3,$4c   ; byte


;
; ██▒▒░░▒.
; ▒▒▒░░▒░.
; ▒▒░░░░░.
; ░░░▒▒▒░.
; ░█▒▒░▒░.
; █░░░░░░.
; ▒░▒▒░░..
; ░▒▒▒░...
;
SPRITE_TILES_ENEMY_WOLFMAN_19:
    .byte $cc,$1a,$3e,$e2,$ca,$fe,$4c,$88   ; byte
    .byte $f2,$e4,$c0,$1c,$74,$80,$b0,$70   ; byte


;
; .▒▒.....
; ..▒█▒░..
; ...░██▒░
; .....░██
; .......░
; ........
; ........
; ........
;
SPRITE_TILES_ENEMY_WOLFMAN_20:
    .byte $00,$14,$1d,$07,$01,$00,$00,$00   ; byte
    .byte $60,$38,$0e,$03,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; █░......
; ███░░...
; .░███░░.
; ...▒██▒░
; .....▒██
;
SPRITE_TILES_ENEMY_WOLFMAN_21:
    .byte $00,$00,$00,$c0,$f8,$7e,$0d,$03   ; byte
    .byte $00,$00,$00,$80,$e0,$38,$1e,$07   ; byte


;============================================================================
; Enemy Tiles: Yareeka
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8046]
;============================================================================

;
; ......█▒
; ...▒▒██▒
; .█▒▒██▒▒
; █▒▒██▒█▒
; ▒▒███▒█▒
; .▒██▒███
; ▒██▒████
; ███▒▒▒▒▒
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8046]
;
SPRITE_TILES_ENEMY_YAREEKA_00:
    .byte $02,$06,$4c,$9a,$3a,$37,$6f,$e0   ; byte
    .byte $03,$1f,$7f,$ff,$ff,$7f,$ff,$ff   ; byte


;
; ......▒█
; .....▒██
; ....▒███
; ...▒███▒
; ..░▒▒█▒░
; ..█░▒▒░▒
; .███░░██
; .█░█░░█░
;
SPRITE_TILES_ENEMY_YAREEKA_01:
    .byte $01,$03,$07,$0e,$25,$32,$7f,$7f   ; byte
    .byte $03,$07,$0f,$1f,$1e,$2d,$73,$52   ; byte


;
; ██▒▒▒░░░
; █▒▒▒░...
; ▒▒▒░....
; ▒▒░░....
; ░░░.....
; ▒░..░░░.
; █░.░▒▒▒░
; █░░░▒▒░▒
;
SPRITE_TILES_ENEMY_YAREEKA_02:
    .byte $c7,$88,$10,$30,$e0,$4e,$d1,$f2   ; byte
    .byte $f8,$f0,$e0,$c0,$00,$80,$8e,$8d   ; byte


;
; ..█░▒░░█
; .░░░█▒░░
; ▒█░░█▒░█
; █▒░░█▒▒░
; █▒░░░█▒░
; ▒▒▒░░█▒▒
; ░▒▒▒░░▒▒
; .░▒▒▒░░▒
;
SPRITE_TILES_ENEMY_YAREEKA_03:
    .byte $37,$7b,$7b,$b9,$bd,$1c,$8c,$46   ; byte
    .byte $29,$0c,$cd,$ce,$c6,$e7,$73,$39   ; byte


;
; ░▒▒▒▒░.░
; ░▒▒▒░░░░
; █░░░░▒▒▒
; ▒█▒▒▒▒░░
; ▒▒▒░░░..
; ░░░▒▒▒░░
; ▒▒▒▒▒▒▒▒
; ▒▒▒░░░░░
;
SPRITE_TILES_ENEMY_YAREEKA_04:
    .byte $85,$8f,$f8,$43,$1c,$e3,$00,$1f   ; byte
    .byte $78,$70,$87,$fc,$e0,$1c,$ff,$e0   ; byte


;
; ..░▒▒▒░░
; ...░▒▒░.
; ...░▒▒░.
; ...░▒▒░.
; ..░▒▒▒░.
; .░░▒▒░..
; ░██▒▒░..
; ▒▒▒░░...
;
SPRITE_TILES_ENEMY_YAREEKA_05:
    .byte $23,$12,$12,$12,$22,$64,$e4,$18   ; byte
    .byte $1c,$0c,$0c,$0c,$1c,$18,$78,$e0   ; byte


;
; ░░░░░...
; .░░░▒░..
; ..░░▒░..
; ..░▒▒░..
; ..░▒▒░..
; ..░▒▒░..
; ...░▒▒░.
; ....░▒▒░
;
SPRITE_TILES_ENEMY_YAREEKA_06:
    .byte $f8,$74,$34,$24,$24,$24,$12,$09   ; byte
    .byte $00,$08,$08,$18,$18,$18,$0c,$06   ; byte


;
; ........
; ........
; ........
; .......█
; ......█▒
; ......▒▒
; .......▒
; ......▒█
;
SPRITE_TILES_ENEMY_YAREEKA_07:
    .byte $00,$00,$00,$01,$02,$00,$00,$01   ; byte
    .byte $00,$00,$00,$01,$03,$03,$01,$03   ; byte


;
; ........
; ....█▒..
; .▒▒██▒..
; ▒▒██▒▒..
; ▒██▒█▒..
; ███▒█▒..
; ██▒███..
; █▒████..
;
SPRITE_TILES_ENEMY_YAREEKA_08:
    .byte $00,$08,$18,$30,$68,$e8,$dc,$bc   ; byte
    .byte $00,$0c,$7c,$fc,$fc,$fc,$fc,$fc   ; byte


;
; .....▒██
; ....▒███
; ...▒███▒
; ..▒███▒▒
; .▒███▒▒▒
; .░▒█▒░░░
; ░░▒▒░▒▒░
; ░██░░███
;
SPRITE_TILES_ENEMY_YAREEKA_09:
    .byte $03,$07,$0e,$1c,$38,$57,$c9,$ff   ; byte
    .byte $07,$0f,$1f,$3f,$7f,$38,$36,$67   ; byte


;
; █▒▒▒▒▒..
; ▒▒▒░░░..
; ▒▒░.....
; ▒░......
; ▒░......
; ░.......
; ........
; ░░░░░░..
;
SPRITE_TILES_ENEMY_YAREEKA_10:
    .byte $80,$1c,$20,$40,$40,$80,$00,$fc   ; byte
    .byte $fc,$e0,$c0,$80,$80,$00,$00,$00   ; byte


;
; █░█░░█░█
; ░██░░▒█░
; ░░░░░░░░
; ░█░░█▒▒░
; ██░.░█▒░
; █▒░.░█▒▒
; ▒▒▒░.░▒▒
; ░▒▒░..░▒
;
SPRITE_TILES_ENEMY_YAREEKA_11:
    .byte $ff,$fb,$ff,$f9,$ed,$ac,$14,$92   ; byte
    .byte $a5,$66,$00,$4e,$c6,$c7,$e3,$61   ; byte


;
; ░▒▒▒▒▒░░
; ░▒▒▒░░▒▒
; ▒░░░░░░░
; ▒▒▒▒▒▒░░
; ░▒▒░░░▒░
; ░░░..░▒░
; ▒░....░░
; ▒░......
;
SPRITE_TILES_ENEMY_YAREEKA_12:
    .byte $83,$8c,$7f,$03,$9d,$e5,$43,$40   ; byte
    .byte $7c,$73,$80,$fc,$62,$02,$80,$80   ; byte


;
; ░▒▒▒░.░▒
; .░▒▒▒░.░
; ..░▒▒▒░.
; ░..░▒▒░.
; ▒░░▒▒▒░.
; ▒█▒▒▒░..
; ░▒▒▒░...
; .░░░....
;
SPRITE_TILES_ENEMY_YAREEKA_13:
    .byte $8a,$45,$22,$92,$62,$44,$88,$70   ; byte
    .byte $71,$38,$1c,$0c,$9c,$f8,$70,$00   ; byte


;
; ▒▒░..░░░
; ▒▒▒░░▒▒▒
; ░▒▒▒▒▒▒░
; .░░▒▒░░.
; ...░░...
; ........
; ........
; ........
;
SPRITE_TILES_ENEMY_YAREEKA_14:
    .byte $27,$18,$81,$66,$18,$00,$00,$00   ; byte
    .byte $c0,$e7,$7e,$18,$00,$00,$00,$00   ; byte


;============================================================================
; Enemy Tiles: Magman
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8048]
;============================================================================

;
; ..▒▒░...
; .▒.▒█░..
; .▒░▒░░▒.
; ...▒░▒░.
; .▒▒.░░░.
; ...░░░..
; ..░▒░░..
; ..█▒░.▒▒
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8048]
;
SPRITE_TILES_ENEMY_MAGMAN_00:
    .byte $08,$0c,$2c,$0a,$0e,$1c,$2c,$28   ; byte
    .byte $30,$58,$52,$14,$60,$00,$10,$33   ; byte


;
; ........
; ........
; ..█▒....
; ..▒░█...
; ▒░▒░▒░..
; ░.░░▒░▒.
; ...░░░▒.
; ▒▒.░░░░.
;
SPRITE_TILES_ENEMY_MAGMAN_01:
    .byte $00,$00,$20,$18,$54,$b4,$1c,$1e   ; byte
    .byte $00,$00,$30,$28,$a8,$0a,$02,$c0   ; byte


;
; .█▒░.▒██
; .▒▒░.░▒█
; .▒░░░░░▒
; .░░░░█░░
; ..▒░░░░█
; ...░░░░░
; ....░░░░
; ......░░
;
SPRITE_TILES_ENEMY_MAGMAN_02:
    .byte $53,$15,$3e,$7f,$1f,$1f,$0f,$03   ; byte
    .byte $67,$63,$41,$04,$21,$00,$00,$00   ; byte


;
; ▒▒▒.░░░.
; ▒▒▒░░▒░.
; ▒▒▒░░█░░
; ░▒░▒░█▒░
; ░▒▒░░▒▒░
; ░░░░░▒▒░
; ░░░░░░░░
; ░░░░░░░.
;
SPRITE_TILES_ENEMY_MAGMAN_03:
    .byte $0e,$1a,$1f,$ad,$99,$f9,$ff,$fe   ; byte
    .byte $e0,$e4,$e4,$56,$66,$06,$00,$00   ; byte


;
; .......░
; .......░
; .....░▒▒
; ....░▒▒░
; ....░█▒░
; ...░█▒░▒
; ...░▒▒▒█
; ...░▒░▒░
;
SPRITE_TILES_ENEMY_MAGMAN_04:
    .byte $01,$01,$04,$09,$0d,$1a,$11,$15   ; byte
    .byte $00,$00,$03,$06,$06,$0d,$0f,$0a   ; byte


;
; ░░░░░░░.
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ▒░░▒▒░░░
; ░▒▒▒░░░░
; ░▒▒░░░░.
; ░▒▒░░░░.
;
SPRITE_TILES_ENEMY_MAGMAN_05:
    .byte $fe,$ff,$ff,$ff,$67,$8f,$9e,$9e   ; byte
    .byte $00,$00,$00,$00,$98,$70,$60,$60   ; byte


;
; ...░▒░▒░
; ...░▒░▒░
; ..░▒░█▒░
; .░░░█▒░█
; .░▒░▒▒░░
; .░▒▒░░█▒
; ..░░▒░▒▒
; ....░▒░░
;
SPRITE_TILES_ENEMY_MAGMAN_06:
    .byte $15,$15,$2d,$7b,$53,$4e,$34,$0b   ; byte
    .byte $0a,$0a,$16,$0d,$2c,$33,$0b,$04   ; byte


;
; ░▒░░░░░.
; ▒░░░░░░░
; ▒░░░░░░░
; █▒░▒░░░░
; ▒▒░▒▒░░░
; ░░▒▒▒░░.
; ░▒░▒░░░.
; ▒░▒░▒░..
;
SPRITE_TILES_ENEMY_MAGMAN_07:
    .byte $be,$7f,$7f,$af,$27,$c6,$ae,$54   ; byte
    .byte $40,$80,$80,$d0,$d8,$38,$50,$a8   ; byte


;
; .▒▒░....
; ▒.▒█░...
; ▒░▒░░▒..
; ..▒░▒░..
; ▒▒.░░░.▒
; ...░░..░
; ..░▒░...
; ..▒█░...
;
SPRITE_TILES_ENEMY_MAGMAN_08:
    .byte $10,$18,$58,$14,$1c,$19,$28,$18   ; byte
    .byte $60,$b0,$a4,$28,$c1,$00,$10,$30   ; byte


;
; ........
; ........
; .█▒.....
; .▒░█....
; ░▒░▒░...
; .░░▒░▒..
; ..░░░▒..
; ..░░░░..
;
SPRITE_TILES_ENEMY_MAGMAN_09:
    .byte $00,$00,$40,$30,$a8,$68,$38,$3c   ; byte
    .byte $00,$00,$60,$50,$50,$14,$04,$00   ; byte


;
; .░█▒░..▒
; .▒▒▒░▒██
; .▒▒░.░▒█
; .▒░░.░░▒
; .░░░░█░░
; ..░░░░░█
; ...░░░░░
; ....░░░░
;
SPRITE_TILES_ENEMY_MAGMAN_10:
    .byte $68,$0b,$15,$36,$7f,$3f,$1f,$0f   ; byte
    .byte $31,$77,$63,$41,$04,$01,$00,$00   ; byte


;
; ▒▒.░░░░.
; ▒▒▒░▒▒░.
; ▒▒▒.▒█░.
; ▒▒▒░▒█▒░
; ░▒░▒░▒▒░
; ░▒▒░░▒▒░
; ░░░░░░░░
; ░░░░░░░░
;
SPRITE_TILES_ENEMY_MAGMAN_11:
    .byte $1e,$12,$06,$15,$a9,$99,$ff,$ff   ; byte
    .byte $c0,$ec,$ec,$ee,$56,$66,$00,$00   ; byte


;
; .......░
; .....░░░
; ....░▒▒▒
; ...░▒▒▒░
; ...░▒▒▒░
; ...▒▒█░▒
; ..░▒█▒▒░
; ..░▒░▒▒░
;
SPRITE_TILES_ENEMY_MAGMAN_12:
    .byte $01,$07,$08,$11,$11,$06,$29,$29   ; byte
    .byte $00,$00,$07,$0e,$0e,$1d,$1e,$16   ; byte


;
; ░░░░░░..
; ░░░░░░░.
; ░░░░░░░.
; ░░░░░░░.
; ▒░▒▒░░░.
; ░▒▒░░░░.
; ▒▒░░░░..
; █▒░░░░..
;
SPRITE_TILES_ENEMY_MAGMAN_13:
    .byte $fc,$fe,$fe,$fe,$4e,$9e,$3c,$bc   ; byte
    .byte $00,$00,$00,$00,$b0,$60,$c0,$c0   ; byte


;
; ..░▒░▒▒░
; ..░▒░▒░░
; ..░▒░█░▒
; ..░░█▒░▒
; ..░▒▒▒░░
; ..░▒▒░█▒
; ..░░▒░▒▒
; ....░▒░░
;
SPRITE_TILES_ENEMY_MAGMAN_14:
    .byte $29,$2b,$2e,$3a,$23,$26,$34,$0b   ; byte
    .byte $16,$14,$15,$0d,$1c,$1b,$0b,$04   ; byte


;
; ▒▒░░░░..
; ▒░░░░░..
; █▒▒░░░░.
; ▒█▒▒▒░░░
; ▒▒▒▒█▒░░
; ░░▒▒▒▒░░
; ░▒░▒░░░.
; ▒░▒░▒░..
;
SPRITE_TILES_ENEMY_MAGMAN_15:
    .byte $3c,$7c,$9e,$47,$0b,$c3,$ae,$54   ; byte
    .byte $c0,$80,$e0,$f8,$fc,$3c,$50,$a8   ; byte


;============================================================================
; Enemy Tiles: Unused Curltail
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::804a]
;============================================================================

;
; ..░░░...
; ..▒█▒░..
; ██.░█▒░.
; .░█░█▒░.
; ..█░██▒░
; ..▒░░░██
; .█░█░░██
; ██▒░░██▒
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::804a]
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_00:
    .byte $38,$14,$da,$7a,$3d,$1f,$7f,$de   ; byte
    .byte $00,$38,$cc,$2c,$2e,$23,$53,$e7   ; byte


;
; ........
; ........
; ........
; ....█░..
; ....█░..
; ░░..█░..
; █░░░░░..
; ░▒██▒░..
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_01:
    .byte $00,$00,$00,$0c,$0c,$cc,$fc,$b4   ; byte
    .byte $00,$00,$00,$08,$08,$08,$80,$78   ; byte


;
; ▒░░███▒░
; .▒.░██▒░
; .█..░█░░
; ...▒▒█░▒
; ..▒██░░▒
; ..█..░▒█
; ....░▒██
; ....░███
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_02:
    .byte $7d,$1d,$4f,$06,$1e,$25,$0b,$0f   ; byte
    .byte $9e,$4e,$44,$1d,$39,$23,$07,$07   ; byte


;
; ▒▒███▒░.
; ▒████▒▒░
; ▒███░█▒░
; ░▒▒░░█▒░
; ░░░░██▒░
; ▒▒░█░█▒░
; ▒▒░███░.
; ▒░░██▒░.
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_03:
    .byte $3a,$79,$7d,$9d,$fd,$3d,$3e,$7a   ; byte
    .byte $fc,$fe,$f6,$66,$0e,$d6,$dc,$9c   ; byte


;
; .....▒█▒
; .....░░░
; .......█
; ....░░░.
; ..░▒███░
; .░██████
; ░██▒░░░█
; ▒█▒░...░
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_04:
    .byte $02,$07,$01,$0e,$2f,$7f,$ef,$51   ; byte
    .byte $07,$00,$01,$00,$1e,$3f,$71,$e0   ; byte


;
; ░░░░░░..
; █▒░░█░..
; █▒░░█░░.
; ░▒░░█░░.
; ..░░█░░░
; ░..░█░▒░
; ▒░.░█░▒░
; █░.░▒░▒░
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_05:
    .byte $fc,$bc,$be,$be,$3f,$9d,$5d,$d5   ; byte
    .byte $00,$c8,$c8,$48,$08,$0a,$8a,$8a   ; byte


;
; ██░.█░.░
; ██░.█▒░▒
; ██░..█▒░
; ██▒░....
; ░██▒░..░
; .▒██████
; ..▒▒███▒
; ...░░░░░
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_06:
    .byte $ed,$ea,$e5,$d0,$e9,$3f,$0e,$1f   ; byte
    .byte $c8,$cd,$c6,$e0,$70,$7f,$3f,$00   ; byte


;
; ▒░.░▒░░░
; ▒.░██▒░░
; .░░██▒░.
; ░█░██▒░.
; ██░██▒░.
; █▒░░█░..
; ▒░░.█░..
; ░...░░..
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_07:
    .byte $57,$3b,$7a,$fa,$fa,$bc,$6c,$8c   ; byte
    .byte $88,$9c,$1c,$5c,$dc,$c8,$88,$00   ; byte


;
; ........
; ........
; ....█░..
; ....█░..
; ....█░..
; ░░..█░..
; █░░░░░..
; ░▒██▒░..
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_08:
    .byte $00,$00,$0c,$0c,$0c,$cc,$fc,$b4   ; byte
    .byte $00,$00,$08,$08,$08,$08,$80,$78   ; byte


;
; ▒░░██▒░░
; ▒.░██▒░░
; .░░██▒░.
; ░█░██▒░.
; ██░░█░..
; █▒░░█░..
; ▒░░.░...
; ░.......
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_09:
    .byte $7b,$3b,$7a,$fa,$fc,$bc,$68,$80   ; byte
    .byte $9c,$9c,$1c,$5c,$c8,$c8,$80,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ░░......
; ▒░░░....
; ░█▒▒░...
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_10:
    .byte $00,$00,$00,$00,$00,$c0,$70,$c8   ; byte
    .byte $00,$00,$00,$00,$00,$00,$80,$70   ; byte


;
; ███▒▒░..
; ████▒░..
; ████▒▒░.
; ░░███▒░.
; ░░░██▒░.
; ░░███▒░.
; ████▒▒░.
; ██▒▒▒░░.
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_11:
    .byte $e4,$f4,$f2,$fa,$fa,$fa,$f2,$c6   ; byte
    .byte $f8,$f8,$fc,$3c,$1c,$3c,$fc,$f8   ; byte


;
; ....▒░██
; █████░██
; ░░░░░░░░
; ...░░░░░
; ..░▒▒██▒
; .░██████
; ░██▒░░▒█
; ░█▒░░░░█
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_12:
    .byte $07,$ff,$ff,$1f,$26,$7f,$ed,$df   ; byte
    .byte $0b,$fb,$00,$00,$1f,$3f,$73,$61   ; byte


;
; █░░░░░░.
; ░██████.
; ░░░░░░░.
; ░█▒▒░░..
; ░░█▒▒░..
; ▒░░█▒░░.
; █░░██▒░.
; █░.██▒░.
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_13:
    .byte $fe,$fe,$fe,$cc,$e4,$76,$fa,$da   ; byte
    .byte $80,$7e,$00,$70,$38,$98,$9c,$9c   ; byte


;
; █░.██▒░.
; ▒.░██▒░.
; .░▒█▒░░.
; ░▒██▒░..
; ▒██▒░░..
; ██▒░░...
; ▒░░░....
; ░░......
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_14:
    .byte $da,$3a,$56,$b4,$6c,$d8,$70,$c0   ; byte
    .byte $9c,$9c,$38,$78,$f0,$e0,$80,$00   ; byte


;
; .....▒░█
; ██████░█
; ░░░░░░░░
; ...░░░░░
; ..░░███▒
; .░██████
; ░██▒░░▒█
; ░█▒░░░░█
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_15:
    .byte $03,$ff,$ff,$1f,$3e,$7f,$ed,$df   ; byte
    .byte $05,$fd,$00,$00,$0f,$3f,$73,$61   ; byte


;
; █░░░░░░░
; ░███████
; ░░░░░░░░
; ░█▒▒░░..
; ░░█▒▒░..
; ▒░░█▒░░.
; █░░██▒░.
; █░.██▒░.
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_16:
    .byte $ff,$ff,$ff,$cc,$e4,$76,$fa,$da   ; byte
    .byte $80,$7f,$00,$70,$38,$98,$9c,$9c   ; byte


;
; .███....
; ███▒████
; .▒▒▒░░░░
; ........
; ........
; ........
; ........
; ........
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_17:
    .byte $70,$ef,$0f,$00,$00,$00,$00,$00   ; byte
    .byte $70,$ff,$70,$00,$00,$00,$00,$00   ; byte


;
; ..███...
; .███▒███
; ..▒▒▒░░░
; ........
; ........
; ........
; ........
; ........
;
SPRITE_TILES_ENEMY_UNUSED_CURLTAIL_18:
    .byte $38,$77,$07,$00,$00,$00,$00,$00   ; byte
    .byte $38,$7f,$38,$00,$00,$00,$00,$00   ; byte


;============================================================================
; Enemy Tiles: Ikeda
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::804e]
;============================================================================

;
; ....░█▒░
; ...░███░
; ..░░███░
; .░█▒░░░▒
; ░█▒░██▒░
; ░█▒░░██░
; ██▒░██▒░
; ███▒░░░░
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::804e]
;
SPRITE_TILES_ENEMY_IKEDA_00:
    .byte $0d,$1f,$3f,$6e,$dd,$df,$dd,$ef   ; byte
    .byte $06,$0e,$0e,$31,$6e,$66,$ee,$f0   ; byte


;
; ........
; ░.......
; ░.......
; ░░░░....
; ░░▒▒░...
; ░██▒▒░..
; ░▒██▒░..
; ░▒███▒░.
;
SPRITE_TILES_ENEMY_IKEDA_01:
    .byte $00,$80,$80,$f0,$c8,$e4,$b4,$ba   ; byte
    .byte $00,$00,$00,$00,$30,$78,$78,$7c   ; byte


;
; ░░░█▒░░░
; .░██░░░▒
; .█▒░██▒█
; ..░░░░██
; ...░░░█▒
; ..░░░░█░
; .░███░█░
; ░█▒░░░░█
;
SPRITE_TILES_ENEMY_IKEDA_02:
    .byte $f7,$7e,$5d,$3f,$1e,$3f,$7f,$df   ; byte
    .byte $18,$31,$6f,$03,$03,$02,$3a,$61   ; byte


;
; ▒████▒░.
; ███▒▒░░.
; █▒░░░░░.
; ▒░░░░░░.
; ░░█▒░░░.
; ░░██▒░..
; ░░██▒░..
; ░░▒█▒░..
;
SPRITE_TILES_ENEMY_IKEDA_03:
    .byte $7a,$e6,$be,$7e,$ee,$f4,$f4,$d4   ; byte
    .byte $fc,$f8,$c0,$80,$30,$38,$38,$38   ; byte


;
; █▒░....░
; █░....░░
; ░....░██
; ....░█░░
; ...░█░░░
; ...░█░░█
; ...░█░█▒
; ....░░█░
;
SPRITE_TILES_ENEMY_IKEDA_04:
    .byte $a1,$c3,$87,$0f,$1f,$1f,$1e,$0f   ; byte
    .byte $c0,$80,$03,$04,$08,$09,$0b,$02   ; byte


;
; ░░░██░..
; ░░░░█▒░.
; █████▒░.
; ▒▒██▒░░.
; ░░░░░░..
; ░█▒░░...
; ░░█▒░...
; .░█▒░...
;
SPRITE_TILES_ENEMY_IKEDA_05:
    .byte $fc,$fa,$fa,$36,$fc,$d8,$e8,$68   ; byte
    .byte $18,$0c,$fc,$f8,$00,$60,$30,$30   ; byte


;
; .....░█░
; .....░█░
; .....░█▒
; ...░░██▒
; ..░██▒░░
; ...░░░..
; ........
; ........
;
SPRITE_TILES_ENEMY_IKEDA_06:
    .byte $07,$07,$06,$1e,$3b,$1c,$00,$00   ; byte
    .byte $02,$02,$03,$07,$1c,$00,$00,$00   ; byte


;
; .░█▒░...
; .░█▒░...
; ░.░█▒░..
; ░..░█▒░.
; ....░█░.
; ..░░░█▒░
; .░████▒░
; .░░░░░░░
;
SPRITE_TILES_ENEMY_IKEDA_07:
    .byte $68,$68,$b4,$9a,$0e,$3d,$7d,$7f   ; byte
    .byte $30,$30,$18,$0c,$04,$06,$3e,$00   ; byte


;
; ░░░█▒░░░
; ████░░░▒
; ░░░░██▒█
; ..░░░░██
; ...░░░█▒
; ...░▒░█░
; ..░█▒░█░
; .░█▒░░░█
;
SPRITE_TILES_ENEMY_IKEDA_08:
    .byte $f7,$fe,$fd,$3f,$1e,$17,$37,$6f   ; byte
    .byte $18,$f1,$0f,$03,$03,$0a,$1a,$31   ; byte


;
; .░█▒░..░
; ..░█░░░░
; ...░░▒██
; ..░▒██▒░
; .░█▒░░░░
; ░█░░....
; ░░.....░
; ......░▒
;
SPRITE_TILES_ENEMY_IKEDA_09:
    .byte $69,$3f,$1b,$2d,$6f,$f0,$c1,$02   ; byte
    .byte $30,$10,$07,$1e,$30,$40,$00,$01   ; byte


;
; ░░░██░..
; ░░░░█▒░.
; █████▒░.
; ▒▒██▒░░.
; ░░░░░░..
; ▒█▒░░...
; █▒░░....
; █▒░.....
;
SPRITE_TILES_ENEMY_IKEDA_10:
    .byte $fc,$fa,$fa,$36,$fc,$58,$b0,$a0   ; byte
    .byte $18,$0c,$fc,$f8,$00,$e0,$c0,$c0   ; byte


;
; ......░█
; ......░█
; .......░
; .......░
; ......░░
; .....░█▒
; .....░▒█
; ......░░
;
SPRITE_TILES_ENEMY_IKEDA_11:
    .byte $03,$03,$01,$01,$03,$06,$05,$03   ; byte
    .byte $01,$01,$00,$00,$00,$03,$03,$00   ; byte


;
; ▒░......
; ▒░......
; █░......
; █▒░.....
; ░▒░.....
; ░█▒░....
; ██▒░....
; ░░░.....
;
SPRITE_TILES_ENEMY_IKEDA_12:
    .byte $40,$40,$c0,$a0,$a0,$d0,$d0,$e0   ; byte
    .byte $80,$80,$80,$c0,$40,$60,$e0,$00   ; byte


;
; .░█▒░..░
; ..░█░░░░
; ...░░▒██
; ..░▒██▒░
; .░█▒░░░░
; ░█░░.░█░
; ░░..░██░
; ...░█▒░█
;
SPRITE_TILES_ENEMY_IKEDA_13:
    .byte $69,$3f,$1b,$2d,$6f,$f7,$cf,$1b   ; byte
    .byte $30,$10,$07,$1e,$30,$42,$06,$0d   ; byte


;
; ░░░██░..
; ░░░░█▒░.
; █████▒░.
; ▒▒██▒░░.
; ░░░░░░..
; ▒█▒░░...
; █▒░░....
; █▒░.....
;
SPRITE_TILES_ENEMY_IKEDA_14:
    .byte $fc,$fa,$fa,$36,$fc,$58,$b0,$a0   ; byte
    .byte $18,$0c,$fc,$f8,$00,$e0,$c0,$c0   ; byte


;
; ..░█▒░██
; .░█▒░░██
; .░███░░░
; ..░░███░
; ...░░░░█
; .....░░░
; ......░█
; ......░░
;
SPRITE_TILES_ENEMY_IKEDA_15:
    .byte $37,$6f,$7f,$3f,$1f,$07,$03,$03   ; byte
    .byte $1b,$33,$38,$0e,$01,$00,$01,$00   ; byte


;
; ▒▒░░░░░░
; ██████▒░
; ░░░░░░▒░
; ░░...░▒░
; █▒░.░█▒░
; █▒░.░█░.
; ▒░..░░..
; ░.......
;
SPRITE_TILES_ENEMY_IKEDA_16:
    .byte $3f,$fd,$fd,$c5,$ad,$ae,$4c,$80   ; byte
    .byte $c0,$fe,$02,$02,$c6,$c4,$80,$00   ; byte


;============================================================================
; Enemy Tiles: Unused Muppet Guy
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8050]
;============================================================================

;
; .▒██░.▒█
; ░█░██░█░
; ░█░██░█░
; .░██░.░█
; ..░█░.░█
; ..░█░.░█
; ...▒█░█▒
; ...░██▒░
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8050]
;
SPRITE_TILES_ENEMY_UNUSED_MUPPET_GUY_00:
    .byte $39,$ff,$ff,$7b,$3b,$3b,$0e,$1d   ; byte
    .byte $73,$5a,$5a,$31,$11,$11,$1b,$0e   ; byte


;
; █░......
; ██░.....
; ██░.....
; █░......
; ░.......
; ░.......
; ░.......
; ........
;
SPRITE_TILES_ENEMY_UNUSED_MUPPET_GUY_01:
    .byte $c0,$e0,$e0,$c0,$80,$80,$80,$00   ; byte
    .byte $80,$c0,$c0,$80,$00,$00,$00,$00   ; byte


;
; ...░██▒░
; ...▒███▒
; ..░█░░▒█
; ..░█░░░█
; ..░░░░░░
; ▒██▒░░░░
; ..░██▒░░
; .░░░██▒░
;
SPRITE_TILES_ENEMY_UNUSED_MUPPET_GUY_02:
    .byte $1d,$0e,$3d,$3f,$3f,$6f,$3b,$7d   ; byte
    .byte $0e,$1f,$13,$11,$00,$f0,$1c,$0e   ; byte


;
; ........
; ░.......
; ▒░......
; ▒░......
; █▒░.....
; █▒░.....
; █▒░.....
; █▒░.....
;
SPRITE_TILES_ENEMY_UNUSED_MUPPET_GUY_03:
    .byte $00,$80,$40,$40,$a0,$a0,$a0,$a0   ; byte
    .byte $00,$00,$80,$80,$c0,$c0,$c0,$c0   ; byte


;
; .░█░░░░░
; .░█░░██░
; .░█░████
; .░███░░▒
; ░░▒▒▒░░░
; ░▒░▒░░░░
; ░██░░░██
; ░▒██████
;
SPRITE_TILES_ENEMY_UNUSED_MUPPET_GUY_04:
    .byte $7f,$7f,$7f,$7e,$c7,$af,$ff,$bf   ; byte
    .byte $20,$26,$2f,$39,$38,$50,$63,$7f   ; byte


;
; █▒░.....
; ░█░.....
; ██░.....
; █▒░.....
; ▒▒░.....
; ░░░░....
; █▒░░....
; █▒░░....
;
SPRITE_TILES_ENEMY_UNUSED_MUPPET_GUY_05:
    .byte $a0,$e0,$e0,$a0,$20,$f0,$b0,$b0   ; byte
    .byte $c0,$40,$c0,$c0,$c0,$00,$c0,$c0   ; byte


;
; .░░▒▒███
; .░░░░▒▒▒
; .░█▒░░░░
; .░▒▒░░░█
; ..░░░███
; ..░████▒
; .░██▒▒▒▒
; ░▒▒░░░░░
;
SPRITE_TILES_ENEMY_UNUSED_MUPPET_GUY_06:
    .byte $67,$78,$6f,$4f,$3f,$3e,$70,$9f   ; byte
    .byte $1f,$07,$30,$31,$07,$1f,$3f,$60   ; byte


;
; ▒░░░....
; ░▒▒░░...
; ▒█▒▒░...
; ███▒░░..
; ██▒▒░░..
; ▒▒▒░░█░.
; ░░░░▒▒▒░
; ▒▒▒░░░░░
;
SPRITE_TILES_ENEMY_UNUSED_MUPPET_GUY_07:
    .byte $70,$98,$48,$ec,$cc,$1e,$f1,$1f   ; byte
    .byte $80,$60,$f0,$f0,$f0,$e4,$0e,$e0   ; byte


;
; ........
; ........
; .░░...░░
; ░▒▒░.░▒▒
; █░▒▒░█░▒
; █░▒▒░█░▒
; ░▒▒░.░▒▒
; .░█░.░█░
;
SPRITE_TILES_ENEMY_UNUSED_MUPPET_GUY_08:
    .byte $00,$00,$63,$94,$ce,$ce,$94,$77   ; byte
    .byte $00,$00,$00,$63,$b5,$b5,$63,$22   ; byte


;
; ........
; ........
; ........
; ░.......
; ▒░......
; ▒░......
; ░.......
; ........
;
SPRITE_TILES_ENEMY_UNUSED_MUPPET_GUY_09:
    .byte $00,$00,$00,$80,$40,$40,$80,$00   ; byte
    .byte $00,$00,$00,$00,$80,$80,$00,$00   ; byte


;
; .░▒█░█▒░
; ..░██▒░.
; ...██▒░.
; ..░███░.
; ..░███▒░
; .░██▒▒█▒
; .░█░░░░▒
; ..█░░░░░
;
SPRITE_TILES_ENEMY_UNUSED_MUPPET_GUY_10:
    .byte $5d,$3a,$1a,$3e,$3d,$72,$7e,$3f   ; byte
    .byte $36,$1c,$1c,$1c,$1e,$3f,$21,$20   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ░.......
; ▒░......
; █▒░.....
;
SPRITE_TILES_ENEMY_UNUSED_MUPPET_GUY_11:
    .byte $00,$00,$00,$00,$00,$80,$40,$a0   ; byte
    .byte $00,$00,$00,$00,$00,$00,$80,$c0   ; byte


;
; ..█░█▒░░
; ..█░░█▒░
; ..█░░░░░
; .░░█░░░░
; ░▒░▒████
; ░▒▒░░░░░
; ░▒█▒▒▒▒█
; .░▒█████
;
SPRITE_TILES_ENEMY_UNUSED_MUPPET_GUY_12:
    .byte $3b,$3d,$3f,$7f,$af,$9f,$a1,$5f   ; byte
    .byte $2c,$26,$20,$10,$5f,$60,$7f,$3f   ; byte


;
; ░█▒░....
; ░░█░....
; ░░█░....
; ██░░....
; ▒░░▒░...
; ░░█▒░...
; ██▒▒░...
; ██▒░░...
;
SPRITE_TILES_ENEMY_UNUSED_MUPPET_GUY_13:
    .byte $d0,$f0,$f0,$f0,$68,$e8,$c8,$d8   ; byte
    .byte $60,$20,$20,$c0,$90,$30,$f0,$e0   ; byte


;
; .░░░▒▒▒▒
; .░▒░░▒▒▒
; .░██▒░░░
; .░▒▒▒░░░
; ..░░░░▒▒
; .░░▒████
; .░▒█████
; ░▒▒▒░░░░
;
SPRITE_TILES_ENEMY_UNUSED_MUPPET_GUY_14:
    .byte $70,$58,$77,$47,$3c,$6f,$5f,$8f   ; byte
    .byte $0f,$27,$38,$38,$03,$1f,$3f,$70   ; byte


;
; ▒▒░░░...
; ▒░░▒▒░..
; ░░▒▒▒░░.
; ▒████▒░.
; ████▒▒░.
; ██▒▒▒░░░
; ▒▒▒░░░▒▒
; ░░░░░░░░
;
SPRITE_TILES_ENEMY_UNUSED_MUPPET_GUY_15:
    .byte $38,$64,$c6,$7a,$f2,$c7,$1c,$ff   ; byte
    .byte $c0,$98,$38,$fc,$fc,$f8,$e3,$00   ; byte


;============================================================================
; Enemy Tiles: Lamprey
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8052]
;============================================================================

;
; ..░██▒░.
; .░█░░█▒░
; ░▒░█░░▒▒
; ░██░░░▒▒
; ░██░░░▒▒
; ░█░░░░▒▒
; ░█░░░░▒▒
; ░▒░░░▒▒░
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8052]
;
SPRITE_TILES_ENEMY_LAMPREY_00:
    .byte $3a,$7d,$bc,$fc,$fc,$fc,$fc,$b9   ; byte
    .byte $1c,$26,$53,$63,$63,$43,$43,$46   ; byte


;
; ........
; ........
; ░░░.....
; ▒░░░░...
; █▒▒░░░..
; ███▒░░..
; ▒███▒░░.
; ░▒██▒░░.
;
SPRITE_TILES_ENEMY_LAMPREY_01:
    .byte $00,$00,$e0,$78,$9c,$ec,$76,$b6   ; byte
    .byte $00,$00,$00,$80,$e0,$f0,$f8,$78   ; byte


;
; .░▒░░▒░░
; ..░▒▒░░░
; ...░░.░░
; .....░░▒
; .....░▒█
; ....░▒██
; ...░▒███
; ...░████
;
SPRITE_TILES_ENEMY_LAMPREY_02:
    .byte $5b,$27,$1b,$06,$05,$0b,$17,$1f   ; byte
    .byte $24,$18,$00,$01,$03,$07,$0f,$0f   ; byte


;
; ░▒██▒░░.
; ▒▒██▒░░.
; ▒██▒░░░.
; ███░░░..
; ██▒░░░..
; ██░░░...
; █▒░░░...
; ▒░░░░...
;
SPRITE_TILES_ENEMY_LAMPREY_03:
    .byte $b6,$36,$6e,$fc,$dc,$f8,$b8,$78   ; byte
    .byte $78,$f8,$f0,$e0,$e0,$c0,$c0,$80   ; byte


;
; ..░▒████
; ..░████▒
; ..░████▒
; .░▒████▒
; .░█████▒
; .░██████
; .░▒█████
; .░░░████
;
SPRITE_TILES_ENEMY_LAMPREY_04:
    .byte $2f,$3e,$3e,$5e,$7e,$7f,$5f,$7f   ; byte
    .byte $1f,$1f,$1f,$3f,$3f,$3f,$3f,$0f   ; byte


;
; ░░░░░...
; ░░░░....
; ░░░░....
; ░░░░....
; ▒░░░....
; ▒░░░....
; ▒░░░....
; █▒░░....
;
SPRITE_TILES_ENEMY_LAMPREY_05:
    .byte $f8,$f0,$f0,$f0,$70,$70,$70,$b0   ; byte
    .byte $00,$00,$00,$00,$80,$80,$80,$c0   ; byte


;
; ..░░▒███
; ..░░░░░█
; ...░░██▒
; ....░░░░
; ...░░░██
; ...░████
; .░░█████
; ░▒▒▒░░░░
;
SPRITE_TILES_ENEMY_LAMPREY_06:
    .byte $37,$3f,$1e,$0f,$1f,$1f,$7f,$8f   ; byte
    .byte $0f,$01,$07,$00,$03,$0f,$1f,$70   ; byte


;
; ██░░░...
; ▒░░░░░..
; ░███▒░░.
; █████▒░.
; █████▒░.
; ███▒▒░░░
; ▒▒░░░▒▒░
; ░░░▒▒▒░░
;
SPRITE_TILES_ENEMY_LAMPREY_07:
    .byte $f8,$7c,$f6,$fa,$fa,$e7,$39,$e3   ; byte
    .byte $c0,$80,$78,$fc,$fc,$f8,$c6,$1c   ; byte


;
; ........
; ....░░░░
; ...░▒███
; ..░██░░░
; .░▒█░█░░
; .░█░██░░
; .░█░█░░░
; .░█░█░░░
;
SPRITE_TILES_ENEMY_LAMPREY_08:
    .byte $00,$0f,$17,$3f,$5f,$7f,$7f,$7f   ; byte
    .byte $00,$00,$0f,$18,$34,$2c,$28,$28   ; byte


;
; ........
; ░░......
; █▒░.....
; ██▒░....
; ░█▒▒░...
; ░░▒▒░░..
; ░░▒▒░░░.
; ░░▒▒░░░.
;
SPRITE_TILES_ENEMY_LAMPREY_09:
    .byte $00,$c0,$a0,$d0,$c8,$cc,$ce,$ce   ; byte
    .byte $00,$00,$c0,$e0,$70,$30,$30,$30   ; byte


;
; .░█░░░░░
; .░▒▒░░░░
; ..░█▒░░░
; ...░▒▒▒▒
; ....░░░░
; ......░░
; ......░█
; .....░██
;
SPRITE_TILES_ENEMY_LAMPREY_10:
    .byte $7f,$4f,$37,$10,$0f,$03,$03,$07   ; byte
    .byte $20,$30,$18,$0f,$00,$00,$01,$03   ; byte


;
; ░░▒▒░░░░
; ░▒▒░░░░░
; ▒▒░░░▒░░
; ▒░░░█▒░░
; ░░▒█▒░░░
; ▒███▒░░.
; ██▒▒░░░.
; █▒░░░░..
;
SPRITE_TILES_ENEMY_LAMPREY_11:
    .byte $cf,$9f,$3b,$7b,$d7,$76,$ce,$bc   ; byte
    .byte $30,$60,$c4,$8c,$38,$f8,$f0,$c0   ; byte


;
; ....░▒██
; ...░░██▒
; ...░▒██▒
; ..░░███▒
; ..░▒████
; .░▒█████
; .░▒█████
; .░██████
;
SPRITE_TILES_ENEMY_LAMPREY_12:
    .byte $0b,$1e,$16,$3e,$2f,$5f,$5f,$7f   ; byte
    .byte $07,$07,$0f,$0f,$1f,$3f,$3f,$3f   ; byte


;
; ▒░░░░...
; ░░░░░...
; ░░░░....
; ░░░░....
; ▒░░░....
; ▒░░░....
; ▒░▒░....
; █▒░░....
;
SPRITE_TILES_ENEMY_LAMPREY_13:
    .byte $78,$f8,$f0,$f0,$70,$70,$50,$b0   ; byte
    .byte $80,$00,$00,$00,$80,$80,$a0,$c0   ; byte


;
; .░░█████
; .░█░░▒█▒
; .░█▒░░░░
; .░░░░░░█
; ..░░░███
; ..░█████
; .░████▒▒
; ░▒▒░░░░░
;
SPRITE_TILES_ENEMY_LAMPREY_14:
    .byte $7f,$7a,$6f,$7f,$3f,$3f,$7c,$9f   ; byte
    .byte $1f,$27,$30,$01,$07,$1f,$3f,$60   ; byte


;
; █░░░....
; ░▒▒░░...
; ███▒░...
; ████▒░..
; ████▒░..
; ██▒▒░░░.
; ░░░░░▒░.
; ▒▒▒░░░░░
;
SPRITE_TILES_ENEMY_LAMPREY_15:
    .byte $f0,$98,$e8,$f4,$f4,$ce,$fa,$1f   ; byte
    .byte $80,$60,$f0,$f8,$f8,$f0,$04,$e0   ; byte


;============================================================================
; Enemy Tiles: Monodron
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8056]
;============================================================================

;
; ........
; ........
; ........
; ........
; .......░
; ....░░░▒
; ...░░▒▒▒
; ..░░▒▒██
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8056]
;
SPRITE_TILES_ENEMY_MONODRON_00:
    .byte $00,$00,$00,$00,$01,$0e,$18,$33   ; byte
    .byte $00,$00,$00,$00,$00,$01,$07,$0f   ; byte


;
; ........
; ........
; ........
; ........
; ░░░░....
; ▒▒▒░░░..
; ███▒▒░░.
; ████▒▒░.
;
SPRITE_TILES_ENEMY_MONODRON_01:
    .byte $00,$00,$00,$00,$f0,$1c,$e6,$f2   ; byte
    .byte $00,$00,$00,$00,$00,$e0,$f8,$fc   ; byte


;
; .░░▒▒███
; .░░▒▒███
; ░░░▒▒█▒█
; .░░░░▒▒█
; ░██▒░░▒█
; ▒░██▒░░▒
; ▒░█▒▒░░▒
; ░█▒▒░░▒▒
;
SPRITE_TILES_ENEMY_MONODRON_02:
    .byte $67,$67,$e5,$79,$ed,$76,$66,$cc   ; byte
    .byte $1f,$1f,$1f,$07,$73,$b9,$b9,$73   ; byte


;
; █▒▒██▒░░
; ███▒█▒▒░
; ███▒▒▒░░
; ████▒▒░░
; ██░░▒▒░░
; ██▒▒░░░░
; █▒░▒░░░░
; ▒▒░▒░░░.
;
SPRITE_TILES_ENEMY_MONODRON_03:
    .byte $9b,$e9,$e3,$f3,$f3,$cf,$af,$2e   ; byte
    .byte $fc,$fe,$fc,$fc,$cc,$f0,$d0,$d0   ; byte


;
; .░░░░▒▒░
; ░░░▒▒█▒░
; ░░▒▒█▒▒░
; .░░░░░▒░
; .█.█░░░░
; .....░░▒
; .....░░▒
; ..█.░░░▒
;
SPRITE_TILES_ENEMY_MONODRON_04:
    .byte $79,$e5,$c9,$7d,$5f,$06,$06,$2e   ; byte
    .byte $06,$1e,$3e,$02,$50,$01,$01,$21   ; byte


;
; ░▒▒░░░░.
; ░░░░░░..
; ░░░░░░..
; ░░░░░░..
; ▒▒▒░░░..
; ███▒▒░..
; █████▒░.
; ▒█████▒░
;
SPRITE_TILES_ENEMY_MONODRON_05:
    .byte $9e,$fc,$fc,$fc,$1c,$e4,$fa,$7d   ; byte
    .byte $60,$00,$00,$00,$e0,$f8,$fc,$fe   ; byte


;
; ...░░...
; ..░▒▒░..
; ..▒░▒▒▒░
; .▒░█▒░█▒
; █░░▒░█▒█
; █.█░█▒░░
; ..█░█░..
; ....█░..
;
SPRITE_TILES_ENEMY_MONODRON_06:
    .byte $18,$24,$11,$36,$ed,$bb,$3c,$0c   ; byte
    .byte $00,$18,$2e,$5b,$97,$ac,$28,$08   ; byte


;
; ░▒▒███▒░
; .░░▒▒██▒
; ...░░▒█▒
; ░....░▒█
; ▒░.░░▒█▒
; ▒▒░▒█▒▒░
; ░▒▒▒▒░░.
; .░░░░...
;
SPRITE_TILES_ENEMY_MONODRON_07:
    .byte $9d,$66,$1a,$85,$5a,$29,$86,$78   ; byte
    .byte $7e,$1f,$07,$03,$87,$de,$78,$00   ; byte


;
; .......░
; ....░░░▒
; ...░░▒▒▒
; ..░░▒▒██
; .░░▒▒███
; .░░▒▒███
; ░░░▒▒█▒█
; .░░░░▒▒█
;
SPRITE_TILES_ENEMY_MONODRON_08:
    .byte $01,$0e,$18,$33,$67,$67,$e5,$79   ; byte
    .byte $00,$01,$07,$0f,$1f,$1f,$1f,$07   ; byte


;
; ░░░░....
; ▒▒▒░░░..
; ███▒▒░░.
; ████▒▒░.
; █▒▒██▒░░
; ███▒█▒▒░
; ███▒▒▒░░
; ████▒▒░░
;
SPRITE_TILES_ENEMY_MONODRON_09:
    .byte $f0,$1c,$e6,$f2,$9b,$e9,$e3,$f3   ; byte
    .byte $00,$e0,$f8,$fc,$fc,$fe,$fc,$fc   ; byte


;
; ░██▒░░▒█
; ▒░██▒░░▒
; ▒░█▒▒░░▒
; ░█▒▒░░▒▒
; .░░░░▒▒░
; ░░░▒▒█▒░
; ░░▒▒█▒▒░
; .░░░░░▒░
;
SPRITE_TILES_ENEMY_MONODRON_10:
    .byte $ed,$76,$66,$cc,$79,$e5,$c9,$7d   ; byte
    .byte $73,$b9,$b9,$73,$06,$1e,$3e,$02   ; byte


;
; ██░░▒▒░░
; ██▒▒░░░░
; █▒░▒░░░░
; ▒▒░▒░░░.
; ░▒▒░░░░.
; ░░░░░░..
; ░░░░░░..
; ░░░░░░..
;
SPRITE_TILES_ENEMY_MONODRON_11:
    .byte $f3,$cf,$af,$2e,$9e,$fc,$fc,$fc   ; byte
    .byte $cc,$f0,$d0,$d0,$60,$00,$00,$00   ; byte


;
; .█.█░░░░
; .....░░▒
; .....░░▒
; ..█.░░░▒
; ..░░░▒░░
; ...░░░░.
; ........
; ........
;
SPRITE_TILES_ENEMY_MONODRON_12:
    .byte $5f,$06,$06,$2e,$3b,$1e,$00,$00   ; byte
    .byte $50,$01,$01,$21,$04,$00,$00,$00   ; byte


;
; ▒▒▒░░░..
; ███▒▒░..
; █████▒░.
; ▒█████▒░
; ░▒▒███▒░
; ░░░▒▒██▒
; ...░░▒█▒
; ....░░▒█
;
SPRITE_TILES_ENEMY_MONODRON_13:
    .byte $1c,$e4,$fa,$7d,$9d,$e6,$1a,$0d   ; byte
    .byte $e0,$f8,$fc,$fe,$7e,$1f,$07,$03   ; byte


;
; ...░░▒▒█
; .░░▒▒██░
; ░▒▒▒█░░.
; ▒█▒░░...
; ▒░░.....
; ░.......
; ........
; ........
;
SPRITE_TILES_ENEMY_MONODRON_14:
    .byte $19,$67,$8e,$58,$60,$80,$00,$00   ; byte
    .byte $07,$1e,$78,$e0,$80,$00,$00,$00   ; byte


;
; ██░░▒▒░░
; ██▒▒░░░░
; █▒░▒░░░░
; ▒▒░▒░░░.
; ░▒▒░░░░.
; ░░░░░░..
; ░▒▒░░░..
; ▒██▒░░..
;
SPRITE_TILES_ENEMY_MONODRON_15:
    .byte $f3,$cf,$af,$2e,$9e,$fc,$9c,$6c   ; byte
    .byte $cc,$f0,$d0,$d0,$60,$00,$60,$f0   ; byte


;
; .█.█░░░░
; .....░░░
; .....█░▒
; ......░▒
; ....█░░░
; .....░░.
; ........
; ........
;
SPRITE_TILES_ENEMY_MONODRON_16:
    .byte $5f,$07,$06,$02,$0f,$06,$00,$00   ; byte
    .byte $50,$00,$05,$01,$08,$00,$00,$00   ; byte


;
; ▒██▒░...
; ░███▒░..
; ░▒██▒░░.
; ░▒███▒░.
; .░▒██▒░.
; ..░▒█▒░.
; ...░▒▒░.
; ...░█░..
;
SPRITE_TILES_ENEMY_MONODRON_17:
    .byte $68,$f4,$b6,$ba,$5a,$2a,$12,$1c   ; byte
    .byte $f0,$78,$78,$7c,$3c,$1c,$0c,$08   ; byte


;
; ..░░▒░..
; ..░▒▒░..
; ..░█░▒░.
; ..░█░▒▒░
; ...░█░▒▒
; ....░▒░░
; ....░░▒░
; .....░░░
;
SPRITE_TILES_ENEMY_MONODRON_18:
    .byte $34,$24,$3a,$39,$1c,$0b,$0d,$07   ; byte
    .byte $08,$18,$14,$16,$0b,$04,$02,$00   ; byte


;============================================================================
; Enemy Tiles: Unused Winged Skeleton
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8058]
;============================================================================

;
; ........
; ........
; ........
; .......░
; .......░
; ......░█
; .....░█░
; ..░░.░█░
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8058]
;
SPRITE_TILES_ENEMY_UNUSED_WINGED_SKELETON_00:
    .byte $00,$00,$00,$01,$01,$03,$07,$37   ; byte
    .byte $00,$00,$00,$00,$00,$01,$02,$02   ; byte


;
; .░█░..░█
; ░█░░..░█
; ░█░..░█░
; █░░.░█░░
; █░░░█░░.
; ░░░█▒░░.
; ░░█▒░░░.
; ░█▒░░░░░
;
SPRITE_TILES_ENEMY_UNUSED_WINGED_SKELETON_01:
    .byte $73,$f3,$e7,$ef,$fe,$f6,$ee,$df   ; byte
    .byte $21,$41,$42,$84,$88,$18,$30,$60   ; byte


;
; .░█▒░░█░
; ..░█░░█░
; ..░█░░█░
; .░░█░░█░
; ░███▒░░░
; ██░░█▒░░
; ██░██▒░█
; .░█░█░██
;
SPRITE_TILES_ENEMY_UNUSED_WINGED_SKELETON_02:
    .byte $6f,$3f,$3f,$7f,$f7,$fb,$fb,$7f   ; byte
    .byte $32,$12,$12,$12,$78,$cc,$dd,$2b   ; byte


;
; ░███████
; ░█▒░░░░░
; ░█░█░░..
; ░█░░█░░.
; ░█░░░█░.
; ██░░░░█░
; █▒░░░░░█
; ▒░░░░...
;
SPRITE_TILES_ENEMY_UNUSED_WINGED_SKELETON_03:
    .byte $ff,$df,$fc,$fe,$fe,$ff,$bf,$78   ; byte
    .byte $7f,$60,$50,$48,$44,$c2,$c1,$80   ; byte


;
; ..░█░░█▒
; ..█░░██▒
; ....░███
; ....░▒██
; .....░██
; .....░▒█
; ......░▒
; .......░
;
SPRITE_TILES_ENEMY_UNUSED_WINGED_SKELETON_04:
    .byte $3e,$3e,$0f,$0b,$07,$05,$02,$01   ; byte
    .byte $13,$27,$07,$07,$03,$03,$01,$00   ; byte


;
; ░░░░....
; ▒▒░░....
; █▒▒░░.░.
; ██▒░░..░
; ███▒░░.░
; ███▒░░░░
; ▒██░░░░.
; ▒█▒▒░...
;
SPRITE_TILES_ENEMY_UNUSED_WINGED_SKELETON_05:
    .byte $f0,$30,$9a,$d9,$ed,$ef,$7e,$48   ; byte
    .byte $00,$c0,$e0,$e0,$f0,$f0,$e0,$f0   ; byte


;
; ........
; ........
; ........
; .......░
; ......░░
; ......░░
; .......░
; ........
;
SPRITE_TILES_ENEMY_UNUSED_WINGED_SKELETON_06:
    .byte $00,$00,$00,$01,$03,$03,$01,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ░░██░...
; ░░░██░..
; ░░.░█░..
; ░.░█░...
; .░█░....
; ░█░.....
; ░█░.....
; .░█░....
;
SPRITE_TILES_ENEMY_UNUSED_WINGED_SKELETON_07:
    .byte $f8,$fc,$dc,$b8,$70,$e0,$e0,$70   ; byte
    .byte $30,$18,$08,$10,$20,$40,$40,$20   ; byte


;
; ........
; ........
; ........
; ........
; ........
; .░░░....
; .░█▒░░░░
; ..░█░▒██
;
SPRITE_TILES_ENEMY_UNUSED_WINGED_SKELETON_08:
    .byte $00,$00,$00,$00,$00,$70,$6f,$3b   ; byte
    .byte $00,$00,$00,$00,$00,$00,$30,$17   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ░.......
; █░░░....
;
SPRITE_TILES_ENEMY_UNUSED_WINGED_SKELETON_09:
    .byte $00,$00,$00,$00,$00,$00,$80,$f0   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$80   ; byte


;
; ..░█░.█░
; .░░█░.█░
; ░███▒░░░
; ██░░█▒░█
; ██░██▒░█
; ░░█░░█▒░
; .░█░░░█▒
; ..░░░░██
;
SPRITE_TILES_ENEMY_UNUSED_WINGED_SKELETON_10:
    .byte $3b,$7b,$f7,$fb,$fb,$fd,$7e,$3f   ; byte
    .byte $12,$12,$78,$cd,$dd,$26,$23,$03   ; byte


;
; ░░▒█░░..
; ▒███▒░░.
; █████▒░.
; ░░████░░
; ░░████▒░
; ░░███▒░.
; ▒░░█▒▒░.
; █▒░░░░░░
;
SPRITE_TILES_ENEMY_UNUSED_WINGED_SKELETON_11:
    .byte $dc,$76,$fa,$ff,$fd,$fa,$72,$bf   ; byte
    .byte $30,$f8,$fc,$3c,$3e,$3c,$9c,$c0   ; byte


;============================================================================
; Sprite Tiles: Tamazutsu
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::805a]
;============================================================================

;
; ....███▒
; ..█░▒▒▒▒
; .█▒░░░░░
; .▒░████▒
; ▒░█░░░██
; ░█░██░░█
; ░█░█▒░░█
; ░▒░░░░░█
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::805a]
;
SPRITE_TILES_ENEMY_TAMAZUTSU_00:
    .byte $0e,$30,$5f,$3e,$7f,$ff,$f7,$bf   ; byte
    .byte $0f,$2f,$60,$5f,$a3,$59,$59,$41   ; byte


;
; ░.......
; ░█▒░....
; ▒██▒░...
; ░▒▒▒░░..
; ▒░▒░░▒░.
; █▒░░██▒.
; █▒░░▒▒▒░
; █▒░░░░░░
;
SPRITE_TILES_ENEMY_TAMAZUTSU_01:
    .byte $80,$d0,$68,$8c,$5a,$bc,$b1,$bf   ; byte
    .byte $00,$60,$f0,$70,$a4,$ce,$ce,$c0   ; byte


;
; ░▒█░░░██
; █░▒▒▒▒▒▒
; ▒█░▒▒▒▒░
; ░▒█░░░░█
; ░░▒████▒
; ▒░░▒▒▒▒░
; █▒░░░░░░
; ██░▒░░▒░
;
SPRITE_TILES_ENEMY_TAMAZUTSU_02:
    .byte $bf,$c0,$61,$bf,$de,$61,$bf,$ed   ; byte
    .byte $63,$bf,$de,$61,$3f,$9e,$c0,$d2   ; byte


;
; ▒▒░▒▒▒░░
; ▒░███▒▒░
; ░█▒▒░░▒░
; █▒░░░▒░░
; ▒░░█░█▒░
; ░█░█░█▒░
; ██░░░█▒░
; █▒░░░█▒░
;
SPRITE_TILES_ENEMY_TAMAZUTSU_03:
    .byte $23,$79,$cd,$bb,$7d,$fd,$fd,$bd   ; byte
    .byte $dc,$be,$72,$c4,$96,$56,$c6,$c6   ; byte


;
; .█░█░░█░
; .█░░░░░░
; ..░░░░░░
; .█░█░░█░
; .█░░░░█░
; ▒░░██▒░░
; ▒██▒▒▒█░
; ▒█▒▒▒▒▒█
;
SPRITE_TILES_ENEMY_TAMAZUTSU_04:
    .byte $7f,$7f,$3f,$7f,$7f,$7b,$63,$41   ; byte
    .byte $52,$40,$00,$52,$42,$9c,$fe,$ff   ; byte


;
; █░░░░█▒░
; █░█░░█▒░
; ░░█░▒█▒░
; █░▒░▒█▒░
; █░░░▒█▒░
; ▒░░▒█▒▒░
; ░░▒██▒░░
; ████▒▒░░
;
SPRITE_TILES_ENEMY_TAMAZUTSU_05:
    .byte $fd,$fd,$f5,$d5,$f5,$69,$db,$f3   ; byte
    .byte $86,$a6,$2e,$ae,$8e,$9e,$3c,$fc   ; byte


;
; ░▒▒░░░▒▒
; ░░░▒▒░░░
; ░▒▒██▒▒░
; ░▒███▒▒▒
; ░░▒▒▒▒▒▒
; ▒█░░░░░░
; ▒▒▒▒░░░▒
; ░░░░░░░░
;
SPRITE_TILES_ENEMY_TAMAZUTSU_06:
    .byte $9c,$e7,$99,$b8,$c0,$7f,$0e,$ff   ; byte
    .byte $63,$18,$7e,$7f,$3f,$c0,$f1,$00   ; byte


;
; ▒▒▒▒▒░░░
; ▒▒▒░░░░░
; ░░░░░▒░░
; ▒▒░░▒▒░░
; ░░▒▒█▒░░
; ░▒██▒░░░
; ▒▒▒▒░░▒░
; ░░░░░▒▒░
;
SPRITE_TILES_ENEMY_TAMAZUTSU_07:
    .byte $07,$1f,$fb,$33,$cb,$b7,$0d,$f9   ; byte
    .byte $f8,$e0,$04,$cc,$3c,$78,$f2,$06   ; byte


;
; ....▒██▒
; ..█░▒██▒
; .██░▒▒▒▒
; .█▒░░░░░
; ▒▒░░░░░░
; ░░░██░█▒
; ░░░█░░░█
; ▒░░░░░░▒
;
SPRITE_TILES_ENEMY_TAMAZUTSU_08:
    .byte $06,$36,$70,$5f,$3f,$fe,$ff,$7e   ; byte
    .byte $0f,$2f,$6f,$60,$c0,$1b,$11,$81   ; byte


;
; ░.......
; ░█▒░....
; ░██▒░...
; ░▒▒░░░..
; ░▒▒░█▒░.
; ░░░░█▒░.
; ▒░░░░░░░
; ▒░█▒▒▒░░
;
SPRITE_TILES_ENEMY_TAMAZUTSU_09:
    .byte $80,$d0,$e8,$9c,$9a,$fa,$7f,$63   ; byte
    .byte $00,$60,$70,$60,$6c,$0c,$80,$bc   ; byte


;
; █▒░▒░░█░
; ░█▒░░░░█
; ░░████▒█
; ▒░░▒▒▒▒▒
; █▒░░░░░░
; █▒░█░░▒░
; .█░█░░█░
; .▒░░░░░░
;
SPRITE_TILES_ENEMY_TAMAZUTSU_10:
    .byte $af,$df,$fd,$60,$bf,$bd,$7f,$3f   ; byte
    .byte $d2,$61,$3f,$9f,$c0,$d2,$52,$40   ; byte


;
; ░█▒▒▒▒░░
; █▒▒░░░▒░
; ▒▒░░░░▒░
; ░░░█░▒░░
; ░█░█░█▒░
; ██░░░█▒░
; █▒░░░█▒░
; █░░░░█▒░
;
SPRITE_TILES_ENEMY_TAMAZUTSU_11:
    .byte $c3,$9d,$3d,$fb,$fd,$fd,$bd,$fd   ; byte
    .byte $7c,$e2,$c2,$14,$56,$c6,$c6,$86   ; byte


;
; ..▒░░░░░
; ..█░░░░░
; ..█░░░░░
; ..▒░░░░░
; ..░░░░░░
; .█░█░░█░
; .█░▒░░█░
; ▒░░░░░░░
;
SPRITE_TILES_ENEMY_TAMAZUTSU_12:
    .byte $1f,$3f,$3f,$1f,$3f,$7f,$6f,$7f   ; byte
    .byte $20,$20,$20,$20,$00,$52,$52,$80   ; byte


;
; ░░░░░█▒░
; ░░░░░█▒░
; ░░░░░█▒░
; ░░█░░█▒░
; ░░█░▒█▒░
; █░▒░▒█▒░
; █░░░▒█▒░
; ▒░░▒█▒▒░
;
SPRITE_TILES_ENEMY_TAMAZUTSU_13:
    .byte $fd,$fd,$fd,$fd,$f5,$d5,$f5,$69   ; byte
    .byte $06,$06,$06,$26,$2e,$ae,$8e,$9e   ; byte


;
; ▒▒███▒▒░
; ▒█▒▒▒▒▒█
; ░▒▒▒▒▒▒▒
; ░░░░░░░░
; ░▒▒██▒▒░
; ░▒███▒▒▒
; ▒░▒▒▒▒▒▒
; ░░░░░░░░
;
SPRITE_TILES_ENEMY_TAMAZUTSU_14:
    .byte $39,$41,$80,$ff,$99,$b8,$40,$ff   ; byte
    .byte $fe,$ff,$7f,$00,$7e,$7f,$bf,$00   ; byte


;
; ░░▒██▒░░
; ████▒▒░░
; ▒▒▒▒▒░░░
; ▒▒▒░░▒░░
; ░░░░█▒░░
; ▒▒░█▒░░░
; ░░▒▒░░▒░
; ░░░░░▒▒░
;
SPRITE_TILES_ENEMY_TAMAZUTSU_15:
    .byte $db,$f3,$07,$1b,$fb,$37,$cd,$f9   ; byte
    .byte $3c,$fc,$f8,$e4,$0c,$d8,$32,$06   ; byte


;
; ........
; ........
; ........
; ........
; ....░░░░
; ..░░░▒░▒
; .░░░▒░░▒
; ░░▒▒░░░▒
;
SPRITE_TILES_ENEMY_TAMAZUTSU_16:
    .byte $00,$00,$00,$00,$0f,$3a,$76,$ce   ; byte
    .byte $00,$00,$00,$00,$00,$05,$09,$31   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ....░░.░
; ...░▒░░░
; .░░▒░░░▒
;
SPRITE_TILES_ENEMY_TAMAZUTSU_17:
    .byte $00,$00,$00,$00,$00,$0d,$17,$6e   ; byte
    .byte $00,$00,$00,$00,$00,$00,$08,$11   ; byte


;============================================================================
; Boss Tiles: Ripasheiku
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::805c]
;============================================================================

;
; ░░...░██
; ██░░░░░░
; ░▒██▒▒░░
; .░▒▒▒░█▒
; ..░░░█▒░
; ...░▒█░█
; ..░░█▒░█
; .░▒█░░░░
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::805c]
;
SPRITE_TILES_BOSS_RIPASHEIKU_00:
    .byte $c7,$ff,$b3,$46,$3d,$17,$3b,$5f   ; byte
    .byte $03,$c0,$7c,$3b,$06,$0d,$0d,$30   ; byte


;
; ███▒░...
; ▒▒██▒░..
; ░░░▒▒░░.
; ▒░░░█░░.
; ░░░█▒░░░
; █▒░░░░▒░
; ▒░░░░▒▒░
; ░▒█▒░▒░░
;
SPRITE_TILES_BOSS_RIPASHEIKU_01:
    .byte $e8,$34,$e6,$7e,$f7,$bd,$79,$ab   ; byte
    .byte $f0,$f8,$18,$88,$18,$c2,$86,$74   ; byte


;
; ░▒█▒▒███
; ░█▒▒██▒▒
; ▒█░██▒▒░
; █▒░█▒░░░
; ▒░█▒░░▒█
; ▒█▒░░░█▒
; ▒▒░█▒░▒░
; .░░█▒░░░
;
SPRITE_TILES_BOSS_RIPASHEIKU_02:
    .byte $a7,$cc,$79,$b7,$6d,$5e,$35,$77   ; byte
    .byte $7f,$7f,$de,$d8,$b3,$e3,$da,$18   ; byte


;
; ░█▒▒░░░.
; ░▒▒░░░░░
; ░░▒░█▒░░
; ░░░░░▒░░
; █▒▒░░░░░
; ▒▒░░░░░░
; ░░░░░░▒▒
; ░░░▒▒░▒█
;
SPRITE_TILES_BOSS_RIPASHEIKU_03:
    .byte $ce,$9f,$db,$fb,$9f,$3f,$fc,$e5   ; byte
    .byte $70,$60,$2c,$04,$e0,$c0,$03,$1b   ; byte


;
; ░░░▒█▒▒░
; ░░░▒█▒░░
; ░░░▒█▒▒░
; ░░░▒▒▒▒░
; ░░░▒█▒░░
; ░░░▒█▒██
; ░░░▒▒█░░
; ░░░▒▒░.░
;
SPRITE_TILES_BOSS_RIPASHEIKU_04:
    .byte $e9,$eb,$e9,$e1,$eb,$eb,$e7,$e5   ; byte
    .byte $1e,$1c,$1e,$1e,$1c,$1f,$1c,$18   ; byte


;
; ░▒▒░░▒░░
; ░▒░░█░░.
; ▒░░▒▒░..
; ░░▒█░░..
; ▒█▒░░░..
; ▒░░░░▒..
; ░░░▒▒▒▒.
; ░█▒█▒█▒▒
;
SPRITE_TILES_BOSS_RIPASHEIKU_05:
    .byte $9b,$be,$64,$dc,$5c,$78,$e0,$d4   ; byte
    .byte $64,$48,$98,$30,$e0,$84,$1e,$7f   ; byte


;
; ░░░█▒▒░▒
; ░░▒▒▒▒░░
; ░░█▒▒█▒▒
; ░▒▒▒▒░█▒
; ▒█▒░░░░▒
; █▒▒░░░░░
; █▒░░░░▒▒
; ▒▒░░▒▒▒▒
;
SPRITE_TILES_BOSS_RIPASHEIKU_06:
    .byte $f2,$c3,$e4,$86,$5e,$9f,$bc,$30   ; byte
    .byte $1d,$3c,$3f,$7b,$e1,$e0,$c3,$cf   ; byte


;
; ▒░░░░░░.
; ░░░░░░..
; ░░▒▒░░..
; ▒▒▒▒▒...
; █▒▒▒░░..
; ░░▒▒▒░░.
; ▒░░░▒▒░░
; ▒▒▒░..▒░
;
SPRITE_TILES_BOSS_RIPASHEIKU_07:
    .byte $7e,$fc,$cc,$00,$8c,$c6,$73,$11   ; byte
    .byte $80,$00,$30,$f8,$f0,$38,$8c,$e2   ; byte


;
; ........
; .......░
; .......░
; ......░▒
; ......▒█
; ......▒▒
; .....░█▒
; .....░█▒
;
SPRITE_TILES_BOSS_RIPASHEIKU_08:
    .byte $00,$01,$01,$02,$01,$00,$06,$06   ; byte
    .byte $00,$00,$00,$01,$03,$03,$03,$03   ; byte


;
; ░▒......
; ▒.......
; ▒.......
; ░░......
; ░.......
; ░░......
; ░░......
; ░░░.....
;
SPRITE_TILES_BOSS_RIPASHEIKU_09:
    .byte $80,$00,$00,$c0,$80,$c0,$c0,$e0   ; byte
    .byte $40,$80,$80,$00,$00,$00,$00,$00   ; byte


;
; .......░
; .......░
; .....░░░
; ....░▒░░
; ...░▒░░.
; ...░▒░░.
; ..░▒▒░..
; .░▒▒░░..
;
SPRITE_TILES_BOSS_RIPASHEIKU_10:
    .byte $01,$01,$07,$0b,$16,$16,$24,$4c   ; byte
    .byte $00,$00,$00,$04,$08,$08,$18,$30   ; byte


;
; .....░█▒
; .....▒█▒
; .....░▒░
; .....▒█░
; .....▒▒▒
; ....▒█▒░
; ....█▒░░
; ░░░░░█▒░
;
SPRITE_TILES_BOSS_RIPASHEIKU_11:
    .byte $06,$02,$05,$03,$00,$05,$0b,$fd   ; byte
    .byte $03,$07,$02,$06,$07,$0e,$0c,$06   ; byte


;
; ░░░.....
; ░░░░....
; ░▒░░...░
; ▒░░...░▒
; ▒░░░.░▒█
; ░░░░░▒▒▒
; ░░░░▒█▒░
; ░░░▒█▒▒░
;
SPRITE_TILES_BOSS_RIPASHEIKU_12:
    .byte $e0,$f0,$b1,$62,$75,$f8,$f5,$e9   ; byte
    .byte $00,$00,$40,$81,$83,$07,$0e,$1e   ; byte


;
; ░▒▒░░▒..
; ▒█░░░▒..
; █▒░░▒▒..
; ▒░░▒▒▒..
; ▒░░▒▒▒░.
; ░░▒▒▒▒░.
; ░░░▒░░░.
; ░▒░░░▒█░
;
SPRITE_TILES_BOSS_RIPASHEIKU_13:
    .byte $98,$78,$b0,$60,$62,$c2,$ee,$bb   ; byte
    .byte $64,$c4,$cc,$9c,$9c,$3c,$10,$46   ; byte


;
; .█░▒▒..░
; .▒░.█...
; ..█....░
; ......░░
; ......░░
; ......▒░
; ......▒░
; ......▒░
;
SPRITE_TILES_BOSS_RIPASHEIKU_14:
    .byte $61,$28,$21,$03,$03,$01,$01,$01   ; byte
    .byte $58,$48,$20,$00,$00,$02,$02,$02   ; byte


;
; ░▒▒░░▒██
; ▒▒░░▒▒█▒
; ░░░░▒█▒▒
; ░░▒░▒█▒░
; ▒▒█▒░▒▒░
; ▒██▒░▒▒░
; ▒██▒▒░▒▒
; ▒██▒▒░░░
;
SPRITE_TILES_BOSS_RIPASHEIKU_15:
    .byte $9b,$32,$f4,$d5,$29,$69,$64,$67   ; byte
    .byte $67,$cf,$0f,$2e,$f6,$f6,$fb,$f8   ; byte


;
; ▒░░░▒▒▒▒
; ░░░▒▒▒▒▒
; ░░▒▒▒▒▒▒
; ░░▒▒▒▒▒▒
; ░▒▒░░░░░
; ░▒░░....
; ░░░░....
; ░░░░....
;
SPRITE_TILES_BOSS_RIPASHEIKU_16:
    .byte $70,$e0,$c0,$c0,$9f,$b0,$f0,$f0   ; byte
    .byte $8f,$1f,$3f,$3f,$60,$40,$00,$00   ; byte


;
; ▒▒....░░
; ▒.......
; ▒.......
; ▒░......
; ▒░......
; .▒░.....
; ..░░....
; ...░....
;
SPRITE_TILES_BOSS_RIPASHEIKU_17:
    .byte $03,$00,$00,$40,$40,$20,$30,$10   ; byte
    .byte $c0,$80,$80,$80,$80,$40,$00,$00   ; byte


;
; ......▒▒
; ......░▒
; .......▒
; .......░
; ........
; ........
; ........
; ........
;
SPRITE_TILES_BOSS_RIPASHEIKU_18:
    .byte $00,$02,$00,$01,$00,$00,$00,$00   ; byte
    .byte $03,$01,$01,$00,$00,$00,$00,$00   ; byte


;
; ░▒█▒░░░░
; ░▒▒▒░░░▒
; ▒░▒░░░▒▒
; ▒░░░░░▒█
; .▒░▒▒░▒▒
; ..░▒█░░▒
; ...░▒█░░
; ....░▒▒▒
;
SPRITE_TILES_BOSS_RIPASHEIKU_19:
    .byte $af,$8e,$5c,$7d,$24,$2e,$17,$08   ; byte
    .byte $70,$71,$a3,$83,$5b,$19,$0c,$07   ; byte


;
; ▒░░░....
; ▒▒▒░░░..
; █▒░░░░░.
; ▒▒░░▒░░░
; ▒░░▒▒▒░░
; ▒░░▒▒▒░░
; ░░▒█▒▒░░
; ░░▒▒▒▒░░
;
SPRITE_TILES_BOSS_RIPASHEIKU_20:
    .byte $70,$1c,$be,$37,$63,$63,$d3,$c3   ; byte
    .byte $80,$e0,$c0,$c8,$9c,$9c,$3c,$3c   ; byte


;
; .....░░░
; ......░░
; ......▒▒
; ......▒▒
; ......▒█
; ......▒█
; ......░▒
; .......░
;
SPRITE_TILES_BOSS_RIPASHEIKU_21:
    .byte $07,$03,$00,$00,$01,$01,$02,$01   ; byte
    .byte $00,$00,$03,$03,$03,$03,$01,$00   ; byte


;
; ░░▒█▒▒░░
; ░░▒█▒▒░.
; ░░▒█▒▒░.
; ▒░▒█▒░░.
; ▒░░▒▒▒░░
; ▒▒░▒▒░░░
; ▒░░░▒▒▒░
; ░░░░░░░▒
;
SPRITE_TILES_BOSS_RIPASHEIKU_22:
    .byte $d3,$d2,$d2,$56,$63,$27,$71,$fe   ; byte
    .byte $3c,$3c,$3c,$b8,$9c,$d8,$8e,$01   ; byte


;
; ........
; ........
; ........
; ........
; ░.......
; ░░......
; ░░......
; ░░░░....
;
SPRITE_TILES_BOSS_RIPASHEIKU_23:
    .byte $00,$00,$00,$00,$80,$c0,$c0,$f0   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; .░░░░░..
; ...░▒░░.
; ....▒▒░░
; .....█▒░
; .....░█░
; ......▒▒
; .......▒
; ........
;
SPRITE_TILES_BOSS_RIPASHEIKU_24:
    .byte $7c,$16,$03,$05,$07,$00,$00,$00   ; byte
    .byte $00,$08,$0c,$06,$02,$03,$01,$00   ; byte


;
; ▒▒▒░....
; ▒█▒░....
; .██░....
; .▒▒▒....
; ..░▒....
; ........
; ........
; ........
;
SPRITE_TILES_BOSS_RIPASHEIKU_25:
    .byte $10,$50,$70,$00,$20,$00,$00,$00   ; byte
    .byte $e0,$e0,$60,$70,$10,$00,$00,$00   ; byte


;
; .█░▒▒..░
; .▒░.█...
; ..█....░
; .....░░░
; ....▒░░▒
; ...▒▒░▒█
; ..░▒░▒██
; ..▒░▒██▒
;
SPRITE_TILES_BOSS_RIPASHEIKU_26:
    .byte $61,$28,$21,$07,$06,$05,$2b,$16   ; byte
    .byte $58,$48,$20,$00,$09,$1b,$17,$2f   ; byte


;
; ░▒▒░░▒██
; ▒▒░░▒▒█▒
; ░░░░▒█▒▒
; ░░▒░▒█▒░
; ▒▒█▒░▒▒░
; ██▒▒░▒▒░
; ▒▒▒▒░░▒▒
; ▒▒░░░░░░
;
SPRITE_TILES_BOSS_RIPASHEIKU_27:
    .byte $9b,$32,$f4,$d5,$29,$c9,$0c,$3f   ; byte
    .byte $67,$cf,$0f,$2e,$f6,$f6,$f3,$c0   ; byte


;
; .░█░▒▒▒▒
; .░▒░░░░░
; ..░▒▒░░░
; ..▒▒█▒░░
; ..▒██▒▒█
; ..▒█▒░▒█
; ..▒▒▒░▒▒
; ..░▒▒▒░▒
;
SPRITE_TILES_BOSS_RIPASHEIKU_28:
    .byte $70,$5f,$27,$0b,$19,$15,$04,$22   ; byte
    .byte $2f,$20,$18,$3c,$3f,$3b,$3b,$1d   ; byte


;
; ░░░░░░░░
; ░░▒▒▒░░░
; ▒█▒▒▒░░.
; █▒▒▒░░..
; ▒▒▒░░░..
; ▒░░▒▒░..
; ▒░▒▒▒░░.
; ░░▒█▒▒░░
;
SPRITE_TILES_BOSS_RIPASHEIKU_29:
    .byte $ff,$c7,$46,$8c,$1c,$64,$46,$d3   ; byte
    .byte $00,$38,$f8,$f0,$e0,$98,$b8,$3c   ; byte


;
; ...▒▒▒░░
; ...░▒░░░
; ....░░░░
; ...▒▒░░█
; ..▒█▒░░█
; ..█▒░░▒█
; ..▒▒▒░▒▒
; ...▒▒░░▒
;
SPRITE_TILES_BOSS_RIPASHEIKU_30:
    .byte $03,$17,$0f,$07,$17,$2d,$04,$06   ; byte
    .byte $1c,$08,$00,$19,$39,$33,$3b,$19   ; byte


;
; ░░█▒▒▒░░
; ░██▒▒▒░░
; ██▒▒▒░░.
; ▒▒▒▒░░░.
; █▒▒░░░..
; ▒▒░░....
; █▒▒░░...
; ▒█▒▒░...
;
SPRITE_TILES_BOSS_RIPASHEIKU_31:
    .byte $e3,$e3,$c6,$0e,$9c,$30,$98,$48   ; byte
    .byte $3c,$7c,$f8,$f0,$e0,$c0,$e0,$f0   ; byte


;
; ....▒▒░░
; .....▒▒░
; .......▒
; ......█░
; .....█░░
; ....█▒░░
; ...█▒░░.
; ...█▒░..
;
SPRITE_TILES_BOSS_RIPASHEIKU_32:
    .byte $03,$01,$00,$03,$07,$0b,$16,$14   ; byte
    .byte $0c,$06,$01,$02,$04,$0c,$18,$18   ; byte


;
; ░▒▒▒░░..
; ░░▒▒▒░░.
; ░░.█░░░.
; ░░.█░░..
; ░.█░░...
; .█▒░░...
; .▒░░....
; .░░.....
;
SPRITE_TILES_BOSS_RIPASHEIKU_33:
    .byte $8c,$c6,$de,$dc,$b8,$58,$30,$60   ; byte
    .byte $70,$38,$10,$10,$20,$60,$40,$00   ; byte


;
; ░▒▒░░▒▒█
; ▒▒░░▒▒█▒
; ░░░░▒█▒▒
; ░░▒░▒▒▒░
; ▒▒█▒░▒░░
; ▒██▒░▒░░
; ▒██▒▒░░░
; ▒██▒▒░░░
;
SPRITE_TILES_BOSS_RIPASHEIKU_34:
    .byte $99,$32,$f4,$d1,$2b,$6b,$67,$67   ; byte
    .byte $67,$cf,$0f,$2e,$f4,$f4,$f8,$f8   ; byte


;
; ███▒▒░▒▒
; ▒███▒░░░
; ░██▒█▒▒░
; ░░█▒▒▒▒▒
; ░░█▒░░░▒
; ░░█▒░░░░
; ░▒█▒▒▒▒░
; ░██▒░░░▒
;
SPRITE_TILES_BOSS_RIPASHEIKU_35:
    .byte $e4,$77,$e9,$e0,$ee,$ef,$a1,$ee   ; byte
    .byte $fb,$f8,$7e,$3f,$31,$30,$7e,$71   ; byte


;
; ........
; ▒.......
; ░░......
; ▒░░░....
; ▒▒░░░...
; ░▒▒░░░..
; ░░▒░..░.
; ▒░░░....
;
SPRITE_TILES_BOSS_RIPASHEIKU_36:
    .byte $00,$00,$c0,$70,$38,$9c,$d2,$70   ; byte
    .byte $00,$80,$00,$80,$c0,$60,$20,$80   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ░░░.....
; █▒▒▒░░..
;
SPRITE_TILES_BOSS_RIPASHEIKU_37:
    .byte $00,$00,$00,$00,$00,$00,$e0,$8c   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$f0   ; byte


;
; ░▒█▒▒░▒▒
; ░░▒█▒░▒▒
; ▒░░▒█▒░▒
; ▒░░░▒█▒░
; ▒░░░░▒▒▒
; ▒░░░░░▒█
; ░░░░▒░░▒
; ░░░▒▒░░░
;
SPRITE_TILES_BOSS_RIPASHEIKU_38:
    .byte $a4,$d4,$6a,$75,$78,$7d,$f6,$e7   ; byte
    .byte $7b,$3b,$9d,$8e,$87,$83,$09,$18   ; byte


;
; ▒▒▒░░...
; ░░▒▒▒...
; ▒▒░░▒▒░.
; ▒▒▒▒▒...
; ░▒▒▒░...
; ░░▒▒░...
; █░░░░...
; ▒▒░░░...
;
SPRITE_TILES_BOSS_RIPASHEIKU_39:
    .byte $18,$c0,$32,$00,$88,$c8,$f8,$38   ; byte
    .byte $e0,$38,$cc,$f8,$70,$30,$80,$c0   ; byte


;
; ░░░▒▒░░░
; ░░▒▒░░░.
; ░░▒▒▒░░.
; ▒░▒▒░░░.
; ▒░░▒▒░░░
; ▒▒░░▒░░░
; ▒░░░░▒▒░
; ░░░░░░░░
;
SPRITE_TILES_BOSS_RIPASHEIKU_40:
    .byte $e7,$ce,$c6,$4e,$67,$37,$79,$ff   ; byte
    .byte $18,$30,$38,$b0,$98,$c8,$86,$00   ; byte


;
; .▒█░░...
; ..▒▒▒░..
; ...▒▒░..
; ....▒▒..
; .....▒▒.
; ░.....▒.
; ░░....▒.
; ░░░.....
;
SPRITE_TILES_BOSS_RIPASHEIKU_41:
    .byte $38,$04,$04,$00,$00,$80,$c0,$e0   ; byte
    .byte $60,$38,$18,$0c,$06,$02,$02,$00   ; byte


;
; .░░░░░..
; ...░░░░.
; ....░▒░░
; .....▒░░
; .....░▒░
; ......░░
; .......░
; ........
;
SPRITE_TILES_BOSS_RIPASHEIKU_42:
    .byte $7c,$1e,$0b,$03,$05,$03,$01,$00   ; byte
    .byte $00,$00,$04,$04,$02,$00,$00,$00   ; byte


;
; ░▒░░....
; ░▒░░....
; .░▒░....
; .░░░....
; ..░░....
; ........
; ........
; ........
;
SPRITE_TILES_BOSS_RIPASHEIKU_43:
    .byte $b0,$b0,$50,$70,$30,$00,$00,$00   ; byte
    .byte $40,$40,$20,$00,$00,$00,$00,$00   ; byte


;
; .░░░...░
; .██▒░...
; .░▒██▒▒░
; ..░░▒▒░█
; .░▒████▒
; ░█░▒▒▒▒░
; █░░███░░
; ▒██▒▒▒▒█
;
SPRITE_TILES_BOSS_RIPASHEIKU_44:
    .byte $71,$68,$59,$33,$5e,$e1,$ff,$61   ; byte
    .byte $00,$70,$3e,$0d,$3f,$5e,$9c,$ff   ; byte


;
; ███▒▒░..
; ░▒▒██▒▒.
; ░░░░██▒.
; █▒▒░░█▒░
; ░░░░█▒▒░
; ██▒░░░░.
; ░▒▒░▒▒░.
; █░░██▒▒░
;
SPRITE_TILES_BOSS_RIPASHEIKU_45:
    .byte $e4,$98,$fc,$9d,$f9,$de,$92,$f9   ; byte
    .byte $f8,$7e,$0e,$e6,$0e,$e0,$6c,$9e   ; byte


;
; ░░░░░░▒▒
; █░.█░░░░
; █░.█▒░█░
; ▒░░█░.▒░
; ...▒..▒░
; .....░░▒
; ....░░██
; ..▒░░█▒▒
;
SPRITE_TILES_BOSS_RIPASHEIKU_46:
    .byte $fc,$df,$d7,$79,$01,$06,$0f,$1c   ; byte
    .byte $03,$90,$9a,$92,$12,$01,$03,$27   ; byte


;
; ▒▒░█▒▒▒░
; ░▒▒░▒▒░░
; ░░░▒▒░░░
; ..░▒▒░░.
; ░▒█▒░░░.
; ██▒▒░░..
; ▒▒░░░░..
; ░░░░░░..
;
SPRITE_TILES_BOSS_RIPASHEIKU_47:
    .byte $31,$93,$e7,$26,$ae,$cc,$3c,$fc   ; byte
    .byte $de,$6c,$18,$18,$70,$f0,$c0,$00   ; byte


;
; .░▒██▒▒░
; ░░░▒▒▒░░
; ░░░░░░░░
; ▒░░░░▒██
; ██████▒▒
; ▒▒▒██▒▒▒
; ▒░▒█▒▒▒░
; ░▒▒█▒░▒░
;
SPRITE_TILES_BOSS_RIPASHEIKU_48:
    .byte $59,$e3,$ff,$7b,$fc,$18,$51,$95   ; byte
    .byte $3e,$1c,$00,$87,$ff,$ff,$be,$7a   ; byte


;
; .......█
; ......▒▒
; .....▒█▒
; .....▒▒░
; ....█▒░░
; ...▒▒▒░░
; ..█▒▒░░░
; .█▒▒░░▒█
;
SPRITE_TILES_BOSS_RIPASHEIKU_49:
    .byte $01,$00,$02,$01,$0b,$03,$27,$4d   ; byte
    .byte $01,$03,$07,$06,$0c,$1c,$38,$73   ; byte


;
; ░...░█..
; ██░░▒▒░░
; ▒▒░▒███░
; ░░░█████
; ░▒███▒▒▒
; ▒█▒█▒██▒
; █▒█▒▒█▒▒
; ▒█▒███▒▒
;
SPRITE_TILES_BOSS_RIPASHEIKU_50:
    .byte $8c,$f3,$2f,$ff,$b8,$56,$a4,$5c   ; byte
    .byte $04,$cc,$de,$1f,$7f,$ff,$ff,$ff   ; byte


;
; .█░▒▒.░░
; ░▒░░█░░░
; ░░█░░░░░
; ▒░░░░▒██
; ██████▒▒
; ▒▒▒██▒▒▒
; ▒░▒█▒▒▒░
; ░▒▒█▒░▒░
;
SPRITE_TILES_BOSS_RIPASHEIKU_51:
    .byte $63,$bf,$ff,$7b,$fc,$18,$51,$95   ; byte
    .byte $58,$48,$20,$87,$ff,$ff,$be,$7a   ; byte


;
; ░▒▒▒░░░.
; ▒█▒░▒░░.
; █▒▒▒▒▒░░
; ▒▒▒▒░░░░
; ▒░▒▒▒▒░░
; ▒▒░▒▒░░░
; ▒▒▒░░░░.
; ░▒▒▒░░░.
;
SPRITE_TILES_BOSS_RIPASHEIKU_52:
    .byte $8e,$56,$83,$0f,$43,$27,$1e,$8e   ; byte
    .byte $70,$e8,$fc,$f0,$bc,$d8,$e0,$70   ; byte


;
; █░░░░▒█▒
; ░.▒░░█▒█
; ....█▒▒▒
; ...█▒▒▒░
; ..█▒▒░░.
; .█▒▒░...
; ▒▒░.....
; ........
;
SPRITE_TILES_BOSS_RIPASHEIKU_53:
    .byte $fa,$9d,$08,$11,$26,$48,$20,$00   ; byte
    .byte $87,$27,$0f,$1e,$38,$70,$c0,$00   ; byte


;
; █▒▒▒▒█▒░
; ▒▒█▒█▒░░
; ▒▒▒▒█▒░▒
; ░▒▒█▒░▒▒
; ...█░▒▒▒
; ..█░▒░░▒
; .▒░░░.░░
; .....░▒░
;
SPRITE_TILES_BOSS_RIPASHEIKU_54:
    .byte $85,$2b,$0a,$94,$18,$36,$3b,$05   ; byte
    .byte $fe,$fc,$fd,$7b,$17,$29,$40,$02   ; byte


;
; ░▒█▒▒▒▒░
; ▒▒█▒▒▒▒▒
; ▒█▒▒▒▒░░
; ▒█▒▒▒░░░
; ▒▒▒░░░░░
; ▒█▒░░░░░
; ▒▒░░░░░░
; ░▒░░░░▒▒
;
SPRITE_TILES_BOSS_RIPASHEIKU_55:
    .byte $a1,$20,$43,$47,$1f,$5f,$3f,$bc   ; byte
    .byte $7e,$ff,$fc,$f8,$e0,$e0,$c0,$43   ; byte


;
; ▒▒▒▒░░░.
; ▒▒▒▒░░░.
; ░░░▒▒░░.
; ░░░░░░..
; ░░░░░░..
; ░░▒░░░..
; ░▒▒▒░░..
; ▒█▒▒░░..
;
SPRITE_TILES_BOSS_RIPASHEIKU_56:
    .byte $0e,$0e,$e6,$fc,$fc,$dc,$8c,$4c   ; byte
    .byte $f0,$f0,$18,$00,$00,$20,$70,$f0   ; byte


;
; ....░▒█▒
; ...░▒██▒
; ...░▒█▒▒
; ...░▒▒▒░
; ...░▒▒▒░
; ...░▒▒░░
; ...░▒▒░.
; ...░▒▒░.
;
SPRITE_TILES_BOSS_RIPASHEIKU_57:
    .byte $0a,$16,$14,$11,$11,$13,$12,$12   ; byte
    .byte $07,$0f,$0f,$0e,$0e,$0c,$0c,$0c   ; byte


;
; ░░░░▒▒██
; ░░░▒███▒
; ░░███▒▒▒
; ░▒██▒▒▒▒
; ░▒█▒▒░░░
; ░█▒▒░░░░
; ░█▒░░░..
; ░█▒▒░...
;
SPRITE_TILES_BOSS_RIPASHEIKU_58:
    .byte $f3,$ee,$f8,$b0,$a7,$cf,$dc,$c8   ; byte
    .byte $0f,$1f,$3f,$7f,$78,$70,$60,$70   ; byte


;
; ▒▒▒░░░..
; ▒▒▒░░...
; ▒▒░░░...
; ░░░░....
; ░░......
; ........
; ........
; ........
;
SPRITE_TILES_BOSS_RIPASHEIKU_59:
    .byte $1c,$18,$38,$f0,$c0,$00,$00,$00   ; byte
    .byte $e0,$e0,$c0,$00,$00,$00,$00,$00   ; byte


;
; ..░▒▒▒░.
; ..░▒▒░.░
; .░█▒░░░█
; ░█▒░░░█▒
; ░▒░░.░▒▒
; ░░....░░
; ........
; ........
;
SPRITE_TILES_BOSS_RIPASHEIKU_60:
    .byte $22,$25,$6f,$de,$b4,$c3,$00,$00   ; byte
    .byte $1c,$18,$31,$63,$43,$00,$00,$00   ; byte


;
; ░█▒▒░...
; █▒▒░░...
; ▒▒░░....
; ▒▒░.....
; ░░......
; ........
; ........
; ........
;
SPRITE_TILES_BOSS_RIPASHEIKU_61:
    .byte $c8,$98,$30,$20,$c0,$00,$00,$00   ; byte
    .byte $70,$e0,$c0,$c0,$00,$00,$00,$00   ; byte


;============================================================================
; Boss: Zoradohna
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::805e]
;============================================================================

;
; ........
; ........
; ........
; ........
; ...█▒▒░░
; ..▒▒█▒▒░
; ..▒░██▒░
; ..▒░█▒▒░
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::805e]
;
SPRITE_TILES_BOSS_ZORADOHNA_00:
    .byte $00,$00,$00,$00,$13,$09,$1d,$19   ; byte
    .byte $00,$00,$00,$00,$1c,$3e,$2e,$2e   ; byte


;
; .......░
; ..░░░░░▒
; .░▒██▒▒░
; ░▒█▒▒██░
; ░█░░░▒██
; █░██▒░▒█
; █░█▒░▒░▒
; ░░▒░░▒░▒
;
SPRITE_TILES_BOSS_ZORADOHNA_01:
    .byte $01,$3e,$59,$a7,$fb,$f5,$ea,$da   ; byte
    .byte $00,$01,$3e,$7e,$47,$bb,$b5,$25   ; byte


;
; ░░░░░░░░
; ▒▒▒▒▒██▒
; ███▒▒░▒▒
; ▒█▒▒█▒░░
; ░▒▒░▒█▒░
; ▒░▒░░▒█▒
; █░░░░░▒█
; █▒░▒▒░░█
;
SPRITE_TILES_BOSS_ZORADOHNA_02:
    .byte $ff,$06,$e4,$4b,$95,$5a,$fd,$a7   ; byte
    .byte $00,$ff,$fb,$fc,$6e,$a7,$83,$d9   ; byte


;
; ........
; ░░░░....
; ▒▒▒▒░...
; ███▒▒░..
; ██▒▒░░░.
; ░▒▒░░▒░░
; ▒░░▒▒▒▒░
; ▒░▒███▒░
;
SPRITE_TILES_BOSS_ZORADOHNA_03:
    .byte $00,$f0,$08,$e4,$ce,$9b,$61,$5d   ; byte
    .byte $00,$00,$f0,$f8,$f0,$64,$9e,$be   ; byte


;
; .▒▒█▒█▒█
; ▒████▒██
; ████████
; ▒▒░░░▒▒▒
; ░░▒▒▒░░░
; ▒▒██▒█▒░
; ▒█▒█▒▒▒▒
; █░█░█░██
;
SPRITE_TILES_BOSS_ZORADOHNA_04:
    .byte $15,$7b,$ff,$38,$c7,$35,$50,$ff   ; byte
    .byte $7f,$ff,$ff,$c7,$38,$fe,$ff,$ab   ; byte


;
; ▒░▒░▒▒░░
; ██░▒▒░░░
; ▒██░░░▒▒
; ▒▒▒█████
; ▒█░▒▒▒▒▒
; ▒▒█░▒█▒▒
; ░▒▒▒░▒█░
; ░░░█▒░█░
;
SPRITE_TILES_BOSS_ZORADOHNA_05:
    .byte $53,$e7,$7c,$1f,$60,$34,$8b,$f7   ; byte
    .byte $ac,$d8,$e3,$ff,$df,$ef,$76,$1a   ; byte


;
; ██▒░░░▒█
; ░█▒▒░▒█▒
; ██▒▒░▒▒░
; █▒█▒░░░▒
; ▒░█▒░░░░
; █░▒█▒░░▒
; █▒░▒█▒░░
; ▒█▒░▒▒░░
;
SPRITE_TILES_BOSS_ZORADOHNA_06:
    .byte $dd,$ca,$c9,$ae,$6f,$d6,$ab,$53   ; byte
    .byte $e3,$77,$f6,$f1,$b0,$b9,$dc,$ec   ; byte


;
; ▒░▒█▒▒▒░
; ░▒█▒▒░░░
; ▒█▒▒░░░░
; ▒▒▒░░░░░
; ░░░░░░░.
; ░░░░░░░.
; ░░░░░...
; ░░......
;
SPRITE_TILES_BOSS_ZORADOHNA_07:
    .byte $51,$a7,$4f,$1f,$fe,$fe,$f8,$c0   ; byte
    .byte $be,$78,$f0,$e0,$00,$00,$00,$00   ; byte


;
; █.█.█░░█
; ▒.▒.▒..█
; .......▒
; ........
; .░░▒▒░░░
; ..░▒▒▒░░
; ....░░▒░
; .▒.▒..█.
;
SPRITE_TILES_BOSS_ZORADOHNA_08:
    .byte $af,$01,$00,$00,$67,$23,$0d,$02   ; byte
    .byte $a9,$a9,$01,$00,$18,$1c,$02,$52   ; byte


;
; ░░░█▒░▒▒
; ..░▒█▒░▒
; ...░█▒░░
; ...░█▒░░
; ░░░░█▒░░
; ▒▒░░█▒░░
; ░░░░█▒░░
; ..░▒█▒░░
;
SPRITE_TILES_BOSS_ZORADOHNA_09:
    .byte $f4,$2a,$1b,$1b,$fb,$3b,$fb,$2b   ; byte
    .byte $1b,$1d,$0c,$0c,$0c,$cc,$0c,$1c   ; byte


;
; ▒█▒▒░░▒█
; ░▒██▒▒██
; ░░▒▒▒█▒▒
; ░░░░██▒░
; ░░░▒█▒░░
; ▒░░▒█▒░░
; █▒▒██▒░▒
; ▒████▒░▒
;
SPRITE_TILES_BOSS_ZORADOHNA_10:
    .byte $4d,$b3,$c4,$fd,$eb,$6b,$9a,$7a   ; byte
    .byte $f3,$7f,$3f,$0e,$1c,$9c,$fd,$fd   ; byte


;
; ██▒▒....
; ▒▒▒▒▒░..
; ░░░░░▒░.
; ░▒▒░░░▒.
; ▒▒▒▒░░░░
; ▒██▒▒░░░
; ▒██▒▒░░░
; ▒███▒░░░
;
SPRITE_TILES_BOSS_ZORADOHNA_11:
    .byte $c0,$04,$fa,$9c,$0f,$67,$67,$77   ; byte
    .byte $f0,$f8,$04,$62,$f0,$f8,$f8,$f8   ; byte


;
; .█.█..█▒
; .█▒█░.█▒
; .█░█░░█░
; ░▒▒▒▒░░▒
; ░▒███▒█▒
; ░░▒▒▒▒▒▒
; .░░░░░░░
; ...░░░░░
;
SPRITE_TILES_BOSS_ZORADOHNA_12:
    .byte $52,$5a,$7f,$86,$ba,$c0,$7f,$1f   ; byte
    .byte $53,$73,$52,$79,$7f,$3f,$00,$00   ; byte


;
; ..░▒█▒░░
; .░▒█▒▒░░
; ░▒▒█▒░░.
; ▒▒█▒▒░░.
; █▒▒▒░░.░
; ▒░░░░..░
; ░░░...░▒
; ░.....░░
;
SPRITE_TILES_BOSS_ZORADOHNA_13:
    .byte $2b,$53,$96,$26,$8d,$79,$e2,$83   ; byte
    .byte $1c,$3c,$78,$f8,$f0,$80,$01,$00   ; byte


;
; ▒▒██▒▒░▒
; ░▒▒▒▒░░░
; ░░░░░▒▒░
; ░░░░▒█▒░
; ░▒████▒░
; ░░▒▒▒▒░░
; █░░░░░░░
; ▒█▒███▒░
;
SPRITE_TILES_BOSS_ZORADOHNA_14:
    .byte $32,$87,$f9,$f5,$bd,$c3,$ff,$5d   ; byte
    .byte $fd,$78,$06,$0e,$7e,$3c,$80,$fe   ; byte


;
; ▒▒██▒░░░
; ▒▒██▒░▒░
; ▒▒██▒░░░
; ▒▒██▒░▒░
; ▒▒██▒░▒░
; ▒▒██▒░░░
; ▒▒██▒░▒░
; ▒▒██▒░▒░
;
SPRITE_TILES_BOSS_ZORADOHNA_15:
    .byte $37,$35,$37,$35,$35,$37,$35,$35   ; byte
    .byte $f8,$fa,$f8,$fa,$fa,$f8,$fa,$fa   ; byte


;
; ...▒▒▒..
; .██▒██▒▒
; ..▒█████
; ...░░▒██
; .....░██
; .▒▒▒████
; ██▒█████
; .▒▒▒▒█▒▒
;
SPRITE_TILES_BOSS_ZORADOHNA_16:
    .byte $00,$6c,$1f,$1b,$07,$0f,$df,$04   ; byte
    .byte $1c,$7f,$3f,$07,$03,$7f,$ff,$7f   ; byte


;
; .....░░▒
; ...░░░▒▒
; █▒░▒▒░░░
; ██░░▒███
; ███░░▒▒▒
; ████▒░░░
; ▒████▒░░
; ░██████▒
;
SPRITE_TILES_BOSS_ZORADOHNA_17:
    .byte $06,$1c,$a7,$f7,$f8,$f7,$7b,$fe   ; byte
    .byte $01,$03,$d8,$cf,$e7,$f8,$fc,$7f   ; byte


;
; ░░▒▒▒▒▒░
; █▒░░░░░░
; ░▒▒███▒░
; ░░▒▒▒▒░░
; ▒░░░░░░▒
; ░░░░░░▒█
; ░░▒▒▒▒░█
; ▒▒▒██▒▒░
;
SPRITE_TILES_BOSS_ZORADOHNA_18:
    .byte $c1,$bf,$9d,$c3,$7e,$fd,$c3,$19   ; byte
    .byte $3e,$c0,$7e,$3c,$81,$03,$3d,$fe   ; byte


;
; ▒▒██▒░░░
; ▒▒██▒░▒░
; ▒██▒░░▒░
; ▒█▒░░█░░
; █▒░░▒▒░░
; █▒░▒█▒░.
; █▒▒░▒░░.
; ██▒░░░░.
;
SPRITE_TILES_BOSS_ZORADOHNA_19:
    .byte $37,$35,$6d,$5f,$b3,$aa,$96,$de   ; byte
    .byte $f8,$fa,$f2,$e4,$cc,$dc,$e8,$e0   ; byte


;
; ...░░░░▒
; .▒▒█████
; ██▒████░
; .▒▒▒▒▒▒▒
; ...▒▒░░█
; ▒█▒█████
; .▒▒████▒
; ..▒▒▒▒▒▒
;
SPRITE_TILES_BOSS_ZORADOHNA_20:
    .byte $1e,$1f,$df,$00,$07,$5f,$1e,$00   ; byte
    .byte $01,$7f,$fe,$7f,$19,$ff,$7f,$3f   ; byte


;
; ████████
; ██▒████░
; █▒██▒▒▒█
; ▒█████▒▒
; ███▒▒▒░░
; █▒▒▒░░░░
; ▒▒▒.....
; ........
;
SPRITE_TILES_BOSS_ZORADOHNA_21:
    .byte $ff,$df,$b1,$7c,$e3,$8f,$00,$00   ; byte
    .byte $ff,$fe,$ff,$ff,$fc,$f0,$e0,$00   ; byte


;
; ███▒▒█▒▒
; █▒▒░░▒█▒
; ▒░░▒░░▒█
; ░░▒▒▒▒░▒
; ░░░░░░▒▒
; ░░░░░░░░
; ..░░░░░░
; ........
;
SPRITE_TILES_BOSS_ZORADOHNA_22:
    .byte $e4,$9a,$6d,$c2,$fc,$ff,$3f,$00   ; byte
    .byte $ff,$e7,$93,$3d,$03,$00,$00,$00   ; byte


;
; ░█▒░▒░░.
; ░█▒░▒░░.
; █▒▒░▒░..
; ▒▒░░░░..
; ▒░░░░░..
; ░░░░░...
; ░░░░....
; ........
;
SPRITE_TILES_BOSS_ZORADOHNA_23:
    .byte $d6,$d6,$94,$3c,$7c,$f8,$f0,$00   ; byte
    .byte $68,$68,$e8,$c0,$80,$00,$00,$00   ; byte


;
; .......░
; ..░░░░░▒
; .░▒▒▒▒░▒
; ░▒████▒░
; ░████▒▒▒
; █░░▒███▒
; ▒░░░░▒█▒
; ░░█▒░░░█
;
SPRITE_TILES_BOSS_ZORADOHNA_24:
    .byte $01,$3e,$42,$bd,$f8,$ee,$7a,$ef   ; byte
    .byte $00,$01,$3d,$7e,$7f,$9f,$87,$31   ; byte


;
; ▒▒▒▒▒▒░░
; ▒██████▒
; █████▒░░
; ▒█▒▒██▒░
; ░▒▒▒███▒
; ▒░▒▒▒███
; █░░░░▒██
; █▒░▒░░▒█
;
SPRITE_TILES_BOSS_ZORADOHNA_25:
    .byte $03,$7e,$fb,$4d,$8e,$47,$fb,$ad   ; byte
    .byte $fc,$ff,$fc,$fe,$7f,$bf,$87,$d3   ; byte


;
; ░░░░....
; ░▒▒▒░...
; ▒██▒▒░..
; ████▒░░.
; ░██▒▒░░░
; ▒░▒▒░▒░░
; ▒░▒▒▒▒▒░
; ▒░▒██▒▒░
;
SPRITE_TILES_BOSS_ZORADOHNA_26:
    .byte $f0,$88,$64,$f6,$e7,$4b,$41,$59   ; byte
    .byte $00,$70,$f8,$f8,$78,$b4,$be,$be   ; byte


;
; .░▒█▒▒░░
; ░▒█▒░░░▒
; ▒████▒██
; ▒███████
; ▒▒██▒▒▒▒
; ░▒▒▒░░░░
; ░░░░█▒▒░
; ▒█▒▒░░░▒
;
SPRITE_TILES_BOSS_ZORADOHNA_27:
    .byte $53,$ae,$7b,$7f,$30,$8f,$f9,$4e   ; byte
    .byte $3c,$71,$ff,$ff,$ff,$70,$0e,$f1   ; byte


;
; ██▒░░░▒█
; ░█▒▒░▒██
; ███▒░██▒
; █▒█▒▒░▒░
; ▒░▒█▒▒░▒
; █░▒██▒▒░
; █▒░▒██▒▒
; ▒█▒░▒█▒░
;
SPRITE_TILES_BOSS_ZORADOHNA_28:
    .byte $dd,$cb,$ee,$a5,$52,$d9,$ac,$55   ; byte
    .byte $e3,$77,$f7,$fa,$bd,$be,$df,$ee   ; byte


;
; ▒░▒███▒░
; ▒░███▒▒░
; ░▒██▒▒░░
; ▒█▒▒▒░░░
; ▒▒▒▒░░░░
; ▒░░░░░░.
; ░░░░░░..
; ░░░.....
;
SPRITE_TILES_BOSS_ZORADOHNA_29:
    .byte $5d,$79,$b3,$47,$0f,$7e,$fc,$e0   ; byte
    .byte $be,$be,$7c,$f8,$f0,$80,$00,$00   ; byte


;
; █░█░█░██
; █.█.█.░█
; ░.▒.▒..█
; .......▒
; .░░▒▒░░░
; ..░▒▒░▒░
; .█.█░░█░
; .▒.▒..█.
;
SPRITE_TILES_BOSS_ZORADOHNA_30:
    .byte $ff,$ab,$81,$00,$67,$25,$5f,$02   ; byte
    .byte $ab,$a9,$29,$01,$18,$1a,$52,$52   ; byte


;
; ██▒▒....
; ▒▒▒▒▒░..
; ░░░░░▒░.
; ░▒▒▒░░▒.
; ▒███▒░░░
; █████▒░░
; ███▒█▒░░
; ██▒█▒▒░░
;
SPRITE_TILES_BOSS_ZORADOHNA_31:
    .byte $c0,$04,$fa,$8c,$77,$fb,$eb,$d3   ; byte
    .byte $f0,$f8,$04,$72,$f8,$fc,$fc,$fc   ; byte


;
; .█░█░░█░
; ░█░█░▒▒░
; ░▒▒▒▒██▒
; ░░▒▒▒▒▒█
; .░░░▒░░▒
; ..░░░░░░
; ........
; ........
;
SPRITE_TILES_BOSS_ZORADOHNA_32:
    .byte $7f,$f9,$86,$c1,$76,$3f,$00,$00   ; byte
    .byte $52,$56,$7f,$3f,$09,$00,$00,$00   ; byte


;
; ..░▒▒░░.
; .░█▒▒░░.
; ▒█▒▒░░░.
; ▒▒▒░░░..
; ░░░░░..░
; ░░░....░
; ......░▒
; ......░░
;
SPRITE_TILES_BOSS_ZORADOHNA_33:
    .byte $26,$66,$4e,$1c,$f9,$e1,$02,$03   ; byte
    .byte $18,$38,$f0,$e0,$00,$00,$01,$00   ; byte


;
; █▒██▒░░░
; ▒███▒░▒░
; ▒███▒░░░
; ▒███▒░▒░
; ▒▒██▒░▒░
; ▒███▒░░░
; ▒▒██▒░▒░
; ▒▒██▒░▒░
;
SPRITE_TILES_BOSS_ZORADOHNA_34:
    .byte $b7,$75,$77,$75,$35,$77,$35,$35   ; byte
    .byte $f8,$fa,$f8,$fa,$fa,$f8,$fa,$fa   ; byte


;
; ........
; ....░░░.
; ...░█▒▒░
; ...█▒███
; ...░░░▒█
; ..░▒▒▒▒▒
; ..▒█████
; ..░▒▒▒▒█
;
SPRITE_TILES_BOSS_ZORADOHNA_35:
    .byte $00,$0e,$19,$17,$1d,$20,$1f,$21   ; byte
    .byte $00,$00,$0e,$1f,$03,$1f,$3f,$1f   ; byte


;
; ...░░░░▒
; ..░░▒▒▒█
; ..░████▒
; ..░▒▒▒▒▒
; ..░░▒▒██
; ...░░░▒▒
; ....░░░░
; .....░░░
;
SPRITE_TILES_BOSS_ZORADOHNA_36:
    .byte $1e,$31,$3e,$20,$33,$1c,$0f,$07   ; byte
    .byte $01,$0f,$1f,$1f,$0f,$03,$00,$00   ; byte


;
; ██▒▒▒███
; ▒▒▒▒█▒▒░
; ▒███▒▒░█
; █▒▒▒░░▒▒
; ▒▒▒░░▒░░
; ▒▒░░░░░░
; ░░░░░░..
; ░░░░....
;
SPRITE_TILES_BOSS_ZORADOHNA_37:
    .byte $c7,$09,$73,$8c,$1b,$3f,$fc,$f0   ; byte
    .byte $ff,$fe,$fd,$f3,$e4,$c0,$00,$00   ; byte


;
; .......░
; ..░░░░░▒
; .░▒▒▒▒░▒
; ░▒▒██▒▒░
; ░▒████▒▒
; ▒██████▒
; ▒▒▒█████
; ░░░▒▒▒██
;
SPRITE_TILES_BOSS_ZORADOHNA_38:
    .byte $01,$3e,$42,$99,$bc,$7e,$1f,$e3   ; byte
    .byte $00,$01,$3d,$7e,$7f,$ff,$ff,$1f   ; byte


;
; ..▒█▒▒░░
; .▒▒▒░░▒▒
; .▒█▒▒▒█▒
; ▒▒██████
; ▒███████
; ▒▒████▒▒
; ░▒▒▒▒▒▒░
; ░░░░░░░░
;
SPRITE_TILES_BOSS_ZORADOHNA_39:
    .byte $13,$0c,$22,$3f,$7f,$3c,$81,$ff   ; byte
    .byte $3c,$73,$7f,$ff,$ff,$ff,$7e,$00   ; byte


;
; ▒░▒░▒░▒▒
; █.█.█.██
; █.█.█▒░█
; ░.░░▒░▒█
; .█.█░▒█░
; .█░█░▒█░
; ▒█░█░░█░
; ▒▒▒▒▒▒▒█
;
SPRITE_TILES_BOSS_ZORADOHNA_40:
    .byte $54,$ab,$ab,$b5,$5b,$7b,$7f,$01   ; byte
    .byte $ab,$ab,$ad,$0b,$56,$56,$d2,$ff   ; byte


;
; ░.░▒█▒░░
; ░░░▒█▒░░
; ░░░▒█▒░░
; ░.░▒█▒░░
; .░▒█▒▒░░
; ░▒█▒▒░░░
; ▒█▒▒▒░░.
; █▒▒▒░░░.
;
SPRITE_TILES_BOSS_ZORADOHNA_41:
    .byte $ab,$eb,$eb,$ab,$53,$a7,$46,$8e   ; byte
    .byte $1c,$1c,$1c,$1c,$3c,$78,$f8,$f0   ; byte


;
; ░▒█████▒
; .░▒▒▒▒▒▒
; ..░░░░░░
; ........
; ........
; ........
; ........
; ........
;
SPRITE_TILES_BOSS_ZORADOHNA_42:
    .byte $be,$40,$3f,$00,$00,$00,$00,$00   ; byte
    .byte $7f,$3f,$00,$00,$00,$00,$00,$00   ; byte


;
; ▒▒░░░░..
; ░░░░....
; ░.......
; ........
; .......░
; .......░
; ......░▒
; ......░░
;
SPRITE_TILES_BOSS_ZORADOHNA_43:
    .byte $3c,$f0,$80,$00,$01,$01,$02,$03   ; byte
    .byte $c0,$00,$00,$00,$00,$00,$01,$00   ; byte


;
; ▒▒██▒░░░
; ▒▒██▒░▒░
; ▒██▒▒░▒░
; ▒██▒░█░░
; ███▒░▒░░
; ██▒▒░▒░.
; ███▒░░░.
; ███▒░░░.
;
SPRITE_TILES_BOSS_ZORADOHNA_44:
    .byte $37,$35,$65,$6f,$eb,$ca,$ee,$ee   ; byte
    .byte $f8,$fa,$fa,$f4,$f4,$f4,$f0,$f0   ; byte


;
; ███▒███▒
; █▒▒░▒███
; ▒░░▒░▒▒█
; ░░▒▒▒▒▒▒
; ░░░░░░▒▒
; ░░░░░░░░
; ..░░░░░░
; ........
;
SPRITE_TILES_BOSS_ZORADOHNA_45:
    .byte $ee,$97,$69,$c0,$fc,$ff,$3f,$00   ; byte
    .byte $ff,$ef,$97,$3f,$03,$00,$00,$00   ; byte


;
; ███▒▒░░.
; ██▒░▒░░.
; █▒▒░▒░..
; ▒▒░░░░..
; ▒░░░░░..
; ░░░░░...
; ░░░░....
; ........
;
SPRITE_TILES_BOSS_ZORADOHNA_46:
    .byte $e6,$d6,$94,$3c,$7c,$f8,$f0,$00   ; byte
    .byte $f8,$e8,$e8,$c0,$80,$00,$00,$00   ; byte


;
; .....░░▒
; ...░░░▒▒
; ░.░▒▒░░░
; ░░░░▒███
; █▒░░░▒▒▒
; ██▒▒░░░▒
; ███▒▒▒▒▒
; █████▒██
;
SPRITE_TILES_BOSS_ZORADOHNA_47:
    .byte $06,$1c,$a7,$f7,$b8,$ce,$e0,$fb   ; byte
    .byte $01,$03,$18,$0f,$c7,$f1,$ff,$ff   ; byte


;
; ░░▒▒▒▒▒░
; █▒░░░░░░
; ░▒▒███▒░
; ░░▒▒▒▒░░
; ░░░░░░░▒
; ▒▒▒▒░░▒█
; ███▒▒▒░█
; █████▒▒░
;
SPRITE_TILES_BOSS_ZORADOHNA_48:
    .byte $c1,$bf,$9d,$c3,$fe,$0d,$e3,$f9   ; byte
    .byte $3e,$c0,$7e,$3c,$01,$f3,$fd,$fe   ; byte


;
; ██▒▒▒███
; ▒▒▒▒███▒
; ▒▒▒██▒░█
; ▒██▒▒░█▒
; ▒▒▒▒░▒░░
; ▒▒░░░░░░
; ░░░░░░..
; ░.......
;
SPRITE_TILES_BOSS_ZORADOHNA_49:
    .byte $c7,$0e,$1b,$66,$0b,$3f,$fc,$80   ; byte
    .byte $ff,$ff,$fd,$fb,$f4,$c0,$00,$00   ; byte


;
; ██████▒▒
; ██▒▒▒▒█▒
; ▒▒▒░░▒▒█
; ░░░░▒░░▒
; ░░░░░░▒▒
; ░░░░░░░░
; ..░░░░░░
; ........
;
SPRITE_TILES_BOSS_ZORADOHNA_50:
    .byte $fc,$c2,$19,$f6,$fc,$ff,$3f,$00   ; byte
    .byte $ff,$ff,$e7,$09,$03,$00,$00,$00   ; byte


;============================================================================
; Boss Tiles: Borabohra
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8060]
;============================================================================

;
; ....░▒▒▒
; ..░▒▒██▒
; .░▒██▒▒░
; ░▒██▒░░░
; ░▒███▒░░
; ░░▒▒██▒░
; .░░░▒▒█▒
; .█░█░░▒█
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8060]
;
SPRITE_TILES_BOSS_BORABOHRA_00:
    .byte $08,$26,$59,$b7,$bb,$cd,$72,$7d   ; byte
    .byte $07,$1f,$3e,$78,$7c,$3e,$0f,$53   ; byte


;
; ▒▒░░░░░░
; ▒▒▒▒▒▒░░
; ░░░░▒▒░░
; █░░░░░░▒
; ░░░░░▒▒█
; ░░░▒▒███
; ▒▒▒█████
; ████▒███
;
SPRITE_TILES_BOSS_BORABOHRA_01:
    .byte $3f,$03,$f3,$fe,$f9,$e7,$1f,$f7   ; byte
    .byte $c0,$fc,$0c,$81,$07,$1f,$ff,$ff   ; byte


;
; ........
; ░░░░....
; ▒▒▒░░░░.
; ███▒▒░░░
; █████▒▒░
; ██▒▒███▒
; ████████
; █████▒██
;
SPRITE_TILES_BOSS_BORABOHRA_02:
    .byte $00,$f0,$1e,$e7,$f9,$ce,$ff,$fb   ; byte
    .byte $00,$00,$e0,$f8,$fe,$ff,$ff,$ff   ; byte


;
; ........
; ........
; ........
; ░.......
; ░░░.....
; ▒░░░....
; █▒░░░...
; ██▒░░░..
;
SPRITE_TILES_BOSS_BORABOHRA_03:
    .byte $00,$00,$00,$80,$e0,$70,$b8,$dc   ; byte
    .byte $00,$00,$00,$00,$00,$80,$c0,$e0   ; byte


;
; .█░█░█░▒
; .▒.█░█░░
; ...░░█░█
; ....░░░█
; ...█░░░░
; ...█░█░▒
; ..░░░░▒▒
; ...▒▒▒▒░
;
SPRITE_TILES_BOSS_BORABOHRA_04:
    .byte $7e,$1f,$1f,$0f,$1f,$1e,$3c,$01   ; byte
    .byte $55,$54,$05,$01,$10,$15,$03,$1e   ; byte


;
; ███▒░▒██
; ▒██▒░▒██
; ▒██▒░▒██
; ▒█▒░░▒▒▒
; ▒█░░▒▒░░
; █▒░░▒▒▒▒
; ▒░░▒▒███
; ░░░▒▒███
;
SPRITE_TILES_BOSS_BORABOHRA_05:
    .byte $eb,$6b,$6b,$58,$73,$b0,$67,$e7   ; byte
    .byte $f7,$f7,$f7,$e7,$cc,$cf,$9f,$1f   ; byte


;
; █████▒██
; █████▒██
; ████▒▒█▒
; ███▒▒██▒
; ▒▒███▒▒░
; ░▒▒▒▒░░░
; ░░░░░░▒▒
; ▒░░░░░░░
;
SPRITE_TILES_BOSS_BORABOHRA_06:
    .byte $fb,$fb,$f2,$e6,$39,$87,$fc,$7f   ; byte
    .byte $ff,$ff,$ff,$ff,$fe,$78,$03,$80   ; byte


;
; ███▒░░..
; ▒██▒░░░.
; ░▒█▒░░░.
; ░▒█▒░░░.
; ░▒█▒░░░.
; ▒▒▒░░░..
; ▒░░░░...
; ░░......
;
SPRITE_TILES_BOSS_BORABOHRA_07:
    .byte $ec,$6e,$ae,$ae,$ae,$1c,$78,$c0   ; byte
    .byte $f0,$f0,$70,$70,$70,$e0,$80,$00   ; byte


;
; .....░▒▒
; ...░▒▒██
; ..░▒████
; .░▒█████
; .░▒███▒▒
; .░▒██▒░░
; .░▒██░░░
; .░▒████▒
;
SPRITE_TILES_BOSS_BORABOHRA_08:
    .byte $04,$13,$2f,$5f,$5c,$5b,$5f,$5e   ; byte
    .byte $03,$0f,$1f,$3f,$3f,$3c,$38,$3f   ; byte


;
; ▒▒▒░░░░░
; ███▒▒▒▒░
; ████▒█▒░
; ▒▒▒▒░▒░░
; ░█░░░░░▒
; ░░░░░░▒█
; ░░░░▒▒██
; ▒▒▒▒█▒██
;
SPRITE_TILES_BOSS_BORABOHRA_09:
    .byte $1f,$e1,$f5,$0b,$fe,$fd,$f3,$0b   ; byte
    .byte $e0,$fe,$fe,$f4,$41,$03,$0f,$ff   ; byte


;
; ░.......
; ░░░░░...
; ░▒▒▒░░░░
; ▒███▒▒░░
; ██████▒▒
; ███▒▒███
; ████████
; ██████▒█
;
SPRITE_TILES_BOSS_BORABOHRA_10:
    .byte $80,$f8,$8f,$73,$fc,$e7,$ff,$fd   ; byte
    .byte $00,$00,$70,$fc,$ff,$ff,$ff,$ff   ; byte


;
; ........
; ........
; ........
; ░░......
; ░░░░....
; ▒▒░░░...
; ██▒░░░..
; ███▒░░░.
;
SPRITE_TILES_BOSS_BORABOHRA_11:
    .byte $00,$00,$00,$c0,$f0,$38,$dc,$ee   ; byte
    .byte $00,$00,$00,$00,$00,$c0,$e0,$f0   ; byte


;
; .░▒█████
; ..░▒▒███
; ...░░▒▒█
; ...▒▒░░▒
; ...▒█▒▒░
; ...░▒███
; ....░▒▒▒
; .....░░░
;
SPRITE_TILES_BOSS_BORABOHRA_12:
    .byte $5f,$27,$19,$06,$09,$17,$08,$07   ; byte
    .byte $3f,$1f,$07,$19,$1e,$0f,$07,$00   ; byte


;
; ████▒░▒█
; ██▒▒░░▒█
; █▒░▒░░▒█
; ▒░░▒░░▒▒
; ░▒▒░░▒▒░
; ██▒░░▒▒▒
; ▒▒░░▒▒██
; ░░░░▒▒██
;
SPRITE_TILES_BOSS_BORABOHRA_13:
    .byte $f5,$cd,$ad,$6c,$99,$d8,$33,$f3   ; byte
    .byte $fb,$f3,$d3,$93,$66,$e7,$cf,$0f   ; byte


;
; ██████▒█
; ██████▒█
; █████▒▒█
; ▒███▒▒██
; ▒▒▒███▒▒
; ░░▒▒▒▒░░
; ▒░░░░░░▒
; █▒░░░░░░
;
SPRITE_TILES_BOSS_BORABOHRA_14:
    .byte $fd,$fd,$f9,$73,$1c,$c3,$7e,$bf   ; byte
    .byte $ff,$ff,$ff,$ff,$ff,$3c,$81,$c0   ; byte


;
; ████▒░░.
; █▒██▒░░░
; ▒░▒█▒░░░
; ▒░▒█▒░░░
; ░░▒█▒░░░
; ░▒▒▒░░░.
; ▒▒░░░░..
; ░░░.....
;
SPRITE_TILES_BOSS_BORABOHRA_15:
    .byte $f6,$b7,$57,$57,$d7,$8e,$3c,$e0   ; byte
    .byte $f8,$f8,$b8,$b8,$38,$70,$c0,$00   ; byte


;
; ..░▒▒░▒█
; .░░▒▒░▒▒
; .░░▒░▒▒█
; ░░░▒░▒██
; ░░▒░▒▒██
; ░░░▒░▒██
; ░░▒▒░▒██
; ░░▒█▒░▒█
;
SPRITE_TILES_BOSS_BORABOHRA_16:
    .byte $25,$64,$69,$eb,$d3,$eb,$cb,$d5   ; byte
    .byte $1b,$1b,$17,$17,$2f,$17,$37,$3b   ; byte


;
; ▒▒▒▒░░░░
; ███▒▒░░░
; ████▒░░░
; ███▒▒░░.
; ████▒░░.
; ███▒▒░░.
; ██▒▒░░░.
; █▒█▒░░..
;
SPRITE_TILES_BOSS_BORABOHRA_17:
    .byte $0f,$e7,$f7,$e6,$f6,$e6,$ce,$ac   ; byte
    .byte $f0,$f8,$f8,$f8,$f8,$f8,$f0,$f0   ; byte


;
; ░░▒█▒░░▒
; ░░▒██▒░░
; ░░▒███▒▒
; .░░▒████
; .░░▒▒███
; ..░░▒███
; ...░▒███
; ....░▒██
;
SPRITE_TILES_BOSS_BORABOHRA_18:
    .byte $d6,$db,$dc,$6f,$67,$37,$17,$0b   ; byte
    .byte $39,$3c,$3f,$1f,$1f,$0f,$0f,$07   ; byte


;
; ███▒░░..
; ▒█▒░░...
; ▒▒▒░░...
; █▒▒░░...
; ██▒░░...
; ███▒░░..
; ████▒░..
; █████▒░.
;
SPRITE_TILES_BOSS_BORABOHRA_19:
    .byte $ec,$58,$18,$98,$d8,$ec,$f4,$fa   ; byte
    .byte $f0,$e0,$e0,$e0,$e0,$f0,$f8,$fc   ; byte


;
; ..░.░▒██
; .░░..░▒█
; .░░...░▒
; ░▒░....░
; ░▒░.....
; ░▒▒.....
; ░▒▒░....
; ░▒█▒░...
;
SPRITE_TILES_BOSS_BORABOHRA_20:
    .byte $2b,$65,$62,$a1,$a0,$80,$90,$a8   ; byte
    .byte $07,$03,$01,$40,$40,$60,$60,$70   ; byte


;
; ██▒▒█▒░.
; ████▒▒▒.
; ▒████▒▒░
; ▒▒███▒▒▒
; ░░▒███▒▒
; .░▒███▒▒
; .░░▒██▒▒
; .░░▒█▒█▒
;
SPRITE_TILES_BOSS_BORABOHRA_21:
    .byte $ca,$f0,$79,$38,$dc,$5c,$6c,$6a   ; byte
    .byte $fc,$fe,$fe,$ff,$3f,$3f,$1f,$1f   ; byte


;
; ░▒██▒░..
; .▒██▒▒░░
; .░▒██▒▒░
; .░▒███▒▒
; ..░▒████
; ..░▒▒███
; ...░░▒▒▒
; .....░░░
;
SPRITE_TILES_BOSS_BORABOHRA_22:
    .byte $b4,$33,$59,$5c,$2f,$27,$18,$07   ; byte
    .byte $78,$7c,$3e,$3f,$1f,$1f,$07,$00   ; byte


;
; .░░▒███▒
; ░░░▒███▒
; ░░▒███▒░
; ▒▒████▒.
; █████▒░.
; ████▒░..
; ▒▒▒▒░...
; ░░░.....
;
SPRITE_TILES_BOSS_BORABOHRA_23:
    .byte $6e,$ee,$dd,$3c,$fa,$f4,$08,$e0   ; byte
    .byte $1f,$1f,$3e,$fe,$fc,$f8,$f0,$00   ; byte


;
; .░▒█████
; ░░▒█████
; ░▒██████
; ░▒██████
; ░▒██████
; ░▒██████
; ░▒██████
; ░▒██████
;
SPRITE_TILES_BOSS_BORABOHRA_24:
    .byte $5f,$df,$bf,$bf,$bf,$bf,$bf,$bf   ; byte
    .byte $3f,$3f,$7f,$7f,$7f,$7f,$7f,$7f   ; byte


;
; █▒░░....
; █▒░░....
; ▒░░.....
; ▒░░.....
; ▒░░░....
; ▒░░░....
; ▒░░░░...
; █▒░░░...
;
SPRITE_TILES_BOSS_BORABOHRA_25:
    .byte $b0,$b0,$60,$60,$70,$70,$78,$b8   ; byte
    .byte $c0,$c0,$80,$80,$80,$80,$80,$c0   ; byte


;
; ░▒██████
; .░▒█████
; .░▒█████
; .░░▒████
; ..░░▒▒██
; ...░░░▒▒
; .....░░░
; ........
;
SPRITE_TILES_BOSS_BORABOHRA_26:
    .byte $bf,$5f,$5f,$6f,$33,$1c,$07,$00   ; byte
    .byte $7f,$3f,$3f,$1f,$0f,$03,$00,$00   ; byte


;
; ██▒░░░..
; ▒▒█▒░░░.
; █▒▒█▒░░░
; ██▒██▒░░
; ██▒██▒░░
; ▒▒▒▒▒░░░
; ░░░░░░░.
; ░░░░░...
;
SPRITE_TILES_BOSS_BORABOHRA_27:
    .byte $dc,$2e,$97,$db,$db,$07,$fe,$f8   ; byte
    .byte $e0,$f0,$f8,$fc,$fc,$f8,$00,$00   ; byte


;============================================================================
; Boss Tiles: Pakukame
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8062]
;============================================================================

;
; ........
; ........
; ........
; .....░░░
; ....░░░▒
; ...░▒░░▒
; ..░▒▒░░▒
; ..░▒▒░░░
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8062]
;
SPRITE_TILES_BOSS_PAKUKAME_00:
    .byte $00,$00,$00,$07,$0e,$16,$26,$27   ; byte
    .byte $00,$00,$00,$00,$01,$09,$19,$18   ; byte


;
; ....░░░.
; .▒░░▒▒░.
; ▒░▒▒█▒░.
; ▒░▒▒█▒▒░
; ▒░▒▒██▒▒
; █░░▒▒█▒░
; ▒█░░▒█▒▒
; ▒▒░░▒▒▒░
;
SPRITE_TILES_BOSS_PAKUKAME_01:
    .byte $0e,$32,$4a,$49,$4c,$e5,$74,$31   ; byte
    .byte $00,$4c,$bc,$be,$bf,$9e,$cf,$ce   ; byte


;
; .░░▒░░░▒
; .░▒░▒▒░▒
; ░▒▒░▒█░▒
; ░▒▒░█▒░▒
; ░▒░▒█▒░▒
; ░▒░▒▒▒▒░
; ░▒▒░░▒▒░
; .░▒▒░▒░░
;
SPRITE_TILES_BOSS_PAKUKAME_02:
    .byte $6e,$52,$96,$9a,$aa,$a1,$99,$4b   ; byte
    .byte $11,$2d,$6d,$6d,$5d,$5e,$66,$34   ; byte


;
; ░▒░░░▒▒▒
; ▒░░▒▒░▒░
; █▒░▒█▒░░
; █▒░▒█▒░▒
; ▒▒░▒▒▒▒░
; ▒▒░▒▒▒░░
; ░▒▒░▒░░░
; ▒░░░░░░░
;
SPRITE_TILES_BOSS_PAKUKAME_03:
    .byte $b8,$65,$ab,$aa,$21,$23,$97,$7f   ; byte
    .byte $47,$9a,$dc,$dd,$de,$dc,$68,$80   ; byte


;
; .....░░░
; ...░░░░░
; ..░▒░▒▒░
; .░▒░▒█▒░
; .░▒░▒█░░
; .░█░▒█▒░
; .░▒░░▒█░
; .░▒░░░▒▒
;
SPRITE_TILES_BOSS_PAKUKAME_04:
    .byte $07,$1f,$29,$55,$57,$75,$5b,$5c   ; byte
    .byte $00,$00,$16,$2e,$2c,$2e,$26,$23   ; byte


;
; ░░░░░░░▒
; ░░▒▒░░█▒
; ░▒▒▒░░▒░
; ▒█▒░░█▒░
; ▒█▒░░█▒░
; ▒█▒░░█▒░
; ▒█▒░░█▒░
; ░▒▒░░▒▒░
;
SPRITE_TILES_BOSS_PAKUKAME_05:
    .byte $fe,$ce,$8d,$5d,$5d,$5d,$5d,$99   ; byte
    .byte $01,$33,$72,$e6,$e6,$e6,$e6,$66   ; byte


;
; .░▒.▒░░▒
; .▒░.▒.░▒
; .░..▒.░▒
; .▒..▒.░▒
; .░...░▒▒
; ...░░█▒░
; .░░█▒▒░▒
; ░▒▒▒░░▒█
;
SPRITE_TILES_BOSS_PAKUKAME_06:
    .byte $46,$22,$42,$02,$44,$1d,$72,$8d   ; byte
    .byte $29,$49,$09,$49,$03,$06,$1d,$73   ; byte


;
; ░▒▒▒░█▒░
; ░▒█▒░▒▒░
; ░▒█▒░█▒░
; ░▒▒▒░▒▒░
; ░▒▒░░▒▒░
; ▒█▒░█▒░░
; █▒░░▒▒░▒
; ▒░▒▒▒░▒▒
;
SPRITE_TILES_BOSS_PAKUKAME_07:
    .byte $8d,$a9,$ad,$89,$99,$5b,$b2,$44   ; byte
    .byte $76,$76,$76,$76,$66,$ec,$cd,$bb   ; byte


;
; ........
; ......░░
; .....░░▒
; ....░▒░▒
; ...░▒▒░▒
; ...░▒█░▒
; ..░▒░▒░▒
; ..▒▒░░▒░
;
SPRITE_TILES_BOSS_PAKUKAME_08:
    .byte $00,$03,$06,$0a,$12,$16,$2a,$0d   ; byte
    .byte $00,$00,$01,$05,$0d,$0d,$15,$32   ; byte


;
; ░.......
; ░░......
; ░░░░▒░░.
; ░▒█▒░...
; █░▒░....
; █░▒▒░...
; ▒█░░▒░░░
; ▒▒░▒░░..
;
SPRITE_TILES_BOSS_PAKUKAME_09:
    .byte $80,$c0,$f6,$a8,$d0,$c8,$77,$2c   ; byte
    .byte $00,$00,$08,$70,$a0,$b0,$c8,$d0   ; byte


;
; .░░▒░░░▒
; .░▒░▒▒░▒
; ░░▒░▒█░▒
; ░░▒░▒▒░▒
; .░░▒░▒▒░
; .░░▒▒░▒▒
; ..░░▒▒░▒
; ....░░▒░
;
SPRITE_TILES_BOSS_PAKUKAME_10:
    .byte $6e,$52,$d6,$d2,$69,$64,$32,$0d   ; byte
    .byte $11,$2d,$2d,$2d,$16,$1b,$0d,$02   ; byte


;
; ░▒░░░▒..
; ▒░░▒▒░░░
; █▒░▒█▒░.
; ▒█░░▒▒░.
; ▒▒▒░░▒░░
; ░▒▒▒░░░.
; ░░░▒▒░░░
; ▒░░░░░░░
;
SPRITE_TILES_BOSS_PAKUKAME_11:
    .byte $b8,$67,$aa,$72,$1b,$8e,$e7,$7f   ; byte
    .byte $44,$98,$dc,$cc,$e4,$70,$18,$80   ; byte


;
; .░░▒.░░▒
; .░▒░░▒▒░
; ░▒▒░▒█▒░
; ░▒░░▒▒▒░
; ░▒░▒░▒▒░
; ░░░▒▒░▒▒
; .░░░░▒░░
; ....░░░░
;
SPRITE_TILES_BOSS_PAKUKAME_12:
    .byte $66,$59,$95,$b1,$a9,$e4,$7b,$0f   ; byte
    .byte $11,$26,$6e,$4e,$56,$1b,$04,$00   ; byte


;
; ░▒░.....
; ........
; ░░░▒░▒░▒
; █▒░░▒░░.
; ░▒█▒█▒▒.
; ▒░░▒▒▒░▒
; ▒▒▒░░░▒░
; ░▒▒▒▒░▒░
;
SPRITE_TILES_BOSS_PAKUKAME_13:
    .byte $a0,$00,$ea,$b6,$a8,$62,$1d,$85   ; byte
    .byte $40,$00,$15,$c8,$7e,$9d,$e2,$7a   ; byte


;============================================================================
; Boss Tiles: Zorugeriru
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8064]
;============================================================================

;
; ........
; ......░░
; ....░░▒█
; ...░▒░░░
; ..░▒░█░░
; .░▒█░░░░
; ░▒██░░░█
; ░██████▒
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8064]
;
SPRITE_TILES_BOSS_ZORUGERIRU_00:
    .byte $00,$03,$0d,$17,$2f,$5f,$bf,$fe   ; byte
    .byte $00,$00,$03,$08,$14,$30,$71,$7f   ; byte


;
; ........
; ░░......
; █▒░.....
; ██▒░....
; ███▒░...
; ███▒░...
; █▒▒░░...
; ▒░░░....
;
SPRITE_TILES_BOSS_ZORUGERIRU_01:
    .byte $00,$c0,$a0,$d0,$e8,$e8,$98,$70   ; byte
    .byte $00,$00,$c0,$e0,$f0,$f0,$e0,$80   ; byte


;
; ░█▒▒▒▒▒░
; ░▒░░░░░░
; .░....▒░
; .▒████▒░
; .░▒▒▒▒▒░
; ..░░░░░░
; ......░░
; ......░▒
;
SPRITE_TILES_BOSS_ZORUGERIRU_02:
    .byte $c1,$bf,$41,$3d,$41,$3f,$03,$02   ; byte
    .byte $7e,$40,$02,$7e,$3e,$00,$00,$01   ; byte


;
; ░██░░...
; ██▒▒░░..
; ██▒▒░░..
; ░░░░░░..
; ▒██▒░░..
; ▒██▒░░..
; ▒██▒░░..
; ███▒░░..
;
SPRITE_TILES_BOSS_ZORUGERIRU_03:
    .byte $f8,$cc,$cc,$fc,$6c,$6c,$6c,$ec   ; byte
    .byte $60,$f0,$f0,$00,$f0,$f0,$f0,$f0   ; byte


;
; .░░░░▒██
; ░▒█████▒
; ▒▒██▒░░░
; ░▒▒▒░░▒█
; .░░░░▒█▒
; .....▒█▒
; .....██▒
; .....█▒▒
;
SPRITE_TILES_BOSS_ZORUGERIRU_04:
    .byte $7b,$be,$37,$8d,$7a,$02,$06,$04   ; byte
    .byte $07,$7f,$f8,$73,$07,$07,$07,$07   ; byte


;
; ██▒▒░░..
; ▒▒▒░░░░.
; ░░░░█▒░.
; █░███▒▒░
; ▒▒░▒▒▒▒░
; ▒▒░▒▒▒░░
; ░░░░░░░.
; ░░░░░░..
;
SPRITE_TILES_BOSS_ZORUGERIRU_05:
    .byte $cc,$1e,$fa,$f9,$21,$23,$fe,$fc   ; byte
    .byte $f0,$e0,$0c,$be,$de,$dc,$00,$00   ; byte


;
; .░░░.█▒▒
; ░▒████▒░
; ░▒▒▒██▒░
; .░░▒▒▒▒░
; █▒░░░░░░
; ▒░░.....
; ░.......
; ........
;
SPRITE_TILES_BOSS_ZORUGERIRU_06:
    .byte $74,$bd,$8d,$61,$bf,$60,$80,$00   ; byte
    .byte $07,$7e,$7e,$1e,$c0,$80,$00,$00   ; byte


;
; ░░▒▒▒░..
; ░░█▒▒░..
; ..░█▒░..
; ...█▒▒░.
; ...▒█▒░.
; ..░█▒▒░.
; .░█▒▒▒░.
; .░▒▒░░..
;
SPRITE_TILES_BOSS_ZORUGERIRU_07:
    .byte $c4,$e4,$34,$12,$0a,$32,$62,$4c   ; byte
    .byte $38,$38,$18,$1c,$1c,$1c,$3c,$30   ; byte


;
; ......░░
; ....░░██
; ...░██░░
; ..░██░█░
; .░▒██░░░
; .▒████░░
; .▒█▒▒▒██
; .░▒░░░▒▒
;
SPRITE_TILES_BOSS_ZORUGERIRU_08:
    .byte $03,$0f,$1f,$3f,$5f,$3f,$23,$5c   ; byte
    .byte $00,$03,$0c,$1a,$38,$7c,$7f,$23   ; byte


;
; ░░░.....
; ██▒░....
; ░██▒░...
; ░███▒░..
; ▒███▒░..
; ██░░░░..
; ▒░▒██░..
; ░▒██▒▒░.
;
SPRITE_TILES_BOSS_ZORUGERIRU_09:
    .byte $e0,$d0,$e8,$f4,$74,$fc,$5c,$b2   ; byte
    .byte $00,$e0,$70,$78,$f8,$c0,$b8,$7c   ; byte


;
; ......░░
; ....██▒▒
; ......██
; ...████░
; ...░░░░░
; ...░░░░░
; ...▒▒▒▒▒
; ..█▒████
;
SPRITE_TILES_BOSS_ZORUGERIRU_10:
    .byte $03,$0c,$03,$1f,$1f,$1f,$00,$2f   ; byte
    .byte $00,$0f,$03,$1e,$00,$00,$1f,$3f   ; byte


;
; ░▒██▒▒░.
; ░░░░░░░.
; ░▒██▒░░.
; ░▒█▒▒░░.
; ░▒█▒▒░░.
; ▒██▒░░░.
; ██▒▒░░░░
; █▒▒░░▒░░
;
SPRITE_TILES_BOSS_ZORUGERIRU_11:
    .byte $b2,$fe,$b6,$a6,$a6,$6e,$cf,$9b   ; byte
    .byte $7c,$00,$78,$78,$78,$f0,$f0,$e4   ; byte


;
; █▒░███▒▒
; ▒▒▒▒▒▒▒░
; ░░░░░░░░
; ......░▒
; .....░▒█
; .....▒██
; .....██▒
; .....█▒▒
;
SPRITE_TILES_BOSS_ZORUGERIRU_12:
    .byte $bc,$01,$ff,$02,$05,$03,$06,$04   ; byte
    .byte $df,$fe,$00,$01,$03,$07,$07,$07   ; byte


;
; ▒▒░░▒▒▒░
; ░░░██▒▒░
; ░░███▒▒░
; ▒▒░█▒▒░░
; █▒▒░▒░░.
; ▒▒░░░░..
; ▒░░░░░..
; ░░░▒░░..
;
SPRITE_TILES_BOSS_ZORUGERIRU_13:
    .byte $31,$f9,$f9,$33,$96,$3c,$7c,$ec   ; byte
    .byte $ce,$1e,$3e,$dc,$e8,$c0,$80,$10   ; byte


;
; .....█▒▒
; ....▒█▒▒
; ..▒▒██▒░
; .▒████▒░
; ░▒▒▒▒▒▒░
; ██▒░░░░.
; ░░░.....
; ........
;
SPRITE_TILES_BOSS_ZORUGERIRU_14:
    .byte $04,$04,$0d,$3d,$81,$de,$e0,$00   ; byte
    .byte $07,$0f,$3e,$7e,$7e,$e0,$00,$00   ; byte


;
; ░.▒█▒░..
; ░.▒█▒░..
; ..░█▒░░.
; ..░██▒░.
; ...░█▒░.
; ..░█▒▒░.
; .░█▒▒░..
; .░▒▒░...
;
SPRITE_TILES_BOSS_ZORUGERIRU_15:
    .byte $94,$94,$36,$3a,$1a,$32,$64,$48   ; byte
    .byte $38,$38,$18,$1c,$0c,$1c,$38,$30   ; byte


;
; ........
; ....░░░░
; ..░░████
; .░███░░░
; ░███░█░░
; ████░░░▒
; ░▒▒█████
; .░░░▒██▒
;
SPRITE_TILES_BOSS_ZORUGERIRU_16:
    .byte $00,$0f,$3f,$7f,$ff,$fe,$9f,$76   ; byte
    .byte $00,$00,$0f,$38,$74,$f1,$7f,$0f   ; byte


;
; ........
; ░.......
; █▒......
; ██▒░....
; ███▒░...
; ██▒▒░...
; █░░░░...
; ░▒▒░░...
;
SPRITE_TILES_BOSS_ZORUGERIRU_17:
    .byte $00,$80,$80,$d0,$e8,$c8,$f8,$98   ; byte
    .byte $00,$00,$c0,$e0,$f0,$f0,$80,$60   ; byte


;
; ....░▒▒░
; ..██▒░░░
; ██.▒▒░▒░
; .....█▒░
; ..░░█▒▒░
; .▒██▒▒░░
; ..░░░░░░
; ......░▒
;
SPRITE_TILES_BOSS_ZORUGERIRU_18:
    .byte $09,$37,$c5,$05,$39,$33,$3f,$02   ; byte
    .byte $06,$38,$da,$06,$0e,$7c,$00,$01   ; byte


;
; .......░
; ....░░▒█
; ...░█░█▒
; ..░█░░█▒
; ..░░░░█▒
; .░░░░█▒▒
; ░▒███▒▒░
; ░░░░░░░░
;
SPRITE_TILES_BOSS_ZORUGERIRU_19:
    .byte $01,$0d,$1e,$3e,$3e,$7c,$b9,$ff   ; byte
    .byte $00,$03,$0b,$13,$03,$07,$7e,$00   ; byte


;
; ▒████▒▒░
; ░▒▒▒▒▒▒░
; .░▒▒▒▒░░
; ..░░░░░▒
; .....░▒█
; .....░██
; ...░░░██
; .▒▒█████
;
SPRITE_TILES_BOSS_ZORUGERIRU_20:
    .byte $79,$81,$43,$3e,$05,$07,$1f,$1f   ; byte
    .byte $fe,$7e,$3c,$01,$03,$03,$03,$7f   ; byte


;
; ░▒██▒▒▒░
; ░▒█▒▒▒▒░
; ░░▒▒▒▒░.
; ▒░░▒▒░..
; ▒▒░░░░.█
; ▒▒░...█▒
; ▒▒░░░█▒░
; █▒▒▒▒▒░░
;
SPRITE_TILES_BOSS_ZORUGERIRU_21:
    .byte $b1,$a1,$c2,$64,$3d,$22,$3d,$83   ; byte
    .byte $7e,$7e,$3c,$98,$c1,$c3,$c6,$fc   ; byte


;
; ░▒▒░....
; ░█▒░██..
; ░█▒░▒▒██
; ░░░░░▒▒▒
; ░░░░░░░░
; ░░▒██▒░.
; ░▒██▒▒▒░
; ░▒██▒▒▒░
;
SPRITE_TILES_BOSS_ZORUGERIRU_22:
    .byte $90,$dc,$d3,$f8,$ff,$da,$b1,$b1   ; byte
    .byte $60,$6c,$6f,$07,$00,$3c,$7e,$7e   ; byte


;
; .......░
; ....██▒█
; ...██▒█▒
; ..███▒█▒
; ..███▒█▒
; .░▒▒▒█▒▒
; ░▒███▒▒░
; ░░░░░░░░
;
SPRITE_TILES_BOSS_ZORUGERIRU_23:
    .byte $01,$0d,$1a,$3a,$3a,$44,$b9,$ff   ; byte
    .byte $00,$0f,$1f,$3f,$3f,$3f,$7e,$00   ; byte


;
; ░▒▒░████
; ░█▒░▒▒▒▒
; ░█▒░░░░░
; ░░░░░...
; ░░░░░░░.
; ░░▒██▒░░
; ░▒██▒▒▒░
; ░▒██▒▒▒░
;
SPRITE_TILES_BOSS_ZORUGERIRU_24:
    .byte $9f,$d0,$df,$f8,$fe,$db,$b1,$b1   ; byte
    .byte $6f,$6f,$60,$00,$00,$3c,$7e,$7e   ; byte


;
; ░▒██▒▒▒░
; ░▒█▒▒▒▒░
; ░░▒▒▒▒░.
; ▒░░▒▒░..
; ▒▒░░░░..
; ▒▒░....▒
; ▒▒░░░███
; █▒▒▒▒▒░░
;
SPRITE_TILES_BOSS_ZORUGERIRU_25:
    .byte $b1,$a1,$c2,$64,$3c,$20,$3f,$83   ; byte
    .byte $7e,$7e,$3c,$98,$c0,$c1,$c7,$fc   ; byte


;
; .....▒▒▒
; ...░▒█▒█
; ..░▒███▒
; .░▒███▒█
; .░▒████▒
; ░▒█████▒
; ░▒█▒█▒▒█
; ░▒▒█▒█▒▒
;
SPRITE_TILES_BOSS_ZORUGERIRU_26:
    .byte $00,$15,$2e,$5d,$5e,$be,$a9,$94   ; byte
    .byte $07,$0f,$1f,$3f,$3f,$7f,$7f,$7f   ; byte


;
; ▒▒▒.....
; █▒▒▒░...
; ▒█▒▒▒░..
; ▒▒▒▒░▒░.
; ▒█▒▒▒░░.
; █▒▒▒░▒░░
; ▒▒▒░▒░░░
; █▒░▒░▒░░
;
SPRITE_TILES_BOSS_ZORUGERIRU_27:
    .byte $00,$88,$44,$0a,$46,$8b,$17,$ab   ; byte
    .byte $e0,$f0,$f8,$f4,$f8,$f4,$e8,$d4   ; byte


;
; ░▒█▒▒▒█▒
; ░▒▒▒█▒▒▒
; ░▒▒█▒█▒▒
; .░▒▒▒▒▒▒
; .░▒░▒▒▒▒
; ..░▒░▒░▒
; ...░░░░░
; .....░░░
;
SPRITE_TILES_BOSS_ZORUGERIRU_28:
    .byte $a2,$88,$94,$40,$50,$2a,$1f,$07   ; byte
    .byte $7f,$7f,$7f,$3f,$2f,$15,$00,$00   ; byte


;
; ▒▒▒░▒░░░
; ▒▒▒▒░░░░
; ▒░▒░▒░░░
; ▒▒░▒░░░.
; ▒░▒░░░░.
; ░▒░░░░..
; ▒░░░░...
; ░░░.....
;
SPRITE_TILES_BOSS_ZORUGERIRU_29:
    .byte $17,$0f,$57,$2e,$5e,$bc,$78,$e0   ; byte
    .byte $e8,$f0,$a8,$d0,$a0,$40,$80,$00   ; byte


;
; .....░░░
; ...███▒▒
; ..████▒░
; .▒██▒█▒▒
; .▒█▒█▒▒░
; .▒▒█▒▒▒░
; .░▒▒▒▒░░
; .░░░░░░░
;
SPRITE_TILES_BOSS_ZORUGERIRU_30:
    .byte $07,$1c,$3d,$34,$29,$11,$43,$7f   ; byte
    .byte $00,$1f,$3e,$7f,$7e,$7e,$3c,$00   ; byte


;
; ░░▒.....
; ▒██▒░...
; ██▒█▒░..
; ███▒░▒░.
; ░█▒▒▒░░.
; ██▒▒░▒░.
; ░██░▒░░.
; █░░░░░..
;
SPRITE_TILES_BOSS_ZORUGERIRU_31:
    .byte $c0,$68,$d4,$ea,$c6,$ca,$f6,$fc   ; byte
    .byte $20,$f0,$f8,$f4,$78,$f4,$68,$80   ; byte


;
; .░██░░░█
; ░█▒▒██▒▒
; ░█▒█▒█▒░
; .░▒▒█▒▒░
; .░▒░▒▒▒░
; ..░▒░▒▒░
; ...░░▒░░
; ....░░░.
;
SPRITE_TILES_BOSS_ZORUGERIRU_32:
    .byte $7f,$cc,$d5,$49,$51,$29,$1b,$0e   ; byte
    .byte $31,$7f,$7e,$3e,$2e,$16,$04,$00   ; byte


;
; ▒█░░▒░░.
; ▒▒██▒░░.
; ░█▒█▒░░.
; █▒█▒▒░░.
; ▒▒▒▒░░░.
; ▒▒░░░░..
; ░░▒░░...
; .░░.....
;
SPRITE_TILES_BOSS_ZORUGERIRU_33:
    .byte $76,$36,$d6,$a6,$0e,$3c,$d8,$60   ; byte
    .byte $c8,$f8,$78,$f8,$f0,$c0,$20,$00   ; byte


;============================================================================
; Boss Tiles: King Grieve
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8066]
;============================================================================

;
; ......██
; .....█▒█
; ....█░░█
; ...▒███▒
; ...███▒▒
; ...███▒█
; ...▒▒▒▒▒
; ...▒░█░█
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8066]
;
SPRITE_TILES_BOSS_KING_GRIEVE_00:
    .byte $03,$05,$0f,$0e,$1c,$1d,$00,$0f   ; byte
    .byte $03,$07,$09,$1f,$1f,$1f,$1f,$15   ; byte


;
; █▒█░░░░.
; ██▒███.░
; █▒█▒▒▒██
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒░▒░
; ▒▒░░░█░█
; ░█░█▒█▒░
; .█░█░░░░
;
SPRITE_TILES_BOSS_KING_GRIEVE_01:
    .byte $be,$dd,$a3,$01,$05,$3f,$f5,$7f   ; byte
    .byte $e0,$fc,$ff,$fe,$fa,$c5,$5e,$50   ; byte


;
; .░████▒▒
; ░█▒▒▒▒░░
; █▒░░░░░█
; ░░▒░▒▒░▒
; ▒▒░▒██▒░
; ░░░██▒▒░
; ░░▒█▒▒░░
; ▒▒█▒▒▒░▒
;
SPRITE_TILES_BOSS_KING_GRIEVE_02:
    .byte $7c,$c3,$bf,$d2,$2d,$f9,$d3,$22   ; byte
    .byte $3f,$7c,$c1,$2d,$de,$1e,$3c,$fd   ; byte


;
; ░░██▒░░░
; ░▒█▒▒▒▒░
; ██▒▒░▒▒░
; ▒▒▒░▒█▒▒
; ░░░░▒██▒
; ░▒░▒▒▒█▒
; ▒░░░░▒▒█
; ░░▒▒░░▒▒
;
SPRITE_TILES_BOSS_KING_GRIEVE_03:
    .byte $f7,$a1,$c9,$14,$f6,$a2,$79,$cc   ; byte
    .byte $38,$7e,$f6,$ef,$0f,$5f,$87,$33   ; byte


;
; ▒▒██▒█▒▒
; ░▒███▒▒▒
; ░▒▒▒███▒
; ░░░▒██▒█
; ░░░▒▒▒█▒
; ▒░░░░▒██
; ▒▒░░░▒▒▒
; ▒▒░░░░▒▒
;
SPRITE_TILES_BOSS_KING_GRIEVE_04:
    .byte $34,$b8,$8e,$ed,$e2,$7b,$38,$3c   ; byte
    .byte $ff,$7f,$7f,$1f,$1f,$87,$c7,$c3   ; byte


;
; ▒░░░▒▒░░
; ▒▒▒░░▒▒▒
; ░░▒▒▒▒▒▒
; ▒▒▒░░▒░▒
; ▒▒▒▒▒░░░
; ▒▒▒▒▒▒░▒
; █▒▒▒▒▒▒░
; ██▒▒▒▒▒▒
;
SPRITE_TILES_BOSS_KING_GRIEVE_05:
    .byte $73,$18,$c0,$1a,$07,$02,$81,$c0   ; byte
    .byte $8c,$e7,$3f,$e5,$f8,$fd,$fe,$ff   ; byte


;
; ░.......
; ▒░░░....
; █▒▒▒░...
; ▒██▒▒░░.
; ▒▒▒███▒░
; ░░▒▒███▒
; ░░▒▒▒▒██
; ░░░░▒░▒█
;
SPRITE_TILES_BOSS_KING_GRIEVE_06:
    .byte $80,$70,$88,$66,$1d,$ce,$c3,$f5   ; byte
    .byte $00,$80,$f0,$f8,$fe,$3f,$3f,$0b   ; byte


;
; ....▒...
; ....░░..
; ....░█░.
; ....░▒░.
; ....░▒▒░
; ░...░█▒░
; ▒░.░▒█▒░
; ▒█▒▒▒█▒░
;
SPRITE_TILES_BOSS_KING_GRIEVE_07:
    .byte $00,$0c,$0e,$0a,$09,$8d,$55,$45   ; byte
    .byte $08,$00,$04,$04,$06,$06,$8e,$fe   ; byte


;
; ▒████▒░░
; ▒░██▒▒░.
; ░▒▒░▒░░.
; ░░░▒░░..
; ░░░░░...
; ........
; ........
; ........
;
SPRITE_TILES_BOSS_KING_GRIEVE_08:
    .byte $7b,$72,$96,$ec,$f8,$00,$00,$00   ; byte
    .byte $fc,$bc,$68,$10,$00,$00,$00,$00   ; byte


;
; .....░░░
; .....▒▒░
; .....░▒█
; ......░░
; ........
; ........
; ........
; ........
;
SPRITE_TILES_BOSS_KING_GRIEVE_09:
    .byte $07,$01,$05,$03,$00,$00,$00,$00   ; byte
    .byte $00,$06,$03,$00,$00,$00,$00,$00   ; byte


;
; ░░░░▒▒▒█
; ▒░█▒█▒█▒
; ▒▒▒▒░▒░▒
; ░░░░░░▒░
; ..░░▒██▒
; ..░███▒▒
; .░▒██▒░░
; ░▒█▒▒░▒░
;
SPRITE_TILES_BOSS_KING_GRIEVE_10:
    .byte $f1,$6a,$0a,$fd,$36,$3c,$5b,$a5   ; byte
    .byte $0f,$bf,$f5,$02,$0f,$1f,$3c,$7a   ; byte


;
; ██▒▒▒▒░░
; ▒░▒▒▒░░░
; ▒▒░░░░░░
; ░░░░░░░░
; ▒▒░░░░░░
; ░░░░░░░░
; ░░░▒▒░░.
; ░░▒▒░░..
;
SPRITE_TILES_BOSS_KING_GRIEVE_11:
    .byte $c3,$47,$3f,$ff,$3f,$ff,$e6,$cc   ; byte
    .byte $fc,$b8,$c0,$00,$c0,$00,$18,$30   ; byte


;
; ░▒██▒░░▒
; ░▒█▒▒▒░░
; ░▒▒▒▒░░░
; ░░▒▒░░▒░
; ░░░░░▒░░
; ▒░░░░░▒░
; ▒░░░░░░░
; ▒░░░░░░░
;
SPRITE_TILES_BOSS_KING_GRIEVE_12:
    .byte $b6,$a3,$87,$cd,$fb,$7d,$7f,$7f   ; byte
    .byte $79,$7c,$78,$32,$04,$82,$80,$80   ; byte


;
; █▒░░░░░░
; ▒▒░░░░░░
; █▒░░░░░░
; █▒░░░░░░
; █▒░░░░░░
; ▒▒▒░▒░░░
; ░█▒▒▒░░░
; ░░█▒░░░░
;
SPRITE_TILES_BOSS_KING_GRIEVE_13:
    .byte $bf,$3f,$bf,$bf,$bf,$17,$c7,$ef   ; byte
    .byte $c0,$c0,$c0,$c0,$c0,$e8,$78,$30   ; byte


;
; ████▒▒▒▒
; ▒██▒▒▒▒▒
; ░▒███▒▒▒
; ░▒█▒██▒█
; ░▒██▒▒█▒
; ░▒██▒▒▒▒
; ░▒█▒▒░▒▒
; ░░██▒░▒▒
;
SPRITE_TILES_BOSS_KING_GRIEVE_14:
    .byte $f0,$60,$b8,$ad,$b2,$b0,$a4,$f4   ; byte
    .byte $ff,$ff,$7f,$7f,$7f,$7f,$7b,$3b   ; byte


;
; ░░░░░▒▒▒
; ▒▒░░░░▒░
; ▒▒▒░░░░░
; ▒▒▒▒░░░░
; █▒▒▒░░..
; ▒▒▒▒░░..
; ▒▒▒▒▒░..
; ▒▒▒▒▒▒░.
;
SPRITE_TILES_BOSS_KING_GRIEVE_15:
    .byte $f8,$3d,$1f,$0f,$8c,$0c,$04,$02   ; byte
    .byte $07,$c2,$e0,$f0,$f0,$f0,$f8,$fc   ; byte


;
; ........
; .......░
; .......▒
; .....░▒▒
; .....▒█▒
; ....▒██▒
; ....▒█▒▒
; ....▒█▒░
;
SPRITE_TILES_BOSS_KING_GRIEVE_16:
    .byte $00,$01,$00,$04,$02,$06,$04,$05   ; byte
    .byte $00,$00,$01,$03,$07,$0f,$0f,$0e   ; byte


;
; ▒█▒▒░▒░░
; █▒▒░░░░░
; ▒▒░░░░░░
; ▒░░░░░░░
; ▒░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
;
SPRITE_TILES_BOSS_KING_GRIEVE_17:
    .byte $4b,$9f,$3f,$7f,$7f,$ff,$ff,$ff   ; byte
    .byte $f4,$e0,$c0,$80,$80,$00,$00,$00   ; byte


;
; ░░█▒░...
; ░░█▒....
; ░░▒▒....
; ░..░....
; ░.......
; ........
; ........
; ........
;
SPRITE_TILES_BOSS_KING_GRIEVE_18:
    .byte $e8,$e0,$c0,$90,$80,$00,$00,$00   ; byte
    .byte $30,$30,$30,$00,$00,$00,$00,$00   ; byte


;
; ░.▒░░▒░░
; ...█▒░░░
; .█▒▒▒░░.
; ▒█░▒░░..
; ▒█▒░░▒░.
; ▒░█░░░█░
; █░....█▒
; .▒...▒▒.
;
SPRITE_TILES_BOSS_KING_GRIEVE_19:
    .byte $9b,$17,$46,$6c,$5a,$7f,$c2,$00   ; byte
    .byte $24,$18,$78,$d0,$e4,$a2,$83,$46   ; byte


;
; ░░░░░░░░
; .░░░░░..
; ........
; ........
; ........
; ........
; ........
; ........
;
SPRITE_TILES_BOSS_KING_GRIEVE_20:
    .byte $ff,$7c,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ░▒██▒░▒▒
; ░███▒▒░░
; .▒█▒███▒
; .░▒███▒▒
; ▒▒░▒██▒▒
; ▒░░░▒██▒
; ░░..░▒█▒
; .░...░▒█
;
SPRITE_TILES_BOSS_KING_GRIEVE_21:
    .byte $b4,$f3,$2e,$5c,$2c,$76,$ca,$45   ; byte
    .byte $7b,$7c,$7f,$3f,$df,$8f,$07,$03   ; byte


;
; ▒▒▒▒▒▒░.
; ░░░▒░▒▒.
; ██▒▒▒░░▒
; ▒▒▒▒▒▒▒▒
; ▒█▒█▒▒▒▒
; ▒▒▒▒▒█▒▒
; █▒▒░░▒▒▒
; ▒▒░░░░░▒
;
SPRITE_TILES_BOSS_KING_GRIEVE_22:
    .byte $02,$e8,$c6,$00,$50,$04,$98,$3e   ; byte
    .byte $fc,$16,$f9,$ff,$ff,$ff,$e7,$c1   ; byte


;
; ........
; ........
; ........
; ▒▒......
; ▒.......
; ▒.......
; ▒.......
; ▒▒......
;
SPRITE_TILES_BOSS_KING_GRIEVE_23:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$c0,$80,$80,$80,$c0   ; byte


;
; .....▒░░
; .....▒▒░
; .....▒▒░
; .....▒▒░
; ......▒░
; ......▒░
; .......▒
; .......░
;
SPRITE_TILES_BOSS_KING_GRIEVE_24:
    .byte $03,$01,$01,$01,$01,$01,$00,$01   ; byte
    .byte $04,$06,$06,$06,$02,$02,$01,$00   ; byte


;
; ░░░░░░░░
; ░░░░░░..
; ░░░░░...
; ░░░░░...
; ░░░░░░..
; ░░░░░░░.
; ░░░░░░..
; ▒░░░░...
;
SPRITE_TILES_BOSS_KING_GRIEVE_25:
    .byte $ff,$fc,$f8,$f8,$fc,$fe,$fc,$78   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$80   ; byte


;
; █▒▒░▒░░░
; ██▒▒░░▒▒
; ▒██▒▒░░▒
; ░▒█▒█▒░▒
; .░░▒██▒░
; ...░▒▒█▒
; ....░▒██
; ......░▒
;
SPRITE_TILES_BOSS_KING_GRIEVE_26:
    .byte $97,$cc,$66,$aa,$6d,$12,$0b,$02   ; byte
    .byte $e8,$f3,$f9,$7d,$1e,$0f,$07,$01   ; byte


;
; ░▒▒.....
; ▒░░▒....
; ▒▒▒▒▒▒..
; ▒▒▒▒░░..
; ▒▒▒▒░...
; ▒░▒▒....
; ▒░░▒....
; █▒▒░▒...
;
SPRITE_TILES_BOSS_KING_GRIEVE_27:
    .byte $80,$60,$00,$0c,$08,$40,$60,$90   ; byte
    .byte $60,$90,$fc,$f0,$f0,$b0,$90,$e8   ; byte


;
; ░░░░....
; ▒░░░....
; ░▒░░░...
; .░▒░░...
; ..░░░░..
; ....░░░░
; ........
; ........
;
SPRITE_TILES_BOSS_KING_GRIEVE_28:
    .byte $f0,$70,$b8,$58,$3c,$0f,$00,$00   ; byte
    .byte $00,$80,$40,$20,$00,$00,$00,$00   ; byte


;
; ▒█▒▒░...
; ░▒▒█▒▒..
; .░▒▒█▒░.
; ...░▒▒▒░
; ....░▒█▒
; .....░▒▒
; .......░
; ........
;
SPRITE_TILES_BOSS_KING_GRIEVE_29:
    .byte $48,$90,$4a,$11,$0a,$04,$01,$00   ; byte
    .byte $f0,$7c,$3c,$0e,$07,$03,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ........
; █.......
; ▒▒......
; ░░▒.....
;
SPRITE_TILES_BOSS_KING_GRIEVE_30:
    .byte $00,$00,$00,$00,$00,$80,$00,$c0   ; byte
    .byte $00,$00,$00,$00,$00,$80,$c0,$20   ; byte


;
; ......▒▒
; ....░▒██
; ...░████
; ..░███▒█
; ..▒██▒██
; .░██▒██▒
; ▒██▒██▒.
; ██▒▒█▒.█
;
SPRITE_TILES_BOSS_KING_GRIEVE_31:
    .byte $00,$0b,$1f,$3d,$1b,$76,$6c,$c9   ; byte
    .byte $03,$07,$0f,$1f,$3f,$3f,$fe,$fd   ; byte


;
; ▒▒▒░░░░░
; ████▒▒▒▒
; ▒░░▒▒█▒█
; ██▒░░▒██
; ███▒▒█▒▒
; █████▒▒░
; ▒▒▒░▒░██
; ░░▒█████
;
SPRITE_TILES_BOSS_KING_GRIEVE_32:
    .byte $1f,$f0,$65,$db,$e4,$f9,$17,$df   ; byte
    .byte $e0,$ff,$9f,$e7,$ff,$fe,$eb,$3f   ; byte


;
; .▒▒▒▒▒▒.
; ▒▒██████
; ████▒▒▒▒
; ▒██▒▒░░░
; ▒▒▒▒▒░▒█
; ░▒▒▒░▒██
; ▒░░░░▒▒█
; ▒▒▒░░░▒▒
;
SPRITE_TILES_BOSS_KING_GRIEVE_33:
    .byte $00,$3f,$f0,$67,$05,$8b,$79,$1c   ; byte
    .byte $7e,$ff,$ff,$f8,$fb,$77,$87,$e3   ; byte


;
; ........
; ▒▒▒.....
; ███▒▒...
; ▒█▒███░░
; █▒▒▒▒▒▒▒
; ██▒░░▒▒▒
; █████░░▒
; ███▒▒▒▒░
;
SPRITE_TILES_BOSS_KING_GRIEVE_34:
    .byte $00,$00,$e0,$5f,$80,$d8,$fe,$e1   ; byte
    .byte $00,$e0,$f8,$fc,$ff,$e7,$f9,$fe   ; byte


;
; ........
; ........
; ........
; ........
; ░.......
; ▒░░.....
; ▒▒▒░....
; ░▒▒▒░░..
;
SPRITE_TILES_BOSS_KING_GRIEVE_35:
    .byte $00,$00,$00,$00,$80,$60,$10,$8c   ; byte
    .byte $00,$00,$00,$00,$00,$80,$e0,$70   ; byte


;
; ▒██▒█▒▒.
; .▒▒██▒█▒
; ...▒▒█▒▒
; ....░▒█▒
; ......▒█
; ......██
; .....███
; ......░▒
;
SPRITE_TILES_BOSS_KING_GRIEVE_36:
    .byte $68,$1a,$04,$0a,$01,$03,$07,$02   ; byte
    .byte $fe,$7f,$1f,$07,$03,$03,$07,$01   ; byte


;
; ........
; ▒█▒.....
; ▒█░▒▒▒░.
; █▒▒░░░░░
; ▒▒░▒█▒█▒
; ██▒▒▒▒▒▒
; ▒▒░▒░░░░
; █▒▒▒▒▒▒▒
;
SPRITE_TILES_BOSS_KING_GRIEVE_37:
    .byte $00,$40,$62,$9f,$2a,$c0,$2f,$80   ; byte
    .byte $00,$e0,$dc,$e0,$df,$ff,$d0,$ff   ; byte


;
; ........
; ........
; ........
; ░.......
; ░░......
; ▒▒▒▒....
; ▒▒▒▒▒▒..
; ▒░░▒▒▒..
;
SPRITE_TILES_BOSS_KING_GRIEVE_38:
    .byte $00,$00,$00,$80,$c0,$00,$00,$60   ; byte
    .byte $00,$00,$00,$00,$00,$f0,$fc,$9c   ; byte


;
; ░▒█▒▒▒▒▒
; .░▒█▒▒▒▒
; ..░▒█▒▒▒
; ...░▒█▒▒
; ....░██▒
; .....░▒█
; .......░
; ........
;
SPRITE_TILES_BOSS_KING_GRIEVE_39:
    .byte $a0,$50,$28,$14,$0e,$05,$01,$00   ; byte
    .byte $7f,$3f,$1f,$0f,$07,$03,$00,$00   ; byte


;
; ▒▒▒▒░░░.
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒▒▒▒
; █▒▒▒▒▒▒▒
; ██▒█▒██▒
; ░▒████▒░
;
SPRITE_TILES_BOSS_KING_GRIEVE_40:
    .byte $0e,$00,$00,$01,$00,$80,$d6,$bd   ; byte
    .byte $f0,$ff,$ff,$fe,$ff,$ff,$ff,$7e   ; byte


;
; ........
; ........
; ▒.......
; ▒▒......
; ░░░░....
; ▒▒▒░░...
; ▒▒▒▒▒░..
; ░░░▒▒▒░░
;
SPRITE_TILES_BOSS_KING_GRIEVE_41:
    .byte $00,$00,$00,$00,$f0,$18,$04,$e3   ; byte
    .byte $00,$00,$80,$c0,$00,$e0,$f8,$1c   ; byte


;
; ........
; ....▒▒▒▒
; ..██████
; ..▒▒██▒▒
; ...█▒▒▒░
; ...▒▒▒▒░
; ..▒█▒▒░▒
; .░█▒▒░░░
;
SPRITE_TILES_BOSS_KING_GRIEVE_42:
    .byte $00,$00,$3f,$0c,$11,$01,$12,$67   ; byte
    .byte $00,$0f,$3f,$3f,$1e,$1e,$3d,$38   ; byte


;
; ░▒▒▒▒▒▒░
; ███▒▒██▒
; ▒▒▒░░▒░▒
; ▒░░░░░░░
; ░░░░░░░░
; ▒▒░░░░░░
; ▒░▒░░░░░
; ░░░░▒░░░
;
SPRITE_TILES_BOSS_KING_GRIEVE_43:
    .byte $81,$e6,$1a,$7f,$ff,$3f,$5f,$f7   ; byte
    .byte $7e,$ff,$e5,$80,$00,$c0,$a0,$08   ; byte


;
; ░░░░░░..
; ▒█▒██▒▒▒
; ▒░▒▒▒░▒▒
; ░▒░░░▒░▒
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
;
SPRITE_TILES_BOSS_KING_GRIEVE_44:
    .byte $fc,$58,$44,$ba,$ff,$ff,$ff,$ff   ; byte
    .byte $00,$ff,$bb,$45,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ▒▒▒▒....
; ░▒░▒▒▒▒▒
; ░░▒░▒░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░.....
;
SPRITE_TILES_BOSS_KING_GRIEVE_45:
    .byte $00,$00,$00,$a0,$d7,$ff,$ff,$e0   ; byte
    .byte $00,$00,$f0,$5f,$28,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ▒.......
; ▒▒▒▒....
; ░░░░▒▒..
; ░.......
; ........
;
SPRITE_TILES_BOSS_KING_GRIEVE_46:
    .byte $00,$00,$00,$00,$00,$f0,$80,$00   ; byte
    .byte $00,$00,$00,$80,$f0,$0c,$00,$00   ; byte


;
; ......▒▒
; ....░▒██
; ...░████
; ..░███▒█
; ..▒██▒██
; .░██▒██▒
; ▒██▒██▒.
; ██▒▒█▒.█
;
SPRITE_TILES_BOSS_KING_GRIEVE_47:
    .byte $00,$0b,$1f,$3d,$1b,$76,$6c,$c9   ; byte
    .byte $03,$07,$0f,$1f,$3f,$3f,$fe,$fd   ; byte


;
; ▒▒▒░░░░░
; ████▒▒▒▒
; ▒░░▒▒█▒█
; ██▒░░▒██
; ███▒▒█▒▒
; ▒▒▒██▒▒░
; ░░░░▒░██
; ░░██████
;
SPRITE_TILES_BOSS_KING_GRIEVE_48:
    .byte $1f,$f0,$65,$db,$e4,$19,$f7,$ff   ; byte
    .byte $e0,$ff,$9f,$e7,$ff,$fe,$0b,$3f   ; byte


;
; ........
; ▒▒▒.....
; ▒▒▒▒▒░░░
; ░░░░░▒▒▒
; ████████
; ███▒▒▒▒▒
; ▒▒▒▒░▒░▒
; ▒▒░░░░░░
;
SPRITE_TILES_BOSS_KING_GRIEVE_49:
    .byte $00,$00,$07,$f8,$ff,$e0,$0a,$3f   ; byte
    .byte $00,$e0,$f8,$07,$ff,$ff,$f5,$c0   ; byte


;
; ........
; ......█▒
; ▒▒▒███░░
; ███░░░██
; ▒▒▒█▒█▒▒
; ▒░░▒▒▒░▒
; ░▒░░▒░▒░
; ░░░░░░░░
;
SPRITE_TILES_BOSS_KING_GRIEVE_50:
    .byte $00,$02,$1f,$ff,$14,$62,$b5,$ff   ; byte
    .byte $00,$03,$fc,$e3,$ff,$9d,$4a,$00   ; byte


;
; ▒██▒▒░░░
; ░█▒▒░░░░
; █▒▒▒░░░░
; ▒▒▒░░░░░
; ▒▒░░░░░░
; ░▒░░░░░░
; ▒░░░░░░░
; ░░░░░░░░
;
SPRITE_TILES_BOSS_KING_GRIEVE_51:
    .byte $67,$cf,$8f,$1f,$3f,$bf,$7f,$ff   ; byte
    .byte $f8,$70,$f0,$e0,$c0,$40,$80,$00   ; byte


;
; ░░░░░░░░
; ░▒░░░░░▒
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░▒░░░░
;
SPRITE_TILES_BOSS_KING_GRIEVE_52:
    .byte $ff,$be,$ff,$ff,$ff,$ff,$ff,$ef   ; byte
    .byte $00,$41,$00,$00,$00,$00,$00,$10   ; byte


;
; ▒░░░░░░░
; ░▒░░░░░.
; ░▒░▒░░..
; ░░░▒░▒..
; ░░░░▒░..
; ░░░░░▒..
; ░░....▒.
; ░.......
;
SPRITE_TILES_BOSS_KING_GRIEVE_53:
    .byte $7f,$be,$ac,$e8,$f4,$f8,$c0,$80   ; byte
    .byte $80,$40,$50,$14,$08,$04,$02,$00   ; byte


;
; █▒█░░░░.
; ██▒███.░
; █▒█▒▒▒██
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒░▒░
; ▒▒░░░█░█
; ░█░█▒█▒░
; .█░█░░░░
;
SPRITE_TILES_BOSS_KING_GRIEVE_54:
    .byte $be,$dd,$a3,$01,$05,$3f,$f5,$7f   ; byte
    .byte $e0,$fc,$ff,$fe,$fa,$c5,$5e,$50   ; byte


;
; .░████▒▒
; ░█▒▒▒▒░░
; █▒░░░░░█
; ░░▒░▒▒░▒
; ▒▒░▒██▒░
; ░░░██▒▒░
; ░░░█▒▒░░
; ░░░█▒▒░▒
;
SPRITE_TILES_BOSS_KING_GRIEVE_55:
    .byte $7c,$c3,$bf,$d2,$2d,$f9,$f3,$f2   ; byte
    .byte $3f,$7c,$c1,$2d,$de,$1e,$1c,$1d   ; byte


;
; ░░▒░▒░░░
; ░░░░░░▒░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ▒░░░░░░░
; ▒▒░░░░░░
; ▒▒░░░░░░
;
SPRITE_TILES_BOSS_KING_GRIEVE_56:
    .byte $d7,$fd,$ff,$ff,$ff,$7f,$3f,$3f   ; byte
    .byte $28,$02,$00,$00,$00,$80,$c0,$c0   ; byte


;
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░▒░░░
; ░░▒░░▒░▒
; ░░░▒▒▒░░
; ░▒▒▒▒▒▒░
;
SPRITE_TILES_BOSS_KING_GRIEVE_57:
    .byte $ff,$ff,$ff,$ff,$f7,$da,$e3,$81   ; byte
    .byte $00,$00,$00,$00,$08,$25,$1c,$7e   ; byte


;
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░.
; ░░░░░█▒░
; ░░▒▒███▒
; ░░▒▒▒▒██
; ░░░░▒░▒█
;
SPRITE_TILES_BOSS_KING_GRIEVE_58:
    .byte $ff,$ff,$ff,$fe,$fd,$ce,$c3,$f5   ; byte
    .byte $00,$00,$00,$00,$06,$3f,$3f,$0b   ; byte


;
; ░░░░░░░▒
; ░░░░▒░▒░
; ░░░░░░▒.
; ...░░▒..
; ....░▒..
; ░....▒..
; ▒░░.....
; ▒█▒▒░...
;
SPRITE_TILES_BOSS_KING_GRIEVE_59:
    .byte $fe,$f5,$fc,$18,$08,$80,$60,$48   ; byte
    .byte $01,$0a,$02,$04,$04,$04,$80,$f0   ; byte


;
; .░░░▒░▒▒
; ..░.░▒▒░
; .░░▒░▒░█
; .░▒░░░█░
; ▒▒░░█░░▒
; █░▒░█▒▒▒
; ▒██▒▒▒░░
; .█▒█░░..
;
SPRITE_TILES_BOSS_KING_GRIEVE_60:
    .byte $74,$29,$6b,$5f,$3e,$d8,$63,$5c   ; byte
    .byte $0b,$06,$15,$22,$c9,$af,$fc,$70   ; byte


;
; ░▒░█▒▒░░
; █░█▒▒▒░░
; ░█▒▒▒░░░
; █▒▒░░░░░
; ▒░░.░░░.
; ░..░▒░.▒
; ..░▒▒░.▒
; ..█▒░░..
;
SPRITE_TILES_BOSS_KING_GRIEVE_61:
    .byte $b3,$e3,$c7,$9f,$6e,$94,$24,$2c   ; byte
    .byte $5c,$bc,$78,$e0,$80,$09,$19,$30   ; byte


;
; ░▒██▒▒▒▒
; ▒██▒▒▒▒█
; ▒███▒░░▒
; ░▒██▒▒░░
; ░▒▒███▒░
; ░░░▒▒█▒▒
; ░░░░░▒█▒
; ░░░░░█▒▒
;
SPRITE_TILES_BOSS_KING_GRIEVE_62:
    .byte $b0,$61,$76,$b3,$9d,$e4,$fa,$fc   ; byte
    .byte $7f,$ff,$f9,$7c,$7e,$1f,$07,$07   ; byte


;
; ▒░░░░▒▒▒
; ▒▒░░░░▒░
; █▒▒░░░░░
; ▒▒▒░░░░░
; ░▒░░░░..
; ░░░░....
; ░░......
; ░.......
;
SPRITE_TILES_BOSS_KING_GRIEVE_63:
    .byte $78,$3d,$9f,$1f,$bc,$f0,$c0,$80   ; byte
    .byte $87,$c2,$e0,$e0,$40,$00,$00,$00   ; byte


;
; ▒██▒▒▒..
; ▒░█▒█▒█.
; ░▒▒░▒▒▒▒
; ░░░▒░▒░▒
; ░░░░░░░▒
; ...░░░░░
; .....░░░
; ........
;
SPRITE_TILES_BOSS_KING_GRIEVE_64:
    .byte $60,$6a,$90,$ea,$fe,$1f,$07,$00   ; byte
    .byte $fc,$be,$6f,$15,$01,$00,$00,$00   ; byte


;
; .......▒
; ......▒░
; █...▒█▒░
; ▒▒█▒░▒░.
; ░▒░▒░░..
; ░░░░░...
; ░░░.....
; ........
;
SPRITE_TILES_BOSS_KING_GRIEVE_65:
    .byte $00,$01,$85,$2a,$ac,$f8,$e0,$00   ; byte
    .byte $01,$02,$8e,$f4,$50,$00,$00,$00   ; byte


;
; ..█▒....
; ..▒▒░...
; ...░░...
; ........
; ........
; ........
; ........
; ........
;
SPRITE_TILES_BOSS_KING_GRIEVE_66:
    .byte $20,$08,$18,$00,$00,$00,$00,$00   ; byte
    .byte $30,$30,$00,$00,$00,$00,$00,$00   ; byte


;
; ░░██▒░▒░
; ░█████░░
; .█░░██▒░
; .░▒▒▒░█▒
; █▒▒░░░█▒
; █░░...█▒
; ▒▒...█▒░
; .░...░░.
;
SPRITE_TILES_BOSS_KING_GRIEVE_67:
    .byte $f5,$ff,$7d,$46,$9e,$e2,$05,$46   ; byte
    .byte $3a,$7c,$4e,$3b,$e3,$83,$c6,$00   ; byte


;
; █▒▒░▒▒▒▒
; ██▒░▒▒▒▒
; ██▒▒░▒▒▒
; ▒██▒▒░░▒
; ██▒▒░▒▒▒
; ▒█▒▒░▒▒▒
; ▒██▒▒░░▒
; ░░▒░▒▒▒▒
;
SPRITE_TILES_BOSS_KING_GRIEVE_68:
    .byte $90,$d0,$c8,$66,$c8,$48,$66,$d0   ; byte
    .byte $ef,$ef,$f7,$f9,$f7,$f7,$f9,$2f   ; byte


;
; ▒▒▒▒▒▒▒▒
; ▒▒░░░▒▒▒
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒░
; █▒▒▒▒▒▒░
;
SPRITE_TILES_BOSS_KING_GRIEVE_69:
    .byte $00,$38,$01,$01,$01,$00,$01,$81   ; byte
    .byte $ff,$c7,$fe,$fe,$fe,$ff,$fe,$fe   ; byte


;
; ..░▒█▒▒▒
; ..░▒█▒▒░
; ...▒█▒▒░
; ...▒█▒▒░
; ...░█▒▒░
; ...░█▒▒░
; ...░██▒░
; ...░█▒▒░
;
SPRITE_TILES_BOSS_KING_GRIEVE_70:
    .byte $28,$29,$09,$09,$19,$19,$1d,$19   ; byte
    .byte $1f,$1e,$1e,$1e,$0e,$0e,$0e,$0e   ; byte


;
; ...▒█▒░░
; ..░▒█▒▒░
; ..▒█▒▒░░
; .▒█▒▒░░░
; ▒█▒▒▒░░░
; █▒▒▒░░░░
; █▒▒░░░░░
; ▒▒░░░░░░
;
SPRITE_TILES_BOSS_KING_GRIEVE_71:
    .byte $0b,$29,$13,$27,$47,$8f,$9f,$3f   ; byte
    .byte $1c,$1e,$3c,$78,$f8,$f0,$e0,$c0   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ......░░
; .....░▒▒
; ....░▒██
;
SPRITE_TILES_BOSS_KING_GRIEVE_72:
    .byte $00,$00,$00,$00,$00,$03,$04,$0b   ; byte
    .byte $00,$00,$00,$00,$00,$00,$03,$07   ; byte


;
; ░░░░░░░░
; ░▒░░░░░.
; ░░░░░░▒.
; ░░░▒░▒░.
; ░░░░▒░▒.
; ░░░░░▒░░
; ░░░░░░░▒
; ░░░░░░..
;
SPRITE_TILES_BOSS_KING_GRIEVE_73:
    .byte $ff,$be,$fc,$ea,$f4,$fb,$fe,$fc   ; byte
    .byte $00,$40,$02,$14,$0a,$04,$01,$00   ; byte


;
; ...▒▒██▒
; ▒░▒█▒█▒▒
; ░██▒█▒▒░
; ████▒▒▒░
; ███▒▒░░░
; █▒▒▒░░░░
; ▒▒▒▒░░░░
; ▒▒░░░░░░
;
SPRITE_TILES_BOSS_KING_GRIEVE_74:
    .byte $06,$54,$e9,$f1,$e7,$8f,$0f,$3f   ; byte
    .byte $1f,$bf,$7e,$fe,$f8,$f0,$f0,$c0   ; byte


;
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
;
SPRITE_TILES_BOSS_KING_GRIEVE_75:
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ░░░░░░..
; ░░░░░...
; ░░░░░...
; ░░░░....
; ░░░░....
; ░░░.....
; ░░░.....
; ░░░.....
;
SPRITE_TILES_BOSS_KING_GRIEVE_76:
    .byte $fc,$f8,$f8,$f0,$f0,$e0,$e0,$e0   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; █▒█░░░░.
; ██▒██▒██
; █▒█▒▒▒▒▒
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒░▒░
; ▒▒░░░█░█
; ░█░█▒█▒░
; .█░█░░░░
;
SPRITE_TILES_BOSS_KING_GRIEVE_77:
    .byte $be,$db,$a0,$01,$05,$3f,$f5,$7f   ; byte
    .byte $e0,$ff,$ff,$fe,$fa,$c5,$5e,$50   ; byte


;
; ██████▒▒
; █▒▒▒▒▒░░
; ▒▒░░░░░█
; ░░▒░▒▒░▒
; ▒▒░▒██▒░
; ░░░██▒▒░
; ░░░█▒▒░░
; ▒░░█▒▒░▒
;
SPRITE_TILES_BOSS_KING_GRIEVE_78:
    .byte $fc,$83,$3f,$d2,$2d,$f9,$f3,$72   ; byte
    .byte $ff,$fc,$c1,$2d,$de,$1e,$1c,$9d   ; byte


;
; ....░░░▒
; ....▒░▒▒
; ....▒░█▒
; .█..░█▒░
; .░███▒░░
; ..░▒░░░█
; ....█░░░
; ....▒░░█
;
SPRITE_TILES_BOSS_KING_GRIEVE_79:
    .byte $0e,$04,$06,$4d,$7b,$2f,$0f,$07   ; byte
    .byte $01,$0b,$0b,$46,$3c,$11,$08,$09   ; byte


;
; ▒░░█▒▒░░
; ░░█▒▒▒░░
; ░░█▒▒░░░
; ▒█▒▒▒░░░
; ░█▒▒░░░.
; █▒▒░░░.▒
; █▒░.░▒.▒
; ▒▒░.░▒..
;
SPRITE_TILES_BOSS_KING_GRIEVE_80:
    .byte $73,$e3,$e7,$47,$ce,$9c,$a8,$28   ; byte
    .byte $9c,$3c,$38,$f8,$70,$e1,$c5,$c4   ; byte


;
; ▒██▒▒░..
; ▒░██▒▒░.
; ░▒▒▒▒▒░░
; ░░░▒▒▒▒░
; ░░░░▒█▒░
; ...░▒▒▒░
; ....░▒▒░
; ....░▒▒░
;
SPRITE_TILES_BOSS_KING_GRIEVE_81:
    .byte $64,$72,$83,$e1,$f5,$11,$09,$09   ; byte
    .byte $f8,$bc,$7c,$1e,$0e,$0e,$06,$06   ; byte


;
; ....░░▒░
; ....░▒░░
; ....░░░.
; ...░░░░.
; ...░░░..
; ..░░░...
; .░░░....
; ........
;
SPRITE_TILES_BOSS_KING_GRIEVE_82:
    .byte $0d,$0b,$0e,$1e,$1c,$38,$70,$00   ; byte
    .byte $02,$04,$00,$00,$00,$00,$00,$00   ; byte


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
SPRITE_TILES_BOSS_KING_GRIEVE_83:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;============================================================================
; Boss Tiles: Shadow Eura
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8068]
;============================================================================

;
; ........
; ........
; ........
; .......▒
; .....▒▒▒
; ...▒▒▒██
; ..▒▒████
; .▒▒█████
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8068]
;
SPRITE_TILES_BOSS_SHADOW_EURA_00:
    .byte $00,$00,$00,$00,$00,$03,$0f,$1f   ; byte
    .byte $00,$00,$00,$01,$07,$1f,$3f,$7f   ; byte


;
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░▒▒░░░░
; .░▒▒▒░░░
; .░▒█░░░░
; ..░█░█░░
; ..░▒▒▒▒░
;
SPRITE_TILES_BOSS_SHADOW_EURA_01:
    .byte $ff,$ff,$ff,$cf,$47,$5f,$3f,$21   ; byte
    .byte $00,$00,$00,$30,$38,$30,$14,$1e   ; byte


;
; ▒▒██████
; ▒████▒▒▒
; ███▒▒▒▒▒
; █▒▒▒░░░▒
; ▒▒░░░░░▒
; ▒░██▒░░▒
; ░▒█▒▒░░▒
; ░▒▒▒▒░░▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_02:
    .byte $3f,$78,$e0,$8e,$3e,$76,$a6,$86   ; byte
    .byte $ff,$ff,$ff,$f1,$c1,$b9,$79,$79   ; byte


;
; ▒▒██████
; ▒████▒▒▒
; ███▒▒▒▒▒
; █▒▒▒░░░▒
; ▒▒░░▒▒░▒
; ▒░██▒▒░▒
; ░▒█▒▒▒░▒
; ▒▒▒▒▒▒░▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_03:
    .byte $3f,$78,$e0,$8e,$32,$72,$a2,$02   ; byte
    .byte $ff,$ff,$ff,$f1,$cd,$bd,$7d,$fd   ; byte


;
; ▒▒██████
; ▒████▒▒▒
; ███▒▒▒▒▒
; █▒▒▒░░░▒
; ▒▒░░▒▒▒▒
; ▒░██▒▒▒▒
; ░▒█▒▒▒▒▒
; ▒▒▒▒▒▒░▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_04:
    .byte $3f,$78,$e0,$8e,$30,$70,$a0,$02   ; byte
    .byte $ff,$ff,$ff,$f1,$cf,$bf,$7f,$fd   ; byte


;
; ████████
; ███████▒
; █▒▒▒▒▒▒▒
; ▒▒▒░░░░░
; ░░░░░░░░
; ░░░░░░▒▒
; ░░░░░▒█▒
; ▒▒░░░▒██
;
SPRITE_TILES_BOSS_SHADOW_EURA_05:
    .byte $ff,$fe,$80,$1f,$ff,$fc,$fa,$3b   ; byte
    .byte $ff,$ff,$ff,$e0,$00,$03,$07,$c7   ; byte


;
; ███████▒
; ▒▒▒▒▒▒██
; ░░░░░▒▒▒
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ▒░░░░░▒▒
; ▒▒░░░░▒█
;
SPRITE_TILES_BOSS_SHADOW_EURA_06:
    .byte $fe,$03,$f8,$ff,$ff,$ff,$7c,$3d   ; byte
    .byte $ff,$ff,$07,$00,$00,$00,$83,$c3   ; byte


;
; █▒█▒████
; ███████▒
; ▒▒▒▒▒▒░░
; ░░░░░░░▒
; ░░░░░▒▒▒
; ░░▒▒▒▒▒█
; ▒▒▒▒██▒█
; ██▒█████
;
SPRITE_TILES_BOSS_SHADOW_EURA_07:
    .byte $af,$fe,$03,$fe,$f8,$c1,$0d,$df   ; byte
    .byte $ff,$ff,$fc,$01,$07,$3f,$ff,$ff   ; byte


;
; ███░░░..
; ░░░░░░..
; ░░░░░░░.
; ▒▒▒▒░░░░
; ██▒▒▒░░░
; ███▒▒░░░
; ██▒▒▒░░░
; █▒█▒▒░░.
;
SPRITE_TILES_BOSS_SHADOW_EURA_08:
    .byte $fc,$fc,$fe,$0f,$c7,$e7,$c7,$a6   ; byte
    .byte $e0,$00,$00,$f0,$f8,$f8,$f8,$f8   ; byte


;
; ████████
; ███████▒
; █▒▒▒▒▒▒▒
; ▒▒▒░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ▒▒░░░░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_09:
    .byte $ff,$fe,$80,$1f,$ff,$ff,$ff,$3f   ; byte
    .byte $ff,$ff,$ff,$e0,$00,$00,$00,$c0   ; byte


;
; ████████
; ██▒▒▒▒█▒
; ▒░░░░░░░
; ░░▒▒▒░░░
; ░▒██▒▒░░
; ▒██▒▒▒▒░
; ███▒█▒▒▒
; ▒█▒█▒▒░▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_10:
    .byte $ff,$c2,$7f,$c7,$b3,$61,$e8,$52   ; byte
    .byte $ff,$ff,$80,$38,$7c,$fe,$ff,$fd   ; byte


;
; █▒█▒████
; ████████
; ▒▒▒▒▒▒▒▒
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_11:
    .byte $af,$ff,$00,$ff,$ff,$ff,$ff,$ff   ; byte
    .byte $ff,$ff,$ff,$00,$00,$00,$00,$00   ; byte


;
; ███████▒
; ▒▒▒▒▒▒██
; ░░░░░▒▒▒
; ░░░░░░░░
; ▒▒░░░░░░
; ▒▒░░░░░░
; █▒▒░░░░▒
; █▒▒░░░▒▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_12:
    .byte $fe,$03,$f8,$ff,$3f,$3f,$9e,$9c   ; byte
    .byte $ff,$ff,$07,$00,$c0,$c0,$e1,$e3   ; byte


;
; █▒█▒████
; ████████
; ▒▒▒▒▒▒▒▒
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ▒▒░░░░░░
; ██▒░░░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_13:
    .byte $af,$ff,$00,$ff,$ff,$ff,$3f,$df   ; byte
    .byte $ff,$ff,$ff,$00,$00,$00,$c0,$e0   ; byte


;
; ████████
; ███████▒
; █▒▒▒▒▒▒▒
; ▒▒▒░░░░░
; ░░░░░░░░
; ░░░░░░░▒
; ░░░░░░░░
; ▒▒░░░░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_14:
    .byte $ff,$fe,$80,$1f,$ff,$fe,$ff,$3f   ; byte
    .byte $ff,$ff,$ff,$e0,$00,$01,$00,$c0   ; byte


;
; ███████▒
; ▒▒▒▒▒▒██
; ░░░░░▒▒▒
; ░░░░░░░░
; ▒▒░░░░░░
; ▒▒░░░░░░
; ░▒░░░░░░
; ░░░░░▒▒▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_15:
    .byte $fe,$03,$f8,$ff,$3f,$3f,$bf,$f8   ; byte
    .byte $ff,$ff,$07,$00,$c0,$c0,$40,$07   ; byte


;
; ...░░░░▒
; ...░█░██
; ...▒█░█▒
; ...▒█░█░
; ....▒.░.
; ........
; ........
; .....░..
;
SPRITE_TILES_BOSS_SHADOW_EURA_16:
    .byte $1e,$1f,$0e,$0f,$02,$00,$00,$04   ; byte
    .byte $01,$0b,$1b,$1a,$08,$00,$00,$00   ; byte


;
; ░▒▒░▒░░▒
; ░█▒░█░░█
; ░█▒░░░░█
; .░░░░░░█
; ..░▒░.░█
; ..░░░░░▒
; ..█░█░░▒
; ░░█▒█▒▒░
;
SPRITE_TILES_BOSS_SHADOW_EURA_17:
    .byte $96,$df,$df,$7f,$2b,$3e,$3e,$e9   ; byte
    .byte $69,$69,$61,$01,$11,$01,$29,$3e   ; byte


;
; █▒▒░░░▒█
; █▒░░░▒██
; █▒░░▒▒██
; █▒░░▒██▒
; █▒░░▒█▒▒
; █░░▒█▒▒▒
; █░░▒▒▒▒░
; █░░▒▒▒░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_18:
    .byte $9d,$bb,$b3,$b6,$b4,$e8,$e1,$e3   ; byte
    .byte $e3,$c7,$cf,$cf,$cf,$9f,$9e,$9c   ; byte


;
; ░▒▒▒▒░░▒
; ░░░░░░▒█
; █░░░░▒██
; ▒█▒▒▒███
; █▒████▒▒
; ████▒▒▒▒
; ▒▒▒▒▒░░░
; ░░░░░░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_19:
    .byte $86,$fd,$fb,$47,$bc,$f0,$07,$ff   ; byte
    .byte $79,$03,$87,$ff,$ff,$ff,$f8,$00   ; byte


;
; ▒▒▒▒▒▒░▒
; ░▒▒▒▒░▒█
; █░▒▒░▒██
; ▒█▒▒▒███
; █▒████▒▒
; ████▒▒▒▒
; ▒▒▒▒▒░░░
; ░░░░░░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_20:
    .byte $02,$85,$cb,$47,$bc,$f0,$07,$ff   ; byte
    .byte $fd,$7b,$b7,$ff,$ff,$ff,$f8,$00   ; byte


;
; █▒▒░░▒██
; █▒░░░▒██
; █▒░░░▒██
; █▒░░░▒█▒
; █▒░░▒██▒
; █░░░▒█▒▒
; █░░▒██▒░
; █░▒▒█▒▒░
;
SPRITE_TILES_BOSS_SHADOW_EURA_21:
    .byte $9b,$bb,$bb,$ba,$b6,$f4,$ed,$c9   ; byte
    .byte $e7,$c7,$c7,$c7,$cf,$8f,$9e,$be   ; byte


;
; █▒░░░░▒█
; ▒▒░░░▒▒█
; ▒▒░░░▒██
; ▒░░░░▒▒█
; ▒░░░░▒▒█
; ░░░░░░▒▒
; ░▒▒░░░▒▒
; ░░░▒▒░░▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_22:
    .byte $bd,$39,$3b,$79,$79,$fc,$9c,$e6   ; byte
    .byte $c3,$c7,$c7,$87,$87,$03,$63,$19   ; byte


;
; █▒▒█▒▒▒▒
; ▒█▒▒▒▒▒▒
; ██▒▒▒░░░
; █▒▒░░░░░
; ▒▒░░░░░░
; ░░░░░░░.
; ░░░░░░░░
; ........
;
SPRITE_TILES_BOSS_SHADOW_EURA_23:
    .byte $90,$40,$c7,$9f,$3f,$fe,$ff,$00   ; byte
    .byte $ff,$ff,$f8,$e0,$c0,$00,$00,$00   ; byte


;
; ▒█▒▒▒░░░
; ░▒▒▒░░░.
; ░░░░░░░.
; ░░▒▒▒░░░
; ▒▒▒▒▒▒░░
; ░▒██▒▒░░
; ▒██▒█▒░░
; ░█▒░█▒▒░
;
SPRITE_TILES_BOSS_SHADOW_EURA_24:
    .byte $47,$8e,$fe,$c7,$03,$b3,$6b,$d9   ; byte
    .byte $f8,$70,$00,$38,$fc,$7c,$fc,$6e   ; byte


;
; █▒▒░░░░░
; █▒░░░▒░░
; █▒░░▒▒▒░
; █▒░▒▒█▒░
; █▒░███▒░
; █░░█▒▒▒░
; █░▒▒▒▒░░
; █░▒▒░░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_25:
    .byte $9f,$bb,$b1,$a5,$bd,$f1,$c3,$cf   ; byte
    .byte $e0,$c4,$ce,$de,$de,$9e,$bc,$b0   ; byte


;
; █▒█▒▒░▒▒
; ▒█▒▒▒▒░▒
; █░░░░▒░▒
; ▒░▒▒░░▒░
; ░▒██▒░░░
; ░███▒▒░░
; ░██▒█▒░░
; ░█▒░█▒▒░
;
SPRITE_TILES_BOSS_SHADOW_EURA_26:
    .byte $a4,$42,$fa,$4d,$b7,$f3,$eb,$d9   ; byte
    .byte $fb,$fd,$85,$b2,$78,$7c,$7c,$6e   ; byte


;
; ░░░░▒▒▒▒
; ▒░░░░░░░
; ░░░░▒▒▒▒
; ░░░▒░░░░
; ░░░░░░░░
; ░░░░░...
; ░░......
; ░░░.....
;
SPRITE_TILES_BOSS_SHADOW_EURA_27:
    .byte $f0,$7f,$f0,$ef,$ff,$f8,$c0,$e0   ; byte
    .byte $0f,$80,$0f,$10,$00,$00,$00,$00   ; byte


;
; █▒▒░░░▒█
; █▒▒░░▒▒█
; ▒▒▒░░▒██
; ▒▒░░░▒▒█
; ▒░░░░▒█▒
; ░░░░▒▒▒▒
; ░▒▒░▒█▒▒
; ░░░░▒▒█▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_28:
    .byte $9d,$99,$1b,$39,$7a,$f0,$94,$f2   ; byte
    .byte $e3,$e7,$e7,$c7,$87,$0f,$6f,$0f   ; byte


;
; █▒▒▒░░░░
; ▒█▒▒░░░░
; █▒▒▒░░░▒
; █▒▒▒░░░░
; ▒▒▒▒░░▒▒
; ▒▒▒░░▒░░
; ▒▒░░░░░░
; ▒░░░░░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_29:
    .byte $8f,$4f,$8e,$8f,$0c,$1b,$3f,$7f   ; byte
    .byte $f0,$f0,$f1,$f0,$f3,$e4,$c0,$80   ; byte


;
; █▒░░░░░░
; █░░░▒▒▒░
; █░▒▒███▒
; ▒░▒██▒█▒
; ░░████▒█
; ░▒██▒▒█▒
; ░▒█▒█▒▒▒
; ░▒███▒▒▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_30:
    .byte $bf,$f1,$ce,$5a,$fd,$b2,$a8,$b8   ; byte
    .byte $c0,$8e,$bf,$bf,$3f,$7f,$7f,$7f   ; byte


;
; ░░░░▒▒▒▒
; ▒▒▒▒█▒▒░
; ▒▒███▒▒▒
; ▒█▒█▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒░▒░
; ▒▒▒░░░░░
; ░░░░░░░.
;
SPRITE_TILES_BOSS_SHADOW_EURA_31:
    .byte $f0,$09,$38,$50,$00,$05,$1f,$fe   ; byte
    .byte $0f,$fe,$ff,$ff,$ff,$fa,$e0,$00   ; byte


;
; .....█░█
; .....█░█
; .....▒░▒
; ....▒█▒█
; ...▒▒███
; ...▒████
; ..░▒▒▒▒▒
; ..░▒▒▒▒▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_32:
    .byte $07,$07,$02,$05,$07,$0f,$20,$20   ; byte
    .byte $05,$05,$05,$0f,$1f,$1f,$1f,$1f   ; byte


;
; █░█░░▒▒█
; ░░░▒▒▒█▒
; ░▒▒▒██▒▒
; ▒███▒▒▒▒
; ███▒▒▒▒░
; ▒▒▒▒▒░░░
; ▒▒▒░░░░.
; ░░░░░...
;
SPRITE_TILES_BOSS_SHADOW_EURA_33:
    .byte $f9,$e2,$8c,$70,$e1,$07,$1e,$f8   ; byte
    .byte $a7,$1f,$7f,$ff,$fe,$f8,$e0,$00   ; byte


;
; ░░░▒▒░░.
; ▒░░░░░..
; ▒▒░░░...
; ▒░░░....
; ░░░.....
; ░.......
; ........
; ........
;
SPRITE_TILES_BOSS_SHADOW_EURA_34:
    .byte $e6,$7c,$38,$70,$e0,$80,$00,$00   ; byte
    .byte $18,$80,$c0,$80,$00,$00,$00,$00   ; byte


;
; ...░░░░░
; ........
; ........
; ........
; ........
; ........
; ........
; ........
;
SPRITE_TILES_BOSS_SHADOW_EURA_35:
    .byte $1f,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ...░░░░▒
; ...░█░██
; ...▒█░█▒
; ...▒█░█░
; ....▒.░.
; ........
; ........
; ........
;
SPRITE_TILES_BOSS_SHADOW_EURA_36:
    .byte $1e,$1f,$0e,$0f,$02,$00,$00,$00   ; byte
    .byte $01,$0b,$1b,$1a,$08,$00,$00,$00   ; byte


;
; ░▒▒░▒░░▒
; ░█▒░█░░█
; ░█▒░░░░█
; .░░░░░░█
; ..░▒░░░█
; ..░▒▒░░▒
; ..░▒▒░.▒
; ...░█░.░
;
SPRITE_TILES_BOSS_SHADOW_EURA_37:
    .byte $96,$df,$df,$7f,$2f,$26,$24,$1d   ; byte
    .byte $69,$69,$61,$01,$11,$19,$19,$08   ; byte


;
; █▒▒░░░░░
; █▒░░░░▒░
; █▒░░░▒▒░
; █▒░░░▒▒░
; █▒░░░▒█░
; █░░░▒█▒░
; █░░▒█▒▒░
; █░▒▒█▒▒░
;
SPRITE_TILES_BOSS_SHADOW_EURA_38:
    .byte $9f,$bd,$b9,$b9,$bb,$f5,$e9,$c9   ; byte
    .byte $e0,$c2,$c6,$c6,$c6,$8e,$9e,$be   ; byte


;
; ........
; ........
; ........
; ........
; ........
; .......█
; ......░░
; ......░▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_39:
    .byte $00,$00,$00,$00,$00,$01,$03,$02   ; byte
    .byte $00,$00,$00,$00,$00,$01,$00,$01   ; byte


;
; ....▒░..
; .......░
; ....█░█░
; ...░█▒█▒
; .██░█░░▒
; ░█░░░▒██
; ░▒░████▒
; ▒█▒██▒▒▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_40:
    .byte $04,$01,$0f,$1a,$7e,$fb,$be,$58   ; byte
    .byte $08,$00,$0a,$0f,$69,$47,$5f,$ff   ; byte


;
; .░▒██▒▒░
; ░░▒█▒▒░░
; ▒░█▒▒░░.
; ██▒▒▒░..
; █▒▒░░░..
; ▒▒▒░░...
; ▒▒░░....
; ▒░░.....
;
SPRITE_TILES_BOSS_SHADOW_EURA_41:
    .byte $59,$d3,$66,$c4,$9c,$18,$30,$60   ; byte
    .byte $3e,$3c,$b8,$f8,$e0,$e0,$c0,$80   ; byte


;
; ░█▒░█▒░░
; ░█▒░█▒▒░
; ░▒██▒▒░░
; .░███▒░░
; .░▒█▒▒░░
; .░▒██▒░░
; ..░█▒▒░░
; ..░▒█▒▒░
;
SPRITE_TILES_BOSS_SHADOW_EURA_42:
    .byte $db,$d9,$b3,$7b,$53,$5b,$33,$29   ; byte
    .byte $6c,$6e,$7c,$3c,$3c,$3c,$1c,$1e   ; byte


;
; ▒░░.....
; ▒░░░....
; ▒▒░░░...
; █▒▒░░...
; ▒▒▒░░░..
; █▒▒▒░░░.
; ██▒▒▒░░.
; ▒█▒▒▒░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_43:
    .byte $60,$70,$38,$98,$1c,$8e,$c6,$47   ; byte
    .byte $80,$80,$c0,$e0,$e0,$f0,$f8,$f8   ; byte


;
; ..░▒█▒▒▒
; ..░▒▒▒▒▒
; .░▒▒█▒▒▒
; .░▒█▒▒▒░
; ░▒██▒▒▒░
; ▒▒██▒▒▒░
; ▒███▒▒▒░
; ▒██▒▒▒░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_44:
    .byte $28,$20,$48,$51,$b1,$31,$71,$63   ; byte
    .byte $1f,$1f,$3f,$3e,$7e,$fe,$fe,$fc   ; byte


;
; ▒░░░░░░.
; ░░░░░░░░
; ░░░░░░░░
; ░░▒▒░░░░
; ░░▒▒░░░░
; ░.▒█▒░░░
; ░.░▒▒▒░░
; ░.░█▒░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_45:
    .byte $7e,$ff,$ff,$cf,$cf,$97,$a3,$b7   ; byte
    .byte $80,$00,$00,$30,$30,$38,$1c,$18   ; byte


;
; ░▒▒█▒▒░░
; ░░▒▒▒░░░
; ░░░░░░░.
; ░░▒▒▒░░.
; ▒▒▒▒▒▒░.
; ░▒██▒▒░░
; ▒██▒█▒░░
; ░█▒░█▒▒░
;
SPRITE_TILES_BOSS_SHADOW_EURA_46:
    .byte $93,$c7,$fe,$c6,$02,$b3,$6b,$d9   ; byte
    .byte $7c,$38,$00,$38,$fc,$7c,$fc,$6e   ; byte


;
; ........
; .....░░░
; ..▒▒▒███
; ▒▒██████
; ██████▒▒
; █████▒▒▒
; █▒▒██▒▒░
; ▒▒░██▒░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_47:
    .byte $00,$07,$07,$3f,$fc,$f8,$99,$3b   ; byte
    .byte $00,$00,$3f,$ff,$ff,$ff,$fe,$dc   ; byte


;
; ......░█
; .....░██
; .....░██
; .....░█▒
; ......▒▒
; ......░░
; ........
; ........
;
SPRITE_TILES_BOSS_SHADOW_EURA_48:
    .byte $03,$07,$07,$06,$00,$03,$00,$00   ; byte
    .byte $01,$03,$03,$03,$03,$00,$00,$00   ; byte


;
; ███▒▒▒▒░
; ▒▒▒▒▒▒░░
; ▒▒▒▒░░░.
; ▒▒░░░...
; ░░░.....
; ░.......
; ........
; ........
;
SPRITE_TILES_BOSS_SHADOW_EURA_49:
    .byte $e1,$03,$0e,$38,$e0,$80,$00,$00   ; byte
    .byte $fe,$fc,$f0,$c0,$00,$00,$00,$00   ; byte


;
; ░░░░░░░.
; ░░░░░░░.
; ░▒▒░░░░.
; ░▒▒▒░░░.
; ░██▒▒░░.
; ░▒██▒░░.
; ░██▒▒▒░.
; ░▒█▒▒░░.
;
SPRITE_TILES_BOSS_SHADOW_EURA_50:
    .byte $fe,$fe,$9e,$8e,$e6,$b6,$e2,$a6   ; byte
    .byte $00,$00,$60,$70,$78,$78,$7c,$78   ; byte


;
; ░▒██▒░░.
; ░▒▒▒░░░.
; ░▒░░░░░.
; ░░▒▒▒░░░
; ▒▒▒▒▒▒░░
; ░▒██▒▒░░
; ▒██▒█▒░░
; ░█▒░█▒▒░
;
SPRITE_TILES_BOSS_SHADOW_EURA_51:
    .byte $b6,$8e,$be,$c7,$03,$b3,$6b,$d9   ; byte
    .byte $78,$70,$40,$38,$fc,$7c,$fc,$6e   ; byte


;
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░▒▒░░░░░
; ░▒▒▒░░░░
; .░▒▒▒░░░
; .░▒█▒░░░
; .░▒█▒░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_52:
    .byte $ff,$ff,$ff,$9f,$8f,$47,$57,$57   ; byte
    .byte $00,$00,$00,$60,$70,$38,$38,$38   ; byte


;
; █▒▒▒░░░░
; ▒█▒▒░░░░
; █▒▒▒░░░▒
; █▒▒▒░░░░
; ▒▒▒░░░▒▒
; █▒▒▒░░░░
; ██▒▒░░░░
; ██▒▒░░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_53:
    .byte $8f,$4f,$8e,$8f,$1c,$8f,$cf,$cf   ; byte
    .byte $f0,$f0,$f1,$f0,$e3,$f0,$f0,$f0   ; byte


;
; ▒██▒░░░.
; ▒██▒▒░░░
; ▒██▒▒░░░
; ▒█▒█▒░░░
; ▒▒██▒░░░
; ▒▒██▒▒░░
; ▒█▒█▒▒░░
; ░▒█░▒░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_54:
    .byte $6e,$67,$67,$57,$37,$33,$53,$b7   ; byte
    .byte $f0,$f8,$f8,$f8,$f8,$fc,$fc,$68   ; byte


;
; █▒█▒████
; ██▒▒▒▒█▒
; ▒░░░░░░░
; ░░██▒▒░░
; ░████▒░░
; ▒██▒▒▒▒░
; ███▒█▒▒░
; ▒██▒▒▒░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_55:
    .byte $af,$c2,$7f,$f3,$fb,$61,$e9,$63   ; byte
    .byte $ff,$ff,$80,$3c,$7c,$fe,$fe,$fc   ; byte


;
; ████▒...
; ▒▒▒▒░...
; ▒░░░░░..
; ░░░░░░░.
; ░░░░░░░░
; ░░░░░░░░
; ░░▒░▒░░░
; ░░░░▒░░.
;
SPRITE_TILES_BOSS_SHADOW_EURA_56:
    .byte $f0,$08,$7c,$fe,$ff,$ff,$d7,$f6   ; byte
    .byte $f8,$f0,$80,$00,$00,$00,$28,$08   ; byte


;
; █▒▒█▒░▒░
; ▒▒▒▒▒▒░░
; ▒▒░░░▒░░
; ▒░▒▒░░░░
; ░▒██▒▒░░
; ░███▒▒░░
; ▒██▒█▒░░
; ░█▒░█▒▒░
;
SPRITE_TILES_BOSS_SHADOW_EURA_57:
    .byte $95,$03,$3b,$4f,$b3,$f3,$6b,$d9   ; byte
    .byte $fa,$fc,$c4,$b0,$7c,$7c,$fc,$6e   ; byte


;
; ..░██▒░░
; ..░▒█▒▒░
; ..░▒▒▒░░
; ..░██▒░░
; ..░▒▒▒░░
; ..░██▒▒░
; ..░▒█▒░░
; ..░██▒▒░
;
SPRITE_TILES_BOSS_SHADOW_EURA_58:
    .byte $3b,$29,$23,$3b,$23,$39,$2b,$39   ; byte
    .byte $1c,$1e,$1c,$1c,$1c,$1e,$1c,$1e   ; byte


;
; ▒▒▒▒▒░░░
; ░▒▒▒░░░░
; .░░░░░░.
; .░▒▒▒░░░
; ░▒▒▒▒▒░░
; ░▒██▒▒░░
; ▒██▒█▒░░
; ░█▒░█▒▒░
;
SPRITE_TILES_BOSS_SHADOW_EURA_59:
    .byte $07,$8f,$7e,$47,$83,$b3,$6b,$d9   ; byte
    .byte $f8,$70,$00,$38,$7c,$7c,$fc,$6e   ; byte


;
; ░▒░▒░░..
; ░░▒░░...
; ▒░░░....
; ░░░.....
; ░.......
; ........
; ........
; ........
;
SPRITE_TILES_BOSS_SHADOW_EURA_60:
    .byte $ac,$d8,$70,$e0,$80,$00,$00,$00   ; byte
    .byte $50,$20,$80,$00,$00,$00,$00,$00   ; byte


;
; ░███▒░░░
; ▒██▒▒▒░░
; ▒▒▒░░░░.
; ░░░█▒▒░.
; ▒█▒█▒▒░.
; ▒█░█▒▒░.
; ▒█░█▒▒░.
; ▒█░░▒░..
;
SPRITE_TILES_BOSS_SHADOW_EURA_61:
    .byte $f7,$63,$1e,$f2,$52,$72,$72,$74   ; byte
    .byte $78,$fc,$e0,$1c,$fc,$dc,$dc,$c8   ; byte


;
; ░░▒▒▒▒▒▒
; ▒▒██████
; █████▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒░░░░░░
; ░░░░░░▒▒
; ░▒▒▒░▒██
; ▒██▒░███
;
SPRITE_TILES_BOSS_SHADOW_EURA_62:
    .byte $c0,$3f,$f8,$00,$3f,$fc,$8b,$6f   ; byte
    .byte $3f,$ff,$ff,$ff,$c0,$03,$77,$f7   ; byte


;
; ▒▒▒░░░░░
; ███▒▒▒▒▒
; ███████▒
; ▒▒▒▒▒███
; ░░░▒▒▒██
; ▒░░░░▒▒█
; █▒░▒▒░▒█
; █▒░██░▒▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_63:
    .byte $1f,$e0,$fe,$07,$e3,$79,$a5,$bc   ; byte
    .byte $e0,$ff,$ff,$ff,$1f,$87,$db,$db   ; byte


;
; ░█▒░░...
; ░██▒░...
; .▒█▒░...
; .░█▒░...
; ..▒█░...
; ..░░░...
; ........
; ........
;
SPRITE_TILES_BOSS_SHADOW_EURA_64:
    .byte $d8,$e8,$28,$68,$18,$38,$00,$00   ; byte
    .byte $60,$70,$70,$30,$30,$00,$00,$00   ; byte


;
; █▒█▒████
; ████████
; ▒▒▒▒▒▒▒▒
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_65:
    .byte $af,$ff,$00,$ff,$ff,$ff,$ff,$ff   ; byte
    .byte $ff,$ff,$ff,$00,$00,$00,$00,$00   ; byte


;
; ████▒░░.
; ▒▒▒▒░░..
; ▒░░░░░░.
; ░░░░░░░.
; ░░░░░░░░
; ▒▒░░░░░░
; █▒▒░▒░░░
; ▒▒░░▒░░.
;
SPRITE_TILES_BOSS_SHADOW_EURA_66:
    .byte $f6,$0c,$7e,$fe,$ff,$3f,$97,$36   ; byte
    .byte $f8,$f0,$80,$00,$00,$c0,$e8,$c8   ; byte


;
; ▒░░░▒▒▒▒
; ▒▒░░░░░░
; ▒▒░░░▒▒▒
; ▒▒░▒▒░░░
; ▒░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ..▒▒░░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_67:
    .byte $70,$3f,$38,$27,$7f,$ff,$ff,$0f   ; byte
    .byte $8f,$c0,$c7,$d8,$80,$00,$00,$30   ; byte


;
; ░▒░▒░░..
; ░░▒░░...
; ▒░░░....
; ░.......
; ░░░░....
; ░░░░░...
; ░░░░░░..
; ░░░░░░░.
;
SPRITE_TILES_BOSS_SHADOW_EURA_68:
    .byte $ac,$d8,$70,$80,$f0,$f8,$fc,$fe   ; byte
    .byte $50,$20,$80,$00,$00,$00,$00,$00   ; byte


;
; ....▒▒░░
; ......▒▒
; ........
; ........
; ........
; ........
; ........
; ........
;
SPRITE_TILES_BOSS_SHADOW_EURA_69:
    .byte $03,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $0c,$03,$00,$00,$00,$00,$00,$00   ; byte


;
; ░░░░░░░.
; ░░░░░░░.
; ▒▒░░░░░.
; .░░░░░░░
; ▒▒▒▒░▒░░
; ░▒█░▒░▒░
; ▒██▒░▒░░
; ░█▒░█░▒░
;
SPRITE_TILES_BOSS_SHADOW_EURA_70:
    .byte $fe,$fe,$3e,$7f,$0b,$b5,$6b,$dd   ; byte
    .byte $00,$00,$c0,$00,$f4,$6a,$f4,$6a   ; byte


;
; ████████
; ██▒▒▒██▒
; ▒░░░░░░▒
; ░░▒██▒░░
; ░▒████▒▒
; ░███▒█▒▒
; ░█▒██▒▒▒
; ░▒█▒▒█▒▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_71:
    .byte $ff,$c6,$7e,$db,$bc,$f4,$d8,$a4   ; byte
    .byte $ff,$ff,$81,$3c,$7f,$7f,$7f,$7f   ; byte


;
; ████████
; ██▒▒▒▒█▒
; ▒░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ▒░░░░░░░
; ▒░▒░░░░░
; ▒░░▒▒░▒▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_72:
    .byte $ff,$c2,$7f,$ff,$ff,$7f,$5f,$64   ; byte
    .byte $ff,$ff,$80,$00,$00,$80,$a0,$9b   ; byte


;
; ░█▒█▒▒▒▒
; ░░▒▒▒▒░▒
; ░░░░▒▒▒░
; ░░▒▒▒░░▒
; ░▒▒█▒▒░░
; ░▒███▒░░
; ░██▒█▒░░
; ░█▒░█▒▒░
;
SPRITE_TILES_BOSS_SHADOW_EURA_73:
    .byte $d0,$c2,$f1,$c6,$93,$bb,$eb,$d9   ; byte
    .byte $7f,$3d,$0e,$39,$7c,$7c,$7c,$6e   ; byte


;
; ▒░░▒▒▒░▒
; ░▒▒▒▒▒▒▒
; ▒░▒░▒▒▒░
; ░▒░▒░▒░▒
; ░░░░░░▒░
; ░▒░░▒░░░
; ░░▒░░▒░░
; ░░░░░░░.
;
SPRITE_TILES_BOSS_SHADOW_EURA_74:
    .byte $62,$80,$51,$aa,$fd,$b7,$db,$fe   ; byte
    .byte $9d,$7f,$ae,$55,$02,$48,$24,$00   ; byte


;
; ▒░░░▒▒▒▒
; ▒▒░░░░░░
; ▒▒░▒▒▒▒░
; ▒▒░░░░░░
; ▒░░░░░░░
; ░░░░░...
; ░░......
; ........
;
SPRITE_TILES_BOSS_SHADOW_EURA_75:
    .byte $70,$3f,$21,$3f,$7f,$f8,$c0,$00   ; byte
    .byte $8f,$c0,$de,$c0,$80,$00,$00,$00   ; byte


;
; ░▒░▒░░..
; ░░▒░░...
; ░░░░░░..
; ░░░░░░..
; ░░░░░░░.
; ░░░░░░░.
; ░░░░░░░░
; ░▒░░░░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_76:
    .byte $ac,$d8,$fc,$fc,$fe,$fe,$ff,$bf   ; byte
    .byte $50,$20,$00,$00,$00,$00,$00,$40   ; byte


;
; ░▒▒░░░░░
; ░▒▒░▒░░░
; ░▒█▒░▒░░
; .▒█▒░░░░
; .░▒█▒▒░░
; .░▒█▒░░░
; ..░█▒▒░░
; ..░▒▒▒▒░
;
SPRITE_TILES_BOSS_SHADOW_EURA_77:
    .byte $9f,$97,$ab,$2f,$53,$57,$33,$21   ; byte
    .byte $60,$68,$74,$70,$3c,$38,$1c,$1e   ; byte


;
; ░░......
; ▒▒░░░...
; ▒▒▒▒░░..
; ▒█▒▒▒░░.
; █▒▒▒▒░░.
; ▒██▒▒░░░
; ██▒▒▒░░░
; █▒█▒░░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_78:
    .byte $c0,$38,$0c,$46,$86,$67,$c7,$af   ; byte
    .byte $00,$c0,$f0,$f8,$f8,$f8,$f8,$f0   ; byte


;
; ........
; .......▒
; ......▒▒
; ......▒█
; ......▒█
; ......▒▒
; ......░░
; .....██░
;
SPRITE_TILES_BOSS_SHADOW_EURA_79:
    .byte $00,$00,$00,$01,$01,$00,$03,$07   ; byte
    .byte $00,$01,$03,$03,$03,$03,$00,$06   ; byte


;
; ▒▒██████
; ▒████▒▒▒
; ███▒▒▒▒▒
; █▒▒▒░░░▒
; ▒▒░░░░░▒
; ▒░██░░░▒
; ░░█▒░░░▒
; ░░░░░░░▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_80:
    .byte $3f,$78,$e0,$8e,$3e,$7e,$ee,$fe   ; byte
    .byte $ff,$ff,$ff,$f1,$c1,$b1,$31,$01   ; byte


;
; ▒▒░██▒░░
; ▒░░▒█▒▒░
; ▒░░▒█▒▒░
; ▒▒░░▒█▒░
; ▒▒░░▒█▒▒
; █▒▒░▒▒▒▒
; █▒▒░░░░░
; ██▒▒▒▒▒▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_81:
    .byte $3b,$69,$69,$35,$34,$90,$9f,$c0   ; byte
    .byte $dc,$9e,$9e,$ce,$cf,$ef,$e0,$ff   ; byte


;
; ▒██▒░██▒
; ▒▒█▒░██▒
; ░▒▒▒▒░█▒
; ░▒▒▒▒░█▒
; ░░▒░▒░▒▒
; ░░░▒░▒░▒
; ░░░░░░░░
; ▒▒▒▒▒▒▒░
;
SPRITE_TILES_BOSS_SHADOW_EURA_82:
    .byte $6e,$2e,$86,$86,$d4,$ea,$ff,$01   ; byte
    .byte $f7,$f7,$7b,$7b,$2b,$15,$00,$fe   ; byte


;
; █▒░███▒▒
; █▒░█▒▒▒▒
; ▒▒░█▒▒▒▒
; ▒▒░█▒▒▒▒
; ▒▒░░▒▒░░
; ▒░▒░░░░░
; ░▒░░░░░░
; ░░░░▒▒▒▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_83:
    .byte $bc,$b0,$30,$30,$33,$5f,$bf,$f0   ; byte
    .byte $df,$df,$df,$df,$cc,$a0,$40,$0f   ; byte


;
; ██▒▒░▒░░
; ██▒▒░▒▒░
; ██▒▒░▒▒░
; █▒▒░░▒▒░
; ▒▒▒░█▒▒░
; ░░░▒█▒▒░
; ▒▒▒██▒░░
; ▒███▒▒░.
;
SPRITE_TILES_BOSS_SHADOW_EURA_84:
    .byte $cb,$c9,$c9,$99,$19,$e9,$1b,$72   ; byte
    .byte $f4,$f6,$f6,$e6,$ee,$1e,$fc,$fc   ; byte


;
; ....▒█▒█
; ...▒██▒█
; ...▒░█▒▒
; ...▒░█▒▒
; ...▒░█▒█
; ...█████
; ...▒██▒▒
; ...░▒▒▒░
;
SPRITE_TILES_BOSS_SHADOW_EURA_85:
    .byte $05,$0d,$0c,$0c,$0d,$1f,$0c,$11   ; byte
    .byte $0f,$1f,$17,$17,$17,$1f,$1f,$0e   ; byte


;
; ░░░░░░░▒
; ░░░░░░▒█
; █░░░░▒██
; ▒█▒▒▒███
; █▒████▒▒
; ████▒▒▒▒
; ▒▒▒▒▒░░░
; ░░░░░░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_86:
    .byte $fe,$fd,$fb,$47,$bc,$f0,$07,$ff   ; byte
    .byte $01,$03,$87,$ff,$ff,$ff,$f8,$00   ; byte


;
; ████████
; ███████▒
; █▒▒▒▒▒▒▒
; ▒▒▒░░░░░
; ░░░░░░░▒
; ░░░░░░░▒
; ░░░░░░░█
; ▒▒░░░░░█
;
SPRITE_TILES_BOSS_SHADOW_EURA_87:
    .byte $ff,$fe,$80,$1f,$fe,$fe,$ff,$3f   ; byte
    .byte $ff,$ff,$ff,$e0,$01,$01,$01,$c1   ; byte


;
; ███████▒
; ▒▒▒▒▒▒██
; ░░░░░▒▒▒
; ░░░░░░░░
; ▒▒░░░░░░
; ▒▒░░░░░░
; █▒▒░░░▒▒
; █▒▒░░░▒█
;
SPRITE_TILES_BOSS_SHADOW_EURA_88:
    .byte $fe,$03,$f8,$ff,$3f,$3f,$9c,$9d   ; byte
    .byte $ff,$ff,$07,$00,$c0,$c0,$e3,$e3   ; byte


;
; █▒█▒████
; ████████
; ▒▒▒▒▒▒▒▒
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░▒░
; ▒▒▒░░░▒░
; ██▒▒░░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_89:
    .byte $af,$ff,$00,$ff,$ff,$fd,$1d,$cf   ; byte
    .byte $ff,$ff,$ff,$00,$00,$02,$e2,$f0   ; byte


;
; ████▒░░.
; ▒▒▒▒░░..
; ▒░░░░...
; ░░░░░░..
; ░░░░░░░.
; ▒▒░░░░░.
; █▒▒░▒░░.
; ▒▒░░▒░░.
;
SPRITE_TILES_BOSS_SHADOW_EURA_90:
    .byte $f6,$0c,$78,$fc,$fe,$3e,$96,$36   ; byte
    .byte $f8,$f0,$80,$00,$00,$c0,$e8,$c8   ; byte


;
; ...░░░░▒
; ...░█░██
; ...▒█░█▒
; ...▒█░█░
; ....▒.░.
; ......░░
; ....█.██
; ...░█░█▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_91:
    .byte $1e,$1f,$0e,$0f,$02,$03,$0b,$1e   ; byte
    .byte $01,$0b,$1b,$1a,$08,$00,$0b,$0b   ; byte


;
; ░▒▒░▒░░▒
; ░█▒░█░░█
; ░█▒░░░░█
; .░░░░▒░█
; .░█░█▒░█
; ░░█░█▒░▒
; ░█▒░░░░▒
; ░░░▒▒█░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_92:
    .byte $96,$df,$df,$7b,$7b,$fa,$de,$e7   ; byte
    .byte $69,$69,$61,$05,$2d,$2d,$61,$1c   ; byte


;
; █▒▒░░░▒█
; █▒░░░▒██
; █▒░░▒▒██
; █▒░▒▒██▒
; █▒░███▒▒
; █░░█▒▒▒▒
; █░▒▒▒▒░░
; █░▒▒░░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_93:
    .byte $9d,$bb,$b3,$a6,$bc,$f0,$c3,$cf   ; byte
    .byte $e3,$c7,$cf,$df,$df,$9f,$bc,$b0   ; byte


;
; █▒▒░░▒██
; █▒▒░░▒██
; ▒▒▒░░▒██
; ▒▒░░░▒▒█
; ▒░░░░░▒▒
; ░░░▒▒░░░
; ░▒▒▒░░░░
; ░░░░░...
;
SPRITE_TILES_BOSS_SHADOW_EURA_94:
    .byte $9b,$9b,$1b,$39,$7c,$e7,$8f,$f8   ; byte
    .byte $e7,$e7,$e7,$c7,$83,$18,$70,$00   ; byte


;
; █▒█▒▒░░▒
; ▒█▒▒░░░░
; █▒▒▒▒▒▒▒
; █▒█▒▒▒▒▒
; ▒▒▒███▒▒
; ▒▒▒▒▒███
; ░░░░▒▒▒▒
; ....░░░▒
;
SPRITE_TILES_BOSS_SHADOW_EURA_95:
    .byte $a6,$4f,$80,$a0,$1c,$07,$f0,$0e   ; byte
    .byte $f9,$f0,$ff,$ff,$ff,$ff,$0f,$01   ; byte


;
; ▒░░▒░░..
; ░░▒░░...
; ▒░░░....
; ▒▒▒▒░...
; ▒▒▒▒░░..
; ▒▒█▒▒░░.
; ▒███▒▒░░
; ▒██▒▒▒░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_96:
    .byte $6c,$d8,$70,$08,$0c,$26,$73,$63   ; byte
    .byte $90,$20,$80,$f0,$f0,$f8,$fc,$fc   ; byte


;
; ...▒▒░▒░
; ...▒█▒█▒
; ..▒▒████
; ..▒████▒
; .░▒▒▒▒▒▒
; .░░▒▒▒░░
; ..░░░░░░
; ........
;
SPRITE_TILES_BOSS_SHADOW_EURA_97:
    .byte $05,$0a,$0f,$1e,$40,$63,$3f,$00   ; byte
    .byte $1a,$1f,$3f,$3f,$3f,$1c,$00,$00   ; byte


;
; ▒▒▒▒███▒
; █████▒▒░
; ██▒▒▒▒░░
; ▒▒▒▒░░░░
; ▒▒░░░░..
; ░░░░....
; ░.......
; ........
;
SPRITE_TILES_BOSS_SHADOW_EURA_98:
    .byte $0e,$f9,$c3,$0f,$3c,$f0,$80,$00   ; byte
    .byte $ff,$fe,$fc,$f0,$c0,$00,$00,$00   ; byte


;
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ▒▒░░░░░░
; █▒▒░░░░.
; ▒░░░░░░░
; ░░▒▒░░░░
; ░▒█▒▒░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_99:
    .byte $ff,$ff,$ff,$3f,$9e,$7f,$cf,$a7   ; byte
    .byte $00,$00,$00,$c0,$e0,$80,$30,$78   ; byte


;
; ░░░.....
; ░░......
; ░.......
; ........
; ........
; ........
; ........
; ........
;
SPRITE_TILES_BOSS_SHADOW_EURA_100:
    .byte $e0,$c0,$80,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ░█▒░▒▒░░
; ░█▒░▒▒░░
; ░▒█▒▒▒░░
; .░██▒▒░░
; .░▒█▒▒░░
; .░▒█▒▒░░
; ..░█▒▒░░
; ..░▒█▒▒░
;
SPRITE_TILES_BOSS_SHADOW_EURA_101:
    .byte $d3,$d3,$a3,$73,$53,$53,$33,$29   ; byte
    .byte $6c,$6c,$7c,$3c,$3c,$3c,$1c,$1e   ; byte


;
; ..░██▒░░
; ..░▒█▒▒░
; ..░█▒█░░
; ..░██▒▒░
; ..░█▒█░░
; ..░██▒▒░
; ..░░█▒▒░
; .░░░░▒░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_102:
    .byte $3b,$29,$37,$39,$37,$39,$39,$7b   ; byte
    .byte $1c,$1e,$1c,$1e,$1c,$1e,$0e,$04   ; byte


;
; ........
; ......░░
; ....░░▒█
; ...░▒███
; ..░███▒▒
; .░███▒▒▒
; ░██▒▒▒▒░
; ░░░░░░░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_103:
    .byte $00,$03,$0d,$17,$3c,$78,$e1,$ff   ; byte
    .byte $00,$00,$03,$0f,$1f,$3f,$7e,$00   ; byte


;
; ░███▒░░░
; ▒██▒▒▒░░
; ▒▒▒░░░░.
; ░░░█▒▒░.
; ▒░▒█▒▒░░
; ░░▒██▒▒░
; ░░░▒█▒▒░
; ░...██░░
;
SPRITE_TILES_BOSS_SHADOW_EURA_104:
    .byte $f7,$63,$1e,$f2,$53,$d9,$e9,$8f   ; byte
    .byte $78,$fc,$e0,$1c,$bc,$3e,$1e,$0c   ; byte


;============================================================================
; NPC Tiles: Walking Man
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::806a]
;============================================================================

;
; ........
; .......▒
; .......░
; .......░
; ......▒█
; ......░█
; .......▒
; .......░
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::806a]
;
SPRITE_TILES_NPC_WALKING_MAN_00:
    .byte $00,$00,$01,$01,$01,$03,$00,$01   ; byte
    .byte $00,$01,$00,$00,$03,$01,$01,$00   ; byte


;
; ░░░░....
; █▒░░░...
; ░▒▒░░...
; ▒░░▒░...
; █▒░░░...
; ▒▒░░░...
; ▒░░░░...
; ░░▒█░...
;
SPRITE_TILES_NPC_WALKING_MAN_01:
    .byte $f0,$b8,$98,$68,$b8,$38,$78,$d8   ; byte
    .byte $00,$c0,$60,$90,$c0,$c0,$80,$30   ; byte


;
; ........
; .......▒
; .......░
; .......░
; .......░
; .......░
; .......░
; .......▒
;
SPRITE_TILES_NPC_WALKING_MAN_02:
    .byte $00,$00,$01,$01,$01,$01,$01,$00   ; byte
    .byte $00,$01,$00,$00,$00,$00,$00,$01   ; byte


;
; ▒░██▒░..
; ░░██▒░..
; █░▒█▒░..
; █░░█▒░..
; █▒░█▒░..
; ▒░░█▒░..
; ░░▒█▒░..
; ░▒▒▒░...
;
SPRITE_TILES_NPC_WALKING_MAN_03:
    .byte $74,$f4,$d4,$f4,$b4,$74,$d4,$88   ; byte
    .byte $b8,$38,$b8,$98,$d8,$98,$38,$70   ; byte


;
; .......█
; .......█
; .......▒
; .......▒
; .......░
; .......░
; .......░
; .......░
;
SPRITE_TILES_NPC_WALKING_MAN_04:
    .byte $01,$01,$00,$00,$01,$01,$01,$01   ; byte
    .byte $01,$01,$01,$01,$00,$00,$00,$00   ; byte


;
; ░▒█▒░...
; ░▒▒░░...
; █░░░░...
; ▒▒▒▒░...
; ░▒▒▒░...
; █░▒▒░...
; █▒░░░...
; █▒▒░....
;
SPRITE_TILES_NPC_WALKING_MAN_05:
    .byte $a8,$98,$f8,$08,$88,$c8,$b8,$90   ; byte
    .byte $70,$60,$80,$f0,$70,$b0,$c0,$e0   ; byte


;
; ░█▒░....
; ░█▒░....
; ░█▒▒░...
; .░█▒░...
; .░█▒░...
; .░▒▒░...
; ░██▒░...
; █▒░░░...
;
SPRITE_TILES_NPC_WALKING_MAN_06:
    .byte $d0,$d0,$c8,$68,$68,$48,$e8,$b8   ; byte
    .byte $60,$60,$70,$30,$30,$30,$70,$c0   ; byte


;
; ▒███▒░..
; █░▒█▒▒░.
; █▒░██▒▒░
; █▒░░██▒░
; ▒▒▒░░█▒░
; ▒▒▒░░█▒░
; ░░░░░█▒░
; ▒▒▒░░▒▒░
;
SPRITE_TILES_NPC_WALKING_MAN_07:
    .byte $74,$d2,$b9,$bd,$1d,$1d,$fd,$19   ; byte
    .byte $f8,$bc,$de,$ce,$e6,$e6,$06,$e6   ; byte


;
; .......▒
; .......▒
; .......█
; .......▒
; .......░
; ......░█
; ......░█
; .....░██
;
SPRITE_TILES_NPC_WALKING_MAN_08:
    .byte $00,$00,$01,$00,$01,$03,$03,$07   ; byte
    .byte $01,$01,$01,$01,$00,$01,$01,$03   ; byte


;
; ██▒▒░██▒
; ██▒▒░██▒
; █▒▒▒░░▒░
; ▒▒▒▒▒░░.
; ░░▒▒▒░..
; █▒░░▒░..
; █▒░░░░..
; ▒▒░░░...
;
SPRITE_TILES_NPC_WALKING_MAN_09:
    .byte $ce,$ce,$8d,$06,$c4,$b4,$bc,$38   ; byte
    .byte $f7,$f7,$f2,$f8,$38,$c8,$c0,$c0   ; byte


;
; .....░██
; .....░██
; .....░█▒
; .....░█▒
; .....░█▒
; .....░▒▒
; ....░▒█▒
; ...░▒▒▒▒
;
SPRITE_TILES_NPC_WALKING_MAN_10:
    .byte $07,$07,$06,$06,$06,$04,$0a,$10   ; byte
    .byte $03,$03,$03,$03,$03,$03,$07,$0f   ; byte


;
; ▒░▒▒░...
; ░░▒▒░░..
; ░.░█▒▒░.
; ░..░█▒░.
; ░...░█░░
; ░...░█▒░
; ░...░█▒░
; ░..░█▒░░
;
SPRITE_TILES_NPC_WALKING_MAN_11:
    .byte $48,$cc,$b2,$9a,$8f,$8d,$8d,$9b   ; byte
    .byte $b0,$30,$1c,$0c,$04,$06,$06,$0c   ; byte


;
; ........
; ........
; .......▒
; .......▒
; .......░
; ......░█
; .....▒██
; ....░▒█▒
;
SPRITE_TILES_NPC_WALKING_MAN_12:
    .byte $00,$00,$00,$00,$01,$03,$03,$0a   ; byte
    .byte $00,$00,$01,$01,$00,$01,$07,$07   ; byte


;
; ▒░██▒░..
; ▒▒██▒░..
; ░██▒░░░.
; ░█▒▒░░░.
; █▒▒▒░░▒░
; ▒▒▒░░░▒░
; ▒▒░░░░▒▒
; ▒░░░░░█▒
;
SPRITE_TILES_NPC_WALKING_MAN_13:
    .byte $74,$34,$ee,$ce,$8d,$1d,$3c,$7e   ; byte
    .byte $b8,$f8,$70,$70,$f2,$e2,$c3,$83   ; byte


;
; ....▒▒▒▒
; .....░░░
; .......░
; .......░
; .......░
; .......░
; ......░▒
; ......▒█
;
SPRITE_TILES_NPC_WALKING_MAN_14:
    .byte $00,$07,$01,$01,$01,$01,$02,$01   ; byte
    .byte $0f,$00,$00,$00,$00,$00,$01,$03   ; byte


;
; ░░█▒░░░░
; ░█▒▒▒░..
; ▒█▒▒▒░..
; █▒▒▒▒░..
; ▒▒░░░░..
; ░░▒▒░...
; ░██▒░...
; ▒▒█▒░...
;
SPRITE_TILES_NPC_WALKING_MAN_15:
    .byte $ef,$c4,$44,$84,$3c,$c8,$e8,$28   ; byte
    .byte $30,$78,$f8,$f8,$c0,$30,$70,$f0   ; byte


;============================================================================
; NPC Tiles: Unused Blue Lady
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::806c]
;============================================================================

;
; ........
; .......░
; .......▒
; .......░
; ......░▒
; .......▒
; .......░
; ........
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::806c]
;
SPRITE_TILES_NPC_UNUSED_BLUE_LADY_00:
    .byte $00,$01,$00,$01,$02,$00,$01,$00   ; byte
    .byte $00,$00,$01,$00,$01,$01,$00,$00   ; byte


;
; ░░█░....
; █░██░...
; █▒░░░...
; ▒▒▒░░...
; █▒░░░...
; ▒▒░░░░..
; ▒░░░░░..
; .░█▒░░░.
;
SPRITE_TILES_NPC_UNUSED_BLUE_LADY_01:
    .byte $f0,$f8,$b8,$18,$b8,$3c,$7c,$6e   ; byte
    .byte $20,$b0,$c0,$e0,$c0,$c0,$80,$30   ; byte


;
; ........
; .......░
; ......░█
; ......░█
; .......░
; ........
; ........
; .......░
;
SPRITE_TILES_NPC_UNUSED_BLUE_LADY_02:
    .byte $00,$01,$03,$03,$01,$00,$00,$01   ; byte
    .byte $00,$00,$01,$01,$00,$00,$00,$00   ; byte


;
; ▒░██▒░..
; █░▒▒▒░░.
; █▒░▒▒░..
; ▒▒░█▒░..
; ▒▒░█▒░..
; ░░░█▒░..
; ░░▒█▒░..
; █░▒▒░...
;
SPRITE_TILES_NPC_UNUSED_BLUE_LADY_03:
    .byte $74,$c6,$a4,$34,$34,$f4,$d4,$c8   ; byte
    .byte $b8,$b8,$d8,$d8,$d8,$18,$38,$b0   ; byte


;
; .......░
; .......░
; .......▒
; .......▒
; .......░
; .......░
; .......░
; .......░
;
SPRITE_TILES_NPC_UNUSED_BLUE_LADY_04:
    .byte $01,$01,$00,$00,$01,$01,$01,$01   ; byte
    .byte $00,$00,$01,$01,$00,$00,$00,$00   ; byte


;
; █░█▒░...
; █░▒░░...
; ██░░░...
; ██▒▒░...
; ░░░▒░...
; ██▒░░...
; █▒▒░....
; █▒▒░....
;
SPRITE_TILES_NPC_UNUSED_BLUE_LADY_05:
    .byte $e8,$d8,$f8,$c8,$e8,$d8,$90,$90   ; byte
    .byte $b0,$a0,$c0,$f0,$10,$e0,$e0,$e0   ; byte


;
; ░█▒░....
; ░█▒░....
; .░▒▒░...
; .░█▒░...
; .░█▒░...
; .░▒▒░...
; ░░█▒░...
; █▒▒▒░...
;
SPRITE_TILES_NPC_UNUSED_BLUE_LADY_06:
    .byte $d0,$d0,$48,$68,$68,$48,$e8,$88   ; byte
    .byte $60,$60,$30,$30,$30,$30,$30,$f0   ; byte


;
; ▒░██▒░..
; █░▒▒▒▒░.
; █▒░▒▒▒▒░
; ▒▒░░░▒▒░
; ▒▒▒░░▒▒▒
; ░▒▒░░░▒▒
; ░░░░░░▒▒
; ▒█▒▒░░▒▒
;
SPRITE_TILES_NPC_UNUSED_BLUE_LADY_07:
    .byte $74,$c2,$a1,$39,$18,$9c,$fc,$4c   ; byte
    .byte $b8,$bc,$de,$c6,$e7,$63,$03,$f3   ; byte


;
; .......░
; .......▒
; .......▒
; .......░
; .......░
; .......▒
; ......░█
; ......░█
;
SPRITE_TILES_NPC_UNUSED_BLUE_LADY_08:
    .byte $01,$00,$00,$01,$01,$00,$03,$03   ; byte
    .byte $00,$01,$01,$00,$00,$01,$01,$01   ; byte


;
; ███▒░░▒▒
; ███▒▒░▒░
; ██▒▒▒░░.
; ░░▒▒▒░..
; ▒░░░▒░..
; █▒░░░░..
; █▒░░░...
; ▒▒░░░...
;
SPRITE_TILES_NPC_UNUSED_BLUE_LADY_09:
    .byte $ec,$e5,$c6,$c4,$74,$bc,$b8,$38   ; byte
    .byte $f3,$fa,$f8,$38,$88,$c0,$c0,$c0   ; byte


;
; ......░█
; ......░█
; ......░█
; ......░█
; ......░█
; ......░█
; .....░█▒
; ....░██▒
;
SPRITE_TILES_NPC_UNUSED_BLUE_LADY_10:
    .byte $03,$03,$03,$03,$03,$03,$06,$0e   ; byte
    .byte $01,$01,$01,$01,$01,$01,$03,$07   ; byte


;
; ▒░▒▒░...
; ▒░██▒░..
; ░.░██▒░.
; ░..░██░.
; ░...░█▒░
; ░....░█▒
; ░...░▒█▒
; ░..░▒█▒.
;
SPRITE_TILES_NPC_UNUSED_BLUE_LADY_11:
    .byte $48,$74,$ba,$9e,$8d,$86,$8a,$94   ; byte
    .byte $b0,$b8,$1c,$0c,$06,$03,$07,$0e   ; byte


;
; ........
; .......░
; ......░█
; ......░░
; .......░
; ......░█
; .....░██
; ....░██▒
;
SPRITE_TILES_NPC_UNUSED_BLUE_LADY_12:
    .byte $00,$01,$03,$03,$01,$03,$07,$0e   ; byte
    .byte $00,$00,$01,$00,$00,$01,$03,$07   ; byte


;
; ▒░██▒░..
; █░██▒░░.
; ░██▒░░..
; ██▒▒░░░.
; █▒▒░░░░.
; ▒▒░░░░▒░
; ▒░░░░░█░
; ░░▒░░░█░
;
SPRITE_TILES_NPC_UNUSED_BLUE_LADY_13:
    .byte $74,$f6,$ec,$ce,$9e,$3d,$7f,$df   ; byte
    .byte $b8,$b8,$70,$f0,$e0,$c2,$82,$22   ; byte


;
; ....░▒▒░
; .....░░░
; ......░▒
; ......░▒
; ......░░
; ......░▒
; ......░▒
; ......▒█
;
SPRITE_TILES_NPC_UNUSED_BLUE_LADY_14:
    .byte $09,$07,$02,$02,$03,$02,$02,$01   ; byte
    .byte $06,$00,$01,$01,$00,$01,$01,$03   ; byte


;
; ▒██▒░░▒.
; ██▒▒░...
; █▒▒▒░...
; █▒░░░...
; ░░█░░...
; ░█▒▒░...
; ░██▒░...
; ░██▒░...
;
SPRITE_TILES_NPC_UNUSED_BLUE_LADY_15:
    .byte $6c,$c8,$88,$b8,$f8,$c8,$e8,$e8   ; byte
    .byte $f2,$f0,$f0,$c0,$20,$70,$70,$70   ; byte


;============================================================================
; NPC Tiles: Unused Child
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::806e]
;============================================================================

;
; .░░░░...
; ░▒░██░..
; █▒▒░░░..
; ░▒▒▒░░..
; ▒█▒░░░..
; ▒▒▒░░░░.
; ░▒░░░░░.
; .░░█▒░░.
;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::806e]
;
SPRITE_TILES_NPC_UNUSED_CHILD_00:
    .byte $78,$bc,$9c,$8c,$5c,$1e,$be,$76   ; byte
    .byte $00,$58,$e0,$70,$e0,$e0,$40,$18   ; byte


;
; ░▒░█▒░..
; ▒█░▒▒░..
; ▒▒░█▒░..
; ▒░░▒▒░..
; ░░▒█▒░..
; ▒▒░▒░░..
; ▒█░░░░..
; ░░▒▒▒░..
;
SPRITE_TILES_NPC_UNUSED_CHILD_01:
    .byte $b4,$64,$34,$64,$d4,$2c,$7c,$c4   ; byte
    .byte $58,$d8,$d8,$98,$38,$d0,$c0,$38   ; byte


;
; ░▒▒░▒▒..
; ░█▒▒░...
; ░█▒▒░...
; ░█▒▒░...
; .░█▒░...
; .░█▒░...
; .░█▒▒░..
; ░▒▒█▒░..
;
SPRITE_TILES_NPC_UNUSED_CHILD_02:
    .byte $90,$c8,$c8,$c8,$68,$68,$64,$94   ; byte
    .byte $6c,$70,$70,$70,$30,$30,$38,$78   ; byte


;
; ░▒░█▒▒░.
; ▒█░░█▒▒░
; ▒▒▒▒░█▒░
; ▒▒▒░░░▒░
; ░░░░░░▒▒
; ▒▒▒▒░░▒▒
; ▒█▒▒░░..
; ░░▒▒▒░..
;
SPRITE_TILES_NPC_UNUSED_CHILD_03:
    .byte $b2,$79,$0d,$1d,$fc,$0c,$4c,$c4   ; byte
    .byte $5c,$ce,$f6,$e2,$03,$f3,$f0,$38   ; byte


;
; ........
; ........
; .......░
; .......░
; ......░░
; .....░▒▒
; ......░▒
; .......░
;
SPRITE_TILES_NPC_UNUSED_CHILD_04:
    .byte $00,$00,$01,$01,$03,$04,$02,$01   ; byte
    .byte $00,$00,$00,$00,$00,$03,$01,$00   ; byte


;
; ░▒▒░▒▒..
; ░█▒▒░...
; ▒█▒▒░░..
; █▒▒░░▒░.
; ▒▒░░▒▒░.
; ▒▒..░▒▒░
; ▒░..░█▒░
; ▒..░▒▒░.
;
SPRITE_TILES_NPC_UNUSED_CHILD_05:
    .byte $90,$c8,$4c,$9a,$32,$09,$4d,$12   ; byte
    .byte $6c,$70,$f0,$e4,$cc,$c6,$86,$8c   ; byte


;
; ........
; ........
; .......▒
; .......▒
; ........
; ........
; ........
; ........
;
SPRITE_TILES_NPC_UNUSED_CHILD_06:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$01,$01,$00,$00,$00,$00   ; byte


;
; ░▒░█▒░..
; ░░█▒▒░░.
; ██▒█░░░░
; ▒▒▒░░░░▒
; ░░░░░░.▒
; ░▒▒▒░░..
; ▒█▒▒▒░..
; ▒░░░░▒..
;
SPRITE_TILES_NPC_UNUSED_CHILD_07:
    .byte $b4,$e6,$df,$1e,$fc,$8c,$44,$78   ; byte
    .byte $58,$38,$f0,$e1,$01,$70,$f8,$84   ; byte


;
; ░░▒█▒░..
; ▒░▒█▒░..
; ▒▒░▒▒░..
; █░░▒▒▒░.
; ▒░.░▒▒░.
; ▒░..░█▒░
; ▒░..░▒▒░
; ▒░.░▒▒░.
;
SPRITE_TILES_NPC_UNUSED_CHILD_08:
    .byte $d4,$54,$24,$e2,$52,$4d,$49,$52   ; byte
    .byte $38,$b8,$d8,$9c,$8c,$86,$86,$8c   ; byte

;
; XREFS:
;     BANK6_SPRITEADDRS_START [$PRG6::8070]
;
DAT_PRG6__be32:
    .byte $bf,$ff,$f7,$ff,$ff,$c5,$00,$ff   ; undefined
    .byte $f7,$ff,$ff,$ff,$ff,$4c,$00,$ff   ; undefined
    .byte $b1,$ff,$ff,$ff,$fb,$7f,$00,$ff   ; undefined
    .byte $6f,$ff,$ff,$ff,$ff,$ad,$00,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$fa,$00,$ff   ; undefined
    .byte $7d,$ff,$ff,$ff,$ff,$08,$00,$ff   ; undefined
    .byte $cb,$ff,$fd,$ff,$da,$7f,$00,$ff   ; undefined
    .byte $5d,$ff,$5f,$ff,$7f,$e2,$00,$ff   ; undefined
    .byte $fb,$ff,$ff,$ff,$ff,$8b,$00,$ff   ; undefined
    .byte $fe,$ff,$ff,$ff,$ff,$05,$00,$ff   ; undefined
    .byte $fb,$ff,$7f,$ff,$bf,$ff,$00,$ff   ; undefined
    .byte $ff,$ff,$fd,$ff,$fb,$a3,$00,$fd   ; undefined
    .byte $ef,$ff,$ff,$ff,$ff,$5f,$00,$ff   ; undefined
    .byte $ae,$ff,$f7,$fb,$af,$a4,$00,$ff   ; undefined
    .byte $f4,$ff,$ff,$ff,$ff,$ac,$00,$ff   ; undefined
    .byte $be,$ff,$ff,$ff,$ff,$63,$00,$ff   ; undefined
    .byte $3c,$ff,$fe,$ff,$ff,$35,$00,$ff   ; undefined
    .byte $b7,$ff,$ff,$ff,$ff,$48,$00,$ff   ; undefined
    .byte $ed,$ff,$7e,$ff,$db,$ff,$00,$ff   ; undefined
    .byte $6b,$ff,$f6,$ff,$fd,$af,$00,$ff   ; undefined
    .byte $6f,$ff,$ff,$ff,$ff,$63,$00,$ff   ; undefined
    .byte $f6,$ff,$7f,$ff,$ff,$79,$00,$ff   ; undefined
    .byte $f4,$ff,$e6,$ff,$d7,$f5,$00,$ff   ; undefined
    .byte $3e,$ff,$ff,$ff,$dd,$0e,$00,$ff   ; undefined
    .byte $6b,$ff,$9f,$ff,$7f,$48,$00,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$fa,$9b,$00,$ff   ; undefined
    .byte $9d,$ff,$9f,$ff,$ff,$ff,$00,$ff   ; undefined
    .byte $dd,$ff,$ff,$ff,$fd,$77,$00,$ff   ; undefined
    .byte $d7,$ff,$ff,$ff,$ff,$15,$00,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$b4,$00,$ff   ; undefined
    .byte $ba,$ff,$ff,$ff,$ef,$ff,$00,$ff   ; undefined
    .byte $77,$ff,$fe,$ff,$ff,$6f,$00,$ff   ; undefined
    .byte $fe,$ff,$ff,$ff,$fe,$59,$00,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$fe,$00,$ff   ; undefined
    .byte $0a,$ff,$ff,$ff,$ff,$d3,$00,$ff   ; undefined
    .byte $9d,$ff,$ab,$ff,$ff,$1f,$00,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ce,$00,$ff   ; undefined
    .byte $fb,$ff,$fd,$ff,$ff,$03,$00,$ff   ; undefined
    .byte $f7,$ff,$ef,$ff,$ff,$71,$00,$ff   ; undefined
    .byte $ff,$ff,$f7,$ff,$f3,$bf,$00,$ff   ; undefined
    .byte $7e,$ff,$fd,$ff,$f7,$51,$00,$ff   ; undefined
    .byte $f3,$ff,$ee,$ff,$fb,$d9,$00,$ff   ; undefined
    .byte $d5,$ff,$ff,$ff,$f7,$fe,$00,$ff   ; undefined
    .byte $f7,$ff,$ff,$ff,$bb,$cf,$00,$ff   ; undefined
    .byte $d9,$ff,$bf,$ff,$fd,$92,$00,$ff   ; undefined
    .byte $ed,$ff,$ff,$ff,$ff,$00,$00,$ff   ; undefined
    .byte $ce,$ff,$be,$ff,$fd,$f9,$00,$ff   ; undefined
    .byte $fa,$ff,$ff,$ff,$ff,$d3,$00,$ff   ; undefined
    .byte $ef,$ff,$ef,$ff,$ed,$3c,$00,$ff   ; undefined
    .byte $6f,$ff,$ff,$ff,$ff,$c8,$00,$ff   ; undefined
    .byte $dd,$ff,$56,$ff,$bb,$ba,$00,$ff   ; undefined
    .byte $ea,$ff,$fe,$ff,$ff,$ea,$00,$ff   ; undefined
    .byte $be,$ff,$ff,$ff,$eb,$fb,$00,$ff   ; undefined
    .byte $f6,$ff,$ff,$ff,$ff,$13,$00,$ff   ; undefined
    .byte $ff,$ff,$fb,$ff,$de,$b0,$00,$ff   ; undefined
    .byte $fe,$ff,$de,$ff,$7f,$0d,$00,$ff   ; undefined
    .byte $fc,$ff,$bb,$ff,$fc,$b3,$00,$ff   ; undefined
    .byte $b5,$ff,$b7,$ff,$fe,$8c           ; undefined
