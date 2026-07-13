;============================================================================
; Faxanadu (U).nes
;
; PRG8 ($8000 - $bfff)
;============================================================================

    .segment "PRG8"
    .reloc


;============================================================================
; Offsets into the tile data for player sprites, items, and the start screen.
;
; These contain:
;
; 1. Direct references to the start of tile data for a
;    category
;
; 2. Lookup tables mapping a type of an item (e.g., weapon)
;    to the tile IDs based on the start of that category's
;    tile data.
;
; XREFS:
;     Player_LoadArmorSpriteTilesAddr
;============================================================================

;
; Address for the armor-to-tiles offsets lookup table.
;
;
; XREFS:
;     Player_LoadArmorSpriteTilesAddr
;
TILES_ARMOR_ADDRS_INDEX_REF:
    bank_offset_16 TILES_PLAYER_ARMOR_ADDRS_INDEX ; TILES_PLAYER_ARMOR_ADDRS_INDEX


;
; Address for the weapon-to-tiles offsets lookup table.
;
;
; XREFS:
;     Player_LoadWeaponSpriteTileAddrs
;
TILES_WEAPON_ADDRS_INDEX_REF:
    bank_offset_16 TILES_PLAYER_WEAPON_ADDRS_INDEX ; TILES_PLAYER_WEAPON_ADDRS_INDEX


;
; Start address of all armor tiles.
;
;
; XREFS:
;     Player_LoadArmorTile
;
TILES_ARMOR_START_REF:
    bank_offset_16 TILES_ARMOR_START        ; TILES_ARMOR_START


;
; Start address of all weapon tiles.
;
;
; XREFS:
;     Player_LoadWeaponTile
;
TILES_WEAPONS_START_REF:
    bank_offset_16 TILES_WEAPONS_START      ; TILES_WEAPONS_START


;
; Start address of common game tiles.
;
;
; XREFS:
;     Sprites_LoadCommon
;
TILES_COMMON_START_REF:
    bank_offset_16 TILES_COMMON_START       ; TILES_COMMON_START


;
; Start address of all shield tiles.
;
;
; XREFS:
;     Player_LoadShieldTile
;
TILES_SHIELDS_START_REF:
    bank_offset_16 TILES_SHIELDS_START      ; TILES_SHIELDS_START


;
; Address for the shield-to-tiles offsets lookup table.
;
;
; XREFS:
;     Player_LoadShieldSpriteTileAddrs
;
TILES_SHIELDS_ADDRS_INDEX_REF:
    bank_offset_16 TILES_SHIELDS_ADDRS_INDEX ; TILES_SHIELDS_ADDRS_INDEX


;
; Address for the portrait-to-tiles offsets lookup table.
;
;
; XREFS:
;     IScripts_LoadPortraitTilesAddress
;
TILES_PORTRAITS_ADDRS_INDEX_REF:
    bank_offset_16 SPRITE_TILES_PORTRAITS_ADDRS_INDEX ; SPRITE_TILES_PORTRAITS_ADDRS_INDEX


;
; Start address for all portrait tiles.
;
;
; XREFS:
;     IScripts_DrawPortraitTileToPPU
;
TILES_PORTRAITS_START_REF:
    bank_offset_16 SPRITE_TILES_PORTRAITS_START ; SPRITE_TILES_PORTRAITS_START


;============================================================================
; Lookup table mapping armor IDs to tile start offsets.
;
; Each offset is relative to the start of the bank. The
; address is $8000 + offset.
;
; XREFS:
;     TILES_ARMOR_ADDRS_INDEX_REF [$PRG8::8000]
;============================================================================

;
; XREFS:
;     TILES_ARMOR_ADDRS_INDEX_REF [$PRG8::8000]
;
TILES_PLAYER_ARMOR_ADDRS_INDEX:
    bank_offset_16 TILES_PLAYER_ARMOR_LEATHER_START ; TILES_PLAYER_ARMOR_LEATHER_START
    bank_offset_16 TILES_PLAYER_ARMOR_LEATHER_WSHIELD_START ; TILES_PLAYER_ARMOR_LEATHER_WSHIELD_START
    bank_offset_16 TILES_PLAYER_ARMOR_STUDDED_MAIL_START ; TILES_PLAYER_ARMOR_STUDDED_MAIL_START
    bank_offset_16 TILES_PLAYER_ARMOR_STUDDED_MAIL_WSHIELD_START ; TILES_PLAYER_ARMOR_STUDDED_MAIL_WSHIELD_START
    bank_offset_16 TILES_PLAYER_ARMOR_FULL_PLATE_START ; TILES_PLAYER_ARMOR_FULL_PLATE_START
    bank_offset_16 TILES_PLAYER_ARMOR_FULL_PLATE_WSHIELD_START ; TILES_PLAYER_ARMOR_FULL_PLATE_WSHIELD_START
    bank_offset_16 TILES_PLAYER_ARMOR_BATTLE_SUIT_START ; TILES_PLAYER_ARMOR_BATTLE_SUIT_START
    bank_offset_16 TILES_PLAYER_ARMOR_BATTLE_SUIT_START ; TILES_PLAYER_ARMOR_BATTLE_SUIT_START

;
; XREFS:
;     TILES_PLAYER_ARMOR_ADDRS_INDEX [$PRG8::8012]
;
TILES_PLAYER_ARMOR_LEATHER_START:
    .byte $00                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_00_WSHIELD_00__STUDDED_00_WSHIELD_00__FULL_PLATE_00_WSHIELD_00
    .byte $01                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_01_WSHIELD_01__STUDDED_01_WSHIELD_01__FULL_PLATE_01_WSHIELD_01
    .byte $02                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_02
    .byte $03                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_03
    .byte $04                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_04
    .byte $05                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_05
    .byte $06                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_06_WSHIELD_06__STUDDED_02_WSHIELD_06
    .byte $07                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_07_WSHIELD_07__STUDDED_03_WSHIELD_07
    .byte $08                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_08_WSHIELD_08__STUDDED_04_WSHIELD_08__FULL_PLATE_08_WSHIELD_08
    .byte $09                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_09_WSHIELD_09__STUDDED_05_WSHIELD_09__FULL_PLATE_09_WSHIELD_09
    .byte $0a                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_10
    .byte $0b                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_11
    .byte $0c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_12
    .byte $0d                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_13
    .byte $0e                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_14_WSHIELD_10__STUDDED_06_WSHIELD_10
    .byte $0f                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_15
    .byte $10                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_16
    .byte $11                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_17
    .byte $12                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_18
    .byte $13                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_19_WSHIELD_11__STUDDED_07_WSHIELD_11
    .byte $14                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_20_WSHIELD_12__STUDDED_08_WSHIELD_12
    .byte $29                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_21
    .byte $2a                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_22
    .byte $2b                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_23__STUDDED_21__FULL_PLATE_24
    .byte $2c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_24__STUDDED_22__FULL_PLATE_25
    .byte $2d                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_25__STUDDED_23__FULL_PLATE_26
    .byte $2e                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_26__STUDDED_24__FULL_PLATE_27
    .byte $4b                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_27_WSHIELD_15__STUDDED_27_WSHIELD_15__FULL_PLATE_28_WSHIELD_16
    .byte $4c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_28_WSHIELD_16__STUDDED_28_WSHIELD_16__FULL_PLATE_29_WSHIELD_17
    .byte $4d                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_29_WSHIELD_17
    .byte $4e                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_30_WSHIELD_18
    .byte $4f                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_31_WSHIELD_19
    .byte $50                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_32_WSHIELD_20
    .byte $51                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_33_WSHIELD_21__STUDDED_29_WSHIELD_21
    .byte $52                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_34_WSHIELD_22__STUDDED_30_WSHIELD_22
    .byte $57                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_35_WSHIELD_23__STUDDED_35_WSHIELD_23__FULL_PLATE_36_WSHIELD_24
    .byte $58                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_36_WSHIELD_24__STUDDED_36_WSHIELD_24__FULL_PLATE_37_WSHIELD_25
    .byte $59                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_37_WSHIELD_25__STUDDED_37_WSHIELD_25__FULL_PLATE_38_WSHIELD_26
    .byte $5a                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_38_WSHIELD_26
    .byte $5b                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_39_WSHIELD_27
    .byte $5c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_40_WSHIELD_28
    .byte $5d                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_41_WSHIELD_29
    .byte $5e                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_42_WSHIELD_30__STUDDED_38_WSHIELD_30
    .byte $5f                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_43_WSHIELD_31__STUDDED_39_WSHIELD_31
    .byte $75                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_44_WSHIELD_32__STUDDED_44_WSHIELD_32__FULL_PLATE_45_WSHIELD_33
    .byte $76                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_45_WSHIELD_33__STUDDED_45_WSHIELD_33__FULL_PLATE_46_WSHIELD_34
    .byte $77                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_46_WSHIELD_34__STUDDED_052
    .byte $78                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_47_WSHIELD_35
    .byte $79                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_48_WSHIELD_36
    .byte $7a                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_49_WSHIELD_37
    .byte $7b                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_50_WSHIELD_38__STUDDED_46_WSHIELD_38
    .byte $7c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_51_WSHIELD_39__STUDDED_47_WSHIELD_39


;============================================================================
; The tiles comprising studded mail.
;
; BUG:
; SPRITE_TILES_PLAYER_ARMOR_LEATHER_46_WSHIELD_34__STUDDED_052
;      is not in this list, but should be. It's loaded via
;      the Leather armor tiles and referenced.
;============================================================================
TILES_PLAYER_ARMOR_STUDDED_MAIL_START:
    .byte $00                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_00_WSHIELD_00__STUDDED_00_WSHIELD_00__FULL_PLATE_00_WSHIELD_00
    .byte $01                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_01_WSHIELD_01__STUDDED_01_WSHIELD_01__FULL_PLATE_01_WSHIELD_01
    .byte $06                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_06_WSHIELD_06__STUDDED_02_WSHIELD_06
    .byte $07                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_07_WSHIELD_07__STUDDED_03_WSHIELD_07
    .byte $08                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_08_WSHIELD_08__STUDDED_04_WSHIELD_08__FULL_PLATE_08_WSHIELD_08
    .byte $09                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_09_WSHIELD_09__STUDDED_05_WSHIELD_09__FULL_PLATE_09_WSHIELD_09
    .byte $0e                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_14_WSHIELD_10__STUDDED_06_WSHIELD_10
    .byte $13                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_19_WSHIELD_11__STUDDED_07_WSHIELD_11
    .byte $14                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_20_WSHIELD_12__STUDDED_08_WSHIELD_12
    .byte $15                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_09__FULL_PLATE_02
    .byte $16                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_10__FULL_PLATE_03
    .byte $17                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_11__FULL_PLATE_04
    .byte $18                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_12__FULL_PLATE_05
    .byte $19                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_13__FULL_PLATE_10
    .byte $1a                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_14__FULL_PLATE_11
    .byte $1b                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_15__FULL_PLATE_12
    .byte $1c                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_16__FULL_PLATE_13
    .byte $1d                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_17__FULL_PLATE_16
    .byte $1e                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_18__FULL_PLATE_17
    .byte $1f                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_19__FULL_PLATE_18
    .byte $20                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_20__FULL_PLATE_19
    .byte $2b                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_23__STUDDED_21__FULL_PLATE_24
    .byte $2c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_24__STUDDED_22__FULL_PLATE_25
    .byte $2d                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_25__STUDDED_23__FULL_PLATE_26
    .byte $2e                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_26__STUDDED_24__FULL_PLATE_27
    .byte $2f                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_25
    .byte $30                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_26
    .byte $4b                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_27_WSHIELD_15__STUDDED_27_WSHIELD_15__FULL_PLATE_28_WSHIELD_16
    .byte $4c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_28_WSHIELD_16__STUDDED_28_WSHIELD_16__FULL_PLATE_29_WSHIELD_17
    .byte $51                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_33_WSHIELD_21__STUDDED_29_WSHIELD_21
    .byte $52                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_34_WSHIELD_22__STUDDED_30_WSHIELD_22
    .byte $53                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_31_WSHIELD_17__FULL_PLATE_30_WSHIELD_18
    .byte $54                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_32_WSHIELD_18__FULL_PLATE_31_WSHIELD_19
    .byte $55                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_33_WSHIELD_19__FULL_PLATE_32_WSHIELD_20
    .byte $56                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_34_WSHIELD_20__FULL_PLATE_33_WSHIELD_21
    .byte $57                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_35_WSHIELD_23__STUDDED_35_WSHIELD_23__FULL_PLATE_36_WSHIELD_24
    .byte $58                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_36_WSHIELD_24__STUDDED_36_WSHIELD_24__FULL_PLATE_37_WSHIELD_25
    .byte $59                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_37_WSHIELD_25__STUDDED_37_WSHIELD_25__FULL_PLATE_38_WSHIELD_26
    .byte $5e                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_42_WSHIELD_30__STUDDED_38_WSHIELD_30
    .byte $5f                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_43_WSHIELD_31__STUDDED_39_WSHIELD_31
    .byte $60                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_40_WSHIELD_26__FULL_PLATE_39_WSHIELD_27
    .byte $61                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_41_WSHIELD_27__FULL_PLATE_40_WSHIELD_28
    .byte $62                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_42_WSHIELD_28__FULL_PLATE_41_WSHIELD_29
    .byte $63                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_43_WSHIELD_29__FULL_PLATE_42_WSHIELD_30
    .byte $75                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_44_WSHIELD_32__STUDDED_44_WSHIELD_32__FULL_PLATE_45_WSHIELD_33
    .byte $76                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_45_WSHIELD_33__STUDDED_45_WSHIELD_33__FULL_PLATE_46_WSHIELD_34
    .byte $7b                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_50_WSHIELD_38__STUDDED_46_WSHIELD_38
    .byte $7c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_51_WSHIELD_39__STUDDED_47_WSHIELD_39
    .byte $7d                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_48_WSHIELD_34__FULL_PLATE_47_WSHIELD_35
    .byte $7e                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_49_WSHIELD_35__FULL_PLATE_48_WSHIELD_36
    .byte $7f                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_50_WSHIELD_36__FULL_PLATE_49_WSHIELD_37
    .byte $80                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_51_WSHIELD_37__FULL_PLATE_50_WSHIELD_38

TILES_PLAYER_ARMOR_FULL_PLATE_START:
    .byte $00                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_00_WSHIELD_00__STUDDED_00_WSHIELD_00__FULL_PLATE_00_WSHIELD_00
    .byte $01                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_01_WSHIELD_01__STUDDED_01_WSHIELD_01__FULL_PLATE_01_WSHIELD_01
    .byte $15                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_09__FULL_PLATE_02
    .byte $16                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_10__FULL_PLATE_03
    .byte $17                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_11__FULL_PLATE_04
    .byte $18                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_12__FULL_PLATE_05
    .byte $21                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_06_WSHIELD_06__BATTLE_SUIT_06
    .byte $22                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_07_WSHIELD_07__BATTLE_SUIT_07
    .byte $08                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_08_WSHIELD_08__STUDDED_04_WSHIELD_08__FULL_PLATE_08_WSHIELD_08
    .byte $09                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_09_WSHIELD_09__STUDDED_05_WSHIELD_09__FULL_PLATE_09_WSHIELD_09
    .byte $19                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_13__FULL_PLATE_10
    .byte $1a                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_14__FULL_PLATE_11
    .byte $1b                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_15__FULL_PLATE_12
    .byte $1c                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_16__FULL_PLATE_13
    .byte $23                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_14_WSHIELD_10
    .byte $24                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_15_WSHIELD_11
    .byte $1d                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_17__FULL_PLATE_16
    .byte $1e                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_18__FULL_PLATE_17
    .byte $1f                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_19__FULL_PLATE_18
    .byte $20                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_20__FULL_PLATE_19
    .byte $25                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_20_WSHIELD_12
    .byte $26                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_21_WSHIELD_13
    .byte $2f                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_22
    .byte $30                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_23
    .byte $2b                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_23__STUDDED_21__FULL_PLATE_24
    .byte $2c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_24__STUDDED_22__FULL_PLATE_25
    .byte $2d                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_25__STUDDED_23__FULL_PLATE_26
    .byte $2e                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_26__STUDDED_24__FULL_PLATE_27
    .byte $4b                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_27_WSHIELD_15__STUDDED_27_WSHIELD_15__FULL_PLATE_28_WSHIELD_16
    .byte $4c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_28_WSHIELD_16__STUDDED_28_WSHIELD_16__FULL_PLATE_29_WSHIELD_17
    .byte $53                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_31_WSHIELD_17__FULL_PLATE_30_WSHIELD_18
    .byte $54                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_32_WSHIELD_18__FULL_PLATE_31_WSHIELD_19
    .byte $55                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_33_WSHIELD_19__FULL_PLATE_32_WSHIELD_20
    .byte $56                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_34_WSHIELD_20__FULL_PLATE_33_WSHIELD_21
    .byte $6a                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_34_WSHIELD_22__BATTLE_SUIT_32
    .byte $6b                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_35_WSHIELD_23__BATTLE_SUIT_33
    .byte $57                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_35_WSHIELD_23__STUDDED_35_WSHIELD_23__FULL_PLATE_36_WSHIELD_24
    .byte $58                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_36_WSHIELD_24__STUDDED_36_WSHIELD_24__FULL_PLATE_37_WSHIELD_25
    .byte $59                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_37_WSHIELD_25__STUDDED_37_WSHIELD_25__FULL_PLATE_38_WSHIELD_26
    .byte $60                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_40_WSHIELD_26__FULL_PLATE_39_WSHIELD_27
    .byte $61                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_41_WSHIELD_27__FULL_PLATE_40_WSHIELD_28
    .byte $62                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_42_WSHIELD_28__FULL_PLATE_41_WSHIELD_29
    .byte $63                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_43_WSHIELD_29__FULL_PLATE_42_WSHIELD_30
    .byte $73                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_43_WSHIELD_31__BATTLE_SUIT_41
    .byte $74                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_44_WSHIELD_32__BATTLE_SUIT_42
    .byte $75                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_44_WSHIELD_32__STUDDED_44_WSHIELD_32__FULL_PLATE_45_WSHIELD_33
    .byte $76                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_45_WSHIELD_33__STUDDED_45_WSHIELD_33__FULL_PLATE_46_WSHIELD_34
    .byte $7d                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_48_WSHIELD_34__FULL_PLATE_47_WSHIELD_35
    .byte $7e                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_49_WSHIELD_35__FULL_PLATE_48_WSHIELD_36
    .byte $7f                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_50_WSHIELD_36__FULL_PLATE_49_WSHIELD_37
    .byte $80                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_51_WSHIELD_37__FULL_PLATE_50_WSHIELD_38
    .byte $87                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_51_WSHIELD_39__BATTLE_SUIT_49
    .byte $88                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_52_WSHIELD_40__BATTLE_SUIT_50

TILES_PLAYER_ARMOR_BATTLE_SUIT_START:
    .byte $31                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_00
    .byte $32                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_01
    .byte $33                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_02
    .byte $34                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_03
    .byte $35                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_04
    .byte $36                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_05
    .byte $21                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_06_WSHIELD_06__BATTLE_SUIT_06
    .byte $22                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_07_WSHIELD_07__BATTLE_SUIT_07
    .byte $37                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_08
    .byte $38                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_09
    .byte $39                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_10
    .byte $3a                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_11
    .byte $3b                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_12
    .byte $3c                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_13
    .byte $3d                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_14
    .byte $3e                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_15
    .byte $3f                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_16
    .byte $40                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_17
    .byte $41                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_18
    .byte $42                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_19
    .byte $43                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_20
    .byte $44                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_21
    .byte $45                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_22
    .byte $46                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_23
    .byte $47                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_24
    .byte $48                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_25
    .byte $64                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_26
    .byte $65                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_27
    .byte $66                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_28
    .byte $67                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_29
    .byte $68                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_30
    .byte $69                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_31
    .byte $6a                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_34_WSHIELD_22__BATTLE_SUIT_32
    .byte $6b                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_35_WSHIELD_23__BATTLE_SUIT_33
    .byte $6c                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_34
    .byte $6d                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_35
    .byte $6e                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_36
    .byte $6f                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_37
    .byte $70                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_38
    .byte $71                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_39
    .byte $72                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_40
    .byte $73                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_43_WSHIELD_31__BATTLE_SUIT_41
    .byte $74                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_44_WSHIELD_32__BATTLE_SUIT_42
    .byte $81                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_43
    .byte $82                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_44
    .byte $83                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_45
    .byte $84                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_46
    .byte $85                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_47
    .byte $86                               ; SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_48
    .byte $87                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_51_WSHIELD_39__BATTLE_SUIT_49
    .byte $88                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_52_WSHIELD_40__BATTLE_SUIT_50

TILES_PLAYER_ARMOR_LEATHER_WSHIELD_START:
    .byte $00                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_00_WSHIELD_00__STUDDED_00_WSHIELD_00__FULL_PLATE_00_WSHIELD_00
    .byte $01                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_01_WSHIELD_01__STUDDED_01_WSHIELD_01__FULL_PLATE_01_WSHIELD_01
    .byte $89                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_02
    .byte $8a                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_03__STUDDED_WSHIELD_03__FULL_PLATE_WSHIELD_03
    .byte $8b                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_04
    .byte $8c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_05__STUDDED_WSHIELD_05__FULL_PLATE_WSHIELD_05
    .byte $06                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_06_WSHIELD_06__STUDDED_02_WSHIELD_06
    .byte $07                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_07_WSHIELD_07__STUDDED_03_WSHIELD_07
    .byte $08                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_08_WSHIELD_08__STUDDED_04_WSHIELD_08__FULL_PLATE_08_WSHIELD_08
    .byte $09                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_09_WSHIELD_09__STUDDED_05_WSHIELD_09__FULL_PLATE_09_WSHIELD_09
    .byte $0e                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_14_WSHIELD_10__STUDDED_06_WSHIELD_10
    .byte $13                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_19_WSHIELD_11__STUDDED_07_WSHIELD_11
    .byte $14                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_20_WSHIELD_12__STUDDED_08_WSHIELD_12
    .byte $49                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_13__STUDDED_WSHIELD_13__FULL_PLATE_WSHIELD_14
    .byte $4a                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_14__STUDDED_WSHIELD_14__FULL_PLATE_WSHIELD_15
    .byte $4b                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_27_WSHIELD_15__STUDDED_27_WSHIELD_15__FULL_PLATE_28_WSHIELD_16
    .byte $4c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_28_WSHIELD_16__STUDDED_28_WSHIELD_16__FULL_PLATE_29_WSHIELD_17
    .byte $4d                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_29_WSHIELD_17
    .byte $4e                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_30_WSHIELD_18
    .byte $4f                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_31_WSHIELD_19
    .byte $50                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_32_WSHIELD_20
    .byte $51                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_33_WSHIELD_21__STUDDED_29_WSHIELD_21
    .byte $52                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_34_WSHIELD_22__STUDDED_30_WSHIELD_22
    .byte $57                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_35_WSHIELD_23__STUDDED_35_WSHIELD_23__FULL_PLATE_36_WSHIELD_24
    .byte $58                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_36_WSHIELD_24__STUDDED_36_WSHIELD_24__FULL_PLATE_37_WSHIELD_25
    .byte $59                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_37_WSHIELD_25__STUDDED_37_WSHIELD_25__FULL_PLATE_38_WSHIELD_26
    .byte $5a                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_38_WSHIELD_26
    .byte $5b                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_39_WSHIELD_27
    .byte $5c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_40_WSHIELD_28
    .byte $5d                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_41_WSHIELD_29
    .byte $5e                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_42_WSHIELD_30__STUDDED_38_WSHIELD_30
    .byte $5f                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_43_WSHIELD_31__STUDDED_39_WSHIELD_31
    .byte $75                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_44_WSHIELD_32__STUDDED_44_WSHIELD_32__FULL_PLATE_45_WSHIELD_33
    .byte $76                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_45_WSHIELD_33__STUDDED_45_WSHIELD_33__FULL_PLATE_46_WSHIELD_34
    .byte $77                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_46_WSHIELD_34__STUDDED_052
    .byte $78                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_47_WSHIELD_35
    .byte $79                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_48_WSHIELD_36
    .byte $7a                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_49_WSHIELD_37
    .byte $7b                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_50_WSHIELD_38__STUDDED_46_WSHIELD_38
    .byte $7c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_51_WSHIELD_39__STUDDED_47_WSHIELD_39

TILES_PLAYER_ARMOR_STUDDED_MAIL_WSHIELD_START:
    .byte $00                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_00_WSHIELD_00__STUDDED_00_WSHIELD_00__FULL_PLATE_00_WSHIELD_00
    .byte $01                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_01_WSHIELD_01__STUDDED_01_WSHIELD_01__FULL_PLATE_01_WSHIELD_01
    .byte $8d                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_WSHIELD_02__FULL_PLATE_WSHIELD_02
    .byte $8a                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_03__STUDDED_WSHIELD_03__FULL_PLATE_WSHIELD_03
    .byte $8e                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_WSHIELD_04__FULL_PLATE_WSHIELD_04
    .byte $8c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_05__STUDDED_WSHIELD_05__FULL_PLATE_WSHIELD_05
    .byte $06                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_06_WSHIELD_06__STUDDED_02_WSHIELD_06
    .byte $07                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_07_WSHIELD_07__STUDDED_03_WSHIELD_07
    .byte $08                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_08_WSHIELD_08__STUDDED_04_WSHIELD_08__FULL_PLATE_08_WSHIELD_08
    .byte $09                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_09_WSHIELD_09__STUDDED_05_WSHIELD_09__FULL_PLATE_09_WSHIELD_09
    .byte $0e                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_14_WSHIELD_10__STUDDED_06_WSHIELD_10
    .byte $13                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_19_WSHIELD_11__STUDDED_07_WSHIELD_11
    .byte $14                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_20_WSHIELD_12__STUDDED_08_WSHIELD_12
    .byte $49                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_13__STUDDED_WSHIELD_13__FULL_PLATE_WSHIELD_14
    .byte $4a                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_14__STUDDED_WSHIELD_14__FULL_PLATE_WSHIELD_15
    .byte $4b                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_27_WSHIELD_15__STUDDED_27_WSHIELD_15__FULL_PLATE_28_WSHIELD_16
    .byte $4c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_28_WSHIELD_16__STUDDED_28_WSHIELD_16__FULL_PLATE_29_WSHIELD_17
    .byte $53                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_31_WSHIELD_17__FULL_PLATE_30_WSHIELD_18
    .byte $54                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_32_WSHIELD_18__FULL_PLATE_31_WSHIELD_19
    .byte $55                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_33_WSHIELD_19__FULL_PLATE_32_WSHIELD_20
    .byte $56                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_34_WSHIELD_20__FULL_PLATE_33_WSHIELD_21
    .byte $51                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_33_WSHIELD_21__STUDDED_29_WSHIELD_21
    .byte $52                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_34_WSHIELD_22__STUDDED_30_WSHIELD_22
    .byte $57                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_35_WSHIELD_23__STUDDED_35_WSHIELD_23__FULL_PLATE_36_WSHIELD_24
    .byte $58                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_36_WSHIELD_24__STUDDED_36_WSHIELD_24__FULL_PLATE_37_WSHIELD_25
    .byte $59                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_37_WSHIELD_25__STUDDED_37_WSHIELD_25__FULL_PLATE_38_WSHIELD_26
    .byte $60                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_40_WSHIELD_26__FULL_PLATE_39_WSHIELD_27
    .byte $61                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_41_WSHIELD_27__FULL_PLATE_40_WSHIELD_28
    .byte $62                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_42_WSHIELD_28__FULL_PLATE_41_WSHIELD_29
    .byte $63                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_43_WSHIELD_29__FULL_PLATE_42_WSHIELD_30
    .byte $5e                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_42_WSHIELD_30__STUDDED_38_WSHIELD_30
    .byte $5f                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_43_WSHIELD_31__STUDDED_39_WSHIELD_31
    .byte $75                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_44_WSHIELD_32__STUDDED_44_WSHIELD_32__FULL_PLATE_45_WSHIELD_33
    .byte $76                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_45_WSHIELD_33__STUDDED_45_WSHIELD_33__FULL_PLATE_46_WSHIELD_34
    .byte $7d                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_48_WSHIELD_34__FULL_PLATE_47_WSHIELD_35
    .byte $7e                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_49_WSHIELD_35__FULL_PLATE_48_WSHIELD_36
    .byte $7f                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_50_WSHIELD_36__FULL_PLATE_49_WSHIELD_37
    .byte $80                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_51_WSHIELD_37__FULL_PLATE_50_WSHIELD_38
    .byte $7b                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_50_WSHIELD_38__STUDDED_46_WSHIELD_38
    .byte $7c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_51_WSHIELD_39__STUDDED_47_WSHIELD_39

TILES_PLAYER_ARMOR_FULL_PLATE_WSHIELD_START:
    .byte $00                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_00_WSHIELD_00__STUDDED_00_WSHIELD_00__FULL_PLATE_00_WSHIELD_00
    .byte $01                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_01_WSHIELD_01__STUDDED_01_WSHIELD_01__FULL_PLATE_01_WSHIELD_01
    .byte $8d                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_WSHIELD_02__FULL_PLATE_WSHIELD_02
    .byte $8a                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_03__STUDDED_WSHIELD_03__FULL_PLATE_WSHIELD_03
    .byte $8e                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_WSHIELD_04__FULL_PLATE_WSHIELD_04
    .byte $8c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_05__STUDDED_WSHIELD_05__FULL_PLATE_WSHIELD_05
    .byte $21                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_06_WSHIELD_06__BATTLE_SUIT_06
    .byte $22                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_07_WSHIELD_07__BATTLE_SUIT_07
    .byte $08                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_08_WSHIELD_08__STUDDED_04_WSHIELD_08__FULL_PLATE_08_WSHIELD_08
    .byte $09                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_09_WSHIELD_09__STUDDED_05_WSHIELD_09__FULL_PLATE_09_WSHIELD_09
    .byte $23                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_14_WSHIELD_10
    .byte $24                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_15_WSHIELD_11
    .byte $25                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_20_WSHIELD_12
    .byte $26                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_21_WSHIELD_13
    .byte $49                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_13__STUDDED_WSHIELD_13__FULL_PLATE_WSHIELD_14
    .byte $4a                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_14__STUDDED_WSHIELD_14__FULL_PLATE_WSHIELD_15
    .byte $4b                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_27_WSHIELD_15__STUDDED_27_WSHIELD_15__FULL_PLATE_28_WSHIELD_16
    .byte $4c                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_28_WSHIELD_16__STUDDED_28_WSHIELD_16__FULL_PLATE_29_WSHIELD_17
    .byte $53                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_31_WSHIELD_17__FULL_PLATE_30_WSHIELD_18
    .byte $54                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_32_WSHIELD_18__FULL_PLATE_31_WSHIELD_19
    .byte $55                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_33_WSHIELD_19__FULL_PLATE_32_WSHIELD_20
    .byte $56                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_34_WSHIELD_20__FULL_PLATE_33_WSHIELD_21
    .byte $6a                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_34_WSHIELD_22__BATTLE_SUIT_32
    .byte $6b                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_35_WSHIELD_23__BATTLE_SUIT_33
    .byte $57                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_35_WSHIELD_23__STUDDED_35_WSHIELD_23__FULL_PLATE_36_WSHIELD_24
    .byte $58                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_36_WSHIELD_24__STUDDED_36_WSHIELD_24__FULL_PLATE_37_WSHIELD_25
    .byte $59                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_37_WSHIELD_25__STUDDED_37_WSHIELD_25__FULL_PLATE_38_WSHIELD_26
    .byte $60                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_40_WSHIELD_26__FULL_PLATE_39_WSHIELD_27
    .byte $61                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_41_WSHIELD_27__FULL_PLATE_40_WSHIELD_28
    .byte $62                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_42_WSHIELD_28__FULL_PLATE_41_WSHIELD_29
    .byte $63                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_43_WSHIELD_29__FULL_PLATE_42_WSHIELD_30
    .byte $73                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_43_WSHIELD_31__BATTLE_SUIT_41
    .byte $74                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_44_WSHIELD_32__BATTLE_SUIT_42
    .byte $75                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_44_WSHIELD_32__STUDDED_44_WSHIELD_32__FULL_PLATE_45_WSHIELD_33
    .byte $76                               ; SPRITE_TILES_PLAYER_ARMOR_LEATHER_45_WSHIELD_33__STUDDED_45_WSHIELD_33__FULL_PLATE_46_WSHIELD_34
    .byte $7d                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_48_WSHIELD_34__FULL_PLATE_47_WSHIELD_35
    .byte $7e                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_49_WSHIELD_35__FULL_PLATE_48_WSHIELD_36
    .byte $7f                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_50_WSHIELD_36__FULL_PLATE_49_WSHIELD_37
    .byte $80                               ; SPRITE_TILES_PLAYER_ARMOR_STUDDED_51_WSHIELD_37__FULL_PLATE_50_WSHIELD_38
    .byte $87                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_51_WSHIELD_39__BATTLE_SUIT_49
    .byte $88                               ; SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_52_WSHIELD_40__BATTLE_SUIT_50


;============================================================================
; Lookup table mapping weapon IDs to tile start offsets.
;
; Each offset is relative to the start of the bank. The
; address is $8000 + offset.
;
; XREFS:
;     TILES_WEAPON_ADDRS_INDEX_REF [$PRG8::8002]
;============================================================================

;
; XREFS:
;     TILES_WEAPON_ADDRS_INDEX_REF [$PRG8::8002]
;
TILES_PLAYER_WEAPON_ADDRS_INDEX:
    bank_offset_16 TILES_DAGGER_TILE_IDS    ; TILES_DAGGER_TILE_IDS
    bank_offset_16 TILES_LONG_SWORD_TILE_IDS ; TILES_LONG_SWORD_TILE_IDS
    bank_offset_16 TILES_GIANT_BLADE_TILE_IDS ; TILES_GIANT_BLADE_TILE_IDS
    bank_offset_16 TILES_DRAGON_SLAYER_TILE_IDS ; TILES_DRAGON_SLAYER_TILE_IDS


;
; Dagger Tiles
;
;
; XREFS:
;     TILES_PLAYER_WEAPON_ADDRS_INDEX [$PRG8::816b]
;
TILES_DAGGER_TILE_IDS:
    .byte $12                               ; TILE_DAGGER_01
    .byte $00                               ; TILES_WEAPONS_START_DAGGER_02
    .byte $09                               ; TILE_DAGGER_03_LONG_SWORD_06_GIANT_BLADE_7


;
; Long Sword Tiles
;
TILES_LONG_SWORD_TILE_IDS:
    .byte $0e                               ; TILE_LONG_SWORD_01
    .byte $0f                               ; TILE_LONG_SWORD_02
    .byte $01                               ; TILE_LONG_SWORD_03
    .byte $02                               ; TILE_LONG_SWORD_04
    .byte $0a                               ; TILE_LONG_SWORD_05
    .byte $09                               ; TILE_DAGGER_03_LONG_SWORD_06_GIANT_BLADE_7


;
; Giant Blade Tiles
;
TILES_GIANT_BLADE_TILE_IDS:
    .byte $10                               ; TILE_GIANT_BLADE_01
    .byte $11                               ; TILE_GIANT_BLADE_02
    .byte $03                               ; TILE_GIANT_BLADE_03
    .byte $04                               ; TILE_GIANT_BLADE_04
    .byte $05                               ; TILE_GIANT_BLADE_05
    .byte $0b                               ; TILE_GIANT_BLADE_06
    .byte $09                               ; TILE_DAGGER_03_LONG_SWORD_06_GIANT_BLADE_7


;
; Dragon Slayer Tiles
;
TILES_DRAGON_SLAYER_TILE_IDS:
    .byte $0d                               ; TILE_DRAGON_SLAYER_01
    .byte $13                               ; TILE_DRAGON_SLAYER_02
    .byte $14                               ; TILE_DRAGON_SLAYER_03
    .byte $15                               ; TILE_DRAGON_SLAYER_04
    .byte $16                               ; TILE_DRAGON_SLAYER_05
    .byte $06                               ; TILE_DRAGON_SLAYER_06
    .byte $07                               ; TILE_DRAGON_SLAYER_07
    .byte $08                               ; TILE_DRAGON_SLAYER_08
    .byte $0c                               ; TILE_DRAGON_SLAYER_09


;============================================================================
; Lookup table mapping shield IDs to tile start offsets.
;
; Each offset is relative to the start of the bank. The
; address is $8000 + offset.
;
; XREFS:
;     TILES_SHIELDS_ADDRS_INDEX_REF [$PRG8::800c]
;============================================================================

;
; XREFS:
;     TILES_SHIELDS_ADDRS_INDEX_REF [$PRG8::800c]
;
TILES_SHIELDS_ADDRS_INDEX:
    bank_offset_16 TILES_SHIELDS_SMALL      ; TILES_SHIELDS_SMALL
    bank_offset_16 TILES_SHIELDS_LARGE      ; TILES_SHIELDS_LARGE
    bank_offset_16 TILES_SHIELDS_MAGIC      ; TILES_SHIELDS_MAGIC


;
; Small Shield Tiles
;
;
; XREFS:
;     TILES_SHIELDS_ADDRS_INDEX [$PRG8::818c]
;
TILES_SHIELDS_SMALL:
    .byte $00                               ; TILES_SHIELDS_START_SMALL_SHIELD_01
    .byte $01                               ; TILE_SMALL_SHIELD_02
    .byte $06                               ; TILE_SMALL_SHIELD_03
    .byte $07                               ; TILE_SMALL_SHIELD_04
    .byte $0c                               ; TILE_SMALL_SHIELD_05
    .byte $0d                               ; TILE_SMALL_SHIELD_06


;
; Large Shield Tiles
;
TILES_SHIELDS_LARGE:
    .byte $02                               ; TILE_LARGE_SHIELD_01
    .byte $03                               ; TILE_LARGE_SHIELD_02
    .byte $08                               ; TILE_LARGE_SHIELD_03
    .byte $09                               ; TILE_LARGE_SHIELD_04
    .byte $0e                               ; TILE_LARGE_SHIELD_05
    .byte $0f                               ; TILE_LARGE_SHIELD_06


;
; Magic Shield Tiles
;
TILES_SHIELDS_MAGIC:
    .byte $04                               ; TILE_MAGIC_SHIELD_01
    .byte $05                               ; TILE_MAGIC_SHIELD_02
    .byte $0a                               ; TILE_MAGIC_SHIELD_03
    .byte $0b                               ; TILE_MAGIC_SHIELD_04
    .byte $10                               ; TILE_MAGIC_SHIELD_05
    .byte $11                               ; TILE_MAGIC_SHIELD_06


;============================================================================
; Beginning of the armor/body tiles.
;
; XREFS:
;     TILES_ARMOR_START_REF [$PRG8::8004]
;     TILES_PLAYER_ARMOR_FULL_PLATE_START [$PRG8::808a]
;     TILES_PLAYER_ARMOR_FULL_PLATE_WSHIELD_START
;     [$PRG8::8142]
;     TILES_PLAYER_ARMOR_LEATHER_START [$PRG8::8022]
;     TILES_PLAYER_ARMOR_LEATHER_WSHIELD_START
;     [$PRG8::80f2]
;     TILES_PLAYER_ARMOR_STUDDED_MAIL_START [$PRG8::8056]
;     TILES_PLAYER_ARMOR_STUDDED_MAIL_WSHIELD_START
;     [$PRG8::811a]
;============================================================================

;
; ........
; ..░░░░░.
; .░▒░░░░░
; .░▒▒░░░░
; ..▒██░░░
; ..▒░█░█░
; .█▒██▒█░
; ..▒▒▒▒░░
;
; XREFS:
;     TILES_ARMOR_START_REF [$PRG8::8004]
;     TILES_PLAYER_ARMOR_FULL_PLATE_START [$PRG8::808a]
;     TILES_PLAYER_ARMOR_FULL_PLATE_WSHIELD_START
;     [$PRG8::8142]
;     TILES_PLAYER_ARMOR_LEATHER_START [$PRG8::8022]
;     TILES_PLAYER_ARMOR_LEATHER_WSHIELD_START
;     [$PRG8::80f2]
;     TILES_PLAYER_ARMOR_STUDDED_MAIL_START [$PRG8::8056]
;     TILES_PLAYER_ARMOR_STUDDED_MAIL_WSHIELD_START
;     [$PRG8::811a]
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_00_WSHIELD_00__STUDDED_00_WSHIELD_00__FULL_PLATE_00_WSHIELD_00:
TILES_ARMOR_START:
    .byte $00,$3e,$5f,$4f,$1f,$1f,$5b,$03   ; byte
    .byte $00,$00,$20,$30,$38,$2a,$7e,$3c   ; byte


;
; ........
; ........
; ........
; ........
; ░.......
; ░░......
; ░.......
; ░░......
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_01_WSHIELD_01__STUDDED_01_WSHIELD_01__FULL_PLATE_01_WSHIELD_01:
    .byte $00,$00,$00,$00,$80,$c0,$80,$c0   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ..▒▒▒░░░
; ..░░░░░█
; ...▒░▒██
; ...████░
; ...███░▒
; ...▒███░
; ...▒██▒▒
; ▒█▒░░░░░
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_02:
    .byte $07,$3f,$0b,$1f,$1e,$0f,$0c,$5f   ; byte
    .byte $38,$01,$17,$1e,$1d,$1e,$1f,$e0   ; byte


;
; ░.......
; █▒......
; ░░░.....
; ██▒░....
; ▒██░....
; ░▒█▒░...
; ▒░▒█░...
; ░░██░...
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_03:
    .byte $80,$80,$e0,$d0,$70,$a8,$58,$f8   ; byte
    .byte $00,$c0,$00,$e0,$e0,$70,$b0,$30   ; byte


;
; █▒▒░███▒
; ░░░░░░░░
; ...░██▒▒
; ...▒███▒
; ...░░░██
; ...▒█▒░░
; ..░██▒▒░
; ..██▒▒░░
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_04:
    .byte $9e,$ff,$1c,$0e,$1f,$0b,$39,$33   ; byte
    .byte $ef,$00,$0f,$1f,$03,$1c,$1e,$3c   ; byte


;
; ░░██░...
; ░░██....
; ░██▒....
; ▒░▒.....
; ▒░......
; ░░......
; ░.......
; ░.......
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_05:
    .byte $f8,$f0,$e0,$40,$40,$c0,$80,$80   ; byte
    .byte $30,$30,$70,$a0,$80,$00,$00,$00   ; byte


;
; .▒█▒▒░░░
; .▒█▒░.░▒
; .░█▒░..█
; .░█▒░...
; .░█▒░...
; .░█▒░...
; .██▒░...
; ██▒▒░...
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_06_WSHIELD_06__STUDDED_02_WSHIELD_06:
    .byte $27,$2a,$69,$68,$68,$68,$68,$c8   ; byte
    .byte $78,$71,$31,$30,$30,$30,$70,$f0   ; byte


;
; ░.......
; ░░......
; ▒▒░.....
; █▒▒.....
; .▒▒░....
; .█▒▒....
; .█▒░....
; █▒░.....
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_07_WSHIELD_07__STUDDED_03_WSHIELD_07:
    .byte $80,$c0,$20,$80,$10,$40,$50,$a0   ; byte
    .byte $00,$00,$c0,$e0,$60,$70,$60,$c0   ; byte


;
; ..░░░░░.
; .░▒░░░░░
; .░▒▒░░░░
; ..▒██░░░
; ..▒░█░█░
; .█▒▒▒▒█░
; ..▒█▒▒░░
; ..▒▒▒░░░
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_08_WSHIELD_08__STUDDED_04_WSHIELD_08__FULL_PLATE_08_WSHIELD_08:
    .byte $3e,$5f,$4f,$1f,$1f,$43,$13,$07   ; byte
    .byte $00,$20,$30,$38,$2a,$7e,$3c,$38   ; byte


;
; ........
; ........
; ........
; ░.......
; ░░......
; ░.......
; ░░......
; ........
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_09_WSHIELD_09__STUDDED_05_WSHIELD_09__FULL_PLATE_09_WSHIELD_09:
    .byte $00,$00,$00,$80,$c0,$80,$c0,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ..░░░▒██
; ....░███
; ...░▒▒▒▒
; ...▒█▒██
; ...▒█▒██
; ...█▒░██
; ...▒░██▒
; ...░██▒▒
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_10:
    .byte $3b,$0f,$10,$0b,$0b,$17,$0e,$1c   ; byte
    .byte $07,$07,$0f,$1f,$1f,$1b,$17,$0f   ; byte


;
; ░.......
; █░......
; ░░......
; ▒░......
; ▒░......
; ▒░......
; ▒░......
; ░░......
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_11:
    .byte $80,$c0,$c0,$40,$40,$40,$40,$c0   ; byte
    .byte $00,$80,$00,$80,$80,$80,$80,$00   ; byte


;
; ..░██▒▒░
; ..░▒▒▒░▒
; ...░░░█▒
; ...▒███▒
; ...▒░▒▒▒
; ...░█▒▒░
; ...░██▒░
; ...░██▒░
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_12:
    .byte $39,$22,$1e,$0e,$08,$19,$1d,$1d   ; byte
    .byte $1e,$1d,$03,$1f,$17,$0e,$0e,$0e   ; byte


;
; ░.......
; ░.......
; ░.......
; ░.......
; ░.......
; ........
; ........
; ........
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_13:
    .byte $80,$80,$80,$80,$80,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ...░█▒▒.
; ....██▒░
; ....░█▒░
; ....░█▒░
; ....░█▒▒
; ....░█▒▒
; ...░███▒
; ...██▒▒.
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_14_WSHIELD_10__STUDDED_06_WSHIELD_10:
    .byte $18,$0d,$0d,$0d,$0c,$0c,$1e,$18   ; byte
    .byte $0e,$0e,$06,$06,$07,$07,$0f,$1e   ; byte


;
; ..▒▒▒░░░
; ....░██░
; ....░░█▒
; ....██░▒
; ...░██▒░
; ...▒█▒▒░
; ..░██▒░░
; .▒██▒░▒░
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_15:
    .byte $07,$0f,$0e,$0e,$1d,$09,$3b,$35   ; byte
    .byte $38,$06,$03,$0d,$0e,$1e,$1c,$7a   ; byte


;
; ░.......
; ░░......
; ░░......
; ░░░.....
; ░░░.....
; ░░░░....
; ░░░░....
; ░░░░....
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_16:
    .byte $80,$c0,$c0,$e0,$e0,$f0,$f0,$f0   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ▒█▒▒░▒▒░
; █▒▒░░░░░
; ░░.░██▒▒
; ...▒███▒
; ...░████
; ...░░▒░░
; ...█░██▒
; ..▒█░██▒
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_17:
    .byte $49,$9f,$dc,$0e,$1f,$1b,$1e,$1e   ; byte
    .byte $f6,$e0,$0f,$1f,$0f,$04,$17,$37   ; byte


;
; ░.▒░....
; ░█▒░....
; ░░░░....
; ░░......
; ▒░......
; ░░......
; ░.......
; ░.......
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_18:
    .byte $90,$d0,$f0,$c0,$40,$c0,$80,$80   ; byte
    .byte $20,$60,$00,$00,$80,$00,$00,$00   ; byte


;
; ..██▒░█▒
; .▒█▒▒░██
; .▒█▒░.░█
; ..█▒░..▒
; ..█▒░...
; ..█▒░...
; .██▒░...
; ▒▒▒▒░...
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_19_WSHIELD_11__STUDDED_07_WSHIELD_11:
    .byte $36,$27,$2b,$28,$28,$28,$68,$08   ; byte
    .byte $3b,$7b,$71,$31,$30,$30,$70,$f0   ; byte


;
; ▒.......
; ▒░......
; ▒▒......
; █▒░.....
; ▒▒▒░....
; .█▒▒....
; .█▒░....
; ▒▒░.....
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_20_WSHIELD_12__STUDDED_08_WSHIELD_12:
    .byte $00,$40,$00,$a0,$10,$40,$50,$20   ; byte
    .byte $80,$80,$c0,$c0,$e0,$70,$60,$c0   ; byte


;
; ..▒▒▒░░░
; ..░░░░░█
; ...▒░░▒░
; ..░█░██░
; ..░█░█▒░
; ...▒░▒▒░
; ...░░░░░
; ░█░░░░░░
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_09__FULL_PLATE_02:
    .byte $07,$3f,$0d,$3f,$3d,$09,$1f,$ff   ; byte
    .byte $38,$01,$12,$16,$16,$16,$00,$40   ; byte


;
; ░░......
; ██░.....
; ███░....
; ░░░░....
; ▒██░....
; ░▒█▒░...
; ░░▒█░...
; ░░██░...
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_10__FULL_PLATE_03:
    .byte $c0,$e0,$f0,$f0,$70,$a8,$d8,$f8   ; byte
    .byte $00,$c0,$e0,$00,$e0,$70,$30,$30   ; byte


;
; █▒▒░██▒▒
; ░░░░░░░░
; ...░░▒░█
; ...▒░█░█
; ...▒░█░█
; ...░▒░░░
; ..░██▒▒░
; ..██▒▒░░
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_11__FULL_PLATE_04:
    .byte $9c,$ff,$1b,$0f,$0f,$17,$39,$33   ; byte
    .byte $ef,$00,$05,$15,$15,$08,$1e,$3c   ; byte


;
; ░░██░...
; ░███....
; ░██▒....
; ░░░.....
; ░▒......
; ▒▒......
; ░.......
; ░.......
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_12__FULL_PLATE_05:
    .byte $f8,$f0,$e0,$e0,$80,$00,$80,$80   ; byte
    .byte $30,$70,$70,$00,$40,$c0,$00,$00   ; byte


;
; ..░░░░██
; ....░░██
; ...░▒░░░
; ...█▒░▒█
; ...▒▒░██
; ...▒░░██
; ...░░██▒
; ...░██▒▒
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_13__FULL_PLATE_10:
    .byte $3f,$0f,$17,$15,$07,$0f,$1e,$1c   ; byte
    .byte $03,$03,$08,$1b,$1b,$13,$07,$0f   ; byte


;
; ▒░......
; █░......
; ░░......
; ▒░......
; ▒░......
; ▒░......
; ░.......
; ░.......
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_14__FULL_PLATE_11:
    .byte $40,$c0,$c0,$40,$40,$40,$80,$80   ; byte
    .byte $80,$80,$00,$80,$80,$80,$00,$00   ; byte


;
; ..░██▒▒░
; ..░▒▒░░▒
; ...░░█░▒
; ...█░█░▒
; ...░░░░░
; ...░█▒▒░
; ...░██▒░
; ...░██▒░
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_15__FULL_PLATE_12:
    .byte $39,$26,$1e,$1e,$1f,$19,$1d,$1d   ; byte
    .byte $1e,$19,$05,$15,$00,$0e,$0e,$0e   ; byte


;
; ░.......
; ░.......
; ░.......
; ░.......
; ░.......
; ........
; ........
; ........
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_16__FULL_PLATE_13:
    .byte $80,$80,$80,$80,$80,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ..▒▒░▒▒░
; ...░███▒
; ....░░█▒
; ....██░▒
; ...░██▒░
; ...▒█▒▒░
; ..░░▒▒░▒
; .▒██░░▒▒
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_17__FULL_PLATE_16:
    .byte $09,$1e,$0e,$0e,$1d,$09,$32,$3c   ; byte
    .byte $36,$0f,$03,$0d,$0e,$1e,$0d,$73   ; byte


;
; ░.......
; ░░......
; ░▒......
; ░░░.....
; ░▒░.....
; ▒░░░....
; ▒░▒░....
; ▒░░░....
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_18__FULL_PLATE_17:
    .byte $80,$c0,$80,$e0,$a0,$70,$50,$70   ; byte
    .byte $00,$00,$40,$00,$40,$80,$a0,$80   ; byte


;
; ▒█▒▒░▒▒▒
; █▒▒░░░░░
; ░░.░░█░▒
; ...▒░█░█
; ...▒░█░█
; ...░▒░░░
; ...█░██▒
; ..▒█░██▒
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_19__FULL_PLATE_18:
    .byte $48,$9f,$de,$0f,$0f,$17,$1e,$1e   ; byte
    .byte $f7,$e0,$05,$15,$15,$08,$17,$37   ; byte


;
; ░.▒░....
; ░█▒░....
; ░░░░....
; ░░......
; ▒░......
; ░░......
; ░.......
; ░.......
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_20__FULL_PLATE_19:
    .byte $90,$d0,$f0,$c0,$40,$c0,$80,$80   ; byte
    .byte $20,$60,$00,$00,$80,$00,$00,$00   ; byte


;
; ..███░░░
; ..█░░░.▒
; ..░░▒░..
; ..░█▒░..
; ..░█▒░..
; ..░░░░..
; ..█▒▒░..
; .██▒▒░..
;
SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_06_WSHIELD_06__BATTLE_SUIT_06:
    .byte $3f,$3c,$34,$34,$34,$3c,$24,$64   ; byte
    .byte $38,$21,$08,$18,$18,$00,$38,$78   ; byte


;
; ░░......
; █░░.....
; █░█░....
; .░██░...
; ..█░░...
; ..░▒▒...
; ..█▒░...
; .█▒░....
;
SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_07_WSHIELD_07__BATTLE_SUIT_07:
    .byte $c0,$e0,$f0,$78,$38,$20,$28,$50   ; byte
    .byte $00,$80,$a0,$30,$20,$18,$30,$60   ; byte


;
; ....██░▒
; ....█░░▒
; .....░▒▒
; .....░█▒
; .....░█▒
; .....░░░
; ....░███
; ....██▒▒
;
SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_14_WSHIELD_10:
    .byte $0e,$0e,$04,$06,$06,$07,$0f,$0c   ; byte
    .byte $0d,$09,$03,$03,$03,$00,$07,$0f   ; byte


;
; ........
; ░.......
; ░.......
; ░.......
; ▒.......
; ░.......
; ▒.......
; ........
;
SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_15_WSHIELD_11:
    .byte $00,$80,$80,$80,$00,$80,$00,$00   ; byte
    .byte $00,$00,$00,$00,$80,$00,$80,$00   ; byte


;
; ...█░▒░█
; ...██░░░
; ...█░░.█
; ...░▒░..
; ...█▒░..
; ...█▒░..
; ..██▒░..
; .▒▒▒▒░..
;
SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_20_WSHIELD_12:
    .byte $1b,$1f,$1d,$14,$14,$14,$34,$04   ; byte
    .byte $15,$18,$11,$08,$18,$18,$38,$78   ; byte


;
; ▒▒......
; ░░░.....
; █░▒.....
; ░█▒░....
; .██▒░...
; ..█▒▒░..
; ..█▒░...
; .▒▒░....
;
SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_21_WSHIELD_13:
    .byte $00,$e0,$c0,$d0,$68,$24,$28,$10   ; byte
    .byte $c0,$00,$a0,$60,$70,$38,$30,$60   ; byte


;
; ░░......
; █▒░.....
; █▒░.....
; ░░░.....
; █▒░.....
; ▒▒░.....
; █▒░.....
; ▒▒░.....
;
SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_22:
    .byte $c0,$a0,$a0,$e0,$a0,$20,$a0,$20   ; byte
    .byte $00,$c0,$c0,$00,$c0,$c0,$c0,$c0   ; byte


;
; ▒░......
; ░.......
; ░.......
; ▒.......
; ▒.......
; ........
; ........
; ........
;
SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_23:
    .byte $40,$80,$80,$00,$00,$00,$00,$00   ; byte
    .byte $80,$00,$00,$80,$80,$00,$00,$00   ; byte


;
; ..▒▒▒░░░
; ....░░░█
; ...█░▒██
; ..▒████░
; ..░████▒
; ...▒███░
; █▒.░▒██▒
; ▒▒█░░░░░
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_21:
    .byte $07,$0f,$1b,$1f,$3e,$0f,$96,$3f   ; byte
    .byte $38,$01,$17,$3e,$1f,$1e,$cf,$e0   ; byte


;
; ░.......
; █▒......
; ░░░.....
; ██▒░....
; ▒██░....
; ░▒█▒░...
; ▒░▒█░...
; ░░██░...
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_22:
    .byte $80,$80,$e0,$d0,$70,$a8,$58,$f8   ; byte
    .byte $00,$c0,$00,$e0,$e0,$70,$b0,$30   ; byte


;
; .░░░▒█░█
; .░▒█░░░█
; .▒█▒░█▒░
; .█▒░██▒▒
; .▒▒░█▒▒░
; ..░▒░▒▒▒
; ...░▒░░▒
; ....░▒░░
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_23__STUDDED_21__FULL_PLATE_24:
    .byte $77,$5f,$2d,$5c,$19,$28,$16,$0b   ; byte
    .byte $0d,$31,$76,$6f,$6e,$17,$09,$04   ; byte


;
; ██▒▒░...
; ▒▒▒░....
; ░░░.....
; ▒░......
; ░.......
; ▒.......
; ▒▒......
; ▒▒......
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_24__STUDDED_22__FULL_PLATE_25:
    .byte $c8,$10,$e0,$40,$80,$00,$00,$00   ; byte
    .byte $f0,$e0,$00,$80,$00,$80,$c0,$c0   ; byte


;
; .....█▒.
; .....░▒.
; ......▒.
; ........
; ........
; ........
; ........
; ........
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_25__STUDDED_23__FULL_PLATE_26:
    .byte $04,$04,$00,$00,$00,$00,$00,$00   ; byte
    .byte $06,$02,$02,$00,$00,$00,$00,$00   ; byte


;
; .▒......
; .▒......
; ........
; ........
; ........
; ........
; ........
; ........
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_26__STUDDED_24__FULL_PLATE_27:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $40,$40,$00,$00,$00,$00,$00,$00   ; byte


;
; ..▒▒▒░░░
; ....░▒░█
; ...▒░░▒░
; ..░█░██░
; ..░█░█▒░
; ..░▒░░▒▒
; █▒▒░░░░░
; ▒▒▒░▒▒░▒
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_25:
    .byte $07,$0b,$0d,$3f,$3d,$2c,$9f,$12   ; byte
    .byte $38,$05,$12,$16,$16,$13,$e0,$ed   ; byte


;
; ░░......
; ██░.....
; ███░....
; ░░░░....
; ▒██░....
; ░▒█▒░...
; ░░▒█░...
; ████░...
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_26:
    .byte $c0,$e0,$f0,$f0,$70,$a8,$d8,$f8   ; byte
    .byte $00,$c0,$e0,$00,$e0,$70,$30,$f0   ; byte


;
; ........
; ..█.███░
; ..██░█▒▒
; ..███░░▒
; ..████▒░
; ...░░░░░
; ...▒▒░██
; ..████▒░
;
; XREFS:
;     TILES_PLAYER_ARMOR_BATTLE_SUIT_START [$PRG8::80bf]
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_00:
    .byte $00,$2f,$3c,$3e,$3d,$1f,$07,$3d   ; byte
    .byte $00,$2e,$37,$39,$3e,$00,$1b,$3e   ; byte


;
; ........
; ........
; ░.......
; ▒░......
; ▒░......
; ░░......
; ░░......
; ░░......
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_01:
    .byte $00,$00,$80,$40,$40,$c0,$c0,$c0   ; byte
    .byte $00,$00,$00,$80,$80,$00,$00,$00   ; byte


;
; ..███░░█
; ..██░░██
; ..▒░▒░█░
; █..░█░█░
; ░█.░█░█▒
; ░█..░░▒█
; █▒.░░█░░
; ▒░█▒░███
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_02:
    .byte $3f,$3f,$17,$9f,$de,$cd,$9f,$6f   ; byte
    .byte $39,$33,$2a,$8a,$4b,$43,$c4,$b7   ; byte


;
; █░█░█...
; ░████...
; ██░░█...
; █░░█░...
; ░░██▒...
; ▒░██▒░..
; ░░░░░░..
; ▒░░██░..
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_03:
    .byte $f8,$f8,$f8,$f8,$f0,$74,$fc,$7c   ; byte
    .byte $a8,$78,$c8,$90,$38,$b8,$00,$98   ; byte


;
; ░█░▒░██▒
; .░█░░░░░
; ...░▒░█░
; ....░░█░
; ....░░░░
; ....▒█▒░
; ...▒█▒▒░
; ..█░░▒░░
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_04:
    .byte $ee,$7f,$17,$0f,$0f,$05,$09,$3b   ; byte
    .byte $57,$20,$0a,$02,$00,$0e,$1e,$24   ; byte


;
; ▒░█░█░..
; ░██▒░░..
; ░█▒▒░...
; ▒░░░....
; █░░.....
; ░▒░.....
; ░░......
; ░░......
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_05:
    .byte $7c,$ec,$c8,$70,$e0,$a0,$c0,$c0   ; byte
    .byte $a8,$70,$70,$80,$80,$40,$00,$00   ; byte


;
; ..█.███░
; ..██░█▒▒
; ..███░░▒
; ..████▒░
; ...░░░░░
; ...▒▒░██
; ..████▒░
; ..███░░█
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_08:
    .byte $2f,$3c,$3e,$3d,$1f,$07,$3d,$3f   ; byte
    .byte $2e,$37,$39,$3e,$00,$1b,$3e,$39   ; byte


;
; ........
; ░.......
; ▒░......
; ▒░......
; ░░......
; ░░......
; █░█.....
; ██▒.....
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_09:
    .byte $00,$80,$40,$40,$c0,$c0,$e0,$c0   ; byte
    .byte $00,$00,$80,$80,$00,$00,$a0,$e0   ; byte


;
; ..█▒░░█▒
; ..▒.░░░░
; ....░█░█
; ....██░█
; ....▒▒░█
; █...░░░█
; ▒██.░░█░
; .▒▒░▒███
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_10:
    .byte $2e,$0f,$0f,$0f,$03,$8f,$6f,$17   ; byte
    .byte $33,$20,$05,$0d,$0d,$81,$e2,$6f   ; byte


;
; ░░█▒....
; ▒░░░....
; █▒░.....
; █▒░.....
; █▒░.....
; ░░░.....
; █░......
; ░░......
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_11:
    .byte $e0,$70,$a0,$a0,$a0,$e0,$c0,$c0   ; byte
    .byte $30,$80,$c0,$c0,$c0,$00,$80,$00   ; byte


;
; ...░██▒▒
; ...░▒▒░░
; ....░░█░
; ....█░█░
; ....▒░░░
; ....░██▒
; ....░██▒
; ....█░█▒
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_12:
    .byte $1c,$13,$0f,$0f,$07,$0e,$0e,$0e   ; byte
    .byte $0f,$0c,$02,$0a,$08,$07,$07,$0b   ; byte


;
; ░░......
; ▒░......
; ▒░......
; ▒░......
; ░░......
; ░.......
; ░.......
; ░.......
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_13:
    .byte $c0,$40,$40,$40,$c0,$80,$80,$80   ; byte
    .byte $00,$80,$80,$80,$00,$00,$00,$00   ; byte


;
; ....██░▒
; ....█░░▒
; .....░▒▒
; .....░█▒
; .....░█▒
; .....░░░
; ....░███
; ....██▒▒
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_14:
    .byte $0e,$0e,$04,$06,$06,$07,$0f,$0c   ; byte
    .byte $0d,$09,$03,$03,$03,$00,$07,$0f   ; byte


;
; ........
; ░.......
; ░.......
; ░.......
; ▒.......
; ░.......
; ▒.......
; ........
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_15:
    .byte $00,$80,$80,$80,$00,$80,$00,$00   ; byte
    .byte $00,$00,$00,$00,$80,$00,$80,$00   ; byte


;
; ..███░█░
; ..██░░██
; ..▒.░█░░
; .....░█▒
; .....███
; ....█░█▒
; ...░█░▒░
; ░▒▒▒░█░░
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_16:
    .byte $3f,$3f,$0f,$06,$07,$0e,$1d,$8f   ; byte
    .byte $3a,$33,$24,$03,$07,$0b,$0a,$74   ; byte


;
; █░......
; █░█.....
; ██░░....
; ░█░░....
; ░░░░░...
; ░▒░▒░░..
; ░▒░░▒▒..
; ▒░░.░░..
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_17:
    .byte $c0,$e0,$f0,$f0,$f8,$ac,$b0,$6c   ; byte
    .byte $80,$a0,$c0,$40,$00,$50,$4c,$80   ; byte


;
; ░███▒░░▒
; ░▒▒▒░░░░
; .░░░░░█░
; ....▒░█░
; ....█░█░
; ....░▒░░
; ....█░██
; ...░█░██
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_18:
    .byte $f6,$8f,$7f,$07,$0f,$0b,$0f,$1f   ; byte
    .byte $79,$70,$02,$0a,$0a,$04,$0b,$0b   ; byte


;
; ░░░░▒▒..
; ░░.█▒░█.
; ░░░.░░..
; █░░.░...
; █▒░.....
; ░░░.....
; ▒░......
; ▒░......
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_19:
    .byte $f0,$d6,$ec,$e8,$a0,$e0,$40,$40   ; byte
    .byte $0c,$1a,$00,$80,$c0,$00,$80,$80   ; byte


;
; ...█░▒░█
; ...██░░░
; ...█░░.█
; ...░▒░..
; ...█▒░..
; ...█▒░..
; ..██▒░..
; .▒▒▒▒░..
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_20:
    .byte $1b,$1f,$1d,$14,$14,$14,$34,$04   ; byte
    .byte $15,$18,$11,$08,$18,$18,$38,$78   ; byte


;
; ▒░......
; ░░......
; █░░.....
; ░█▒░....
; .██▒░...
; ..█▒░...
; ..█▒░...
; .▒▒░....
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_21:
    .byte $40,$c0,$e0,$d0,$68,$28,$28,$10   ; byte
    .byte $80,$00,$80,$60,$70,$30,$30,$60   ; byte


;
; ░█░▒░█░▒
; .░█░░░░▒
; ...░██░░
; ..░██▒▒░
; .█░█▒▒░░
; .██░░░..
; .█░▒▒░..
; ..░█▒▒░.
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_22:
    .byte $ee,$7e,$1f,$39,$73,$7c,$64,$32   ; byte
    .byte $55,$21,$0c,$1e,$5c,$60,$58,$1c   ; byte


;
; ███░█░..
; ▒▒▒▒░░..
; ░░░░░...
; ▒▒░░....
; █▒▒░....
; ▒█▒░....
; ░░░▒▒░▒.
; ██░██▒█░
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_23:
    .byte $fc,$0c,$f8,$30,$90,$50,$e4,$fb   ; byte
    .byte $e8,$f0,$00,$c0,$e0,$e0,$1a,$de   ; byte


;
; ...░█▒░░
; ....░░█░
; .....░█▒
; ......▒▒
; .......▒
; ........
; ........
; ........
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_24:
    .byte $1b,$0f,$06,$00,$00,$00,$00,$00   ; byte
    .byte $0c,$02,$03,$03,$01,$00,$00,$00   ; byte


;
; .█░▒▒░▒░
; .....░█░
; ......▒░
; .......▒
; ........
; ........
; ........
; ........
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_25:
    .byte $65,$07,$01,$00,$00,$00,$00,$00   ; byte
    .byte $5a,$02,$02,$01,$00,$00,$00,$00   ; byte


;
; ...░██▒▒
; ....░▒█▒
; .....░░▒
; ......▒░
; ......▒░
; ........
; ........
; ........
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_13__STUDDED_WSHIELD_13__FULL_PLATE_WSHIELD_14:
    .byte $1c,$0a,$06,$01,$01,$00,$00,$00   ; byte
    .byte $0f,$07,$01,$02,$02,$00,$00,$00   ; byte


;
; ░.......
; ▒░......
; ▒░......
; ▒░......
; ▒.......
; ........
; ........
; ........
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_14__STUDDED_WSHIELD_14__FULL_PLATE_WSHIELD_15:
    .byte $80,$40,$40,$40,$00,$00,$00,$00   ; byte
    .byte $00,$80,$80,$80,$80,$00,$00,$00   ; byte


;
; ........
; .....░░░
; ....░░░░
; ....░▒░░
; .....█▒░
; .....░█▒
; ....▒██▒
; .....▒▒▒
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_27_WSHIELD_15__STUDDED_27_WSHIELD_15__FULL_PLATE_28_WSHIELD_16:
    .byte $00,$07,$0f,$0b,$05,$06,$06,$00   ; byte
    .byte $00,$00,$00,$04,$06,$03,$0f,$07   ; byte


;
; ........
; ░░......
; ░░░.....
; ░░░.....
; ░░░░....
; ░▒░░░...
; ▒░░░....
; ░░░░░...
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_28_WSHIELD_16__STUDDED_28_WSHIELD_16__FULL_PLATE_29_WSHIELD_17:
    .byte $00,$c0,$e0,$e0,$f0,$b8,$70,$f8   ; byte
    .byte $00,$00,$00,$00,$00,$40,$80,$00   ; byte


;
; .....▒▒░
; .....██▒
; ██░▒█░██
; .░▒██▒██
; ░░██▒░██
; ▒██▒░░██
; ▒▒▒░░██▒
; .░░░░░░░
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_29_WSHIELD_17:
    .byte $01,$06,$ef,$5b,$f7,$6f,$1e,$7f   ; byte
    .byte $06,$07,$db,$3f,$3b,$f3,$e7,$00   ; byte


;
; ░░░.....
; ▒░░.....
; ▒▒▒░░...
; ▒▒▒▒░▒..
; ▒▒▒▒░█▒.
; ▒▒▒▒░▒█░
; ▒▒▒░.▒▒░
; ░░░░█░░░
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_30_WSHIELD_18:
    .byte $e0,$60,$18,$08,$0c,$0b,$11,$ff   ; byte
    .byte $00,$80,$e0,$f4,$f6,$f6,$e6,$08   ; byte


;
; ....░█▒▒
; ....░░░░
; ...░███▒
; ...▒███▒
; ...░░░▒█
; ...██░░░
; ..██▒▒░░
; .░█▒▒░░░
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_31_WSHIELD_19:
    .byte $0c,$0f,$1e,$0e,$1d,$1f,$33,$67   ; byte
    .byte $07,$00,$0f,$1f,$03,$18,$3c,$38   ; byte


;
; ▒░░.░░░▒
; ░░░..░░.
; ▒▒▒.....
; ▒▒▒.....
; ▒▒░.....
; ▒░▒.....
; ░░░.....
; ░░░.....
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_32_WSHIELD_20:
    .byte $6e,$e6,$00,$00,$20,$40,$e0,$e0   ; byte
    .byte $81,$00,$e0,$e0,$c0,$a0,$00,$00   ; byte


;
; .█▒▒░░.░
; .█▒░░..░
; .██▒░..░
; .██▒░...
; .█▒▒░...
; .█▒░....
; ▒█▒░....
; █▒▒░....
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_33_WSHIELD_21__STUDDED_29_WSHIELD_21:
    .byte $4d,$59,$69,$68,$48,$50,$50,$90   ; byte
    .byte $70,$60,$70,$70,$70,$60,$e0,$e0   ; byte


;
; ░░░.....
; ▒░░.....
; ▒▒░.....
; ██▒░....
; .██▒░...
; ..█▒░...
; ..█▒▒░..
; .██▒░░..
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_34_WSHIELD_22__STUDDED_30_WSHIELD_22:
    .byte $e0,$60,$20,$d0,$68,$28,$24,$6c   ; byte
    .byte $00,$80,$c0,$e0,$70,$30,$38,$70   ; byte


;
; .....▒▒░
; ....███▒
; ██░▒░███
; .░▒██▒░█
; ░░██▒░█░
; ▒██▒░░██
; ▒▒▒░░██▒
; .░░░░░░░
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_31_WSHIELD_17__FULL_PLATE_30_WSHIELD_18:
    .byte $01,$0e,$ef,$5b,$f7,$6f,$1e,$7f   ; byte
    .byte $06,$0f,$d7,$3d,$3a,$f3,$e7,$00   ; byte


;
; ░░░.....
; ░░░▒░...
; ░▒░░██..
; ░▒░▒░░..
; ▒░▒▒░█▒.
; ▒░▒▒░▒█░
; ▒░▒░.▒▒░
; ░░░░█░░░
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_32_WSHIELD_18__FULL_PLATE_31_WSHIELD_19:
    .byte $e0,$e8,$bc,$ac,$4c,$4b,$51,$ff   ; byte
    .byte $00,$10,$4c,$50,$b6,$b6,$a6,$08   ; byte


;
; ....░█▒▒
; ....░░░░
; ...░█░█░
; ...▒█░█░
; ...░░░▒░
; ...██░░░
; ..██▒▒░░
; .░█▒▒░░░
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_33_WSHIELD_19__FULL_PLATE_32_WSHIELD_20:
    .byte $0c,$0f,$1f,$0f,$1d,$1f,$33,$67   ; byte
    .byte $07,$00,$0a,$1a,$02,$18,$3c,$38   ; byte


;
; ▒░░.░░░▒
; ░░░..░░.
; █░▒.....
; █░▒.....
; ▒░░.....
; ▒░▒.....
; ░░░.....
; ░░░.....
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_34_WSHIELD_20__FULL_PLATE_33_WSHIELD_21:
    .byte $6e,$e6,$c0,$c0,$60,$40,$e0,$e0   ; byte
    .byte $81,$00,$a0,$a0,$80,$a0,$00,$00   ; byte


;
; ........
; ........
; .░░░░...
; ░▒░░░░░.
; ░▒▒░░░░░
; .█▒▒░▒░░
; .░█▒░▒░░
; ███▒▒░░░
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_35_WSHIELD_23__STUDDED_35_WSHIELD_23__FULL_PLATE_36_WSHIELD_24:
    .byte $00,$00,$78,$be,$9f,$4b,$6b,$e7   ; byte
    .byte $00,$00,$00,$40,$60,$74,$34,$f8   ; byte


;
; ........
; ........
; ........
; ........
; ░.......
; ........
; ░.......
; ........
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_36_WSHIELD_24__STUDDED_36_WSHIELD_24__FULL_PLATE_37_WSHIELD_25:
    .byte $00,$00,$00,$00,$80,$00,$80,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ..█.....
; ░.█░░...
; ░█░▒█▒▒█
; .▒░░▒░▒▒
; .░..░░░░
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_37_WSHIELD_25__STUDDED_37_WSHIELD_25__FULL_PLATE_38_WSHIELD_26:
    .byte $00,$00,$00,$20,$b8,$e9,$34,$4f   ; byte
    .byte $00,$00,$00,$20,$20,$5f,$4b,$00   ; byte


;
; .▒▒▒▒░░░
; .▒▒▒░░██
; ...░░██░
; .▒█░░██░
; ▒░████▒░
; █░████▒▒
; ▒▒░███▒▒
; ░░░░▒▒▒▒
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_38_WSHIELD_26:
    .byte $07,$0f,$1f,$3f,$7d,$fc,$3c,$f0   ; byte
    .byte $78,$73,$06,$66,$be,$bf,$df,$0f   ; byte


;
; ........
; ▒▒░.....
; ██▒░░...
; ▒▒██▒░..
; ░▒▒▒▒░..
; ░░░█▒░..
; ▒░░▒▒░..
; ░░░█▒░..
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_39_WSHIELD_27:
    .byte $00,$20,$d8,$34,$84,$f4,$64,$f4   ; byte
    .byte $00,$c0,$e0,$f8,$78,$18,$98,$18   ; byte


;
; ....░░░░
; ....░██▒
; ....░░░░
; ....██▒▒
; ...░░░█▒
; ...░█▒░░
; ...██▒▒░
; ..██▒▒░░
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_40_WSHIELD_28:
    .byte $0f,$0e,$0f,$0c,$1e,$1b,$19,$33   ; byte
    .byte $00,$07,$00,$0f,$03,$0c,$1e,$3c   ; byte


;
; ░░▒█▒░..
; ▒░░▒▒...
; ░░░.....
; ░░░.....
; ▒░░.....
; ▒░░.....
; ░░░.....
; ░░░.....
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_41_WSHIELD_29:
    .byte $d4,$60,$e0,$e0,$60,$60,$e0,$e0   ; byte
    .byte $38,$98,$00,$00,$80,$80,$00,$00   ; byte


;
; ..█▒░░..
; ..██▒░..
; ...█▒▒..
; ...██▒░.
; ....█▒░.
; ....█▒░.
; ...██▒░.
; ..▒▒▒▒░.
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_42_WSHIELD_30__STUDDED_38_WSHIELD_30:
    .byte $2c,$34,$10,$1a,$0a,$0a,$1a,$02   ; byte
    .byte $30,$38,$1c,$1c,$0c,$0c,$1c,$3c   ; byte


;
; ░░░.....
; ▒▒░░....
; .█▒▒░...
; ..█▒▒...
; ..██▒░..
; ...█▒▒..
; ...█▒▒░.
; ..█▒▒▒░.
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_43_WSHIELD_31__STUDDED_39_WSHIELD_31:
    .byte $e0,$30,$48,$20,$34,$10,$12,$22   ; byte
    .byte $00,$c0,$70,$38,$38,$1c,$1c,$3c   ; byte


;
; .▒▒▒▒░░░
; .▒▒▒░░░█
; .░░░░░██
; .▒▒░░░░░
; ▒░░░░░▒█
; █▒░██░██
; ▒▒░▒█░█▒
; ░░░░░░░░
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_40_WSHIELD_26__FULL_PLATE_39_WSHIELD_27:
    .byte $07,$0f,$7f,$1f,$7d,$bf,$2e,$ff   ; byte
    .byte $78,$71,$03,$60,$83,$db,$db,$00   ; byte


;
; ░░......
; ██░.....
; █░▒▒░...
; ░▒██▒░..
; ░▒▒██░..
; ░░░█▒░..
; ░░░█▒░..
; ░░░░▒░..
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_41_WSHIELD_27__FULL_PLATE_40_WSHIELD_28:
    .byte $c0,$e0,$c8,$b4,$9c,$f4,$f4,$f4   ; byte
    .byte $00,$c0,$b0,$78,$78,$18,$18,$08   ; byte


;
; ....░██▒
; ....░░░░
; ....░░█░
; ....█░█░
; ....░░░░
; ....██▒░
; ...██▒▒░
; ..█▒▒▒░░
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_42_WSHIELD_28__FULL_PLATE_41_WSHIELD_29:
    .byte $0e,$0f,$0f,$0f,$0f,$0d,$19,$23   ; byte
    .byte $07,$00,$02,$0a,$00,$0e,$1e,$3c   ; byte


;
; ▒░░█▒░..
; ░░░░░...
; ▒░░.....
; █░░.....
; ▒░░.....
; ░░░.....
; ░░░.....
; ░░░.....
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_43_WSHIELD_29__FULL_PLATE_42_WSHIELD_30:
    .byte $74,$f8,$60,$e0,$60,$e0,$e0,$e0   ; byte
    .byte $98,$00,$80,$80,$80,$00,$00,$00   ; byte


;
; ........
; ....█.██
; ....██░█
; ....███░
; ....████
; ....░░░░
; ....░░░░
; ....████
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_26:
    .byte $00,$0b,$0f,$0f,$0f,$0f,$0f,$0f   ; byte
    .byte $00,$0b,$0d,$0e,$0f,$00,$00,$0f   ; byte


;
; ........
; █░......
; ▒▒░.....
; ░▒▒.....
; ▒░▒░....
; ░░░░....
; █▒░░....
; ▒░░.....
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_27:
    .byte $00,$c0,$20,$80,$50,$f0,$b0,$60   ; byte
    .byte $00,$80,$c0,$60,$a0,$00,$c0,$80   ; byte


;
; ...░░░░░
; ..░██▒░▒
; ..░░██▒░
; .█░█░█▒░
; █░██▒░▒░
; ▒█░▒░░░▒
; ▒▒░░░█▒▒
; ░░░.██▒▒
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_28:
    .byte $1f,$3a,$3d,$7d,$f5,$6e,$3c,$ec   ; byte
    .byte $00,$1d,$0e,$56,$ba,$d1,$c7,$0f   ; byte


;
; ░░░▒▒...
; ▒░▒░██..
; █░▒▒░░░.
; ▒░▒▒░█▒░
; ▒░▒▒░▒█░
; ▒░▒░.░░░
; ░░░░░░░░
; ░░░█░▒░▒
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_29:
    .byte $e0,$5c,$ce,$4d,$4b,$57,$ff,$fa   ; byte
    .byte $18,$ac,$b0,$b6,$b6,$a0,$00,$15   ; byte


;
; ....█░░░
; ....░██▒
; ....█░░░
; ...██░█░
; ...░░░█░
; ..██▒░░░
; .█░▒▒▒░░
; .█▒░▒░░░
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_30:
    .byte $0f,$0e,$0f,$1f,$1f,$37,$63,$57   ; byte
    .byte $08,$07,$08,$1a,$02,$38,$5c,$68   ; byte


;
; ░▒░.░░░.
; ░▒░.....
; ░░░.....
; ▒░▒.....
; █░▒.....
; ▒░░.....
; ░░░.....
; ▒░░.....
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_31:
    .byte $ae,$a0,$e0,$40,$c0,$60,$e0,$60   ; byte
    .byte $40,$40,$00,$a0,$a0,$80,$00,$80   ; byte


;
; .░▒░░..░
; .█░░....
; .█▒▒░...
; .█▒▒░...
; .█▒▒░...
; ..░░░...
; ░█▒▒░...
; ██▒▒░...
;
SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_34_WSHIELD_22__BATTLE_SUIT_32:
    .byte $59,$70,$48,$48,$48,$38,$c8,$c8   ; byte
    .byte $20,$40,$70,$70,$70,$00,$70,$f0   ; byte


;
; █░░.....
; ░░░.....
; █▒░░....
; .██░░...
; ..▒▒░...
; ..░░░░..
; .░█▒▒░..
; .██▒▒░..
;
SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_35_WSHIELD_23__BATTLE_SUIT_33:
    .byte $e0,$e0,$b0,$78,$08,$3c,$64,$64   ; byte
    .byte $80,$00,$c0,$60,$30,$00,$38,$78   ; byte


;
; ..███░░█
; ..██░░██
; ..▒░▒░█░
; ...░█░█░
; ...░█░█▒
; █░..░░▒█
; ░█░░░█░░
; ▒█░▒░███
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_34:
    .byte $3f,$3f,$17,$1f,$1e,$cd,$ff,$6f   ; byte
    .byte $39,$33,$2a,$0a,$0b,$83,$44,$d7   ; byte


;
; ........
; █.███░..
; ██░█▒▒░.
; ███░░▒▒░
; ████▒░▒░
; ░░░░░░░░
; .▒▒░██░░
; ████▒░░░
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_35:
    .byte $00,$bc,$f2,$f9,$f5,$ff,$1f,$f7   ; byte
    .byte $00,$b8,$dc,$e6,$fa,$00,$6c,$f8   ; byte


;
; ........
; ........
; ▒.......
; ░█......
; ██░██░░█
; ░█░░▒░░█
; █░░▒▒░▒░
; ....░░░░
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_36:
    .byte $00,$00,$00,$c0,$ff,$f7,$e5,$0f   ; byte
    .byte $00,$00,$80,$40,$d9,$49,$9a,$00   ; byte


;
; ███▒░░░░
; ██░░░░█░
; █░░░█▒░█
; .░█░██░░
; █░█░███▒
; █░█▒░█▒▒
; ▒▒░█░░░░
; ░░░.░█▒▒
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_37:
    .byte $ef,$ff,$fb,$7f,$fe,$ec,$3f,$ec   ; byte
    .byte $f0,$c2,$8d,$2c,$af,$b7,$d0,$07   ; byte


;
; █░▒░....
; ████....
; ▒░▒▒....
; ░▒███...
; ░███░█..
; ░░▒░█░..
; ░░░██▒..
; ░░░██▒..
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_38:
    .byte $d0,$f0,$40,$b8,$fc,$dc,$f8,$f8   ; byte
    .byte $a0,$f0,$b0,$78,$74,$28,$1c,$1c   ; byte


;
; ....░▒█▒
; .....░░░
; ....░░█░
; ....█░█░
; ....░░░░
; ....██▒▒
; ...██▒▒▒
; ..█░▒▒░░
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_39:
    .byte $0a,$07,$0f,$0f,$0f,$0c,$18,$33   ; byte
    .byte $07,$00,$02,$0a,$00,$0f,$1f,$2c   ; byte


;
; ▒░░██░..
; ░░░░░░..
; █░░██░..
; █░░█▒...
; █░░░....
; ░░░.....
; ░░░.....
; ░░░.....
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_40:
    .byte $7c,$fc,$fc,$f0,$f0,$e0,$e0,$e0   ; byte
    .byte $98,$00,$98,$98,$80,$00,$00,$00   ; byte


;
; ..██░░░░
; ..░░▒░░.
; ...██▒░.
; ...░█▒░.
; ....█▒░.
; ....░░░.
; ...██▒▒░
; ..█▒▒▒▒░
;
SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_43_WSHIELD_31__BATTLE_SUIT_41:
    .byte $3f,$36,$1a,$1a,$0a,$0e,$19,$21   ; byte
    .byte $30,$08,$1c,$0c,$0c,$00,$1e,$3e   ; byte


;
; ░░░░....
; ░░░░░...
; .█░░░...
; ..░▒░░..
; ...█▒░░.
; ....░░░.
; ...▒█▒░░
; ..▒█▒░░░
;
SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_44_WSHIELD_32__BATTLE_SUIT_42:
    .byte $f0,$f8,$78,$2c,$16,$0e,$0b,$17   ; byte
    .byte $00,$00,$40,$10,$18,$00,$1c,$38   ; byte


;
; ........
; ..▒▒░.░░
; .▒█▒░░░░
; .▒█▒░░░░
; ░█▒░.░░░
; ░█▒░.░░░
; ░█▒░.░░░
; ░▒█▒░░░░
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_44_WSHIELD_32__STUDDED_44_WSHIELD_32__FULL_PLATE_45_WSHIELD_33:
    .byte $00,$0b,$2f,$2f,$d7,$d7,$d7,$af   ; byte
    .byte $00,$30,$70,$70,$60,$60,$60,$70   ; byte


;
; ........
; ░░......
; ░░░.....
; ░░░.....
; ░░░░....
; ░░░░....
; ░░░░....
; ░░░.█░..
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_45_WSHIELD_33__STUDDED_45_WSHIELD_33__FULL_PLATE_46_WSHIELD_34:
    .byte $00,$c0,$e0,$e0,$f0,$f0,$f0,$ec   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$08   ; byte


;
; .░█▒░▒░░
; .░▒▒░█▒░
; ..░▒░██▒
; ...░▒███
; ...░░▒██
; ....░▒▒▒
; ....░░░░
; ....░▒██
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_46_WSHIELD_34__STUDDED_052:
    .byte $6b,$4d,$2e,$17,$1b,$08,$0f,$0b   ; byte
    .byte $34,$36,$17,$0f,$07,$07,$00,$07   ; byte


;
; ░░░.▒█░.
; ░░▒█░█░.
; ▒███░█▒.
; ███▒▒█▒.
; ██▒▒░▒▒.
; ▒▒▒░░░░.
; ░░░..░..
; █▒░.....
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_47_WSHIELD_35:
    .byte $e6,$de,$7c,$e4,$c8,$1e,$e4,$a0   ; byte
    .byte $0c,$34,$f6,$fe,$f6,$e0,$00,$c0   ; byte


;
; ....█░░░
; ..░█░███
; ..▒▒░▒██
; ..░▒░░▒▒
; ..░░░░░░
; ..░▒░..░
; ..░█▒░.░
; ...█▒░..
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_48_WSHIELD_36:
    .byte $0f,$3f,$0b,$2c,$3f,$29,$35,$14   ; byte
    .byte $08,$17,$37,$13,$00,$10,$18,$18   ; byte


;
; ░░█.....
; ██▒.....
; █▒░.....
; ▒░░.....
; ░░░.....
; ░▒░.....
; ▒█░.....
; ▒█░.....
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_49_WSHIELD_37:
    .byte $e0,$c0,$a0,$60,$e0,$a0,$60,$60   ; byte
    .byte $20,$e0,$c0,$80,$00,$40,$c0,$c0   ; byte


;
; ...▒█░..
; ..█░█░..
; ..░▒▒░..
; ...░░...
; ........
; ........
; ........
; ........
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_50_WSHIELD_38__STUDDED_46_WSHIELD_38:
    .byte $0c,$3c,$24,$18,$00,$00,$00,$00   ; byte
    .byte $18,$28,$18,$00,$00,$00,$00,$00   ; byte


;
; ▒▒░.....
; ▒░░.....
; ▒▒░.....
; ▒█░.....
; ▒█░░....
; ▒▒░░....
; ▒▒░.....
; ░░......
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_51_WSHIELD_39__STUDDED_47_WSHIELD_39:
    .byte $20,$60,$20,$60,$70,$30,$20,$c0   ; byte
    .byte $c0,$80,$c0,$c0,$c0,$c0,$c0,$00   ; byte


;
; .░█░█▒░░
; .░▒░██▒░
; ..░░░░░▒
; ...░▒██░
; ...░▒▒█░
; ....░▒▒▒
; ....░░░░
; ....░▒██
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_48_WSHIELD_34__FULL_PLATE_47_WSHIELD_35:
    .byte $7b,$5d,$3e,$17,$13,$08,$0f,$0b   ; byte
    .byte $2c,$2e,$01,$0e,$0e,$07,$00,$07   ; byte


;
; ░░░░░█░.
; ░░██░█░.
; ▒░░░░█▒.
; ███▒░█▒.
; ██▒▒░▒▒.
; ▒▒▒░░░░.
; ░░░..░..
; █▒░.....
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_49_WSHIELD_35__FULL_PLATE_48_WSHIELD_36:
    .byte $fe,$fe,$7c,$ec,$c8,$1e,$e4,$a0   ; byte
    .byte $04,$34,$86,$f6,$f6,$e0,$00,$c0   ; byte


;
; ....▒░░░
; ..░█▒█░█
; ..▒▒▒▒░█
; ..░▒░▒░█
; ..░░░░░░
; ..░▒░..░
; ..░█▒░.░
; ...█▒░..
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_50_WSHIELD_36__FULL_PLATE_49_WSHIELD_37:
    .byte $07,$37,$03,$2b,$3f,$29,$35,$14   ; byte
    .byte $08,$1d,$3d,$15,$00,$10,$18,$18   ; byte


;
; ░░░.....
; ░█░.....
; ░█░.....
; ░▒░.....
; ░░░.....
; ░▒░.....
; ▒█░.....
; ▒█░.....
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_51_WSHIELD_37__FULL_PLATE_50_WSHIELD_38:
    .byte $e0,$e0,$e0,$a0,$e0,$a0,$60,$60   ; byte
    .byte $00,$40,$40,$40,$00,$40,$c0,$c0   ; byte


;
; ........
; ..▒▒░.░░
; .▒█▒░░▒▒
; .█▒░░▒▒█
; ░█▒░░▒██
; ░░░░░▒▒█
; ░█▒░░▒▒▒
; ░█▒░░░█▒
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_43:
    .byte $00,$0b,$2c,$59,$db,$f9,$d8,$de   ; byte
    .byte $00,$30,$73,$67,$67,$07,$67,$63   ; byte


;
; ........
; ░░......
; ▒▒░.....
; █▒▒░....
; ██▒░....
; █▒▒░....
; ▒▒▒░....
; ▒█░.█░..
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_44:
    .byte $00,$c0,$20,$90,$d0,$90,$10,$6c   ; byte
    .byte $00,$00,$c0,$e0,$e0,$e0,$e0,$c8   ; byte


;
; ░▒░▒█▒░█
; .█░███░░
; .░█░░░░█
; ..░░▒█▒░
; ...░▒█▒▒
; ....░▒▒█
; ....░░░░
; ....░▒██
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_45:
    .byte $ab,$7f,$7f,$35,$14,$09,$0f,$0b   ; byte
    .byte $5d,$5c,$21,$0e,$0f,$07,$00,$07   ; byte


;
; █░▒▒░░░.
; ░░███░░.
; █░░░░░▒.
; ░▒█▒░█░.
; ▒▒█▒░▒▒.
; █▒▒░░▒░.
; ░░░.░░..
; ▒▒░.....
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_46:
    .byte $ce,$fe,$fc,$ae,$28,$9a,$ec,$20   ; byte
    .byte $b0,$38,$82,$74,$f6,$e4,$00,$c0   ; byte


;
; ....▒░░░
; ..░█▒█░█
; .░░░▒▒░█
; .▒█░░▒░█
; .░░░░░░░
; ..░▒░░.░
; ..░█▒░.░
; ...█▒░.░
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_47:
    .byte $07,$37,$73,$3b,$7f,$2d,$35,$15   ; byte
    .byte $08,$1d,$0d,$65,$00,$10,$18,$18   ; byte


;
; ░░░.....
; ░█░.....
; ░█░.....
; ░▒░.....
; ░░░.....
; ░▒░.....
; █▒░.....
; █▒░.....
;
SPRITE_TILES_PLAYER_ARMOR_BATTLE_SUIT_48:
    .byte $e0,$e0,$e0,$a0,$e0,$a0,$a0,$a0   ; byte
    .byte $00,$40,$40,$40,$00,$40,$c0,$c0   ; byte


;
; ...░░░.░
; ..█░█░.░
; ..▒██░.░
; ...▒▒░.░
; .......░
; .......░
; .......░
; ........
;
SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_51_WSHIELD_39__BATTLE_SUIT_49:
    .byte $1d,$3d,$1d,$05,$01,$01,$01,$00   ; byte
    .byte $00,$28,$38,$18,$00,$00,$00,$00   ; byte


;
; ░░▒.....
; █▒▒.....
; ░░░.....
; █▒░.....
; █▒░░....
; ░░░░....
; █▒░.....
; ░░......
;
SPRITE_TILES_PLAYER_ARMOR_FULL_PLATE_52_WSHIELD_40__BATTLE_SUIT_50:
    .byte $c0,$80,$e0,$a0,$b0,$f0,$a0,$c0   ; byte
    .byte $20,$e0,$00,$c0,$c0,$00,$c0,$00   ; byte


;
; ..░▒▒░░░
; ...░░░░█
; ....░▒█░
; ....░█░▒
; ....░█░█
; .....█░█
; .....░░█
; .....███
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_02:
    .byte $27,$1f,$0b,$0e,$0f,$07,$07,$07   ; byte
    .byte $18,$01,$06,$05,$05,$05,$01,$07   ; byte


;
; ░░......
; █▒░.....
; █▒░.....
; ░░░.....
; █▒░.....
; ▒▒░.....
; █▒░.....
; ▒▒░.....
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_03__STUDDED_WSHIELD_03__FULL_PLATE_WSHIELD_03:
    .byte $c0,$a0,$a0,$e0,$a0,$20,$a0,$20   ; byte
    .byte $00,$c0,$c0,$00,$c0,$c0,$c0,$c0   ; byte


;
; .....▒▒▒
; .....░░░
; ....░░░░
; ...░░██▒
; ...░░░██
; ...░░░░░
; ...▒▒░░░
; ...█▒▒░░
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_04:
    .byte $00,$07,$0f,$1e,$1f,$1f,$07,$13   ; byte
    .byte $07,$00,$00,$07,$03,$00,$18,$1c   ; byte


;
; ▒░......
; ░.......
; ░.......
; ▒.......
; ▒.......
; ........
; ........
; ........
;
SPRITE_TILES_PLAYER_ARMOR_LEATHER_WSHIELD_05__STUDDED_WSHIELD_05__FULL_PLATE_WSHIELD_05:
    .byte $40,$80,$80,$00,$00,$00,$00,$00   ; byte
    .byte $80,$00,$00,$80,$80,$00,$00,$00   ; byte


;
; ..░▒▒▒▒░
; ...░░░██
; ...░░░░█
; ...░██░░
; ....▒█░█
; .....█░█
; .....░░░
; .....███
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_WSHIELD_02__FULL_PLATE_WSHIELD_02:
    .byte $21,$1f,$1f,$1f,$07,$07,$07,$07   ; byte
    .byte $1e,$03,$01,$0c,$0d,$05,$00,$07   ; byte


;
; .....▒▒▒
; .....░░░
; ....░░▒░
; ...░░░█░
; ..░░▒░█░
; ..░░█░░░
; ..░░░░░░
; ..░░▒▒░░
;
SPRITE_TILES_PLAYER_ARMOR_STUDDED_WSHIELD_04__FULL_PLATE_WSHIELD_04:
    .byte $00,$07,$0d,$1f,$37,$3f,$3f,$33   ; byte
    .byte $07,$00,$02,$02,$0a,$08,$00,$0c   ; byte


;============================================================================
; Weapon: Dagger: Tile 2
;
; XREFS:
;     TILES_WEAPONS_START_REF [$PRG8::8006]
;============================================================================

;
; ...█....
; ...░█...
; ....█▒..
; ....░█..
; .....█░.
; .....▒░█
; ......█░
; .....█.█
;
; XREFS:
;     TILES_WEAPONS_START_REF [$PRG8::8006]
;
TILES_WEAPONS_START:
TILES_WEAPONS_START_DAGGER_02:
    .byte $10,$18,$08,$0c,$06,$03,$03,$05   ; byte
    .byte $10,$08,$0c,$04,$04,$05,$02,$05   ; byte


;============================================================================
; Weapon: Long Sword: Tile 3
;============================================================================

;
; █.......
; █▒......
; ██......
; ░█▒.....
; .██.....
; .░█▒....
; ..██....
; ..░█░...
;
TILE_LONG_SWORD_03:
    .byte $80,$80,$c0,$c0,$60,$60,$30,$38   ; byte
    .byte $80,$c0,$c0,$60,$60,$30,$30,$10   ; byte


;============================================================================
; Weapon: Long Sword: Tile 4
;============================================================================

;
; ...██...
; ...░█...
; ....█▒..
; ....░█..
; .....█░.
; .....▒░█
; ......█░
; .....█.█
;
TILE_LONG_SWORD_04:
    .byte $18,$18,$08,$0c,$06,$03,$03,$05   ; byte
    .byte $18,$08,$0c,$04,$04,$05,$02,$05   ; byte


;============================================================================
; Weapon: Giant Blade: Tile 3
;============================================================================

;
; ........
; ........
; ........
; ........
; .......░
; .......█
; ........
; ........
;
TILE_GIANT_BLADE_03:
    .byte $00,$00,$00,$00,$01,$01,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$01,$00,$00   ; byte


;============================================================================
; Weapon: Giant Blade: Tile 4
;============================================================================

;
; ▒.......
; █.......
; ▒█..█...
; ░█░.█...
; .█▒.░▒..
; .░█░.█..
; █.█▒██..
; ▒████...
;
TILE_GIANT_BLADE_04:
    .byte $00,$80,$48,$e8,$48,$74,$ac,$78   ; byte
    .byte $80,$80,$c8,$48,$64,$24,$bc,$f8   ; byte


;============================================================================
; Weapon: Giant Blade: Tile 5
;============================================================================

;
; .▒███...
; ...░█...
; ....█▒..
; ....░█..
; .....█░.
; .....░▒█
; ......█░
; .....█░▒
;
TILE_GIANT_BLADE_05:
    .byte $38,$18,$08,$0c,$06,$05,$03,$06   ; byte
    .byte $78,$08,$0c,$04,$04,$03,$02,$05   ; byte


;============================================================================
; Weapon: Dragon Slayer: Tile 6
;============================================================================

;
; ........
; ...██...
; ...▒██..
; ....▒██.
; .....▒██
; ......▒█
; .......▒
; ........
;
TILE_DRAGON_SLAYER_06:
    .byte $00,$18,$0c,$06,$03,$01,$00,$00   ; byte
    .byte $00,$18,$1c,$0e,$07,$03,$01,$00   ; byte


;============================================================================
; Weapon: Dragon Slayer: Tile 7
;============================================================================

;
; ........
; ........
; ........
; ........
; ........
; █.......
; ██......
; ▒██.....
;
TILE_DRAGON_SLAYER_07:
    .byte $00,$00,$00,$00,$00,$80,$c0,$60   ; byte
    .byte $00,$00,$00,$00,$00,$80,$c0,$e0   ; byte


;============================================================================
; Weapon: Dragon Slayer: Tile 8
;============================================================================

;
; .▒██....
; ..▒█▒...
; ...░█▒..
; ....░█▒.
; .....░█▒
; ......░█
; .....█░░
; ......██
;
TILE_DRAGON_SLAYER_08:
    .byte $30,$10,$18,$0c,$06,$03,$07,$03   ; byte
    .byte $70,$38,$0c,$06,$03,$01,$04,$03   ; byte


;============================================================================
; Weapons:
;
; * Dagger: Tile 3
; * Long Sword: Tile 6
; * Giant Blade: Tile 7
;============================================================================

;
; ........
; ........
; ........
; ........
; ........
; ........
; .....█░.
; ......██
;
TILE_DAGGER_03_LONG_SWORD_06_GIANT_BLADE_7:
    .byte $00,$00,$00,$00,$00,$00,$06,$03   ; byte
    .byte $00,$00,$00,$00,$00,$00,$04,$03   ; byte


;============================================================================
; Weapon: Long Sword: Tile 5
;============================================================================

;
; .█......
; .░█.....
; ..██....
; ..░█▒...
; ...▒█...
; ....▒█..
; .....██.
; ......░█
;
TILE_LONG_SWORD_05:
    .byte $40,$60,$30,$30,$08,$04,$06,$03   ; byte
    .byte $40,$20,$30,$18,$18,$0c,$06,$01   ; byte


;============================================================================
; Weapon: Giant Blade: Tile 6
;============================================================================

;
; .█......
; .░█..█..
; ..██.░█.
; ..░█▒.░█
; ...▒█.░█
; .█░.▒█░█
; ..█░░██░
; ...██░░█
;
TILE_GIANT_BLADE_06:
    .byte $40,$64,$36,$33,$0b,$67,$3f,$1f   ; byte
    .byte $40,$24,$32,$19,$19,$4d,$26,$19   ; byte


;============================================================================
; Weapon: Dragon Slayer: Tile 9
;============================================================================

;
; ........
; ........
; ▒██▒....
; .▒███...
; ...▒███.
; .....▒▒█
; .......▒
; ........
;
TILE_DRAGON_SLAYER_09:
    .byte $00,$00,$60,$38,$0e,$01,$00,$00   ; byte
    .byte $00,$00,$f0,$78,$1e,$07,$01,$00   ; byte


;============================================================================
; Weapon: Dragon Slayer: Tile 1
;
; XREFS:
;     TILES_DRAGON_SLAYER_TILE_IDS [$PRG8::8183]
;============================================================================

;
; ........
; ........
; ........
; ........
; ........
; ........
; .█████░░
; ...░░▒▒▒
;
; XREFS:
;     TILES_DRAGON_SLAYER_TILE_IDS [$PRG8::8183]
;
TILE_DRAGON_SLAYER_01:
    .byte $00,$00,$00,$00,$00,$00,$7f,$18   ; byte
    .byte $00,$00,$00,$00,$00,$00,$7c,$07   ; byte


;============================================================================
; Weapon: Long Sword: Tile 1
;
; XREFS:
;     TILES_LONG_SWORD_TILE_IDS [$PRG8::8176]
;============================================================================

;
; ........
; ........
; ........
; ..███▒..
; ...█████
; .....░▒▒
; ........
; ........
;
; XREFS:
;     TILES_LONG_SWORD_TILE_IDS [$PRG8::8176]
;
TILE_LONG_SWORD_01:
    .byte $00,$00,$00,$38,$1f,$04,$00,$00   ; byte
    .byte $00,$00,$00,$3c,$1f,$03,$00,$00   ; byte


;============================================================================
; Weapon: Long Sword: Tile 2
;============================================================================

;
; ........
; ........
; ........
; ........
; ........
; ██▒.....
; .░▒██▒..
; ....░▒██
;
TILE_LONG_SWORD_02:
    .byte $00,$00,$00,$00,$00,$c0,$58,$0b   ; byte
    .byte $00,$00,$00,$00,$00,$e0,$3c,$07   ; byte


;============================================================================
; Weapon: Giant Blade: Tile 1
;
; XREFS:
;     TILES_GIANT_BLADE_TILE_IDS [$PRG8::817c]
;============================================================================

;
; .....██▒
; ......░█
; .░███░.░
; ...░▒███
; ......░▒
; .......░
; ...▒█▒░█
; .....▒█▒
;
; XREFS:
;     TILES_GIANT_BLADE_TILE_IDS [$PRG8::817c]
;
TILE_GIANT_BLADE_01:
    .byte $06,$03,$7d,$17,$02,$01,$0b,$02   ; byte
    .byte $07,$01,$38,$0f,$01,$00,$1d,$07   ; byte


;============================================================================
; Weapon: Giant Blade: Tile 2
;============================================================================

;
; ........
; █.......
; █.......
; █▒......
; ███░....
; █░▒██░..
; ▒..░░███
; ......░▒
;
TILE_GIANT_BLADE_02:
    .byte $00,$80,$80,$80,$f0,$dc,$1f,$02   ; byte
    .byte $00,$80,$80,$c0,$e0,$b8,$87,$01   ; byte


;============================================================================
; Weapon: Dagger: Tile 1
;
; XREFS:
;     TILES_DAGGER_TILE_IDS [$PRG8::8173]
;============================================================================

;
; ........
; ........
; ........
; ........
; .██░....
; ..▒██▒░█
; ....░███
; ......░░
;
; XREFS:
;     TILES_DAGGER_TILE_IDS [$PRG8::8173]
;
TILE_DAGGER_01:
    .byte $00,$00,$00,$00,$70,$1b,$0f,$03   ; byte
    .byte $00,$00,$00,$00,$60,$3d,$07,$00   ; byte


;============================================================================
; Weapon: Dragon Slayer: Tile 2
;============================================================================

;
; ........
; ........
; ........
; ..██▒...
; ...░████
; ......░░
; ........
; ........
;
TILE_DRAGON_SLAYER_02:
    .byte $00,$00,$00,$30,$1f,$03,$00,$00   ; byte
    .byte $00,$00,$00,$38,$0f,$00,$00,$00   ; byte


;============================================================================
; Weapon: Dragon Slayer: Tile 3
;============================================================================

;
; ........
; ........
; ........
; ........
; ▒.......
; ████▒...
; .░░░███░
; ....░░▒█
;
TILE_DRAGON_SLAYER_03:
    .byte $00,$00,$00,$00,$00,$f0,$7f,$0d   ; byte
    .byte $00,$00,$00,$00,$80,$f8,$0e,$03   ; byte


;============================================================================
; Weapon: Dragon Slayer: Tile 4
;============================================================================

;
; ████▒...
; .░▒█████
; ...░░░▒▒
; ........
; ........
; ........
; ........
; ........
;
TILE_DRAGON_SLAYER_04:
    .byte $f0,$5f,$1c,$00,$00,$00,$00,$00   ; byte
    .byte $f8,$3f,$03,$00,$00,$00,$00,$00   ; byte


;============================================================================
; Weapon: Dragon Slayer: Tile 5
;============================================================================

;
; ........
; ▒.......
; ███▒...█
; ░░░███▒░
; ...░░░██
; ......░░
; .......█
; ........
;
TILE_DRAGON_SLAYER_05:
    .byte $00,$00,$e1,$fd,$1f,$03,$01,$00   ; byte
    .byte $00,$80,$f1,$1e,$03,$00,$01,$00   ; byte


;
; ..████..
; .█▒▒▒▒░.
; ▒▒▒██▒▒░
; █▒█▒▒█▒░
; █▒█▒▒█▒░
; ▒▒▒██▒▒░
; .█▒▒▒▒░.
; ..░░░░..
;
; XREFS:
;     TILES_COMMON_START_REF [$PRG8::8008]
;
TILES_COMMON_START:
    .byte $3c,$42,$19,$a5,$a5,$19,$42,$3c   ; byte
    .byte $3c,$7c,$fe,$fe,$fe,$fe,$7c,$00   ; byte


;
; ...█░...
; ..░█▒...
; ..░█▒...
; ..░█▒...
; ..░█▒...
; ..░█▒...
; ..░█▒...
; ...▒░...
;
    .byte $18,$30,$30,$30,$30,$30,$30,$08   ; byte
    .byte $10,$18,$18,$18,$18,$18,$18,$10   ; byte


;
; ▒░....░█
; ░█▒░░▒█░
; .▒▒▒▒▒▒.
; .░▒█▒▒░.
; .░▒▒▒▒░.
; .▒▒▒▒▒▒.
; ░█▒░░▒█░
; █░....░█
;
    .byte $43,$db,$00,$52,$42,$00,$db,$c3   ; byte
    .byte $81,$66,$7e,$3c,$3c,$7e,$66,$81   ; byte


;
; ........
; .▒░..░▒.
; .░░░░░░.
; ..░█░░..
; ..░░░░..
; .░░░░░░.
; .▒░..░▒.
; ........
;
    .byte $00,$24,$7e,$3c,$3c,$7e,$24,$00   ; byte
    .byte $00,$42,$00,$10,$00,$00,$42,$00   ; byte


;
; ......█.
; .....██.
; .....█▒.
; ....██..
; ....██..
; ...▒██..
; ...██▒..
; ...██▒..
;
    .byte $02,$06,$04,$0c,$0c,$0c,$18,$18   ; byte
    .byte $02,$06,$06,$0c,$0c,$1c,$1c,$1c   ; byte


;
; ..▒▒▒▒░█
; .▒█▒██▒█
; ░█▒▒█▒▒█
; ░▒▒▒█▒▒▒
; ░█▒▒▒▒▒█
; ░▒▒▒█▒▒▒
; ░░▒▒▒▒░▒
; .░░░░░░░
;
    .byte $03,$2d,$c9,$88,$c1,$88,$c2,$7f   ; byte
    .byte $3d,$7f,$7f,$7f,$7f,$7f,$3d,$00   ; byte


;
; ........
; ........
; .......▒
; ....▒██▒
; ..▒█▒▒░.
; .█▒▒...░
; .█▒...░▒
; █▒....▒█
;
    .byte $00,$00,$00,$06,$12,$41,$42,$81   ; byte
    .byte $00,$00,$01,$0f,$3c,$70,$61,$c3   ; byte


;
; .....░░░
; ..▒██▒░.
; ██▒▒░..░
; ▒░..░...
; ........
; ░░░...░.
; ▒▒░░....
; █▒▒░░░..
;
    .byte $07,$1a,$c9,$48,$00,$e2,$30,$9c   ; byte
    .byte $00,$3c,$f0,$80,$00,$00,$c0,$e0   ; byte


;
; ........
; ........
; .......▒
; ......██
; .....█▒.
; ....█▒..
; ...█▒...
; ..█▒...▒
;
    .byte $00,$00,$00,$03,$04,$08,$10,$20   ; byte
    .byte $00,$00,$01,$03,$06,$0c,$18,$31   ; byte


;
; ....░▒░.
; .░▒░░...
; ▒▒░.....
; ........
; ........
; ...▒▒░▒░
; ░▒▒░....
; ▒░......
;
    .byte $0a,$58,$20,$00,$00,$05,$90,$40   ; byte
    .byte $04,$20,$c0,$00,$00,$1a,$60,$80   ; byte


;
; ...░....
; ..░░░...
; .░▒▒▒░..
; .░▒█▒░..
; ░▒███▒░.
; ░▒███▒░.
; ░░▒▒▒░░.
; .░░░░░..
;
    .byte $10,$38,$44,$54,$ba,$ba,$c6,$7c   ; byte
    .byte $00,$00,$38,$38,$7c,$7c,$38,$00   ; byte


;
; ......██
; .....███
; ....████
; ....███▒
; ...████.
; ...███..
; ..███▒.█
; ..███.██
;
    .byte $03,$07,$0f,$0e,$1e,$1c,$39,$3b   ; byte
    .byte $03,$07,$0f,$0f,$1e,$1c,$3d,$3b   ; byte


;
; ........
; .▒▒▒████
; █████...
; ██▒.....
; ▒.......
; .▒████▒.
; ████▒...
; ███.....
;
    .byte $00,$0f,$f8,$c0,$00,$3c,$f0,$e0   ; byte
    .byte $00,$7f,$f8,$e0,$80,$7e,$f8,$e0   ; byte


;
; .█....█.
; .░█...▒▒
; ..██..░░
; ...██░▒█
; ...▒░███
; ...░▒███
; ███░██░░
; .▒▒░██░█
;
    .byte $42,$60,$33,$1d,$0f,$17,$ff,$1f   ; byte
    .byte $42,$23,$30,$1b,$17,$0f,$ec,$6d   ; byte


;
; ...█....
; ..█▒....
; ░░▒░....
; ▒░░.....
; █▒░░....
; ██▒░░▒█▒
; ██▒░██▒.
; ░█▒░▒░..
;
    .byte $10,$20,$d0,$60,$b0,$da,$dc,$d4   ; byte
    .byte $10,$30,$20,$80,$c0,$e7,$ee,$68   ; byte


;
; ▒░█▒░▒..
; █▒█▒▒▒▒.
; ▒▒█▒█▒▒░
; ▒▒█▒█▒▒░
; ▒▒▒▒▒▒▒░
; ▒▒█▒▒▒▒░
; ▒░▒▒▒▒░░
; ░░░░░░░.
;
    .byte $68,$a0,$29,$29,$01,$21,$43,$fe   ; byte
    .byte $b4,$fe,$fe,$fe,$fe,$fe,$bc,$00   ; byte


;
; ...▒▒...
; ...█.▒..
; ...█.▒..
; ...█.▒..
; ..░█.▒░.
; .░▒█.▒░░
; ░▒▒█.▒░░
; ░▒██.▒░░
;
    .byte $00,$10,$10,$10,$32,$53,$93,$b3   ; byte
    .byte $18,$14,$14,$14,$14,$34,$74,$74   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ░.......
; ░░░.....
; ▒▒░░░.░.
;
    .byte $00,$00,$00,$00,$00,$80,$e0,$3a   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$c0   ; byte


;
; ......░.
; ....░░.░
; ..░░░░░░
; .░░▒▒▒▒░
; .░▒▒██▒▒
; ░▒█████▒
; ▒▒██████
; ▒███████
;
    .byte $02,$0d,$3f,$61,$4c,$be,$3f,$7f   ; byte
    .byte $00,$00,$00,$1e,$3f,$7f,$ff,$ff   ; byte


;
; ........
; ▒▒......
; ▒.▒░....
; ▒.▒░░░..
; ▒.▒░....
; ▒.▒░░...
; ▒.▒░....
; ▒.▒░░░.░
;
    .byte $00,$00,$10,$1c,$10,$18,$10,$1d   ; byte
    .byte $00,$c0,$a0,$a0,$a0,$a0,$a0,$a0   ; byte


;
; ........
; ........
; ........
; ........
; ..░░░░..
; .░▒▒▒░░░
; ░▒▒██▒▒░
; ░▒████▒▒
;
    .byte $00,$00,$00,$00,$3c,$47,$99,$bc   ; byte
    .byte $00,$00,$00,$00,$00,$38,$7e,$7f   ; byte


;
; ........
; ........
; ........
; ........
; .....░░.
; ░....▒.░
; ░░░..▒.░
; ▒▒░░░▒░░
;
    .byte $00,$00,$00,$00,$06,$81,$e1,$3b   ; byte
    .byte $00,$00,$00,$00,$00,$04,$04,$c4   ; byte


;
; ........
; ........
; ....░░░.
; ..░░░░░░
; .░░░░░░░
; .░░▒▒▒░░
; ░░▒███▒▒
; ░▒██████
;
    .byte $00,$00,$0e,$3f,$7f,$63,$dc,$bf   ; byte
    .byte $00,$00,$00,$00,$00,$1c,$3f,$7f   ; byte


;
; ........
; ........
; ........
; ░..░....
; ........
; ░░░....░
; ░░░░░░..
; ▒▒░░░.░.
;
    .byte $00,$00,$00,$90,$00,$e1,$fc,$3a   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$c0   ; byte


;
; ..▒...█▒
; .█▒..█▒.
; .▒..░░░░
; ▒▒.░▒▒▒▒
; █▒░▒▒███
; ▒.░▒████
; ▒░▒█████
; ▒░▒█████
;
    .byte $02,$44,$0f,$10,$a7,$2f,$5f,$5f   ; byte
    .byte $23,$66,$40,$cf,$df,$9f,$bf,$bf   ; byte


;
; ........
; ........
; ...░▒░░.
; ░░▒▒░...
; ▒▒░.....
; ██▒░....
; ██▒▒░░..
; ███▒▒▒░░
;
    .byte $00,$00,$16,$c8,$20,$d0,$cc,$e3   ; byte
    .byte $00,$00,$08,$30,$c0,$e0,$f0,$fc   ; byte


;
; ...░....
; ...░....
; ..░░░...
; ..░▒░...
; .░▒▒▒░..
; .░▒█▒░..
; .░▒▒▒░..
; ..░░░...
;
    .byte $10,$10,$38,$28,$44,$54,$44,$38   ; byte
    .byte $00,$00,$00,$10,$38,$38,$38,$00   ; byte


;
; ..██▒.██
; .▒██.▒██
; .▒█▒.███
; .▒█..██.
; .██..█▒.
; .█...█..
; .█...▒..
; .█......
;
    .byte $33,$33,$27,$26,$64,$44,$40,$40   ; byte
    .byte $3b,$77,$77,$66,$66,$44,$44,$40   ; byte


;
; ........
; ........
; ......██
; ....████
; ..██████
; .█████▒.
; █████..█
; ███▒..██
;
    .byte $00,$00,$03,$0f,$3f,$7c,$f9,$e3   ; byte
    .byte $00,$00,$03,$0f,$3f,$7e,$f9,$f3   ; byte


;
; ...░███░
; ...░▒███
; ....░▒▒▒
; ...▒█░▒▒
; ..░█▒░░░
; ..█▒...░
; .▒░.....
; ........
;
    .byte $1f,$17,$08,$0c,$37,$21,$20,$00   ; byte
    .byte $0e,$0f,$07,$1b,$18,$30,$40,$00   ; byte


;
; ░█▒░░...
; █▒▒░░...
; ▒▒░░....
; ░░░▒....
; ▒░▒██...
; █░.░█▒..
; █....█..
; ▒.......
;
    .byte $d8,$98,$30,$e0,$58,$d8,$84,$00   ; byte
    .byte $60,$e0,$c0,$10,$b8,$8c,$84,$80   ; byte


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
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; .███▒...
; ███████▒
; ████████
; ████▒▒▒▒
; ▒██▒░░░▒
; .██▒░░▒█
; .██▒░▒█░
; .▒█▒▒█░▒
;
    .byte $70,$fe,$ff,$f0,$6e,$6d,$6b,$26   ; byte
    .byte $78,$ff,$ff,$ff,$f1,$73,$76,$7d   ; byte


;
; ........
; ........
; █▒......
; ███.....
; ▒▒██▒...
; ░▒▒▒██..
; ▒█░░▒██.
; █░░▒...▒
;
    .byte $00,$00,$80,$e0,$30,$8c,$76,$e0   ; byte
    .byte $00,$00,$c0,$e0,$f8,$7c,$ce,$91   ; byte


;
; ........
; ..░░░░..
; .░░░░░░░
; .░░░░░░░
; .░░░░▒▒▒
; .░░░▒███
; ..░░▒██▒
; ..░░▒█▒░
;
    .byte $00,$3c,$7f,$7f,$78,$77,$36,$35   ; byte
    .byte $00,$00,$00,$00,$07,$0f,$0f,$0e   ; byte


;
; ...█....
; ...░█...
; ....█░░░
; ....░█░▒
; ....▒▒▒█
; ...░▒███
; ..░░▒███
; ▒▒██▒██░
;
    .byte $10,$18,$0f,$0e,$01,$17,$37,$37   ; byte
    .byte $10,$08,$08,$05,$0f,$0f,$0f,$fe   ; byte


;
; .█......
; ▒▒......
; ░░...░▒.
; ▒▒░░▒█..
; ██▒▒█...
; ██▒░....
; ░░█░░▒▒.
; █░█▒░░..
;
    .byte $40,$00,$c4,$34,$c8,$d0,$f8,$ec   ; byte
    .byte $40,$c0,$02,$cc,$f8,$e0,$26,$b0   ; byte


;
; ........
; ........
; ........
; ........
; ........
; .......░
; .....▒██
; ...░▒██▒
;
    .byte $00,$00,$00,$00,$00,$01,$03,$16   ; byte
    .byte $00,$00,$00,$00,$00,$00,$07,$0f   ; byte


;
; ........
; ........
; ........
; ........
; ...░████
; ████▒░..
; █▒░.....
; ........
;
    .byte $00,$00,$00,$00,$1f,$f4,$a0,$00   ; byte
    .byte $00,$00,$00,$00,$0f,$f8,$c0,$00   ; byte


;
; ..██▒░▒█
; ..▒█▒▒█░
; ...██▒░░
; ....█▒░▒
; ....▒█▒.
; .....██.
; ......█.
; .......▒
;
    .byte $35,$13,$1b,$0a,$04,$06,$02,$00   ; byte
    .byte $3b,$3e,$1c,$0d,$0e,$06,$02,$01   ; byte


;
; ░░▒.....
; ░▒......
; ▒.......
; ........
; ........
; ........
; ........
; ........
;
    .byte $c0,$80,$00,$00,$00,$00,$00,$00   ; byte
    .byte $20,$40,$80,$00,$00,$00,$00,$00   ; byte


;
; ..░░▒▒░█
; ...░░▒█▒
; ...░░▒▒▒
; ....░░▒█
; .....░▒█
; .....░░▒
; ......░░
; .......░
;
    .byte $33,$1a,$18,$0d,$05,$06,$03,$01   ; byte
    .byte $0d,$07,$07,$03,$03,$01,$00,$00   ; byte


;
; ..░░▒██░
; ....░▒██
; ....▒▒▒▒
; ...█▒░▒▒
; ..██░.░░
; .█▒.....
; ........
; ........
;
    .byte $37,$0b,$00,$14,$3b,$40,$00,$00   ; byte
    .byte $0e,$07,$0f,$1b,$30,$60,$00,$00   ; byte


;
; ░█▒▒░...
; █▒▒░░...
; ▒▒░██░..
; ░░░░▒█░.
; ▒▒░..░█.
; ░█░.....
; .██.....
; ..█.....
;
    .byte $c8,$98,$3c,$f6,$26,$e0,$60,$20   ; byte
    .byte $70,$e0,$d8,$0c,$c2,$40,$60,$20   ; byte


;
; ........
; ........
; ░.......
; ░░░.....
; ▒░░░....
; ▒▒▒░░░..
; ░█▒▒▒░░.
; █▒▒██▒░░
;
    .byte $00,$00,$80,$e0,$70,$1c,$c6,$9b   ; byte
    .byte $00,$00,$00,$00,$80,$e0,$78,$fc   ; byte


;
; ▒▒█░....
; ▒█░.....
; █░......
; ░.......
; ........
; ........
; ........
; ........
;
    .byte $30,$60,$c0,$80,$00,$00,$00,$00   ; byte
    .byte $e0,$c0,$80,$00,$00,$00,$00,$00   ; byte


;
; .███▒...
; ███████▒
; ████████
; ████████
; ▒████...
; .███....
; .███..██
; .▒██..██
;
    .byte $70,$fe,$ff,$ff,$78,$70,$73,$33   ; byte
    .byte $78,$ff,$ff,$ff,$f8,$70,$73,$73   ; byte


;
; ........
; ........
; █▒......
; ███.....
; ████▒...
; ..████..
; █...███.
; ███....█
;
    .byte $00,$00,$80,$e0,$f0,$3c,$8e,$e1   ; byte
    .byte $00,$00,$c0,$e0,$f8,$3c,$8e,$e1   ; byte


;
; ..███.██
; ..▒██..█
; ...███.█
; ....██..
; ....▒██.
; .....██.
; ......█.
; .......█
;
    .byte $3b,$19,$1d,$0c,$06,$06,$02,$01   ; byte
    .byte $3b,$39,$1d,$0c,$0e,$06,$02,$01   ; byte


;
; █████...
; █..███..
; █....██.
; ██......
; ██......
; .██.....
; ..█.....
; ........
;
    .byte $f8,$9c,$86,$c0,$c0,$60,$20,$00   ; byte
    .byte $f8,$9c,$86,$c0,$c0,$60,$20,$00   ; byte


;
; ........
; ...█....
; ...██...
; ██████..
; ███████.
; ██████..
; ...██...
; ...█....
;
    .byte $00,$10,$18,$fc,$fe,$fc,$18,$10   ; byte
    .byte $00,$10,$18,$fc,$fe,$fc,$18,$10   ; byte


;
; ........
; ........
; ████████
; .██████.
; ..████..
; ...██...
; ........
; ........
;
    .byte $00,$00,$ff,$7e,$3c,$18,$00,$00   ; byte
    .byte $00,$00,$ff,$7e,$3c,$18,$00,$00   ; byte


;
; ........
; ........
; ...██...
; ..████..
; .██████.
; ████████
; ........
; ........
;
    .byte $00,$00,$18,$3c,$7e,$ff,$00,$00   ; byte
    .byte $00,$00,$18,$3c,$7e,$ff,$00,$00   ; byte


;
; ..████..
; .██..██.
; .██..██.
; ....██..
; ...██...
; ...██...
; ........
; ...██...
;
    .byte $3c,$66,$66,$0c,$18,$18,$00,$18   ; byte
    .byte $3c,$66,$66,$0c,$18,$18,$00,$18   ; byte


;
; ....░...
; ...░▒░..
; ...░▒░..
; ...░▒░..
; ...░▒░░.
; ..░░▒░▒░
; .░▒░▒░▒░
; .░▒░▒░▒░
;
    .byte $08,$14,$14,$14,$16,$35,$55,$55   ; byte
    .byte $00,$08,$08,$08,$08,$0a,$2a,$2a   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ░.......
; ▒░░.....
; ▒░▒░....
;
    .byte $00,$00,$00,$00,$00,$80,$60,$50   ; byte
    .byte $00,$00,$00,$00,$00,$00,$80,$a0   ; byte


;
; .░▒░▒░▒▒
; .░▒░▒▒▒▒
; .░▒░▒▒▒▒
; .░▒▒▒▒▒▒
; ..░▒▒▒▒▒
; ..░▒▒▒▒▒
; ...░▒▒▒▒
; ...░▒▒▒▒
;
    .byte $54,$50,$50,$40,$20,$20,$10,$10   ; byte
    .byte $2b,$2f,$2f,$3f,$1f,$1f,$0f,$0f   ; byte


;
; ▒░▒░....
; ▒▒▒░....
; ▒▒▒░....
; ▒▒▒░....
; ▒▒▒░....
; ▒▒▒░....
; ▒▒░.....
; ▒▒░.....
;
    .byte $50,$10,$10,$10,$10,$10,$20,$20   ; byte
    .byte $a0,$e0,$e0,$e0,$e0,$e0,$c0,$c0   ; byte


;
; ..▒███..
; .▒███...
; .▒███...
; ..▒███░░
; ...░░░██
; ..░▒███░
; .░███░░.
; ░███████
;
    .byte $1c,$38,$38,$1f,$1f,$2f,$7e,$ff   ; byte
    .byte $3c,$78,$78,$3c,$03,$1e,$38,$7f   ; byte


;
; ........
; ........
; ..░▒███.
; ████░...
; █░░.....
; ░.......
; ........
; ▒▒░░....
;
    .byte $00,$00,$2e,$f8,$e0,$80,$00,$30   ; byte
    .byte $00,$00,$1e,$f0,$80,$00,$00,$c0   ; byte


;
; .....░▒█
; ....░█▒░
; ...░█▒░.
; ...░▒▒░.
; ....░▒▒░
; .....░▒▒
; ...░░▒█░
; ..░▒██▒▒
;
    .byte $05,$0d,$1a,$12,$09,$04,$1b,$2c   ; byte
    .byte $03,$06,$0c,$0c,$06,$03,$06,$1f   ; byte


;
; ▒▒░░....
; ░.......
; ........
; ........
; ░.......
; ▒▒▒▒▒▒..
; ░.......
; ▒░░.░.░.
;
    .byte $30,$80,$00,$00,$80,$00,$80,$6a   ; byte
    .byte $c0,$00,$00,$00,$00,$fc,$00,$80   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ........
; ........
; ░░░░░░░░
;
    .byte $00,$00,$00,$00,$00,$00,$00,$ff   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


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
    .byte $fc,$c6,$e6,$e6,$dc,$c0,$c0,$00   ; byte
    .byte $fc,$c6,$e6,$e6,$dc,$c0,$c0,$00   ; byte


;
; ........
; ........
; ...░░░░.
; ..▒▒▒▒░░
; .▒▒▒█▒▒░
; ░▒█████▒
; ▒██████▒
; ▒███████
;
    .byte $00,$00,$1e,$03,$09,$be,$7e,$7f   ; byte
    .byte $00,$00,$00,$3c,$7e,$7f,$ff,$ff   ; byte


;
; ........
; ........
; ........
; ░░░.....
; ░..░░.░.
; ░░░.....
; ▒▒░░░...
; ▒█▒░░░░░
;
    .byte $00,$00,$00,$e0,$9a,$e0,$38,$5f   ; byte
    .byte $00,$00,$00,$00,$00,$00,$c0,$e0   ; byte


;
; ▒██████▒
; ▒███████
; ░▒████▒▒
; .▒▒█▒█▒░
; ..▒▒▒▒░░
; ...░░░░.
; ........
; ........
;
    .byte $7e,$7f,$bc,$15,$03,$1e,$00,$00   ; byte
    .byte $ff,$ff,$7f,$7e,$3c,$00,$00,$00   ; byte


;
; █▒█▒░░..
; ▒█░░░░░.
; ░░░░....
; .░..░░..
; ░░░.....
; ........
; ........
; ........
;
    .byte $ac,$7e,$f0,$4c,$e0,$00,$00,$00   ; byte
    .byte $f0,$c0,$00,$00,$00,$00,$00,$00   ; byte


;
; ........
; ........
; ........
; ........
; ..░░░░░░
; .░▒▒▒▒░░
; ░▒▒███▒▒
; ░▒█████▒
;
    .byte $00,$00,$00,$00,$3f,$43,$9c,$be   ; byte
    .byte $00,$00,$00,$00,$00,$3c,$7f,$7f   ; byte


;
; ........
; ........
; ........
; ........
; ........
; ░.......
; ░░░.....
; ▒▒░░░░..
;
    .byte $00,$00,$00,$00,$00,$80,$e0,$3c   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$c0   ; byte


;
; ........
; ...░.░.░
; ..░.░░░░
; ..░░░░▒░
; .░.░░▒▒▒
; ..░░▒▒▒█
; .░░▒▒███
; ..░░▒▒██
;
    .byte $00,$15,$2f,$3d,$58,$31,$67,$33   ; byte
    .byte $00,$00,$00,$02,$07,$0f,$1f,$0f   ; byte


;
; .....░.░
; .░...░░░
; ...░░░▒░
; ░.░░▒▒█▒
; .░░░▒▒▒█
; .░▒▒▒███
; ░░░▒████
; .▒▒▒████
;
    .byte $05,$47,$1d,$b2,$71,$47,$ef,$0f   ; byte
    .byte $00,$00,$02,$0f,$0f,$3f,$1f,$7f   ; byte


;
; ...▒.█▒░
; .▒.▒░▒█▒
; ..▒▒██▒█
; ░▒░▒█▒█▒
; .▒▒█████
; .▒█▒█▒██
; ▒▒▒█████
; .░▒▒████
;
    .byte $05,$0a,$0d,$aa,$1f,$2b,$1f,$4f   ; byte
    .byte $16,$57,$3f,$5f,$7f,$7f,$ff,$3f   ; byte


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
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;============================================================================
; Beginning of shield tiles.
;
; XREFS:
;     TILES_SHIELDS_SMALL [$PRG8::8192]
;     TILES_SHIELDS_START_REF [$PRG8::800a]
;============================================================================

;
; ........
; ░█░.....
; ░█▒░....
; ░██░░...
; ░█▒▒░...
; ░██▒░...
; ░█▒▒░...
; ░██▒░...
;
; XREFS:
;     TILES_SHIELDS_SMALL [$PRG8::8192]
;     TILES_SHIELDS_START_REF [$PRG8::800a]
;
TILES_SHIELDS_START:
TILES_SHIELDS_START_SMALL_SHIELD_01:
TILES_SMALL_SHIELD_01:
    .byte $00,$e0,$d0,$f8,$c8,$e8,$c8,$e8   ; byte
    .byte $00,$40,$60,$60,$70,$70,$70,$70   ; byte


;
; ░█▒▒░...
; ░██▒░...
; ░█▒░....
; ░█░.....
; .░......
; ........
; ........
; ........
;
TILE_SMALL_SHIELD_02:
    .byte $c8,$e8,$d0,$e0,$40,$00,$00,$00   ; byte
    .byte $70,$70,$60,$40,$00,$00,$00,$00   ; byte


;
; ........
; .░......
; ░█░.....
; ░██░....
; ░█▒░░...
; ░██▒░...
; ░█▒▒░...
; ░██▒░...
;
; XREFS:
;     TILES_SHIELDS_LARGE [$PRG8::8198]
;
TILE_LARGE_SHIELD_01:
    .byte $00,$40,$e0,$f0,$d8,$e8,$c8,$e8   ; byte
    .byte $00,$00,$40,$60,$60,$70,$70,$70   ; byte


;
; ░█▒▒░...
; ░██▒░...
; ░█▒▒░...
; ░██░....
; ░█░.....
; .░......
; ........
; ........
;
TILE_LARGE_SHIELD_02:
    .byte $c8,$e8,$c8,$f0,$e0,$40,$00,$00   ; byte
    .byte $70,$70,$70,$60,$40,$00,$00,$00   ; byte


;
; ........
; ░█░.....
; ░█▒░....
; ░██░░...
; ░█▒▒░...
; ░██▒░...
; ░█▒▒░...
; ░██▒░...
;
; XREFS:
;     TILES_SHIELDS_MAGIC [$PRG8::819e]
;
TILE_MAGIC_SHIELD_01:
    .byte $00,$e0,$d0,$f8,$c8,$e8,$c8,$e8   ; byte
    .byte $00,$40,$60,$60,$70,$70,$70,$70   ; byte


;
; ░█▒▒░...
; ░██▒░...
; ░█▒▒░...
; ░██▒░...
; ░█▒░....
; ░██░....
; .█░.....
; .░......
;
TILE_MAGIC_SHIELD_02:
    .byte $c8,$e8,$c8,$e8,$d0,$f0,$60,$40   ; byte
    .byte $70,$70,$70,$70,$60,$60,$40,$00   ; byte


;
; ........
; ..█░░...
; .█░.....
; █░......
; █░...░..
; █░..░░..
; █░░░░...
; █░░░░...
;
TILE_SMALL_SHIELD_03:
    .byte $00,$38,$60,$c0,$c4,$cc,$f8,$f8   ; byte
    .byte $00,$20,$40,$80,$80,$80,$80,$80   ; byte


;
; █░░░░...
; ▒░░░░...
; ░█░░....
; .░░.....
; ..░░░...
; ..░.....
; ........
; .░......
;
TILE_SMALL_SHIELD_04:
    .byte $f8,$78,$f0,$60,$38,$20,$00,$40   ; byte
    .byte $80,$80,$40,$00,$00,$00,$00,$00   ; byte


;
; ........
; ..█░░...
; .█░.....
; █░......
; █░...░..
; █░..░░..
; █░░░░...
; █░░░░...
;
TILE_LARGE_SHIELD_03:
    .byte $00,$38,$60,$c0,$c4,$cc,$f8,$f8   ; byte
    .byte $00,$20,$40,$80,$80,$80,$80,$80   ; byte


;
; █░░░░...
; █░░░░...
; █░░░....
; ░█░.....
; .░░░░...
; ..░.....
; ........
; .░......
;
TILE_LARGE_SHIELD_04:
    .byte $f8,$f8,$f0,$e0,$78,$20,$00,$40   ; byte
    .byte $80,$80,$80,$40,$00,$00,$00,$00   ; byte


;
; ..██....
; .██░░...
; ▒█░.....
; █░......
; █░...░..
; █░..░░..
; █░░░░...
; █░░░░...
;
TILE_MAGIC_SHIELD_03:
    .byte $30,$78,$60,$c0,$c4,$cc,$f8,$f8   ; byte
    .byte $30,$60,$c0,$80,$80,$80,$80,$80   ; byte


;
; █░░░░...
; █░░░░...
; █░░░....
; █░░.....
; ▒▒░░░...
; .█░.....
; ........
; .░......
;
TILE_MAGIC_SHIELD_04:
    .byte $f8,$f8,$f0,$e0,$38,$60,$00,$40   ; byte
    .byte $80,$80,$80,$80,$c0,$40,$00,$00   ; byte


;
; ░░......
; ██░.....
; █░▒▒░...
; ░░██▒░..
; ░░░█▒░..
; ░░░█▒░..
; ░█░█▒░..
; ░█▒░▒░..
;
TILE_SMALL_SHIELD_05:
    .byte $c0,$e0,$c8,$f4,$f4,$f4,$f4,$d4   ; byte
    .byte $00,$c0,$b0,$38,$18,$18,$58,$68   ; byte


;
; ░██░▒░..
; ░██▒░░..
; ░░██░...
; ░░██▒░..
; ▒░░██░..
; ░░░░██..
; ░░░.....
; ░░░.....
;
TILE_SMALL_SHIELD_06:
    .byte $f4,$ec,$f8,$f4,$7c,$fc,$e0,$e0   ; byte
    .byte $68,$70,$30,$38,$98,$0c,$00,$00   ; byte


;
; ░░......
; ██░.....
; █░▒▒░...
; ░░██▒░..
; ░░░█▒░..
; ░█░█▒░..
; ██░█▒░..
; ██▒░▒░..
;
TILE_LARGE_SHIELD_05:
    .byte $c0,$e0,$c8,$f4,$f4,$f4,$f4,$d4   ; byte
    .byte $00,$c0,$b0,$38,$18,$58,$d8,$e8   ; byte


;
; ░██░▒░..
; ░██▒░░..
; ░░██░...
; ░░██▒░..
; ▒░░██░..
; ░░░███..
; ░░░.░█▒.
; ░░░.....
;
TILE_LARGE_SHIELD_06:
    .byte $f4,$ec,$f8,$f4,$7c,$fc,$ec,$e0   ; byte
    .byte $68,$70,$30,$38,$98,$1c,$06,$00   ; byte


;
; ░░......
; ██░.....
; █░▒▒░...
; ░░██▒░..
; ░█░█▒░..
; ██░█▒░..
; ██░█▒░..
; ██▒░▒░..
;
TILE_MAGIC_SHIELD_05:
    .byte $c0,$e0,$c8,$f4,$f4,$f4,$f4,$d4   ; byte
    .byte $00,$c0,$b0,$38,$58,$d8,$d8,$e8   ; byte


;
; ░██░▒░..
; ░██▒░░..
; ░░██░...
; ░░██▒░..
; ▒░░██░..
; ░░░██░..
; ░░░.██..
; ░░░.░██.
;
TILE_MAGIC_SHIELD_06:
    .byte $f4,$ec,$f8,$f4,$7c,$fc,$ec,$ee   ; byte
    .byte $68,$70,$30,$38,$98,$18,$0c,$06   ; byte


;============================================================================
; A mapping of portrait IDs (0-based) to tile address lists.
;
; Each entry in the tile address lists are single-byte
; values that are converted into a 16-bit value
; representing an address in this bank, relative to
; the start of the list of tiles
; (SPRITE_TILES_PORTRAIT_PINKSHIRT_00).
;
; As an example:
;
;     0x8A == $08A0
;           + $936B
;          == $9C0B
;
; A value of 0xFF means tile drawing is done for that
; portrait.
;
; XREFS:
;     TILES_PORTRAITS_ADDRS_INDEX_REF [$PRG8::800e]
;============================================================================

;
; XREFS:
;     TILES_PORTRAITS_ADDRS_INDEX_REF [$PRG8::800e]
;
SPRITE_TILES_PORTRAITS_ADDRS_INDEX:
    bank_offset_16 SPRITE_TILES_PORTRAIT_ADDRS_KING ; SPRITE_TILES_PORTRAIT_ADDRS_KING
    bank_offset_16 SPRITE_TILES_PORTRAIT_ADDRS_GURU ; SPRITE_TILES_PORTRAIT_ADDRS_GURU
    bank_offset_16 SPRITE_TILES_PORTRAIT_ADDRS_MARTIAL_ARTIST ; SPRITE_TILES_PORTRAIT_ADDRS_MARTIAL_ARTIST
    bank_offset_16 SPRITE_TILES_PORTRAIT_ADDRS_MAGICIAN ; SPRITE_TILES_PORTRAIT_ADDRS_MAGICIAN
    bank_offset_16 SPRITE_TILES_PORTRAIT_ADDRS_DOCTOR ; SPRITE_TILES_PORTRAIT_ADDRS_DOCTOR
    bank_offset_16 SPRITE_TILES_PORTRAIT_ADDRS_NURSE ; SPRITE_TILES_PORTRAIT_ADDRS_NURSE
    bank_offset_16 SPRITE_TILES_PORTRAIT_ADDRS_PINKSHIRT ; SPRITE_TILES_PORTRAIT_ADDRS_PINKSHIRT
    bank_offset_16 SPRITE_TILES_PORTRAIT_ADDRS_SMOKING_GUY ; SPRITE_TILES_PORTRAIT_ADDRS_SMOKING_GUY
    bank_offset_16 SPRITE_TILES_PORTRAIT_ADDRS_MEAT_SALESMAN ; SPRITE_TILES_PORTRAIT_ADDRS_MEAT_SALESMAN
    bank_offset_16 SPRITE_TILES_PORTRAIT_ADDRS_TOOLS_SALESMAN ; SPRITE_TILES_PORTRAIT_ADDRS_TOOLS_SALESMAN
    bank_offset_16 SPRITE_TILES_PORTRAIT_ADDRS_KEY_SALESMAN ; SPRITE_TILES_PORTRAIT_ADDRS_KEY_SALESMAN

;
; XREFS:
;     SPRITE_TILES_PORTRAITS_ADDRS_INDEX [$PRG8::9224]
;
SPRITE_TILES_PORTRAIT_ADDRS_KING:
    .byte $8a                               ; SPRITE_TILES_PORTRAIT_KING_00
    .byte $8b                               ; SPRITE_TILES_PORTRAIT_KING_01
    .byte $8c                               ; SPRITE_TILES_PORTRAIT_KING_02
    .byte $8d                               ; SPRITE_TILES_PORTRAIT_KING_03
    .byte $8e                               ; SPRITE_TILES_PORTRAIT_KING_04
    .byte $8f                               ; SPRITE_TILES_PORTRAIT_KING_05
    .byte $90                               ; SPRITE_TILES_PORTRAIT_KING_06
    .byte $91                               ; SPRITE_TILES_PORTRAIT_KING_07
    .byte $92                               ; SPRITE_TILES_PORTRAIT_KING_08
    .byte $93                               ; SPRITE_TILES_PORTRAIT_KING_09
    .byte $96                               ; SPRITE_TILES_PORTRAIT_KING_10
    .byte $94                               ; SPRITE_TILES_PORTRAIT_KING_11__MAGICIAN_09
    .byte $95                               ; SPRITE_TILES_PORTRAIT_KING_12
    .byte $98                               ; SPRITE_TILES_PORTRAIT_KING_13
    .byte $97                               ; SPRITE_TILES_PORTRAIT_KING_14
    .byte $60                               ; SPRITE_TILES_PORTRAIT_KING_15__MAGICIAN_10
    .byte $9a                               ; SPRITE_TILES_PORTRAIT_KING_16
    .byte $99                               ; SPRITE_TILES_PORTRAIT_KING_17
    .byte $63                               ; SPRITE_TILES_PORTRAIT_KING_18__GURU_10__MAGICIAN_13
    .byte $65                               ; SPRITE_TILES_PORTRAIT_KING_19
    .byte $9b                               ; SPRITE_TILES_PORTRAIT_KING_20
    .byte $9c                               ; SPRITE_TILES_PORTRAIT_KING_21
    .byte $9d                               ; SPRITE_TILES_PORTRAIT_KING_22
    .byte $ff                               ; byte

SPRITE_TILES_PORTRAIT_ADDRS_GURU:
    .byte $a8                               ; SPRITE_TILES_PORTRAIT_GURU_00
    .byte $a9                               ; SPRITE_TILES_PORTRAIT_GURU_01
    .byte $aa                               ; SPRITE_TILES_PORTRAIT_GURU_02
    .byte $ab                               ; SPRITE_TILES_PORTRAIT_GURU_03
    .byte $ac                               ; SPRITE_TILES_PORTRAIT_GURU_04
    .byte $ad                               ; SPRITE_TILES_PORTRAIT_GURU_05
    .byte $ae                               ; SPRITE_TILES_PORTRAIT_GURU_06
    .byte $af                               ; SPRITE_TILES_PORTRAIT_GURU_07
    .byte $29                               ; SPRITE_TILES_PORTRAIT_GURU_08__NURSE_12
    .byte $f1                               ; SPRITE_TILES_PORTRAIT_GURU_09
    .byte $63                               ; SPRITE_TILES_PORTRAIT_KING_18__GURU_10__MAGICIAN_13
    .byte $cd                               ; SPRITE_TILES_PORTRAIT_GURU_11__MAGICIAN_14__DOCTOR_19__NURSE_23__MEAT_SALESMAN_27__TOOLS_SALESMAN_13__KEY_SALESMAN_30
    .byte $f2                               ; SPRITE_TILES_PORTRAIT_GURU_12
    .byte $f3                               ; SPRITE_TILES_PORTRAIT_GURU_13
    .byte $f4                               ; SPRITE_TILES_PORTRAIT_GURU_14
    .byte $f5                               ; SPRITE_TILES_PORTRAIT_GURU_15
    .byte $b0                               ; SPRITE_TILES_PORTRAIT_GURU_16
    .byte $b1                               ; SPRITE_TILES_PORTRAIT_GURU_17
    .byte $ff                               ; byte

SPRITE_TILES_PORTRAIT_ADDRS_MARTIAL_ARTIST:
    .byte $68                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_00
    .byte $69                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_01
    .byte $6a                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_02
    .byte $6b                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_03
    .byte $6c                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_04
    .byte $6d                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_05
    .byte $6e                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_06
    .byte $6f                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_07
    .byte $70                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_08
    .byte $71                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_09
    .byte $72                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_10
    .byte $73                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_11
    .byte $74                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_12
    .byte $75                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_13
    .byte $76                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_14
    .byte $77                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_15
    .byte $7b                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_16
    .byte $7a                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_17
    .byte $79                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_18
    .byte $7e                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_19
    .byte $7c                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_20
    .byte $7d                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_21
    .byte $81                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_22
    .byte $82                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_23
    .byte $7f                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_24
    .byte $83                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_25
    .byte $84                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_26
    .byte $78                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_27
    .byte $85                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_28
    .byte $86                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_29
    .byte $87                               ; SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_30
    .byte $ff                               ; byte

SPRITE_TILES_PORTRAIT_ADDRS_MAGICIAN:
    .byte $51                               ; SPRITE_TILES_PORTRAIT_MAGICIAN_00
    .byte $52                               ; SPRITE_TILES_PORTRAIT_MAGICIAN_01
    .byte $53                               ; SPRITE_TILES_PORTRAIT_MAGICIAN_02
    .byte $54                               ; SPRITE_TILES_PORTRAIT_MAGICIAN_03
    .byte $55                               ; SPRITE_TILES_PORTRAIT_MAGICIAN_04
    .byte $56                               ; SPRITE_TILES_PORTRAIT_MAGICIAN_05
    .byte $57                               ; SPRITE_TILES_PORTRAIT_MAGICIAN_06
    .byte $58                               ; SPRITE_TILES_PORTRAIT_MAGICIAN_07
    .byte $ee                               ; SPRITE_TILES_PORTRAIT_MAGICIAN_08__MEAT_SALESMAN_29
    .byte $94                               ; SPRITE_TILES_PORTRAIT_KING_11__MAGICIAN_09
    .byte $60                               ; SPRITE_TILES_PORTRAIT_KING_15__MAGICIAN_10
    .byte $80                               ; SPRITE_TILES_PORTRAIT_MAGICIAN_11
    .byte $ef                               ; SPRITE_TILES_PORTRAIT_MAGICIAN_12
    .byte $63                               ; SPRITE_TILES_PORTRAIT_KING_18__GURU_10__MAGICIAN_13
    .byte $cd                               ; SPRITE_TILES_PORTRAIT_GURU_11__MAGICIAN_14__DOCTOR_19__NURSE_23__MEAT_SALESMAN_27__TOOLS_SALESMAN_13__KEY_SALESMAN_30
    .byte $2a                               ; SPRITE_TILES_PORTRAIT_MAGICIAN_15__NURSE_16__KEY_SALESMAN_22
    .byte $88                               ; SPRITE_TILES_PORTRAIT_MAGICIAN_16
    .byte $89                               ; SPRITE_TILES_PORTRAIT_MAGICIAN_17
    .byte $ff                               ; byte

SPRITE_TILES_PORTRAIT_ADDRS_DOCTOR:
    .byte $e2                               ; SPRITE_TILES_PORTRAIT_DOCTOR_00
    .byte $e3                               ; SPRITE_TILES_PORTRAIT_DOCTOR_01
    .byte $b4                               ; SPRITE_TILES_PORTRAIT_DOCTOR_02__KEY_SALESMAN_02
    .byte $c2                               ; SPRITE_TILES_PORTRAIT_DOCTOR_03__SMOKING_GUY_03__KEY_SALESMAN_03
    .byte $a0                               ; SPRITE_TILES_PORTRAIT_DOCTOR_04__TOOLS_SALESMAN_02
    .byte $e4                               ; SPRITE_TILES_PORTRAIT_DOCTOR_05
    .byte $e5                               ; SPRITE_TILES_PORTRAIT_DOCTOR_06
    .byte $c6                               ; SPRITE_TILES_PORTRAIT_DOCTOR_07__SMOKING_GUY_07
    .byte $a2                               ; SPRITE_TILES_PORTRAIT_DOCTOR_08__TOOLS_SALESMAN_04
    .byte $a3                               ; SPRITE_TILES_PORTRAIT_DOCTOR_09__TOOLS_SALESMAN_05
    .byte $ca                               ; SPRITE_TILES_PORTRAIT_DOCTOR_10__SMOKING_GUY_11
    .byte $ea                               ; SPRITE_TILES_PORTRAIT_DOCTOR_11
    .byte $e6                               ; SPRITE_TILES_PORTRAIT_DOCTOR_12__MEAT_SALESMAN_22
    .byte $e7                               ; SPRITE_TILES_PORTRAIT_DOCTOR_13
    .byte $eb                               ; SPRITE_TILES_PORTRAIT_DOCTOR_14
    .byte $ec                               ; SPRITE_TILES_PORTRAIT_DOCTOR_15
    .byte $e9                               ; SPRITE_TILES_PORTRAIT_DOCTOR_16__MEAT_SALESMAN_28
    .byte $ce                               ; SPRITE_TILES_PORTRAIT_DOCTOR_17__PINKSHIRT_18__SMOKING_GUY_22__MEAT_SALESMAN_23
    .byte $f0                               ; SPRITE_TILES_PORTRAIT_DOCTOR_18
    .byte $cd                               ; SPRITE_TILES_PORTRAIT_GURU_11__MAGICIAN_14__DOCTOR_19__NURSE_23__MEAT_SALESMAN_27__TOOLS_SALESMAN_13__KEY_SALESMAN_30
    .byte $db                               ; SPRITE_TILES_PORTRAIT_DOCTOR_20__TOOLS_SALESMAN_14__KEY_SALESMAN_33
    .byte $dc                               ; SPRITE_TILES_PORTRAIT_DOCTOR_21__TOOLS_SALESMAN_15__KEY_SALESMAN_34
    .byte $a6                               ; SPRITE_TILES_PORTRAIT_DOCTOR_22__TOOLS_SALESMAN_19
    .byte $e8                               ; SPRITE_TILES_PORTRAIT_DOCTOR_23
    .byte $ff                               ; byte

SPRITE_TILES_PORTRAIT_ADDRS_NURSE:
    .byte $1a                               ; SPRITE_TILES_PORTRAIT_NURSE_00__KEY_SALESMAN_16
    .byte $1b                               ; SPRITE_TILES_PORTRAIT_NURSE_01
    .byte $1c                               ; SPRITE_TILES_PORTRAIT_NURSE_02
    .byte $1d                               ; SPRITE_TILES_PORTRAIT_NURSE_03
    .byte $1e                               ; SPRITE_TILES_PORTRAIT_NURSE_04
    .byte $1f                               ; SPRITE_TILES_PORTRAIT_NURSE_05
    .byte $20                               ; SPRITE_TILES_PORTRAIT_NURSE_06
    .byte $21                               ; SPRITE_TILES_PORTRAIT_NURSE_07
    .byte $22                               ; SPRITE_TILES_PORTRAIT_NURSE_08
    .byte $23                               ; SPRITE_TILES_PORTRAIT_NURSE_09
    .byte $24                               ; SPRITE_TILES_PORTRAIT_NURSE_10
    .byte $25                               ; SPRITE_TILES_PORTRAIT_NURSE_11
    .byte $29                               ; SPRITE_TILES_PORTRAIT_GURU_08__NURSE_12
    .byte $27                               ; SPRITE_TILES_PORTRAIT_NURSE_13
    .byte $28                               ; SPRITE_TILES_PORTRAIT_NURSE_14
    .byte $2c                               ; SPRITE_TILES_PORTRAIT_NURSE_15
    .byte $2a                               ; SPRITE_TILES_PORTRAIT_MAGICIAN_15__NURSE_16__KEY_SALESMAN_22
    .byte $2b                               ; SPRITE_TILES_PORTRAIT_NURSE_17
    .byte $2f                               ; SPRITE_TILES_PORTRAIT_NURSE_18
    .byte $2d                               ; SPRITE_TILES_PORTRAIT_NURSE_19
    .byte $2e                               ; SPRITE_TILES_PORTRAIT_NURSE_20
    .byte $30                               ; SPRITE_TILES_PORTRAIT_NURSE_21
    .byte $31                               ; SPRITE_TILES_PORTRAIT_NURSE_22
    .byte $cd                               ; SPRITE_TILES_PORTRAIT_GURU_11__MAGICIAN_14__DOCTOR_19__NURSE_23__MEAT_SALESMAN_27__TOOLS_SALESMAN_13__KEY_SALESMAN_30
    .byte $32                               ; SPRITE_TILES_PORTRAIT_NURSE_24
    .byte $33                               ; SPRITE_TILES_PORTRAIT_NURSE_25
    .byte $26                               ; SPRITE_TILES_PORTRAIT_NURSE_26
    .byte $ff                               ; byte

SPRITE_TILES_PORTRAIT_ADDRS_PINKSHIRT:
    .byte $00                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_00
    .byte $01                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_01
    .byte $02                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_02
    .byte $03                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_03
    .byte $04                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_04
    .byte $05                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_05
    .byte $06                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_06
    .byte $07                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_07
    .byte $08                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_08
    .byte $09                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_09
    .byte $0a                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_10
    .byte $0b                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_11
    .byte $0c                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_12
    .byte $0d                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_13
    .byte $10                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_14__SMOKING_GUY_18
    .byte $11                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_15__SMOKING_GUY_19
    .byte $0e                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_16
    .byte $0f                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_17
    .byte $ce                               ; SPRITE_TILES_PORTRAIT_DOCTOR_17__PINKSHIRT_18__SMOKING_GUY_22__MEAT_SALESMAN_23
    .byte $12                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_19__SMOKING_GUY_23
    .byte $13                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_20__SMOKING_GUY_24
    .byte $14                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_21
    .byte $15                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_22
    .byte $16                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_23
    .byte $17                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_24
    .byte $18                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_25
    .byte $19                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_26
    .byte $ff                               ; byte

SPRITE_TILES_PORTRAIT_ADDRS_SMOKING_GUY:
    .byte $bf                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_00
    .byte $c0                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_01
    .byte $c1                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_02
    .byte $c2                               ; SPRITE_TILES_PORTRAIT_DOCTOR_03__SMOKING_GUY_03__KEY_SALESMAN_03
    .byte $c3                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_04
    .byte $c4                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_05
    .byte $c5                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_06
    .byte $c6                               ; SPRITE_TILES_PORTRAIT_DOCTOR_07__SMOKING_GUY_07
    .byte $c7                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_08
    .byte $c8                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_09
    .byte $c9                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_10
    .byte $ca                               ; SPRITE_TILES_PORTRAIT_DOCTOR_10__SMOKING_GUY_11
    .byte $cb                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_12__KEY_SALESMAN_12
    .byte $cc                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_13__KEY_SALESMAN_13
    .byte $d0                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_14__KEY_SALESMAN_14
    .byte $d1                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_15__KEY_SALESMAN_15
    .byte $44                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_16__KEY_SALESMAN_18
    .byte $45                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_17
    .byte $10                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_14__SMOKING_GUY_18
    .byte $11                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_15__SMOKING_GUY_19
    .byte $46                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_20__KEY_SALESMAN_24
    .byte $47                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_21__KEY_SALESMAN_25
    .byte $ce                               ; SPRITE_TILES_PORTRAIT_DOCTOR_17__PINKSHIRT_18__SMOKING_GUY_22__MEAT_SALESMAN_23
    .byte $12                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_19__SMOKING_GUY_23
    .byte $13                               ; SPRITE_TILES_PORTRAIT_PINKSHIRT_20__SMOKING_GUY_24
    .byte $d2                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_25
    .byte $d3                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_26
    .byte $d4                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_27__KEY_SALESMAN_37
    .byte $d5                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_28__KEY_SALESMAN_38
    .byte $ff                               ; byte

SPRITE_TILES_PORTRAIT_ADDRS_MEAT_SALESMAN:
    .byte $36                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_00
    .byte $37                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_01
    .byte $38                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_02
    .byte $39                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_03
    .byte $3a                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_04
    .byte $3b                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_05
    .byte $3c                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_06
    .byte $3d                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_07
    .byte $3e                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_08
    .byte $3f                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_09
    .byte $4d                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_10
    .byte $40                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_11
    .byte $41                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_12
    .byte $42                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_13
    .byte $43                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_14
    .byte $e1                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_15
    .byte $5b                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_16
    .byte $5c                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_17
    .byte $5d                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_18
    .byte $5e                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_19
    .byte $66                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_20
    .byte $e0                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_21
    .byte $e6                               ; SPRITE_TILES_PORTRAIT_DOCTOR_12__MEAT_SALESMAN_22
    .byte $ce                               ; SPRITE_TILES_PORTRAIT_DOCTOR_17__PINKSHIRT_18__SMOKING_GUY_22__MEAT_SALESMAN_23
    .byte $61                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_24
    .byte $62                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_25
    .byte $64                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_26
    .byte $cd                               ; SPRITE_TILES_PORTRAIT_GURU_11__MAGICIAN_14__DOCTOR_19__NURSE_23__MEAT_SALESMAN_27__TOOLS_SALESMAN_13__KEY_SALESMAN_30
    .byte $e9                               ; SPRITE_TILES_PORTRAIT_DOCTOR_16__MEAT_SALESMAN_28
    .byte $ee                               ; SPRITE_TILES_PORTRAIT_MAGICIAN_08__MEAT_SALESMAN_29
    .byte $4c                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_30
    .byte $67                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_31
    .byte $4e                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_32
    .byte $4f                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_33
    .byte $50                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_34
    .byte $59                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_35
    .byte $5a                               ; SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_36
    .byte $ff                               ; byte

SPRITE_TILES_PORTRAIT_ADDRS_TOOLS_SALESMAN:
    .byte $9e                               ; SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_00
    .byte $9f                               ; SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_01
    .byte $a0                               ; SPRITE_TILES_PORTRAIT_DOCTOR_04__TOOLS_SALESMAN_02
    .byte $a1                               ; SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_03
    .byte $a2                               ; SPRITE_TILES_PORTRAIT_DOCTOR_08__TOOLS_SALESMAN_04
    .byte $a3                               ; SPRITE_TILES_PORTRAIT_DOCTOR_09__TOOLS_SALESMAN_05
    .byte $a4                               ; SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_06
    .byte $a5                               ; SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_07
    .byte $d6                               ; SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_08
    .byte $d7                               ; SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_09
    .byte $d8                               ; SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_10
    .byte $d9                               ; SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_11
    .byte $da                               ; SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_12__KEY_SALESMAN_26
    .byte $cd                               ; SPRITE_TILES_PORTRAIT_GURU_11__MAGICIAN_14__DOCTOR_19__NURSE_23__MEAT_SALESMAN_27__TOOLS_SALESMAN_13__KEY_SALESMAN_30
    .byte $db                               ; SPRITE_TILES_PORTRAIT_DOCTOR_20__TOOLS_SALESMAN_14__KEY_SALESMAN_33
    .byte $dc                               ; SPRITE_TILES_PORTRAIT_DOCTOR_21__TOOLS_SALESMAN_15__KEY_SALESMAN_34
    .byte $dd                               ; SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_16
    .byte $de                               ; SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_17
    .byte $df                               ; SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_18
    .byte $a6                               ; SPRITE_TILES_PORTRAIT_DOCTOR_22__TOOLS_SALESMAN_19
    .byte $a7                               ; SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_20
    .byte $ff                               ; byte

SPRITE_TILES_PORTRAIT_ADDRS_KEY_SALESMAN:
    .byte $b2                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_00
    .byte $b3                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_01
    .byte $b4                               ; SPRITE_TILES_PORTRAIT_DOCTOR_02__KEY_SALESMAN_02
    .byte $c2                               ; SPRITE_TILES_PORTRAIT_DOCTOR_03__SMOKING_GUY_03__KEY_SALESMAN_03
    .byte $b5                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_04
    .byte $b6                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_05
    .byte $b7                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_06
    .byte $b8                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_07
    .byte $b9                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_08
    .byte $ba                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_09
    .byte $bb                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_10
    .byte $bc                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_11
    .byte $cb                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_12__KEY_SALESMAN_12
    .byte $cc                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_13__KEY_SALESMAN_13
    .byte $d0                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_14__KEY_SALESMAN_14
    .byte $d1                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_15__KEY_SALESMAN_15
    .byte $1a                               ; SPRITE_TILES_PORTRAIT_NURSE_00__KEY_SALESMAN_16
    .byte $48                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_17
    .byte $44                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_16__KEY_SALESMAN_18
    .byte $fa                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_19
    .byte $fb                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_20
    .byte $fc                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_21
    .byte $2a                               ; SPRITE_TILES_PORTRAIT_MAGICIAN_15__NURSE_16__KEY_SALESMAN_22
    .byte $cf                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_23
    .byte $46                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_20__KEY_SALESMAN_24
    .byte $47                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_21__KEY_SALESMAN_25
    .byte $da                               ; SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_12__KEY_SALESMAN_26
    .byte $fd                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_27
    .byte $49                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_28
    .byte $4a                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_29
    .byte $cd                               ; SPRITE_TILES_PORTRAIT_GURU_11__MAGICIAN_14__DOCTOR_19__NURSE_23__MEAT_SALESMAN_27__TOOLS_SALESMAN_13__KEY_SALESMAN_30
    .byte $34                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_31
    .byte $fe                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_32
    .byte $db                               ; SPRITE_TILES_PORTRAIT_DOCTOR_20__TOOLS_SALESMAN_14__KEY_SALESMAN_33
    .byte $dc                               ; SPRITE_TILES_PORTRAIT_DOCTOR_21__TOOLS_SALESMAN_15__KEY_SALESMAN_34
    .byte $bd                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_35
    .byte $be                               ; SPRITE_TILES_PORTRAIT_KEY_SALESMAN_36
    .byte $d4                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_27__KEY_SALESMAN_37
    .byte $d5                               ; SPRITE_TILES_PORTRAIT_SMOKING_GUY_28__KEY_SALESMAN_38
    .byte $ff                               ; byte


;============================================================================
; Beginning of portrait tiles.
;
; XREFS:
;     SPRITE_TILES_PORTRAIT_ADDRS_PINKSHIRT [$PRG8::92cd]
;     TILES_PORTRAITS_START_REF [$PRG8::8010]
;============================================================================

;
; ........
; .......░
; ......░█
; ....░▒█▒
; ....░█▒▒
; ....▒█░.
; ...░█░..
; ..▒█▒░.▒
;
; XREFS:
;     SPRITE_TILES_PORTRAIT_ADDRS_PINKSHIRT [$PRG8::92cd]
;     TILES_PORTRAITS_START_REF [$PRG8::8010]
;
SPRITE_TILES_PORTRAITS_START:
SPRITE_TILES_PORTRAIT_PINKSHIRT_00:
    .byte $00,$01,$03,$0a,$0c,$06,$1c,$14   ; byte
    .byte $00,$00,$01,$07,$07,$0c,$08,$39   ; byte


;
; ..▒▒░▒▒▒
; ▒▒██▒█░▒
; ▒░▒..░▒▒
; ▒..▒▒...
; .▒▒▒▒▒▒.
; ▒▒▒▒▒▒▒▒
; ▒░.░░▒▒▒
; ░....░.▒
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_01:
    .byte $08,$36,$44,$00,$00,$00,$58,$84   ; byte
    .byte $37,$fd,$a3,$98,$7e,$ff,$87,$01   ; byte


;
; ...█░.▒░
; ..▒▒▒.▒░
; ..░█░.▒▒
; .░░▒░.▒░
; ░█▒█▒.▒░
; ▒░█▒░.░▒
; ▒▒░█▒░░░
; ▒▒░█▒░▒▒
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_02:
    .byte $19,$01,$38,$69,$d1,$6a,$37,$34   ; byte
    .byte $12,$3a,$13,$12,$7a,$b1,$d8,$db   ; byte


;
; ░▒░░░▒▒▒
; ▒░░░░░▒▒
; ▒....░░░
; .███▒░░░
; █▒█░█░▒▒
; ▒█..█░▒█
; ▒▒▒▒░░▒█
; ▒░░░▒░██
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_03:
    .byte $b8,$7c,$07,$77,$bc,$4d,$0d,$77   ; byte
    .byte $47,$83,$80,$78,$eb,$cb,$f3,$8b   ; byte


;
; ▒░.░░░.░
; ..░░░░▒.
; ░░░...░░
; ░░.███▒▒
; ▒░█▒█.█▒
; ▒░▒▒..█░
; ▒░▒▒▒▒░▒
; ▒▒░▒▒░░▒
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_04:
    .byte $5d,$3c,$e3,$dc,$6a,$43,$42,$26   ; byte
    .byte $80,$02,$00,$1f,$bb,$b2,$bd,$d9   ; byte


;
; ░▒.░░░..
; ░▒▒.▒░..
; ▒▒▒.▒░..
; ▒▒▒.░░░.
; ▒▒▒░░▒█░
; ░▒▒░▒█░▒
; ▒▒▒░█░▒▒
; ▒▒▒░█░▒▒
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_05:
    .byte $9c,$84,$04,$0e,$1b,$96,$1c,$1c   ; byte
    .byte $40,$68,$e8,$e0,$e6,$6d,$eb,$eb   ; byte


;
; ▒░░▒▒░▒▒
; ▒▒░░░▒▒▒
; █▒▒░░▒██
; ░▒▒░░▒█▒
; .░░░░▒█▒
; ..░░░░▒▒
; ...░░▒░░
; ...░░▒▒░
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_06:
    .byte $64,$38,$9b,$9a,$7a,$3c,$1b,$19   ; byte
    .byte $9b,$c7,$e7,$67,$07,$03,$04,$06   ; byte


;
; ▒▒▒▒.▒██
; ▒▒▒▒.░▒▒
; ▒▒▒.░.░░
; ▒▒▒.██..
; ▒▒.▒█▒▒░
; ▒.▒▒░░░░
; ..░░▒███
; ▒.░▒▒██▒
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_07:
    .byte $03,$04,$0b,$0c,$09,$0f,$37,$26   ; byte
    .byte $f7,$f3,$e0,$ec,$de,$b0,$0f,$9f   ; byte


;
; █▒░░▒▒░░
; ▒░.░▒█▒▒
; ░.░░▒█▒▒
; .░▒▒░▒▒▒
; ░▒▒▒░░▒▒
; ░░░▒▒░.█
; █▒▒░.▒.▒
; ▒▒▒▒░..▒
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_08:
    .byte $b3,$54,$b4,$48,$8c,$e5,$90,$08   ; byte
    .byte $cc,$8f,$0f,$37,$73,$19,$e5,$f1   ; byte


;
; ▒▒▒░░░░▒
; ▒▒▒░░░▒▒
; ▒▒▒░░▒▒█
; ▒▒▒░░░▒░
; ▒▒░░░░░.
; ▒▒░▒░░..
; ▒▒░▒░...
; ▒▒▒▒░...
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_09:
    .byte $1e,$1c,$19,$1d,$3e,$2c,$28,$08   ; byte
    .byte $e1,$e3,$e7,$e2,$c0,$d0,$d0,$f0   ; byte


;
; ....░▒▒░
; ....░▒█▒
; .....░▒▒
; .....░▒▒
; .......░
; .......░
; ........
; ........
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_10:
    .byte $09,$0a,$04,$04,$01,$01,$00,$00   ; byte
    .byte $06,$07,$03,$03,$00,$00,$00,$00   ; byte


;
; ▒.▒▒▒▒▒▒
; ▒.▒▒▒▒░░
; ▒░▒▒▒▒▒░
; ▒▒▒▒██▒▒
; ░▒▒▒█▒▒▒
; ░░▒▒▒▒▒▒
; ░░░░▒▒▒▒
; ░░░░░░░░
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_11:
    .byte $00,$03,$41,$0c,$88,$c0,$f0,$ff   ; byte
    .byte $bf,$bc,$be,$ff,$7f,$3f,$0f,$00   ; byte


;
; ▒▒▒▒▒▒.▒
; ░░░▒▒▒░▒
; ..░▒▒▒░▒
; ▒▒▒▒░▒▒▒
; ▒▒▒▒░▒▒▒
; ▒▒▒░░▒░░
; ▒░░░░░░░
; ░░░░░░░░
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_12:
    .byte $00,$e2,$22,$08,$08,$1b,$7f,$ff   ; byte
    .byte $fd,$1d,$1d,$f7,$f7,$e4,$80,$00   ; byte


;
; ▒▒▒░░...
; ▒▒▒░....
; ▒▒░░....
; ▒░░.....
; ░░......
; ░.......
; ░.......
; ░.......
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_13:
    .byte $18,$10,$30,$60,$c0,$80,$80,$80   ; byte
    .byte $e0,$e0,$c0,$80,$00,$00,$00,$00   ; byte


;
; ▒▒▒▒░▒░▒
; ▒▒█▒▒▒▒░
; ░▒▒█▒▒▒▒
; ░▒▒█▒▒▒▒
; ▒░▒▒█▒▒▒
; █▒░▒▒▒▒▒
; ██▒░▒▒▒▒
; ░██▒░▒▒▒
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_16:
    .byte $0a,$21,$90,$90,$48,$a0,$d0,$e8   ; byte
    .byte $f5,$fe,$7f,$7f,$bf,$df,$ef,$77   ; byte


;
; ░▒░░░░░░
; ▒░░░░░░░
; ░░░░░░░░
; ▒░░░░░░░
; ▒▒▒░░░░█
; ▒▒▒▒░░██
; ▒▒▒▒░███
; ▒▒▒░███░
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_17:
    .byte $bf,$7f,$ff,$7f,$1f,$0f,$0f,$1f   ; byte
    .byte $40,$80,$00,$80,$e1,$f3,$f7,$ee   ; byte


;
; ........
; ........
; .......░
; .....░▒▒
; ...░▒▒▒▒
; ..░▒▒▒▒▒
; .░▒▒▒▒▒▒
; .▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_14__SMOKING_GUY_18:
    .byte $00,$00,$01,$04,$10,$20,$40,$00   ; byte
    .byte $00,$00,$00,$03,$0f,$1f,$3f,$7f   ; byte


;
; ........
; .░▒▒▒░█░
; ▒▒▒▒░▒██
; ▒▒▒▒░▒██
; ▒▒▒▒▒░▒█
; ▒▒▒▒▒▒░▒
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_15__SMOKING_GUY_19:
    .byte $00,$47,$0b,$0b,$05,$02,$01,$00   ; byte
    .byte $00,$3a,$f7,$f7,$fb,$fd,$fe,$ff   ; byte


;
; ▒░▒██░▒▒
; ▒▒░▒█░▒▒
; ░▒▒░█░▒▒
; ░..░█░▒▒
; ▒▒▒..░▒▒
; ░▒▒░█..▒
; ░..░█░▒.
; ▒▒▒░█..▒
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_19__SMOKING_GUY_23:
    .byte $5c,$2c,$9c,$9c,$04,$98,$9c,$18   ; byte
    .byte $bb,$db,$6b,$0b,$e3,$69,$0a,$e9   ; byte


;
; ░▒▒..░.▒
; ░..░█░▒.
; ▒▒▒░█..▒
; ░▒▒..░▒▒
; ░..░█░▒▒
; ▒▒▒░██░░
; ▒▒▒▒░███
; ▒▒▒▒▒░░░
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_20__SMOKING_GUY_24:
    .byte $84,$9c,$18,$84,$9c,$1f,$0f,$07   ; byte
    .byte $61,$0a,$e9,$63,$0b,$ec,$f7,$f8   ; byte


;
; ░▒░░░▒▒▒
; ▒▒▒░░░▒▒
; ▒██▒▒░░░
; ▒█▒▒▒░░░
; .▒▒░.░▒▒
; ▒...░░▒█
; ▒▒▒▒░░▒█
; ▒░░░▒░██
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_21:
    .byte $b8,$1c,$67,$47,$14,$0d,$0d,$77   ; byte
    .byte $47,$e3,$f8,$f8,$63,$83,$f3,$8b   ; byte


;
; ▒░.░░░.░
; ..░░░░▒.
; ░░░▒▒▒░░
; ░░▒▒█▒▒▒
; ▒░.▒▒▒▒.
; ▒░▒░...▒
; ▒░▒▒▒▒░▒
; ▒▒░▒▒░░▒
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_22:
    .byte $5d,$3c,$e3,$c8,$40,$50,$42,$26   ; byte
    .byte $80,$02,$1c,$3f,$9e,$a1,$bd,$d9   ; byte


;
; ▒▒▒▒.▒██
; ▒▒▒▒.░▒▒
; ▒▒▒.░.░░
; ▒▒▒.██..
; ▒▒.▒█▒▒░
; ▒.▒▒░░░░
; ..░.░▒█▒
; ▒.▒.....
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_23:
    .byte $03,$04,$0b,$0c,$09,$0f,$2a,$00   ; byte
    .byte $f7,$f3,$e0,$ec,$de,$b0,$07,$a0   ; byte


;
; █▒░░▒▒░░
; ▒░.░▒█▒▒
; ░.░░▒█▒▒
; .░▒▒░▒▒▒
; ░▒▒▒░░▒▒
; ░░░░▒░.█
; █▒█▒.▒.▒
; .......▒
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_24:
    .byte $b3,$54,$b4,$48,$8c,$f5,$a0,$00   ; byte
    .byte $cc,$8f,$0f,$37,$73,$09,$f5,$01   ; byte


;
; ▒.▒█▒███
; ▒.▒▒▒███
; ▒░▒▒▒▒▒▒
; ▒▒▒▒██▒░
; ░▒▒▒█▒▒▒
; ░░▒▒▒▒▒▒
; ░░░░▒▒▒▒
; ░░░░░░░░
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_25:
    .byte $17,$07,$40,$0d,$88,$c0,$f0,$ff   ; byte
    .byte $bf,$bf,$bf,$fe,$7f,$3f,$0f,$00   ; byte


;
; ▒▒▒▒▒▒.▒
; ▒▒▒▒▒▒░▒
; ░░▒▒▒▒░▒
; ░░░▒░▒▒▒
; ▒▒▒▒░▒▒▒
; ▒▒▒░░▒░░
; ▒░░░░░░░
; ░░░░░░░░
;
SPRITE_TILES_PORTRAIT_PINKSHIRT_26:
    .byte $00,$02,$c2,$e8,$08,$1b,$7f,$ff   ; byte
    .byte $fd,$fd,$3d,$17,$f7,$e4,$80,$00   ; byte


;
; ......▒█
; ....▒▒██
; .░██████
; ░███████
; ████████
; ████████
; ████████
; ░███████
;
; XREFS:
;     SPRITE_TILES_PORTRAIT_ADDRS_NURSE [$PRG8::92b1]
;
SPRITE_TILES_PORTRAIT_NURSE_00__KEY_SALESMAN_16:
    .byte $01,$03,$7f,$ff,$ff,$ff,$ff,$ff   ; byte
    .byte $03,$0f,$3f,$7f,$ff,$ff,$ff,$7f   ; byte


;
; .......░
; ......▒█
; .....▒▒█
; .....▒██
; ....▒▒█▒
; ....▒██▒
; ....▒██░
; ....██░█
;
SPRITE_TILES_PORTRAIT_NURSE_01:
    .byte $01,$01,$01,$03,$02,$06,$07,$0f   ; byte
    .byte $00,$03,$07,$07,$0f,$0f,$0e,$0d   ; byte


;
; ▒░░░░░░░
; █▒██████
; ███████▒
; ▒████▒▒░
; ▒███▒░░.
; ███▒░▒▒▒
; ██▒░░░░▒
; █▒░▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_NURSE_02:
    .byte $7f,$bf,$fe,$79,$76,$e8,$de,$a0   ; byte
    .byte $80,$ff,$ff,$fe,$f8,$f7,$e1,$df   ; byte


;
; ░░░▒▒.▒█
; ██████▒▒
; ▒██▒█▒▒▒
; .██░▒█▒▒
; ██░▒█░░░
; ░░▒▒░▒▒░
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒░░░
;
SPRITE_TILES_PORTRAIT_NURSE_03:
    .byte $e1,$fc,$68,$74,$ef,$c9,$00,$07   ; byte
    .byte $1b,$ff,$ff,$6f,$d8,$36,$ff,$f8   ; byte


;
; ░.......
; ░░......
; ▒░......
; ▒░......
; ▒░░.....
; ░▒░.....
; ░▒░░....
; ░░░░....
;
SPRITE_TILES_PORTRAIT_NURSE_04:
    .byte $80,$c0,$40,$40,$60,$a0,$b0,$f0   ; byte
    .byte $00,$00,$80,$80,$80,$40,$40,$00   ; byte


;
; ....█░▒░
; ...░█░▒░
; ...░█░▒░
; ...▒█▒░▒
; ...▒█▒.█
; ...▒█▒▒░
; ...▒█▒▒░
; ...▒█░▒░
;
SPRITE_TILES_PORTRAIT_NURSE_05:
    .byte $0d,$1d,$1d,$0a,$09,$09,$09,$0d   ; byte
    .byte $0a,$0a,$0a,$1d,$1d,$1e,$1e,$1a   ; byte


;
; █░░▒...░
; █░░.██.█
; █░▒▒█░░█
; █░▒▒███▒
; ░░▒▒▒▒▒▒
; ░▒▒██▒▒▒
; ▒░▒█▒▒▒▒
; ░░▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_NURSE_06:
    .byte $e1,$ed,$cf,$ce,$c0,$98,$50,$c0   ; byte
    .byte $90,$8d,$b9,$bf,$3f,$7f,$bf,$3f   ; byte


;
; ▒▒▒▒░▒▒▒
; ░▒▒░..░░
; ░▒▒░.█.▒
; ▒▒▒░█.█▒
; ▒▒▒▒▒██▒
; ▒▒▒▒▒▒▒▒
; ▒█▒░▒▒▒▒
; ▒▒.▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_NURSE_07:
    .byte $08,$93,$94,$1a,$06,$00,$50,$00   ; byte
    .byte $f7,$60,$65,$eb,$ff,$ff,$ef,$df   ; byte


;
; ░░░.....
; ░▒░.....
; ░▒░.....
; ░▒░.....
; ░░......
; ░░......
; ░.......
; ░.......
;
SPRITE_TILES_PORTRAIT_NURSE_08:
    .byte $e0,$a0,$a0,$a0,$c0,$c0,$80,$80   ; byte
    .byte $00,$40,$40,$40,$00,$00,$00,$00   ; byte


;
; ...▒█░█▒
; ...░█░██
; ...░█░░█
; ...░▒█▒█
; ....▒█▒░
; .....█▒░
; ......█▒
; .......▒
;
SPRITE_TILES_PORTRAIT_NURSE_09:
    .byte $0e,$1f,$1f,$15,$05,$05,$02,$00   ; byte
    .byte $1b,$0b,$09,$0f,$0e,$06,$03,$01   ; byte


;
; ░.▒▒▒▒▒▒
; ░.░▒▒▒▒▒
; ░░.▒▒▒▒▒
; ░▒░.▒▒▒▒
; █░░░░▒▒▒
; ▒█░░░░▒▒
; .▒█░▒░░▒
; ░.░░▒▒░░
;
SPRITE_TILES_PORTRAIT_NURSE_10:
    .byte $80,$a0,$c0,$a0,$f8,$7c,$36,$b3   ; byte
    .byte $3f,$1f,$1f,$4f,$87,$c3,$69,$0c   ; byte


;
; ▒▒▒▒▒▒▒░
; .░░░▒▒▒░
; ▒█▒▒▒▒░░
; ▒░░▒▒▒░.
; ▒▒▒▒▒░░.
; ▒█▒▒░.▒.
; ▒▒▒░░..▒
; ░░░.▒▒..
;
SPRITE_TILES_PORTRAIT_NURSE_11:
    .byte $01,$71,$43,$62,$06,$48,$18,$e0   ; byte
    .byte $fe,$0e,$fc,$9c,$f8,$f2,$e1,$0c   ; byte


;
; ▒▒▒▒▒▒▒░
; ░..░▒▒▒░
; ▒..▒▒▒░░
; ▒█▒▒▒▒░.
; ▒▒▒▒▒░░.
; ▒█▒▒░.▒.
; ▒▒▒░░..▒
; ░░░.▒▒..
;
SPRITE_TILES_PORTRAIT_NURSE_26:
    .byte $01,$91,$03,$42,$06,$48,$18,$e0   ; byte
    .byte $fe,$0e,$9c,$fc,$f8,$f2,$e1,$0c   ; byte


;
; ░░░░▒▒▒▒
; ░░░▒▒█▒▒
; █░░▒▒█▒▒
; █▒░░▒▒▒▒
; ███▒░░░▒
; ████████
; ▒▒██████
; ██▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_NURSE_13:
    .byte $f0,$e4,$e4,$b0,$ee,$ff,$3f,$c0   ; byte
    .byte $0f,$1f,$9f,$cf,$f1,$ff,$ff,$ff   ; byte


;
; ░░░.....
; ▒░▒.....
; ▒░▒▒....
; ░▒▒▒░...
; ██▒▒░░▒░
; ██▒░███▒
; █▒▒████▒
; ▒██████▒
;
SPRITE_TILES_PORTRAIT_NURSE_14:
    .byte $e0,$40,$40,$88,$cd,$de,$9e,$7e   ; byte
    .byte $00,$a0,$b0,$70,$f2,$ef,$ff,$ff   ; byte


;
; ........
; ........
; ........
; ........
; ........
; .....███
; ..██████
; ████████
;
SPRITE_TILES_PORTRAIT_GURU_08__NURSE_12:
    .byte $00,$00,$00,$00,$00,$07,$3f,$ff   ; byte
    .byte $00,$00,$00,$00,$00,$07,$3f,$ff   ; byte


;
; ████████
; ████████
; ████████
; ▒███████
; ░▒██████
; ▒░▒█████
; ▒░░▒████
; ▒▒░▒████
;
SPRITE_TILES_PORTRAIT_MAGICIAN_15__NURSE_16__KEY_SALESMAN_22:
    .byte $ff,$ff,$ff,$7f,$bf,$5f,$6f,$2f   ; byte
    .byte $ff,$ff,$ff,$ff,$7f,$bf,$9f,$df   ; byte


;
; █▒█████▒
; █░██████
; ██▒█████
; ██░█████
; ███▒████
; ███▒████
; ████▒███
; ████░███
;
SPRITE_TILES_PORTRAIT_NURSE_17:
    .byte $be,$ff,$df,$ff,$ef,$ef,$f7,$ff   ; byte
    .byte $ff,$bf,$ff,$df,$ff,$ff,$ff,$f7   ; byte


;
; .......█
; ......██
; .....▒██
; .....▒░░
; .....░░░
; .....░▒▒
; .....▒▒▒
; .....▒▒▒
;
SPRITE_TILES_PORTRAIT_NURSE_15:
    .byte $01,$03,$03,$03,$07,$04,$00,$00   ; byte
    .byte $01,$03,$07,$04,$00,$03,$07,$07   ; byte


;
; ▒▒░░▒███
; ▒▒▒░▒███
; ▒▒▒░▒▒██
; ▒▒▒░▒▒██
; ▒▒▒░▒▒██
; ▒▒▒░▒███
; ▒▒▒░▒███
; ▒▒▒░▒███
;
SPRITE_TILES_PORTRAIT_NURSE_19:
    .byte $37,$17,$13,$13,$13,$17,$17,$17   ; byte
    .byte $cf,$ef,$ef,$ef,$ef,$ef,$ef,$ef   ; byte


;
; █████▒██
; ██████▒█
; ███████░
; ████████
; ███████░
; ███████░
; █████▒▒░
; █████░░░
;
SPRITE_TILES_PORTRAIT_NURSE_20:
    .byte $fb,$fd,$ff,$ff,$ff,$ff,$f9,$ff   ; byte
    .byte $ff,$ff,$fe,$ff,$fe,$fe,$fe,$f8   ; byte


;
; .....▒▒▒
; .....▒▒▒
; ....░▒▒▒
; ....░▒▒▒
; ....░▒▒▒
; ....░▒▒▒
; ....▒▒▒▒
; ....░▒▒▒
;
SPRITE_TILES_PORTRAIT_NURSE_18:
    .byte $00,$00,$08,$08,$08,$08,$00,$08   ; byte
    .byte $07,$07,$07,$07,$07,$07,$0f,$07   ; byte


;
; ....▒▒▒▒
; ....▒▒▒▒
; ....▒▒▒▒
; ....▒▒▒▒
; ....▒▒▒▒
; ....▒▒▒▒
; ....▒▒▒▒
; ....░▒▒▒
;
SPRITE_TILES_PORTRAIT_NURSE_21:
    .byte $00,$00,$00,$00,$00,$00,$00,$08   ; byte
    .byte $0f,$0f,$0f,$0f,$0f,$0f,$0f,$07   ; byte


;
; ▒▒▒░▒███
; ▒▒▒░▒███
; ▒▒▒░▒███
; ▒▒▒.▒▒██
; ▒▒▒.▒▒██
; ▒▒▒.░▒▒▒
; ▒▒▒..▒▒▒
; ▒▒▒..▒▒▒
;
SPRITE_TILES_PORTRAIT_NURSE_22:
    .byte $17,$17,$17,$03,$03,$08,$00,$00   ; byte
    .byte $ef,$ef,$ef,$ef,$ef,$e7,$e7,$e7   ; byte


;
; █░░▒▒▒▒▒
; █░░░▒█▒▒
; █░▒▒.░░░
; █░▒▒▒..░
; ░░▒▒▒▒▒▒
; ░▒▒██▒▒▒
; ▒░▒█▒▒▒▒
; ░░▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_NURSE_24:
    .byte $e0,$f4,$c7,$c1,$c0,$98,$50,$c0   ; byte
    .byte $9f,$8f,$b0,$b8,$3f,$7f,$bf,$3f   ; byte


;
; ▒▒▒▒░▒▒▒
; ▒▒▒░░▒▒▒
; .▒▒░░█▒▒
; ▒▒▒░░░▒▒
; ▒▒▒▒▒..▒
; ▒▒▒▒▒▒▒▒
; ▒█▒░▒▒▒▒
; ▒▒.▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_NURSE_25:
    .byte $08,$18,$1c,$1c,$00,$00,$50,$00   ; byte
    .byte $f7,$e7,$67,$e3,$f9,$ff,$ef,$df   ; byte


;
; ███████░
; ███████░
; ███████░
; ███████░
; ████████
; ███▒▒███
; ▒▒▒█████
; ████████
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_31:
    .byte $ff,$ff,$ff,$ff,$ff,$e7,$1f,$ff   ; byte
    .byte $fe,$fe,$fe,$fe,$ff,$ff,$ff,$ff   ; byte


;
; ...▒▒▒▒▒
; ...▒▒▒▒▒
; ...▒▒▒▒▒
; ...▒▒▒▒▒
; ..▒▒▒▒▒▒
; ..▒▒▒▒▒▒
; ..▒▒▒▒▒▒
; ..▒▒▒▒▒▒
;
TILES_PORTRAITS_53:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $1f,$1f,$1f,$1f,$3f,$3f,$3f,$3f   ; byte


;
; ........
; ........
; .......▒
; ......▒▒
; .....▒▒▒
; .....▒░.
; ....▒░░░
; ....░░▒▒
;
; XREFS:
;     SPRITE_TILES_PORTRAIT_ADDRS_MEAT_SALESMAN
;     [$PRG8::9307]
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_00:
    .byte $00,$00,$00,$00,$00,$02,$07,$0c   ; byte
    .byte $00,$00,$01,$03,$07,$04,$08,$03   ; byte


;
; ..▒▒▒▒▒▒
; ▒▒█░▒▒▒▒
; ██▒▒▒▒▒▒
; ▒▒▒▒▒░▒▒
; ▒░▒▒▒.░░
; ░▒▒▒▒▒░.
; ▒▒▒▒▒▒▒▒
; ▒█▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_01:
    .byte $00,$30,$c0,$04,$43,$82,$00,$40   ; byte
    .byte $3f,$ef,$ff,$fb,$b8,$7c,$ff,$ff   ; byte


;
; ▒▒░░░░..
; ▒▒▒▒▒▒░░
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ░▒▒▒▒▒▒▒
; .░▒▒▒▒▒▒
; ▒░.▒▒▒▒▒
; ▒▒▒.▒▒▒▒
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_02:
    .byte $3c,$03,$00,$00,$80,$40,$40,$00   ; byte
    .byte $c0,$fc,$ff,$ff,$7f,$3f,$9f,$ef   ; byte


;
; ........
; ........
; ░.......
; ▒░......
; ▒▒░.....
; ▒▒░.....
; ▒▒▒░....
; ▒▒▒░....
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_03:
    .byte $00,$00,$80,$40,$20,$20,$10,$10   ; byte
    .byte $00,$00,$00,$80,$c0,$c0,$e0,$e0   ; byte


;
; ....░...
; .....██.
; ....▒█..
; ....░▒▒.
; ...░▒▒.█
; ..░▒█.█▒
; ..░██.▒░
; .░▒█▒.░░
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_04:
    .byte $08,$06,$04,$08,$11,$2a,$39,$53   ; byte
    .byte $00,$06,$0c,$06,$0d,$1b,$1a,$38   ; byte


;
; ▒░█▒▒▒..
; ▒░█▒▒.██
; ░█▒▒▒▒█▒
; ██▒▒▒░█▒
; █▒▒▒▒▒▒▒
; ▒▒█░▒▒▒█
; ░▒▒█░▒██
; ░░▒▒.▒█▒
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_05:
    .byte $60,$63,$c2,$c6,$80,$31,$9b,$c2   ; byte
    .byte $bc,$bb,$7f,$fb,$ff,$ef,$77,$37   ; byte


;
; ..▒▒▒▒▒▒
; ██░▒▒▒▒▒
; █.█░░▒▒▒
; ..█░░▒▒▒
; ▒▒▒▒▒▒▒▒
; █▒▒▒▒▒▒▒
; █▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_06:
    .byte $00,$e0,$b8,$38,$00,$80,$80,$00   ; byte
    .byte $3f,$df,$a7,$27,$ff,$ff,$ff,$ff   ; byte


;
; ▒▒▒░....
; ▒▒▒▒░...
; ▒▒▒▒░...
; ▒▒▒▒░...
; ▒▒▒..░..
; ▒▒.▒▒▒░.
; ▒.▒▒░░░.
; ▒▒▒░.░░.
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_07:
    .byte $10,$08,$08,$08,$04,$02,$0e,$16   ; byte
    .byte $e0,$f0,$f0,$f0,$e0,$dc,$b0,$e0   ; byte


;
; .░▒▒▒▒░.
; .░▒▒▒▒░░
; .░▒▒▒░.▒
; .░░▒░░.▒
; .░░░░▒.▒
; .░▒▒█▒░.
; .░▒█▒░▒█
; .░▒█▒░▒█
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_08:
    .byte $42,$43,$44,$6c,$78,$4a,$55,$55   ; byte
    .byte $3c,$3c,$39,$11,$05,$3c,$3b,$3b   ; byte


;
; ░.░░.▒▒▒
; ░░░░░▒▒▒
; █▒▒▒░▒▒▒
; █▒▒▒░▒▒▒
; ▒▒▒▒░░▒▒
; .....░░▒
; ███▒▒▒░░
; █▒▒▒▒▒░▒
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_09:
    .byte $b0,$f8,$88,$88,$0c,$06,$e3,$82   ; byte
    .byte $07,$07,$f7,$f7,$f3,$01,$fc,$fd   ; byte


;
; ▒▒░.░░░.
; ▒░.░░░..
; ▒░░░▒░..
; ▒░░▒▒...
; ░░▒▒░...
; ░░▒░░...
; ░░░.....
; ░.......
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_11:
    .byte $2e,$5c,$74,$60,$c8,$d8,$e0,$80   ; byte
    .byte $c0,$80,$88,$98,$30,$20,$00,$00   ; byte


;
; .░▒█▒░▒▒
; .░▒▒▒▒░░
; .░▒▒▒░▒░
; .░▒▒░▒██
; ..░▒░▒█▒
; ..░▒░▒▒▒
; ...░░░▒▒
; .....░░░
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_12:
    .byte $54,$43,$45,$4b,$2a,$28,$1c,$07   ; byte
    .byte $3b,$3c,$3a,$37,$17,$17,$03,$00   ; byte


;
; ▒▒▒▒▒▒░▒
; ▒▒▒▒▒▒▒▒
; ░░░▒▒▒▒▒
; ▒▒▒░▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ░▒▒▒▒░░░
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_13:
    .byte $02,$00,$e0,$10,$00,$00,$00,$87   ; byte
    .byte $fd,$ff,$1f,$ef,$ff,$ff,$ff,$78   ; byte


;
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒▒░░
; ▒▒▒▒▒░░░
; ▒▒▒▒░░░.
; ▒▒▒░░░.░
; ▒░░░..░░
; ░░░.░░░░
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_14:
    .byte $01,$01,$03,$07,$0e,$1d,$73,$ef   ; byte
    .byte $fe,$fe,$fc,$f8,$f0,$e0,$80,$00   ; byte


;
; ░▒▒▒░░░░
; ░▒▒▒▒▒░░
; ░▒▒▒▒▒▒▒
; ░▒▒▒█▒▒▒
; ░▒▒▒█▒▒▒
; ░▒▒▒▒█▒▒
; ░▒▒▒▒▒▒▒
; ░▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_16__KEY_SALESMAN_18:
    .byte $8f,$83,$80,$88,$88,$84,$80,$80   ; byte
    .byte $70,$7c,$7f,$7f,$7f,$7f,$7f,$7f   ; byte


;
; ░░░░░░..
; ░░░░░░..
; ▒▒░░░░..
; ▒▒▒░░░..
; ▒▒▒▒░░..
; ▒▒▒▒░░..
; ▒▒░░░░░.
; ▒▒▒▒░░░.
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_17:
    .byte $fc,$fc,$3c,$1c,$0c,$0c,$3e,$0e   ; byte
    .byte $00,$00,$c0,$e0,$f0,$f0,$c0,$f0   ; byte


;
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; .▒▒▒▒▒▒▒
; █..▒▒▒▒▒
; ███..▒▒▒
; █████...
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_20__KEY_SALESMAN_24:
    .byte $00,$00,$00,$00,$00,$80,$e0,$f8   ; byte
    .byte $ff,$ff,$ff,$ff,$7f,$9f,$e7,$f8   ; byte


;
; ▒▒▒▒░░░.
; ▒▒▒▒▒░░.
; ▒▒▒▒▒▒░.
; ▒▒▒▒▒▒▒.
; ▒▒▒▒▒▒░.
; ▒▒▒▒▒..█
; ▒▒▒..███
; ░░.███▒▒
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_21__KEY_SALESMAN_25:
    .byte $0e,$06,$02,$00,$02,$01,$07,$dc   ; byte
    .byte $f0,$f8,$fc,$fe,$fc,$f9,$e7,$1f   ; byte


;
; ████.░░.
; ████.░▒▒
; ████.▒▒▒
; ████.▒▒▒
; ████.▒▒▒
; ████.░▒▒
; ████░░▒▒
; █████.▒▒
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_17:
    .byte $f6,$f4,$f0,$f0,$f0,$f4,$fc,$f8   ; byte
    .byte $f0,$f3,$f7,$f7,$f7,$f3,$f3,$fb   ; byte


;
; ▒▒▒░.███
; ▒▒▒▒░.██
; ▒▒▒▒░.██
; ▒▒▒▒▒░.█
; ▒▒▒▒▒▒.█
; ▒▒▒▒▒▒▒.
; ▒▒▒▒▒▒▒.
; ▒▒▒▒▒▒▒.
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_28:
    .byte $17,$0b,$0b,$05,$01,$00,$00,$00   ; byte
    .byte $e7,$f3,$f3,$f9,$fd,$fe,$fe,$fe   ; byte


;
; █▒██████
; █.██████
; █.██████
; .███████
; .███████
; .███████
; ░███████
; ████████
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_29:
    .byte $bf,$bf,$bf,$7f,$7f,$7f,$ff,$ff   ; byte
    .byte $ff,$bf,$bf,$7f,$7f,$7f,$7f,$ff   ; byte


;
; ........
; ........
; ░.......
; ▒░█.....
; ▒▒.█....
; ▒▒.██...
; ▒▒▒.█...
; ▒▒▒.██..
;
TILES_PORTRAITS_75:
    .byte $00,$00,$80,$60,$10,$18,$08,$0c   ; byte
    .byte $00,$00,$00,$a0,$d0,$d8,$e8,$ec   ; byte


;
; ░▒▒▒▒▒▒▒
; ░▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ░▒▒▒▒▒▒▒
; ░▒▒▒▒▒▒▒
; ░▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_30:
    .byte $80,$80,$00,$00,$00,$80,$80,$80   ; byte
    .byte $7f,$7f,$ff,$ff,$ff,$7f,$7f,$7f   ; byte


;
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒░▒▒
; ▒▒▒▒▒░▒▒
; ▒▒▒▒░▒▒▒
; ▒▒░░▒▒▒▒
; ░░░▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_10:
    .byte $00,$00,$04,$04,$08,$30,$e0,$00   ; byte
    .byte $ff,$ff,$fb,$fb,$f7,$cf,$1f,$ff   ; byte


;
; ....░▒▒▒
; .....▒▒░
; ....░▒▒▒
; ....░...
; ...░▒▒.█
; ..░▒█.█▒
; ..░██.▒░
; .░▒█▒.░░
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_32:
    .byte $08,$01,$08,$08,$11,$2a,$39,$53   ; byte
    .byte $07,$06,$07,$00,$0d,$1b,$1a,$38   ; byte


;
; ▒░█▒▒▒██
; ▒░█▒▒.▒▒
; ░█▒▒▒░..
; ██▒▒▒▒▒░
; █▒▒▒▒▒▒▒
; ▒▒█░▒▒▒█
; ░▒▒█░▒██
; ░░▒▒.▒█▒
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_33:
    .byte $63,$60,$c4,$c1,$80,$31,$9b,$c2   ; byte
    .byte $bf,$bb,$78,$fe,$ff,$ef,$77,$37   ; byte


;
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ..░░░▒▒▒
; ▒▒▒▒▒▒▒▒
; █▒▒▒▒▒▒▒
; █▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_34:
    .byte $00,$00,$00,$38,$00,$80,$80,$00   ; byte
    .byte $ff,$ff,$ff,$07,$ff,$ff,$ff,$ff   ; byte


;
; ........
; ........
; .......▒
; ......██
; .....▒██
; .....██▒
; ....▒█▒█
; ....██▒█
;
; XREFS:
;     SPRITE_TILES_PORTRAIT_ADDRS_MAGICIAN [$PRG8::9285]
;
SPRITE_TILES_PORTRAIT_MAGICIAN_00:
    .byte $00,$00,$00,$03,$03,$06,$05,$0d   ; byte
    .byte $00,$00,$01,$03,$07,$07,$0f,$0f   ; byte


;
; ...████░
; .███▒▒██
; ███▒██▒▒
; ██▒██▒██
; ▒█▒█▒██▒
; █▒██▒██.
; ▒█████.▒
; ▒███▒.▒▒
;
SPRITE_TILES_PORTRAIT_MAGICIAN_01:
    .byte $1f,$73,$ec,$db,$56,$b6,$7c,$70   ; byte
    .byte $1e,$7f,$ff,$ff,$ff,$fe,$fd,$fb   ; byte


;
; ...█▒██░
; ...█▒█░█
; ...█░░██
; ..█░████
; ..█▒░███
; ..█▒▒░..
; .░▒▒█.░░
; .░███.▒▒
;
SPRITE_TILES_PORTRAIT_MAGICIAN_02:
    .byte $17,$17,$1f,$3f,$2f,$24,$4b,$78   ; byte
    .byte $1e,$1d,$13,$2f,$37,$38,$38,$3b   ; byte


;
; ░███░▒▒█
; █████░▒▒
; ██████░▒
; ███████░
; ...████░
; .▒▒..█.░
; ██.▒.▒.▒
; █..▒▒..▒
;
SPRITE_TILES_PORTRAIT_MAGICIAN_03:
    .byte $f9,$fc,$fe,$ff,$1f,$05,$c0,$80   ; byte
    .byte $77,$fb,$fd,$fe,$1e,$64,$d5,$99   ; byte


;
; .▒██▒.▒░
; .▒██▒▒.▒
; .▒▒██▒.▒
; .░▒██▒.▒
; .█▒█▒.▒▒
; .▒▒█▒.▒█
; .█▒█▒.▒█
; .▒▒▒█░██
;
SPRITE_TILES_PORTRAIT_MAGICIAN_04:
    .byte $31,$30,$18,$58,$50,$11,$51,$0f   ; byte
    .byte $7a,$7d,$7d,$3d,$7b,$7b,$7b,$7b   ; byte


;
; ▒▒▒░░░▒█
; ░░░░▒▒▒█
; ▒▒░▒.▒██
; ░░▒▒.▒▒█
; ▒▒▒▒...▒
; █▒▒░░▒░.
; ▒▒░░████
; ▒░░█████
;
SPRITE_TILES_PORTRAIT_MAGICIAN_05:
    .byte $1d,$f1,$23,$c1,$00,$9a,$3f,$7f   ; byte
    .byte $e3,$0f,$d7,$37,$f1,$e4,$cf,$9f   ; byte


;
; .▒▒█▒.▒▒
; .█▒▒▒.▒▒
; .▒▒░█.░░
; .█▒░█▒.░
; .▒▒▒░▒░.
; .░▒█▒▒░█
; .▒▒█▒▒░█
; .█▒█▒▒░█
;
SPRITE_TILES_PORTRAIT_MAGICIAN_06:
    .byte $10,$40,$1b,$59,$0a,$53,$13,$53   ; byte
    .byte $7b,$7b,$68,$6c,$74,$3d,$7d,$7d   ; byte


;
; ▒░██████
; ░███████
; ░███████
; ██████▒▒
; █████▒..
; ████▒.▒█
; ██▒▒░█▒▒
; ▒▒░░░▒░░
;
SPRITE_TILES_PORTRAIT_MAGICIAN_07:
    .byte $7f,$ff,$ff,$fc,$f8,$f1,$cc,$3b   ; byte
    .byte $bf,$7f,$7f,$ff,$fc,$fb,$f7,$c4   ; byte


;
; .░▒▒▒▒░.
; .░▒▒▒▒░░
; .░▒▒▒░.▒
; .░░▒░░.░
; .░░░░▒..
; .░▒▒█▒░.
; .░▒█▒░█░
; .░▒█▒░▒█
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_35:
    .byte $42,$43,$44,$6d,$78,$4a,$57,$55   ; byte
    .byte $3c,$3c,$39,$10,$04,$3c,$3a,$3b   ; byte


;
; ░.░░.▒▒▒
; ░░░░░▒▒▒
; █▒▒▒░▒▒▒
; ▒▒▒▒░▒▒▒
; ....░░▒▒
; .....░░▒
; ...░▒▒░░
; ██▒▒▒▒░▒
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_36:
    .byte $b0,$f8,$88,$08,$0c,$06,$13,$c2   ; byte
    .byte $07,$07,$f7,$f7,$03,$01,$0c,$fd   ; byte


;
; ░░▒▒░..░
; ▒▒▒▒.███
; ▒▒▒.███▒
; ▒▒.███▒.
; ▒▒.██▒.▒
; ▒.███▒.▒
; .███▒.▒▒
; .██▒..▒▒
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_16:
    .byte $c9,$07,$0e,$1c,$18,$38,$70,$60   ; byte
    .byte $30,$f7,$ef,$de,$dd,$bd,$7b,$73   ; byte


;
; ░░░░░░░░
; ░█▒▒░░░░
; ░▒█▒▒░░░
; ▒░▒▒▒▒▒▒
; ░▒░░░▒░░
; ░▒▒▒▒▒▒▒
; ▒░█▒▒▒▒▒
; ▒▒░░▒▒▒▒
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_17:
    .byte $ff,$cf,$a7,$40,$bb,$80,$60,$30   ; byte
    .byte $00,$70,$78,$bf,$44,$7f,$bf,$cf   ; byte


;
; ░..░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░▒░░░░░░
; ▒▒▒░░░░░
; ▒▒▒▒▒░░.
; ▒▒▒▒▒▒.█
; ▒▒▒▒▒░██
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_18:
    .byte $9f,$ff,$ff,$bf,$1f,$06,$01,$07   ; byte
    .byte $00,$00,$00,$40,$e0,$f8,$fd,$fb   ; byte


;
; ░.......
; ░░░░....
; ░░░.....
; ░..█████
; .███████
; ████████
; ███▒....
; ██▒.░▒▒▒
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_19:
    .byte $80,$f0,$e0,$9f,$7f,$ff,$e0,$c8   ; byte
    .byte $00,$00,$00,$1f,$7f,$ff,$f0,$e7   ; byte


;
; ███▒.▒▒▒
; ███▒.▒▒▒
; ██▒.▒▒▒▒
; ██▒.▒▒▒▒
; ██▒.▒▒▒▒
; █▒.▒▒▒▒▒
; █▒.▒▒▒▒▒
; █▒.▒▒▒▒▒
;
    .byte $e0,$e0,$c0,$c0,$c0,$80,$80,$80   ; byte
    .byte $f7,$f7,$ef,$ef,$ef,$df,$df,$df   ; byte


;
; ░▒█▒█▒██
; ░▒█▒█▒█▒
; ░░▒▒███▒
; ░░▒▒█▒██
; ░░░▒▒▒█▒
; █░░░▒▒█▒
; █░░░░▒▒█
; ░█░░░░░▒
;
SPRITE_TILES_PORTRAIT_KING_15__MAGICIAN_10:
    .byte $ab,$aa,$ce,$cb,$e2,$f2,$f9,$fe   ; byte
    .byte $7f,$7f,$3f,$3f,$1f,$8f,$87,$41   ; byte


;
; ▒▒▒▒▒.██
; ▒▒▒▒▒.██
; ▒▒▒▒.███
; ▒▒▒▒.███
; ▒▒▒▒.██▒
; ▒▒▒▒.██▒
; ▒▒▒▒.██▒
; ▒▒▒▒.██▒
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_24:
    .byte $03,$03,$07,$07,$06,$06,$06,$06   ; byte
    .byte $fb,$fb,$f7,$f7,$f7,$f7,$f7,$f7   ; byte


;
; █▒.▒▒▒▒▒
; ▒.▒▒▒▒▒▒
; ▒.▒▒▒▒▒▒
; .▒▒▒▒▒▒▒
; .▒▒▒▒▒▒▒
; .▒▒▒▒▒▒▒
; .▒▒▒▒▒▒▒
; .▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_25:
    .byte $80,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $df,$bf,$bf,$7f,$7f,$7f,$7f,$7f   ; byte


;
; ▒░░░..░░
; █░░█░░..
; ▒█░██░░▒
; █▒░░██░░
; ▒▒█░███▒
; █▒▒█░███
; ▒█▒█░░██
; ░▒█▒░░▒░
;
SPRITE_TILES_PORTRAIT_KING_18__GURU_10__MAGICIAN_13:
    .byte $73,$fc,$7e,$bf,$3e,$9f,$5f,$ad   ; byte
    .byte $80,$90,$d9,$cc,$ef,$f7,$f3,$72   ; byte


;
; ▒▒▒▒░...
; ▒▒▒▒▒...
; ▒▒▒▒▒░..
; ▒▒▒▒▒▒..
; ▒▒▒▒▒▒..
; ▒▒▒▒▒▒░.
; ▒▒▒▒▒▒▒.
; ▒▒▒▒▒▒▒.
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_26:
    .byte $08,$00,$04,$00,$00,$02,$00,$00   ; byte
    .byte $f0,$f8,$f8,$fc,$fc,$fc,$fe,$fe   ; byte


;
; ▒█▒▒░█░▒
; ▒█▒█░██░
; ▒█▒▒░▒█░
; ▒▒█▒░▒▒░
; █▒█▒░█░▒
; █▒█▒░██░
; ▒█▒█░▒█░
; ▒█▒█░▒▒▒
;
SPRITE_TILES_PORTRAIT_KING_19:
    .byte $4e,$5f,$4b,$29,$ae,$af,$5b,$58   ; byte
    .byte $f5,$f6,$f6,$f6,$f5,$f6,$f6,$f7   ; byte


;
; ........
; ........
; ........
; ░.......
; ▒░......
; ▒▒░.....
; ░░░░....
; ▒▒▒░....
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_20:
    .byte $00,$00,$00,$80,$40,$20,$f0,$10   ; byte
    .byte $00,$00,$00,$00,$80,$c0,$00,$e0   ; byte


;
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_31:
    .byte $01,$01,$01,$00,$00,$00,$00,$00   ; byte
    .byte $fe,$fe,$fe,$ff,$ff,$ff,$ff,$ff   ; byte


;
; .......░
; ......░█
; ......▒█
; .....░██
; .....░█░
; .....░█░
; ....░██░
; ....░██░
;
; XREFS:
;     SPRITE_TILES_PORTRAIT_ADDRS_MARTIAL_ARTIST
;     [$PRG8::9265]
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_00:
    .byte $01,$03,$01,$07,$07,$07,$0f,$0f   ; byte
    .byte $00,$01,$03,$03,$02,$02,$06,$06   ; byte


;
; █▒██▒█▒█
; ██▒█▒█▒█
; █░░░░█▒█
; ░▒██▒░.▒
; ░▒█▒▒▒.▒
; ▒▒██▒▒▒.
; ░███▒▒▒▒
; █▒███▒▒▒
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_01:
    .byte $b5,$d5,$fd,$b4,$a0,$30,$f0,$b8   ; byte
    .byte $ff,$ff,$87,$79,$7d,$fe,$7f,$ff   ; byte


;
; ▒██▒▒▒░░
; ▒█▒▒▒░░░
; █....░▒▒
; ▒.▒▒▒░░.
; .▒▒▒▒▒░.
; ▒▒▒▒▒▒░░
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒▒▒░
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_02:
    .byte $63,$47,$84,$06,$02,$03,$01,$01   ; byte
    .byte $fc,$f8,$83,$b8,$7c,$fc,$fe,$fe   ; byte


;
; ░.......
; ░░......
; ░░......
; ░░░.....
; ▒░░.....
; .▒░░....
; .▒░░....
; .░░░....
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_03:
    .byte $80,$c0,$c0,$e0,$60,$30,$30,$70   ; byte
    .byte $00,$00,$00,$00,$80,$40,$40,$00   ; byte


;
; ....░██░
; ....░██░
; ....░▒█▒
; ....░▒░█
; ...░░▒░█
; ..░▒░░░█
; ..░█▒▒▒.
; ...▒▒▒▒█
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_04:
    .byte $0f,$0f,$0a,$0b,$1b,$2f,$30,$01   ; byte
    .byte $06,$06,$07,$05,$05,$11,$1e,$1f   ; byte


;
; █▒▒██▒▒▒
; ░░░▒▒▒▒▒
; ░...▒▒▒░
; █▒░░..░░
; ▒...░░.▒
; .███.░░▒
; ███░█.░█
; ▒█..█░░█
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_05:
    .byte $98,$e0,$81,$b3,$0c,$76,$fb,$4f   ; byte
    .byte $ff,$1f,$0e,$c0,$81,$71,$e9,$c9   ; byte


;
; ▒▒▒▒▒▒▒░
; ▒▒▒▒░░░░
; ▒░░░....
; ▒....░░░
; ▒..░...░
; ▒░░..██.
; ▒░.▒█.██
; ▒░░█.░█▒
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_06:
    .byte $01,$0f,$70,$07,$11,$66,$4b,$76   ; byte
    .byte $fe,$f0,$80,$80,$80,$86,$9b,$93   ; byte


;
; ░░▒░....
; ░.▒░....
; ░.▒░....
; ..▒░....
; ░.▒░.░..
; ▒░░░░▒..
; ░▒░.▒░..
; .▒░▒░░..
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_07:
    .byte $d0,$90,$90,$10,$94,$78,$a4,$2c   ; byte
    .byte $20,$20,$20,$20,$20,$84,$48,$50   ; byte


;
; ...░░▒██
; ...░▒▒██
; ...░░▒██
; ....░▒▒█
; ....░▒▒█
; ....░░▒▒
; ....░░▒▒
; .....░▒▒
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_08:
    .byte $1b,$13,$1b,$09,$09,$0c,$0c,$04   ; byte
    .byte $07,$0f,$07,$07,$07,$03,$03,$03   ; byte


;
; ▒▒▒▒▒░▒█
; ▒▒▒▒░░██
; █▒░░░▒██
; ▒▒▒▒░.▒█
; ▒▒▒▒░░.▒
; ▒▒▒▒░▒░.
; ▒▒▒░▒▒▒░
; ▒▒░▒▒░░▒
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_09:
    .byte $05,$0f,$bb,$09,$0c,$0a,$11,$26   ; byte
    .byte $fb,$f3,$c7,$f3,$f1,$f4,$ee,$d9   ; byte


;
; ▒░░▒▒▒▒▒
; ▒▒░░▒▒▒▒
; ▒▒.░░▒▒░
; ▒▒.░▒░░▒
; ▒.▒░▒▒▒▒
; .░░░░▒▒▒
; ▒░░░░▒▒▒
; ▒░░░░▒▒▒
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_10:
    .byte $60,$30,$19,$16,$10,$78,$78,$78   ; byte
    .byte $9f,$cf,$c6,$c9,$af,$07,$87,$87   ; byte


;
; ▒░░░░░..
; ▒░░.░░..
; ▒░░.░░..
; ▒░░.░░..
; ▒░░░░...
; ▒▒░░░...
; ▒▒░.....
; ▒░░.....
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_11:
    .byte $7c,$6c,$6c,$6c,$78,$38,$20,$60   ; byte
    .byte $80,$80,$80,$80,$80,$c0,$c0,$80   ; byte


;
; .....░▒▒
; .....░▒▒
; .....░▒▒
; .....░▒▒
; .....░░▒
; ......░▒
; ......░░
; .......░
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_12:
    .byte $04,$04,$04,$04,$06,$02,$03,$01   ; byte
    .byte $03,$03,$03,$03,$01,$01,$00,$00   ; byte


;
; ▒▒▒....░
; ▒▒.░▒███
; ▒▒░▒███▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒░░
; ▒▒▒▒▒░░.
; ▒▒▒▒▒▒██
; ▒▒▒▒▒█▒▒
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_13:
    .byte $01,$17,$2e,$00,$03,$06,$03,$04   ; byte
    .byte $e0,$cf,$df,$ff,$fc,$f8,$ff,$ff   ; byte


;
; ░░..░▒▒▒
; █▒▒▒..▒▒
; ▒▒▒▒▒.▒▒
; ▒▒▒▒▒▒▒▒
; ░░▒▒▒▒▒░
; .░░▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_14:
    .byte $c8,$80,$00,$00,$c1,$60,$00,$00   ; byte
    .byte $07,$f3,$fb,$ff,$3e,$1f,$ff,$ff   ; byte


;
; ▒░░.....
; ▒░░.....
; ░░░.....
; ░░░.....
; ▒░░.....
; ▒░░.....
; ▒░......
; ░░......
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_15:
    .byte $60,$60,$e0,$e0,$60,$60,$40,$c0   ; byte
    .byte $80,$80,$00,$00,$80,$80,$80,$00   ; byte


;
; █▒▒██▒▒▒
; ░░░▒▒▒▒▒
; ░...▒▒▒░
; █▒░░..░░
; ▒▒▒▒░░.▒
; ▒██▒▒░░▒
; ░▒▒▒░.░█
; ▒....░░█
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_27:
    .byte $98,$e0,$81,$b3,$0c,$66,$8b,$07   ; byte
    .byte $ff,$1f,$0e,$c0,$f1,$f9,$71,$81   ; byte


;
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ░░▒▒▒▒▒▒
; .░░▒▒▒▒▒
; ░.░░░░▒▒
; ▒░.░░░░░
; ██░..░░░
; ░██░░...
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_18:
    .byte $00,$00,$c0,$60,$bc,$5f,$e7,$f8   ; byte
    .byte $ff,$ff,$3f,$1f,$03,$80,$c0,$60   ; byte


;
; ░.....░▒
; ▒░░░..█░
; ███▒░██░
; ▒█▒▒░██░
; ▒▒▒░░▒█▒
; ▒▒░░░░██
; ▒░░░░░░█
; ░▒░░░░░░
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_17:
    .byte $82,$73,$ef,$4f,$1a,$3f,$7f,$bf   ; byte
    .byte $01,$82,$f6,$f6,$e7,$c3,$81,$40   ; byte


;
; ░░░░░░░░
; ▒▒▒▒████
; ▒▒██████
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_16:
    .byte $ff,$0f,$3f,$00,$00,$00,$00,$00   ; byte
    .byte $00,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; byte


;
; ░▒░░▒▒▒░
; ░▒▒▒░░▒▒
; ░▒▒▒▒░░░
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒██▒▒▒▒▒
; ██▒▒▒▒▒▒
; ██▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_20:
    .byte $b1,$8c,$87,$00,$00,$60,$c0,$c0   ; byte
    .byte $4e,$73,$78,$ff,$ff,$ff,$ff,$ff   ; byte


;
; ░░██▒░░░
; ▒░░░██░░
; ▒▒▒░░░░░
; ▒▒▒▒▒▒░░
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒▒▒░
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_21:
    .byte $f7,$7f,$1f,$03,$01,$01,$01,$01   ; byte
    .byte $38,$8c,$e0,$fc,$fe,$fe,$fe,$fe   ; byte


;
; ▒▒░░░░░░
; ░░░▒█▒.░
; ░░██▒.░░
; ░██▒░.░░
; █▒░▒.░░░
; ▒░▒.░░░▒
; ░▒..░░▒▒
; ▒█.░░▒▒▒
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_19:
    .byte $3f,$e9,$f3,$eb,$a7,$4e,$8c,$58   ; byte
    .byte $c0,$1c,$38,$70,$d0,$a1,$43,$c7   ; byte


;
; ▒▒▒▒▒░░░
; ▒▒▒▒░░░░
; ░▒░░░▒▒░
; ▒▒▒▒▒▒░▒
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒▒░░
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_24:
    .byte $07,$0f,$b9,$02,$01,$01,$01,$03   ; byte
    .byte $f8,$f0,$46,$fd,$fe,$fe,$fe,$fc   ; byte


;
; ███▒▒░░█
; ████▒░██
; ███▒▒░██
; ████▒░██
; ███▒▒░██
; ███▒▒░██
; ████▒░██
; ███▒▒░▒█
;
SPRITE_TILES_PORTRAIT_MAGICIAN_11:
    .byte $e7,$f7,$e7,$f7,$e7,$e7,$f7,$e5   ; byte
    .byte $f9,$fb,$fb,$fb,$fb,$fb,$fb,$fb   ; byte


;
; █▒.░░▒▒█
; ▒░.░░▒▒█
; ░▒.░░▒▒█
; ▒█.░░▒▒▒
; █▒.░░░▒▒
; ▒░..░░▒▒
; ░░..░░░▒
; ░█.░.░░░
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_22:
    .byte $99,$59,$99,$58,$9c,$4c,$ce,$d7   ; byte
    .byte $c7,$87,$47,$c7,$c3,$83,$01,$40   ; byte


;
; ██▒▒▒▒▒▒
; ██▒▒▒▒▒▒
; ██▒▒▒▒▒▒
; ██▒▒▒▒▒▒
; ██▒▒▒▒▒▒
; ████▒▒▒▒
; ▒▒████▒█
; ▒▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_23:
    .byte $c0,$c0,$c0,$c0,$c0,$f0,$3d,$00   ; byte
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; byte


;
; █▒.░░.░░
; ▒░.░░░.░
; ░░.░░░░.
; ░▒.░░░░░
; ▒░.░░░░░
; ▒░.░░░░▒
; ▒..░░░▒▒
; ▒..░░░▒▒
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_25:
    .byte $9b,$5d,$de,$9f,$5f,$5e,$1c,$1c   ; byte
    .byte $c0,$80,$00,$40,$80,$81,$83,$83   ; byte


;
; ░░░▒▒▒▒▒
; ░░░░░░▒▒
; ░░░░░░░░
; ░░░▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒█▒█▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_26:
    .byte $e0,$fc,$ff,$e0,$00,$50,$00,$00   ; byte
    .byte $1f,$03,$00,$1f,$ff,$ff,$ff,$ff   ; byte


;
; ▒▒▒▒▒▒▒░
; ▒▒▒▒░░░░
; ▒░░░....
; ▒....░░░
; ▒..░▒▒▒░
; ▒░░▒█▒▒▒
; ▒░.▒▒▒▒.
; ▒░░....▒
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_28:
    .byte $01,$0f,$70,$07,$11,$68,$40,$60   ; byte
    .byte $fe,$f0,$80,$80,$8e,$9f,$9e,$81   ; byte


;
; ▒▒▒░...░
; ▒▒░.....
; ▒▒░▒░...
; ▒▒▒▒██▒▒
; ▒▒▒▒▒███
; ▒▒▒▒▒▒▒░
; ▒▒▒▒░░▒▒
; ▒▒▒▒▒▒██
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_29:
    .byte $11,$20,$28,$0c,$07,$01,$0c,$03   ; byte
    .byte $e0,$c0,$d0,$ff,$ff,$fe,$f3,$ff   ; byte


;
; ░░..░▒▒▒
; .....░▒▒
; ...░░░▒▒
; ▒▒▒▒▒░▒▒
; █▒▒▒▒▒▒░
; ░░▒▒▒▒▒▒
; ▒▒░▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_MARTIAL_ARTIST_30:
    .byte $c8,$04,$1c,$04,$81,$c0,$20,$00   ; byte
    .byte $07,$03,$03,$fb,$fe,$3f,$df,$ff   ; byte


;
; ░███░▒▒█
; █████░▒▒
; ██████░▒
; ███████░
; ...████░
; ░▒▒..█.░
; ▒▒▒▒.▒.▒
; .......▒
;
SPRITE_TILES_PORTRAIT_MAGICIAN_16:
    .byte $f9,$fc,$fe,$ff,$1f,$85,$00,$00   ; byte
    .byte $77,$fb,$fd,$fe,$1e,$64,$f5,$01   ; byte


;
; ▒░██████
; ░███████
; ░██████▒
; █████▒░░
; █████░..
; ████▒...
; ██▒▒░▒██
; ▒▒░░░▒░░
;
SPRITE_TILES_PORTRAIT_MAGICIAN_17:
    .byte $7f,$ff,$fe,$fb,$fc,$f0,$cb,$3b   ; byte
    .byte $bf,$7f,$7f,$fc,$f8,$f8,$f7,$c4   ; byte


;
; █..▒.█..
; .█.▒░.█.
; .▒█.▒.█.
; ..█░░..█
; ..█▒░░.█
; ..█▒░░░█
; ..██░░.█
; ..██▒.▒▒
;
; XREFS:
;     SPRITE_TILES_PORTRAIT_ADDRS_KING [$PRG8::923a]
;
SPRITE_TILES_PORTRAIT_KING_00:
    .byte $84,$4a,$22,$39,$2d,$2f,$3d,$30   ; byte
    .byte $94,$52,$6a,$21,$31,$31,$31,$3b   ; byte


;
; .▒.....█
; .▒..█.░▒
; .▒▒.█.░░
; .░░.▒█.█
; ░....▒▒█
; ▒░░▒▒░░▒
; █░░▒██░░
; █░░▒█▒░▒
;
SPRITE_TILES_PORTRAIT_KING_01:
    .byte $01,$0a,$0b,$65,$81,$66,$ef,$ea   ; byte
    .byte $41,$49,$68,$0d,$07,$99,$9c,$9d   ; byte


;
; ..▒██.▒▒
; ..░▒▒█.▒
; ...░██▒.
; ....▒▒▒░
; .....░..
; ...░▒█░░
; ..░▒█░░█
; ..▒██░██
;
SPRITE_TILES_PORTRAIT_KING_02:
    .byte $18,$24,$1c,$01,$04,$17,$2f,$1f   ; byte
    .byte $3b,$1d,$0e,$0e,$00,$0c,$19,$3b   ; byte


;
; ██░░▒░▒█
; ▒██░░░▒█
; ▒▒███░▒▒
; .▒▒▒▒░░░
; ░..░..░.
; ███████▒
; ██████▒▒
; ██▒█░░░▒
;
SPRITE_TILES_PORTRAIT_KING_03:
    .byte $f5,$7d,$3c,$07,$92,$fe,$fc,$de   ; byte
    .byte $cb,$e3,$fb,$78,$00,$ff,$ff,$f1   ; byte


;
; ..░▒░▒██
; ..▒█░██▒
; .▒██░█░░
; .▒█▒░░░░
; .▒██░░▒▒
; .▒█▒░▒█▒
; .▒█▒░▒██
; .▒█▒░▒▒█
;
SPRITE_TILES_PORTRAIT_KING_04:
    .byte $2b,$1e,$3f,$2f,$3c,$2a,$2b,$29   ; byte
    .byte $17,$37,$74,$70,$73,$77,$77,$77   ; byte


;
; ▒....░▒░
; .░█..▒░░
; ██..█▒░▒
; ████▒░▒▒
; ▒▒▒▒░░▒█
; ▒▒▒░░▒▒█
; ░░░▒.▒▒▒
; █▒▒▒░.░▒
;
SPRITE_TILES_PORTRAIT_KING_05:
    .byte $05,$63,$ca,$f4,$0d,$19,$e0,$8a   ; byte
    .byte $82,$24,$cd,$fb,$f3,$e7,$17,$f1   ; byte


;
; ░░.....▒
; ░░▒.█░..
; ▒░▒█..██
; ▒▒░████▒
; █▒░░▒▒▒░
; █▒▒░▒░░▒
; ▒▒▒.▒███
; ▒░.░▒▒▒▒
;
SPRITE_TILES_PORTRAIT_KING_06:
    .byte $c0,$cc,$53,$3e,$b1,$96,$07,$50   ; byte
    .byte $01,$28,$b3,$df,$ce,$e9,$ef,$8f   ; byte


;
; ██▒░█▒░.
; ▒██░▒█▒.
; ░░█░█▒█.
; ░░░░██▒.
; ▒▒░░▒██.
; █▒▒░██▒.
; ▒▒▒░█▒█.
; ▒▒▒░███.
;
SPRITE_TILES_PORTRAIT_KING_07:
    .byte $da,$74,$fa,$fc,$36,$9c,$1a,$1e   ; byte
    .byte $ec,$ee,$2e,$0e,$ce,$ee,$ee,$ee   ; byte


;
; .▒█▒░▒▒▒
; .▒██░▒▒▒
; .▒██░░░░
; .█▒██░██
; .▒██████
; .███████
; .█▒██▒██
; .█▒█▒███
;
SPRITE_TILES_PORTRAIT_KING_08:
    .byte $28,$38,$3f,$5f,$3f,$7f,$5b,$57   ; byte
    .byte $77,$77,$70,$7b,$7f,$7f,$7f,$7f   ; byte


;
; ▒▒▒░██..
; ░██████▒
; ████████
; ███████░
; █████░░▒
; ███▒░░░░
; █▒▒░░▒▒█
; ▒█▒░▒▒▒▒
;
SPRITE_TILES_PORTRAIT_KING_09:
    .byte $1c,$fe,$ff,$ff,$fe,$ef,$99,$50   ; byte
    .byte $ec,$7f,$ff,$fe,$f9,$f0,$e7,$ef   ; byte


;
; .▒█░▒██░
; .▒█▒▒▒▒▒
; .▒▒▒░██▒
; ░▒█▒▒█▒▒
; ▒░█░▒██▒
; ▒░█░▒█▒▒
; ░█▒█▒██▒
; ░█▒█▒▒█▒
;
SPRITE_TILES_PORTRAIT_KING_11__MAGICIAN_09:
    .byte $37,$20,$0e,$a4,$76,$74,$d6,$d2   ; byte
    .byte $6e,$7f,$77,$7f,$af,$af,$7f,$7f   ; byte


;
; ▒█▒▒▒▒░░
; ████▒░██
; ████████
; ████████
; ██▒█████
; ▒█▒█▒███
; ▒█▒█▒███
; ▒▒█▒████
;
SPRITE_TILES_PORTRAIT_KING_12:
    .byte $43,$f7,$ff,$ff,$df,$57,$57,$2f   ; byte
    .byte $fc,$fb,$ff,$ff,$ff,$ff,$ff,$ff   ; byte


;
; ........
; ........
; ........
; .......░
; .....░░▒
; ....█░▒▒
; ..██▒░▒▒
; .█▒▒░▒█▒
;
SPRITE_TILES_PORTRAIT_KING_10:
    .byte $00,$00,$00,$01,$06,$0c,$34,$4a   ; byte
    .byte $00,$00,$00,$00,$01,$0b,$3b,$77   ; byte


;
; ▒█▒▒█░█▒
; ░▒█▒█░▒█
; ░▒█▒██░█
; ░▒█▒██░█
; ░▒█░█░██
; ▒█▒█░█░▒
; ░█░█░█░▒
; ░░░░░░█░
;
SPRITE_TILES_PORTRAIT_KING_14:
    .byte $4e,$ad,$af,$af,$bf,$5e,$fe,$ff   ; byte
    .byte $fb,$7b,$7d,$7d,$6b,$f5,$55,$02   ; byte


;
; █▒█░░██▒
; ▒█▒░▒██▒
; ██░▒███▒
; █▒░▒███░
; ▒█░▒████
; ██▒░▒██▒
; ██▒░▒██▒
; █▒░▒███▒
;
SPRITE_TILES_PORTRAIT_KING_13:
    .byte $be,$56,$ee,$af,$6f,$d6,$d6,$ae   ; byte
    .byte $e7,$ef,$df,$de,$df,$ef,$ef,$df   ; byte


;
; █▒░░▒▒▒█
; █▒▒░░▒█▒
; ██▒▒░▒▒█
; █▒▒░░▒▒▒
; █▒▒░░░▒█
; ██▒▒░░▒▒
; █▒▒░░▒▒█
; █▒▒░░▒▒▒
;
SPRITE_TILES_PORTRAIT_KING_17:
    .byte $b1,$9a,$c9,$98,$9d,$cc,$99,$98   ; byte
    .byte $cf,$e7,$f7,$e7,$e3,$f3,$e7,$e7   ; byte


;
; ▒██░░█▒█
; ▒██▒░▒█▒
; ▒███▒░██
; ░███▒░▒█
; ████▒░█▒
; ▒██▒░▒██
; ▒██▒░▒██
; ▒███▒░▒█
;
SPRITE_TILES_PORTRAIT_KING_16:
    .byte $7d,$6a,$77,$f5,$f6,$6b,$6b,$75   ; byte
    .byte $e7,$f7,$fb,$7b,$fb,$f7,$f7,$fb   ; byte


;
; ▒░░░░░▒░
; ▒█▒▒▒▒░░
; ▒▒▒░.▒░▒
; ....░░▒▒
; ▒▒▒▒░░▒█
; ▒▒▒░░▒▒█
; ░░░▒.▒▒▒
; █▒▒▒░.░▒
;
SPRITE_TILES_PORTRAIT_KING_20:
    .byte $7d,$43,$12,$0c,$0d,$19,$e0,$8a   ; byte
    .byte $82,$fc,$e5,$03,$f3,$e7,$17,$f1   ; byte


;
; ░░.░░░░▒
; ░░▒▒█▒▒▒
; ▒░▒.▒▒▒▒
; ▒▒░▒....
; █▒░░▒▒▒░
; █▒▒░▒░░▒
; ▒▒▒.▒███
; ▒░.░▒▒▒▒
;
SPRITE_TILES_PORTRAIT_KING_21:
    .byte $de,$c8,$40,$20,$b1,$96,$07,$50   ; byte
    .byte $01,$3f,$af,$d0,$ce,$e9,$ef,$8f   ; byte


;
; ▒▒▒░██..
; ░██████▒
; ████████
; ███████░
; █████░░▒
; ███▒░..░
; █▒▒░....
; ▒█▒░.▒██
;
SPRITE_TILES_PORTRAIT_KING_22:
    .byte $1c,$fe,$ff,$ff,$fe,$e9,$90,$53   ; byte
    .byte $ec,$7f,$ff,$fe,$f9,$f0,$e0,$e7   ; byte


;
; ........
; ........
; ........
; .......▒
; ......▒▒
; ....▒░▒▒
; ...▒▒░▒▒
; ..▒░▒░▒▒
;
; XREFS:
;     SPRITE_TILES_PORTRAIT_ADDRS_TOOLS_SALESMAN
;     [$PRG8::932d]
;
SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_00:
    .byte $00,$00,$00,$00,$00,$04,$04,$14   ; byte
    .byte $00,$00,$00,$01,$03,$0b,$1b,$2b   ; byte


;
; ...░░▒▒▒
; .░░▒▒▒▒▒
; ░▒▒▒▒▒▒▒
; ▒▒▒▒░░░░
; ▒▒▒▒▒▒▒▒
; ▒▒▒░░░░▒
; ▒░░▒▒▒▒░
; ▒▒▒▒░░▒▒
;
SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_01:
    .byte $18,$60,$80,$0f,$00,$1e,$61,$0c   ; byte
    .byte $07,$1f,$7f,$f0,$ff,$e1,$9e,$f3   ; byte


;
; ..░▒░.░▒
; .░▒░░.▒▒
; .░░▒░░.▒
; .░▒░░░.▒
; .░░░░░.▒
; ..░░░.▒▒
; .█▒░░.▒▒
; .▒█░░.▒▒
;
SPRITE_TILES_PORTRAIT_DOCTOR_04__TOOLS_SALESMAN_02:
    .byte $2a,$58,$6c,$5c,$7c,$38,$58,$38   ; byte
    .byte $11,$23,$11,$21,$01,$03,$63,$63   ; byte


;
; ▒▒░░▒▒░░
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒.▒
; ▒▒....░▒
; ▒.░░░░▒▒
; ░░▒▒▒▒▒▒
; .▒██▒▒░▒
; ▒▒▒▒▒▒░▒
;
SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_03:
    .byte $33,$00,$00,$02,$3c,$c0,$32,$02   ; byte
    .byte $cc,$ff,$fd,$c1,$83,$3f,$7d,$fd   ; byte


;
; .▒.▒░.▒▒
; .▒░.░░▒▒
; .▒▒░.░▒▒
; ..▒░.░▒▒
; ..▒░.░▒█
; ..▒▒░░▒▒
; ..▒▒░.░▒
; ...░░░░░
;
SPRITE_TILES_PORTRAIT_DOCTOR_08__TOOLS_SALESMAN_04:
    .byte $08,$2c,$14,$14,$15,$0c,$0a,$1f   ; byte
    .byte $53,$43,$63,$23,$23,$33,$31,$00   ; byte


;
; ▒....░░▒
; .▒█...░▒
; ▒█..█░▒▒
; ▒███▒░▒▒
; ▒▒▒▒░▒▒█
; ▒▒▒░.░▒▒
; ▒▒░.▒.░░
; ░░.▒▒░..
;
SPRITE_TILES_PORTRAIT_DOCTOR_09__TOOLS_SALESMAN_05:
    .byte $06,$22,$4c,$74,$09,$14,$23,$c4   ; byte
    .byte $81,$61,$cb,$fb,$f7,$e3,$c8,$18   ; byte


;
; ....░░.░
; ...░░░░.
; ...░░░░░
; ...░░░░░
; ....░░░░
; ....░░░░
; ....░░░░
; .....░░░
;
SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_06:
    .byte $0d,$1e,$1f,$1f,$0f,$0f,$0f,$07   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ..▒▒░░░░
; ░░░░░...
; ░░░░.░▒█
; ░░░.▒▒▒▒
; ░░░.▒░░░
; ░░░.▒▒..
; ░░░.▒▒▒.
; ░░░░░░.░
;
SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_07:
    .byte $0f,$f8,$f5,$e0,$e7,$e0,$e0,$fd   ; byte
    .byte $30,$00,$03,$0f,$08,$0c,$0e,$00   ; byte


;
; ▒▒▒▒.░░▒
; ▒█▒▒▒.░▒
; .▒▒▒.░▒▒
; ▒...▒░▒█
; ▒▒▒▒░▒▒█
; ▒▒▒░.░▒▒
; ▒▒░.▒.░░
; ░░.▒▒░..
;
SPRITE_TILES_PORTRAIT_DOCTOR_22__TOOLS_SALESMAN_19:
    .byte $06,$42,$04,$05,$09,$14,$23,$c4   ; byte
    .byte $f1,$f9,$73,$8b,$f7,$e3,$c8,$18   ; byte


;
; ..▒▒░░░░
; ░░░░░...
; ░░░░....
; ░░░.▒░▒█
; ░░░.▒▒▒▒
; ░░░.▒░░░
; ░░░.▒▒░.
; ░░░░░░.▒
;
SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_20:
    .byte $0f,$f8,$f0,$e5,$e0,$e7,$e2,$fc   ; byte
    .byte $30,$00,$00,$0b,$0f,$08,$0c,$01   ; byte


;
; ......░░
; ......░░
; .....░▒░
; .....░░░
; .....░▒░
; .....░░▒
; ....░░░░
; ....▒░░.
;
; XREFS:
;     SPRITE_TILES_PORTRAIT_ADDRS_GURU [$PRG8::9252]
;
SPRITE_TILES_PORTRAIT_GURU_00:
    .byte $03,$03,$05,$07,$05,$06,$0f,$06   ; byte
    .byte $00,$00,$02,$00,$02,$01,$00,$08   ; byte


;
; ░░░░▒░░▒
; ░▒▒█▒▒██
; ▒█▒█▒█▒▒
; ▒▒█▒█▒██
; ▒██▒█▒██
; ░▒█▒█▒██
; ░▒▒█░█▒▒
; ░░▒▒█▒▒█
;
SPRITE_TILES_PORTRAIT_GURU_01:
    .byte $f6,$93,$54,$2b,$6b,$ab,$9c,$c9   ; byte
    .byte $09,$7f,$ff,$ff,$ff,$7f,$77,$3f   ; byte


;
; ...░▒▒░░
; ...░██░░
; ...░▒▒.░
; ...░█▒.░
; ...░▒▒.▒
; ...░█▒.▒
; ...░▒▒.▒
; ...░█░.▒
;
SPRITE_TILES_PORTRAIT_GURU_02:
    .byte $13,$1f,$11,$19,$10,$18,$10,$1c   ; byte
    .byte $0c,$0c,$0c,$0c,$0d,$0d,$0d,$09   ; byte


;
; .....░▒▒
; ░▒▒▒░...
; ▒░░░░▒▒▒
; ░....░░▒
; .▒█▒..░░
; .██.█.░▒
; ▒█..█░░▒
; ▒▒▒░░░░▒
;
SPRITE_TILES_PORTRAIT_GURU_03:
    .byte $04,$88,$78,$86,$23,$6a,$4e,$1e   ; byte
    .byte $03,$70,$87,$01,$70,$69,$c9,$e1   ; byte


;
; ..░▒▒▒.░
; ..░▒█▒.░
; ..░▒▒▒.░
; ..░▒█▒.░
; ..░▒▒▒.░
; ..░██▒.░
; ..░▒▒▒.░
; ..░██░.░
;
SPRITE_TILES_PORTRAIT_GURU_04:
    .byte $21,$29,$21,$29,$21,$39,$21,$3d   ; byte
    .byte $1c,$1c,$1c,$1c,$1c,$1c,$1c,$18   ; byte


;
; ▒██▒▒░▒█
; ▒█▒▒▒░▒█
; ▒▒▒▒▒.░▒
; ░▒▒▒░░.░
; ▒░▒▒▒░░.
; ▒░▒▒▒▒░░
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒░░░
;
SPRITE_TILES_PORTRAIT_GURU_05:
    .byte $65,$45,$02,$8d,$46,$43,$01,$07   ; byte
    .byte $fb,$fb,$f9,$70,$b8,$bc,$fe,$f8   ; byte


;
; ..░▒▒▒▒.
; ..░██▒▒.
; ..░▒▒▒▒.
; ..░██▒▒▒
; ..░▒▒▒▒▒
; ..░██▒█▒
; ..░░▒▒▒▒
; ...▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_GURU_06:
    .byte $20,$38,$20,$38,$20,$3a,$30,$00   ; byte
    .byte $1e,$1e,$1e,$1f,$1f,$1f,$0f,$1f   ; byte


;
; ░▒▒▒░...
; ░▒▒▒▒▒▒█
; ░▒▒▒▒▒▒▒
; .░▒▒▒▒░░
; .░▒▒▒▒▒█
; ..░▒▒▒▒▒
; .▒.░░▒▒▒
; .▒▒..░░░
;
SPRITE_TILES_PORTRAIT_GURU_07:
    .byte $88,$81,$80,$43,$41,$20,$18,$07   ; byte
    .byte $70,$7f,$7f,$3c,$3f,$1f,$47,$60   ; byte


;
; .....░▒▒
; ░▒▒▒░...
; ▒██▒░░▒▒
; ▒█▒▒▒░░▒
; ▒▒▒▒▒▒░░
; .▒▒▒▒░░▒
; ▒....░░▒
; ▒▒▒░░░░▒
;
SPRITE_TILES_PORTRAIT_GURU_16:
    .byte $04,$88,$6c,$46,$03,$06,$06,$1e   ; byte
    .byte $03,$70,$f3,$f9,$fc,$79,$81,$e1   ; byte


;
; ░▒▒▒░...
; ░▒▒▒▒░..
; ░▒▒▒▒▒▒█
; .░▒▒▒▒▒▒
; .░▒▒▒▒░░
; ..░▒▒▒▒▒
; .▒.░░▒▒▒
; .▒▒..░░░
;
SPRITE_TILES_PORTRAIT_GURU_17:
    .byte $88,$84,$81,$40,$43,$20,$18,$07   ; byte
    .byte $70,$78,$7f,$3f,$3c,$1f,$47,$60   ; byte


;
; ........
; ........
; ........
; ........
; .......░
; ......░▒
; ......▒█
; .....░██
;
; XREFS:
;     SPRITE_TILES_PORTRAIT_ADDRS_KEY_SALESMAN
;     [$PRG8::9343]
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_00:
    .byte $00,$00,$00,$00,$01,$02,$01,$07   ; byte
    .byte $00,$00,$00,$00,$00,$01,$03,$03   ; byte


;
; ........
; ...░▒▒▒▒
; .░░▒▒░░▒
; ░▒██░░..
; ██▒░..░▒
; ▒▒▒░.▒▒█
; █▒░.▒██▒
; ▒░░.▒█▒▒
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_01:
    .byte $00,$10,$66,$bc,$d2,$11,$a6,$64   ; byte
    .byte $00,$0f,$19,$70,$e1,$e7,$cf,$8f   ; byte


;
; ........
; ▒▒▒▒░...
; █▒░░▒░░.
; .█▒░░░▒░
; ▒.█▒░.░▒
; ▒▒.█░░.░
; ▒▒░█░▒░.
; ▒▒░░▒▒▒░
;
SPRITE_TILES_PORTRAIT_DOCTOR_02__KEY_SALESMAN_02:
    .byte $00,$08,$b6,$5d,$2a,$1d,$3a,$31   ; byte
    .byte $00,$f0,$c8,$62,$b1,$d0,$d4,$ce   ; byte


;
; .....░█░
; ....░▒░█
; ....░░█░
; ....░█░█
; ...░█▒█▒
; ..▒█░░█░
; ....░█▒░
; ...░▒▒▒░
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_04:
    .byte $07,$0b,$0f,$0f,$1a,$1f,$0d,$11   ; byte
    .byte $02,$05,$02,$05,$0f,$32,$06,$0e   ; byte


;
; ▒░.▒▒▒▒▒
; ░░.▒▒▒▒▒
; ░░.▒▒▒▒▒
; ░.▒▒▒▒▒▒
; ░.▒▒▒▒..
; .▒▒▒▒.░░
; .▒▒▒.▒█▒
; .▒▒░▒▒▒▒
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_05:
    .byte $40,$c0,$c0,$80,$80,$03,$02,$10   ; byte
    .byte $9f,$1f,$1f,$3f,$3c,$78,$77,$6f   ; byte


;
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒░▒▒▒▒▒
; ▒.▒▒░░▒▒
; .░▒▒▒░..
; ░░▒▒░░░░
; ▒░▒▒░▒█▒
; ▒░█▒░▒▒▒
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_06:
    .byte $00,$00,$20,$0c,$44,$cf,$4a,$68   ; byte
    .byte $ff,$ff,$df,$b3,$38,$30,$b7,$b7   ; byte


;
; ░░......
; ░░......
; ░░......
; ░░......
; .░......
; ░.......
; ░░......
; ▒░......
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_07:
    .byte $c0,$c0,$c0,$c0,$40,$80,$c0,$40   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$80   ; byte


;
; ..▒░.▒..
; ..▒░░.░.
; ..▒▒.▒░.
; ...▒.▒▒▒
; ...▒░.▒▒
; ....▒.░▒
; ....▒▒░▒
; ....░▒░▒
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_08:
    .byte $10,$1a,$02,$00,$08,$02,$02,$0a   ; byte
    .byte $24,$20,$34,$17,$13,$09,$0d,$05   ; byte


;
; ▒▒░░...█
; ▒▒▒▒▒██.
; ▒██▒░▒██
; ▒█▒▒▒░░░
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ░▒▒▒▒▒▒▒
; ▒░░░▒▒▒░
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_09:
    .byte $31,$06,$6b,$47,$00,$00,$80,$71   ; byte
    .byte $c1,$fe,$f7,$f8,$ff,$ff,$7f,$8e   ; byte


;
; .▒▒▒░.█.
; .▒▒▒░░..
; █▒▒▒░.██
; ▒▒█▒▒.░░
; ▒▒▒░░.░▒
; ░░░░░..▒
; ▒░░...▒▒
; ▒▒░░..░░
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_10:
    .byte $0a,$0c,$8b,$23,$1a,$f8,$60,$33   ; byte
    .byte $72,$70,$f3,$f8,$e1,$01,$83,$c0   ; byte


;
; ░░░.....
; ░░░.....
; ░░░.....
; ▒░░.....
; ▒░░.....
; ░░......
; ░░......
; ░░......
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_11:
    .byte $e0,$e0,$e0,$60,$60,$c0,$c0,$c0   ; byte
    .byte $00,$00,$00,$80,$80,$00,$00,$00   ; byte


;
; ▒▒░░░▒▒▒
; ▒▒▒▒.░▒▒
; ▒██▒▒...
; ▒█▒▒▒▒░░
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ░▒▒▒▒▒▒▒
; ▒░░░▒▒▒░
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_35:
    .byte $38,$04,$60,$43,$00,$00,$80,$71   ; byte
    .byte $c7,$f3,$f8,$fc,$ff,$ff,$7f,$8e   ; byte


;
; ▒▒▒▒░▒▒▒
; .▒▒▒░░▒▒
; ░▒▒▒░.░░
; ▒▒█▒▒.░░
; ▒▒▒░░.░▒
; ░░░░░..▒
; ▒░░...▒▒
; ▒▒░░..░░
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_36:
    .byte $08,$0c,$8b,$23,$1a,$f8,$60,$33   ; byte
    .byte $f7,$73,$70,$f8,$e1,$01,$83,$c0   ; byte


;
; ........
; ........
; ......░░
; ......░░
; .....░░░
; .....░░░
; ....░░░░
; ....░░░░
;
; XREFS:
;     SPRITE_TILES_PORTRAIT_ADDRS_SMOKING_GUY
;     [$PRG8::92e9]
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_00:
    .byte $00,$00,$03,$03,$07,$07,$0f,$0f   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ..░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░.
; ░░░...░.
; ░░.▒█▒.▒
; ░.▒▒█▒▒▒
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_01:
    .byte $3f,$ff,$ff,$ff,$fe,$e2,$c8,$88   ; byte
    .byte $00,$00,$00,$00,$00,$00,$1d,$3f   ; byte


;
; ░░░░....
; ░░░░░░..
; ░░░░░░░.
; ░.░░░░░░
; ░▒....░░
; ▒▒▒.▒░.░
; ▒▒▒▒▒▒▒.
; ▒░▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_02:
    .byte $f0,$fc,$fe,$bf,$83,$05,$00,$40   ; byte
    .byte $00,$00,$00,$00,$40,$e8,$fe,$bf   ; byte


;
; ........
; ........
; ........
; ........
; ░.......
; ░.......
; ░░......
; .░......
;
SPRITE_TILES_PORTRAIT_DOCTOR_03__SMOKING_GUY_03__KEY_SALESMAN_03:
    .byte $00,$00,$00,$00,$80,$80,$c0,$40   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ....░░░░
; ...░░░░░
; ...░░░░░
; ...░░░░░
; ....░░░░
; ..░▒.░░░
; ..▒█▒.░░
; ..▒.█▒.░
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_04:
    .byte $0f,$1f,$1f,$1f,$0f,$27,$13,$09   ; byte
    .byte $00,$00,$00,$00,$00,$10,$38,$2c   ; byte


;
; ░.▒▒▒▒░░
; ░.▒▒░..░
; ░.▒░.▒▒░
; .▒▒.▒░.░
; .▒▒▒░.█.
; .▒▒▒░█.░
; .▒▒▒▒███
; .▒▒▒▒▒█▒
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_05:
    .byte $83,$89,$91,$05,$0a,$0d,$07,$02   ; byte
    .byte $3c,$30,$26,$68,$72,$74,$7f,$7f   ; byte


;
; ..▒▒▒.▒▒
; ▒▒▒▒▒░..
; ░▒▒▒▒.░░
; ░░▒▒...░
; ▒░▒░.█..
; ▒░▒░...█
; ▒░▒░.███
; ░░▒▒░.░░
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_06:
    .byte $00,$04,$83,$c1,$54,$51,$57,$cb   ; byte
    .byte $3b,$f8,$78,$30,$a4,$a1,$a7,$30   ; byte


;
; .░......
; .░......
; .░......
; .░......
; ░░......
; ░░......
; ░░......
; ░░......
;
SPRITE_TILES_PORTRAIT_DOCTOR_07__SMOKING_GUY_07:
    .byte $40,$40,$40,$40,$c0,$c0,$c0,$c0   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ..▒░.▒░░
; ..▒░░.▒▒
; ..▒▒.▒▒░
; ...▒.▒▒▒
; ...▒░.▒▒
; ....▒.░▒
; ....▒▒░▒
; ....░▒░▒
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_08:
    .byte $13,$18,$01,$00,$08,$02,$02,$0a   ; byte
    .byte $24,$23,$36,$17,$13,$09,$0d,$05   ; byte


;
; ░▒▒▒▒░░░
; ▒▒█▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ░▒▒▒▒▒▒▒
; ▒░▒▒▒▒▒░
; ▒▒░░▒▒▒░
; ▒▒░▒▒▒▒░
; ▒▒░▒▒░░█
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_09:
    .byte $87,$20,$00,$80,$41,$31,$21,$27   ; byte
    .byte $78,$ff,$ff,$7f,$be,$ce,$de,$d9   ; byte


;
; ░░▒▒▒.░░
; ░░▒▒▒░.░
; .▒▒▒▒▒░.
; .▒▒▒▒▒░.
; ..░░▒░.▒
; .░..░░.▒
; █▒░░..░░
; ▒▒▒░░░░░
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_10:
    .byte $c3,$c5,$02,$02,$34,$4c,$b3,$1f   ; byte
    .byte $38,$38,$7c,$7c,$09,$01,$c0,$e0   ; byte


;
; ░░......
; ▒░░.....
; ▒░░.....
; ▒░░.....
; ▒░░.....
; ░░......
; ░░......
; ░░......
;
SPRITE_TILES_PORTRAIT_DOCTOR_10__SMOKING_GUY_11:
    .byte $c0,$60,$60,$60,$60,$c0,$c0,$c0   ; byte
    .byte $00,$80,$80,$80,$80,$00,$00,$00   ; byte


;
; .....░░▒
; ......░░
; ......░░
; .......░
; .......░
; .......░
; ........
; ........
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_12__KEY_SALESMAN_12:
    .byte $06,$03,$03,$01,$01,$01,$00,$00   ; byte
    .byte $01,$00,$00,$00,$00,$00,$00,$00   ; byte


;
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒░▒▒▒
; ▒▒▒▒░▒▒░
; ░▒▒▒░▒▒▒
; .▒▒▒▒▒▒▒
; ▒░░▒▒▒▒▒
; ▒▒.░░▒░▒
; ░▒▒...░░
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_13__KEY_SALESMAN_13:
    .byte $00,$08,$09,$88,$00,$60,$1a,$83   ; byte
    .byte $ff,$f7,$f6,$77,$7f,$9f,$c5,$60   ; byte


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
SPRITE_TILES_PORTRAIT_GURU_11__MAGICIAN_14__DOCTOR_19__NURSE_23__MEAT_SALESMAN_27__TOOLS_SALESMAN_13__KEY_SALESMAN_30:
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; byte
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; byte


;
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_DOCTOR_17__PINKSHIRT_18__SMOKING_GUY_22__MEAT_SALESMAN_23:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; byte


;
; █████.▒▒
; ██████.▒
; ██████.▒
; ███████.
; ████████
; ████████
; ████████
; ████████
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_23:
    .byte $f8,$fc,$fc,$fe,$ff,$ff,$ff,$ff   ; byte
    .byte $fb,$fd,$fd,$fe,$ff,$ff,$ff,$ff   ; byte


;
; ▒░.....░
; ░███▒░.█
; █▒▒▒▒▒░░
; ▒▒▒░░░░.
; ▒▒░▒▒░░░
; ▒▒██▒▒░░
; ▒▒█▒▒▒░░
; ▒▒▒▒▒░░.
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_14__KEY_SALESMAN_14:
    .byte $41,$f5,$83,$1e,$27,$33,$23,$06   ; byte
    .byte $80,$79,$fc,$e0,$d8,$fc,$fc,$f8   ; byte


;
; ░.......
; ████░...
; ▒▒▒░░...
; ........
; ........
; ........
; ........
; ........
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_15__KEY_SALESMAN_15:
    .byte $80,$f8,$18,$00,$00,$00,$00,$00   ; byte
    .byte $00,$f0,$e0,$00,$00,$00,$00,$00   ; byte


;
; ░.▒▒▒▒░░
; ░.▒▒░..░
; ░.▒░.▒▒░
; .▒▒.▒█▒▒
; .▒▒▒▒██▒
; .▒▒▒.▒▒▒
; .▒▒▒▒...
; .▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_25:
    .byte $83,$89,$91,$04,$06,$00,$00,$00   ; byte
    .byte $3c,$30,$26,$6f,$7f,$77,$78,$7f   ; byte


;
; ..▒▒▒.▒▒
; ▒▒▒▒▒░..
; ░▒▒▒▒.░░
; ░░▒▒.▒▒▒
; ▒░▒░.▒▒▒
; .░▒░.░▒░
; ▒░▒░....
; ░░▒▒░.░░
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_26:
    .byte $00,$04,$83,$c0,$50,$55,$50,$cb   ; byte
    .byte $3b,$f8,$78,$37,$a7,$22,$a0,$30   ; byte


;
; ▒░.....░
; ░.....▒█
; █▒██▒▒░░
; ▒▒▒▒▒░░.
; ▒▒░░░░░░
; ▒▒██▒▒░░
; ▒▒█▒▒▒░░
; ▒▒▒▒▒░░.
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_27__KEY_SALESMAN_37:
    .byte $41,$81,$b3,$06,$3f,$33,$23,$06   ; byte
    .byte $80,$03,$fc,$f8,$c0,$fc,$fc,$f8   ; byte


;
; ░.......
; ▒░......
; ███▒....
; ..▒░░...
; ...░....
; ........
; ........
; ........
;
SPRITE_TILES_PORTRAIT_SMOKING_GUY_28__KEY_SALESMAN_38:
    .byte $80,$40,$e0,$18,$10,$00,$00,$00   ; byte
    .byte $00,$80,$f0,$20,$00,$00,$00,$00   ; byte


;
; .....░░░
; ...▒▒▒▒▒
; .▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_08:
    .byte $07,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$1f,$7f,$ff,$ff,$ff,$ff,$ff   ; byte


;
; ████.░░░
; .███░.░░
; ..███░.░
; ▒.████░.
; ▒.██████
; ▒.██████
; ▒.██████
; ▒.██████
;
SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_09:
    .byte $f7,$7b,$3d,$3e,$3f,$3f,$3f,$3f   ; byte
    .byte $f0,$70,$38,$bc,$bf,$bf,$bf,$bf   ; byte


;
; ░░░░░░░░
; ░░░░░░░░
; ░░░░░░░░
; .░░░░░░░
; ░..░░░.░
; █░░...░.
; ██░░░░░░
; █████▒▒█
;
SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_10:
    .byte $ff,$ff,$ff,$7f,$9d,$e2,$ff,$f9   ; byte
    .byte $00,$00,$00,$00,$00,$80,$c0,$ff   ; byte


;
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒.▒▒
; ▒▒▒▒▒▒.▒
; ▒▒▒▒▒▒░.
; ▒▒▒▒▒▒▒.
; ▒▒▒▒▒▒▒.
; ▒▒▒▒▒▒▒.
;
SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_11:
    .byte $00,$00,$00,$00,$02,$00,$00,$00   ; byte
    .byte $ff,$ff,$fb,$fd,$fc,$fe,$fe,$fe   ; byte


;
; .███████
; .▒██████
; .▒██████
; .▒██████
; ▒███████
; ▒███████
; ████████
; ████████
;
SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_12__KEY_SALESMAN_26:
    .byte $7f,$3f,$3f,$3f,$7f,$7f,$ff,$ff   ; byte
    .byte $7f,$7f,$7f,$7f,$ff,$ff,$ff,$ff   ; byte


;
; ▒▒▒▒▒▒.▒
; ▒▒▒▒▒▒.▒
; ▒▒▒▒▒░.▒
; ▒▒▒▒░...
; ▒▒▒░.▒░░
; ▒▒░.▒░▒▒
; ▒▒.▒▒░▒▒
; ▒▒░▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_DOCTOR_20__TOOLS_SALESMAN_14__KEY_SALESMAN_33:
    .byte $00,$00,$04,$08,$13,$24,$04,$20   ; byte
    .byte $fd,$fd,$f9,$f0,$e4,$cb,$db,$df   ; byte


;
; ████████
; ████████
; ████████
; ████████
; ..██████
; ▒░..████
; ░▒▒░..██
; ░▒░▒▒▒..
;
SPRITE_TILES_PORTRAIT_DOCTOR_21__TOOLS_SALESMAN_15__KEY_SALESMAN_34:
    .byte $ff,$ff,$ff,$ff,$3f,$4f,$93,$a0   ; byte
    .byte $ff,$ff,$ff,$ff,$3f,$8f,$63,$5c   ; byte


;
; ░▒▒▒▒░▒░
; ▒▒░▒▒░▒░
; ░▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ░▒▒▒▒▒▒▒
; ░░░░░░░▒
; .░░░░░░░
;
SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_16:
    .byte $85,$25,$80,$00,$00,$80,$fe,$7f   ; byte
    .byte $7a,$da,$7f,$ff,$ff,$7f,$01,$00   ; byte


;
; ▒▒▒▒▒▒░▒
; ▒▒░▒▒░▒▒
; ░▒▒▒▒░▒▒
; ▒▒▒▒▒░▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒░▒
; ▒▒▒▒▒▒▒▒
; ░░░░░░▒▒
;
SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_17:
    .byte $02,$24,$84,$04,$00,$02,$00,$fc   ; byte
    .byte $fd,$db,$7b,$fb,$ff,$fd,$ff,$03   ; byte


;
; ..██████
; ▒░.█████
; ▒▒▒.████
; ▒▒▒▒.███
; ▒▒▒░▒.██
; ▒▒░▒▒.██
; ▒▒▒▒▒▒.█
; ▒▒▒▒▒▒.█
;
SPRITE_TILES_PORTRAIT_TOOLS_SALESMAN_18:
    .byte $3f,$5f,$0f,$07,$13,$23,$01,$01   ; byte
    .byte $3f,$9f,$ef,$f7,$eb,$db,$fd,$fd   ; byte


;
; .░▒▒▒▒▒.
; .░▒▒▒▒▒.
; .░▒▒▒▒.█
; .▒▒▒▒▒.█
; .▒▒▒▒▒.█
; .▒▒▒▒.██
; .▒▒▒▒.██
; .▒▒▒▒.██
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_21:
    .byte $40,$40,$41,$01,$01,$03,$03,$03   ; byte
    .byte $3e,$3e,$3d,$7d,$7d,$7b,$7b,$7b   ; byte


;
; ........
; ......░░
; .....░▒▒
; ....░▒▒▒
; ....▒▒▒▒
; ...░▒▒▒▒
; ..░▒▒▒▒▒
; ..░▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_MEAT_SALESMAN_15:
    .byte $00,$03,$04,$08,$00,$10,$20,$20   ; byte
    .byte $00,$00,$03,$07,$0f,$0f,$1f,$1f   ; byte


;
; ........
; ........
; ......░░
; .....░▒▒
; .....▒░░
; ....▒░▒▒
; ...▒▒░░.
; ..▒░▒░.░
;
; XREFS:
;     SPRITE_TILES_PORTRAIT_ADDRS_DOCTOR [$PRG8::9298]
;
SPRITE_TILES_PORTRAIT_DOCTOR_00:
    .byte $00,$00,$03,$04,$03,$04,$06,$15   ; byte
    .byte $00,$00,$00,$03,$04,$0b,$18,$28   ; byte


;
; ...░░░░░
; ░░░░▒▒▒▒
; ▒▒▒▒░░▒░
; ░░░░▒▒▒▒
; ▒▒▒░░░▒▒
; ░░░....▒
; ...▒▒▒▒.
; ▒▒▒▒░░▒▒
;
SPRITE_TILES_PORTRAIT_DOCTOR_01:
    .byte $1f,$f0,$0d,$f0,$1c,$e0,$00,$0c   ; byte
    .byte $00,$0f,$f2,$0f,$e3,$01,$1e,$f3   ; byte


;
; ▒▒▒▒▒▒░░
; ▒▒░░░▒▒▒
; ▒▒▒▒▒░░▒
; ▒▒▒▒▒▒▒░
; ▒▒▒▒▒▒.▒
; ▒░.....▒
; ....░▒▒▒
; .▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_DOCTOR_05:
    .byte $03,$38,$06,$01,$00,$40,$08,$00   ; byte
    .byte $fc,$c7,$f9,$fe,$fd,$81,$07,$7f   ; byte


;
; ░░▒▒▒▒▒▒
; ▒▒▒░░░▒▒
; ▒░░▒▒▒▒▒
; ░▒▒▒...▒
; ▒▒▒..░░.
; ▒..░▒▒░░
; ▒.░▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_DOCTOR_06:
    .byte $c0,$1c,$60,$80,$06,$13,$20,$00   ; byte
    .byte $3f,$e3,$9f,$71,$e0,$8c,$9f,$ff   ; byte


;
; .....░░▒
; ▒▒▒▒..░▒
; ████▒.░▒
; █████▒.░
; ██████▒.
; ███████▒
; ████████
; ████████
;
SPRITE_TILES_PORTRAIT_DOCTOR_12__MEAT_SALESMAN_22:
    .byte $06,$02,$f2,$f9,$fc,$fe,$ff,$ff   ; byte
    .byte $01,$f1,$f9,$fc,$fe,$ff,$ff,$ff   ; byte


;
; ░▒░.....
; ▒░▒▒▒▒▒█
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒░░
; ░▒▒▒▒▒▒█
; .░░▒▒▒▒▒
; ▒.░░░▒▒▒
; █▒.░░░░░
;
SPRITE_TILES_PORTRAIT_DOCTOR_13:
    .byte $a0,$41,$00,$03,$81,$60,$38,$9f   ; byte
    .byte $40,$bf,$ff,$fc,$7f,$1f,$87,$c0   ; byte


;
; ░▒░.....
; ▒░▒▒▒...
; ▒▒▒▒▒▒▒█
; ▒▒▒▒▒▒▒▒
; ░▒▒▒▒▒░░
; .░░▒▒▒▒█
; ▒.░░░▒▒▒
; █▒.░░░░░
;
SPRITE_TILES_PORTRAIT_DOCTOR_23:
    .byte $a0,$40,$01,$00,$83,$61,$38,$9f   ; byte
    .byte $40,$b8,$ff,$ff,$7c,$1f,$87,$c0   ; byte


;
; ██▒.░░░░
; ███▒.░░░
; ████▒.░░
; █████▒..
; ████████
; ████████
; ████████
; ████████
;
SPRITE_TILES_PORTRAIT_DOCTOR_16__MEAT_SALESMAN_28:
    .byte $cf,$e7,$f3,$f8,$ff,$ff,$ff,$ff   ; byte
    .byte $e0,$f0,$f8,$fc,$ff,$ff,$ff,$ff   ; byte


;
; ........
; ........
; .....▒▒▒
; ...▒▒███
; ..▒█████
; .▒██████
; .███████
; ▒███████
;
SPRITE_TILES_PORTRAIT_DOCTOR_11:
    .byte $00,$00,$00,$07,$1f,$3f,$7f,$7f   ; byte
    .byte $00,$00,$07,$1f,$3f,$7f,$7f,$ff   ; byte


;
; ███.....
; █..▒▒▒▒▒
; .▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_DOCTOR_14:
    .byte $e0,$80,$00,$00,$00,$00,$00,$00   ; byte
    .byte $e0,$9f,$7f,$ff,$ff,$ff,$ff,$ff   ; byte


;
; ████████
; ..███.██
; ▒▒.██.██
; ▒▒.█.▒██
; ▒▒.█.▒██
; ▒▒▒.▒███
; ▒▒▒.▒███
; ▒▒▒.▒███
;
SPRITE_TILES_PORTRAIT_DOCTOR_15:
    .byte $ff,$3b,$1b,$13,$13,$07,$07,$07   ; byte
    .byte $ff,$3b,$db,$d7,$d7,$ef,$ef,$ef   ; byte


;
; ▒▒░▒████
; ▒▒░▒████
; ▒▒.▒████
; ▒░▒█████
; ▒.▒█████
; ░▒██████
; ░▒██████
; .▒██████
;
    .byte $2f,$2f,$0f,$5f,$1f,$bf,$bf,$3f   ; byte
    .byte $df,$df,$df,$bf,$bf,$7f,$7f,$7f   ; byte


;
; ......▒█
; ....▒▒██
; .░██████
; ░██████▒
; ███████░
; ██████░█
; ██████░█
; ░████▒░█
;
SPRITE_TILES_PORTRAIT_MAGICIAN_08__MEAT_SALESMAN_29:
    .byte $01,$03,$7f,$fe,$ff,$ff,$ff,$fb   ; byte
    .byte $03,$0f,$3f,$7f,$fe,$fd,$fd,$7d   ; byte


;
; ██▒█▒▒██
; ░█░█▒░▒▒
; ▒▒█░░▒░░
; █▒▒▒▒▒▒▒
; ████▒█▒█
; █████▒█▒
; ████████
; ████████
;
SPRITE_TILES_PORTRAIT_MAGICIAN_12:
    .byte $d3,$f4,$3b,$80,$f5,$fa,$ff,$ff   ; byte
    .byte $ff,$5b,$e4,$ff,$ff,$ff,$ff,$ff   ; byte


;
; ▒▒.▒████
; ▒▒.▒████
; ▒▒.▒████
; ▒.▒█████
; ▒.▒█████
; .▒██████
; .▒██████
; .▒██████
;
SPRITE_TILES_PORTRAIT_DOCTOR_18:
    .byte $0f,$0f,$0f,$1f,$1f,$3f,$3f,$3f   ; byte
    .byte $df,$df,$df,$bf,$bf,$7f,$7f,$7f   ; byte


;
; ..░▒█▒▒.
; ..░▒█▒..
; ..░░░░.▒
; ░░░░.░▒.
; ███░█.▒░
; ████░█.░
; ████░█.░
; █████░█░
;
SPRITE_TILES_PORTRAIT_GURU_09:
    .byte $28,$28,$3c,$f4,$f9,$fd,$fd,$ff   ; byte
    .byte $1e,$1c,$01,$02,$ea,$f4,$f4,$fa   ; byte


;
; █████░█.
; ██████░█
; ███████░
; ████████
; ████████
; ████████
; ████████
; ████████
;
SPRITE_TILES_PORTRAIT_GURU_12:
    .byte $fe,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; byte
    .byte $fa,$fd,$fe,$ff,$ff,$ff,$ff,$ff   ; byte


;
; ░▒█░░█▒█
; .▒█▒░▒█▒
; █.▒█▒░██
; ░█.█▒░▒█
; █░█.▒░█▒
; ▒█░█.▒██
; ▒██░█.▒█
; ▒███░█.█
;
SPRITE_TILES_PORTRAIT_GURU_13:
    .byte $bd,$2a,$97,$d5,$e6,$73,$79,$7d   ; byte
    .byte $67,$77,$bb,$5b,$ab,$d7,$eb,$f5   ; byte


;
; ▒██░░░█.
; ▒██▒░▒░█
; ▒███▒░..
; ░███▒▒.█
; ████░▒..
; ▒██▒░▒██
; ▒██▒░▒..
; ▒███░▒.█
;
SPRITE_TILES_PORTRAIT_GURU_14:
    .byte $7e,$6b,$74,$f1,$f8,$6b,$68,$79   ; byte
    .byte $e2,$f5,$f8,$7d,$f4,$f7,$f4,$f5   ; byte


;
; ▒██░░█.█
; ▒██▒░▒.█
; ▒███▒░.█
; ░███▒░.█
; ████▒░░.
; ▒██▒░▒██
; ▒██▒░▒██
; ▒███▒░▒█
;
SPRITE_TILES_PORTRAIT_GURU_15:
    .byte $7d,$69,$75,$f5,$f6,$6b,$6b,$75   ; byte
    .byte $e5,$f5,$f9,$79,$f8,$f7,$f7,$fb   ; byte


;
; ████████
; ...█████
; ▒▒▒.████
; ▒▒▒▒.███
; ▒▒▒▒.███
; ▒▒▒▒▒.██
; ▒▒▒▒▒.██
; ▒▒▒▒▒.██
;
    .byte $ff,$1f,$0f,$07,$07,$03,$03,$03   ; byte
    .byte $ff,$1f,$ef,$f7,$f7,$fb,$fb,$fb   ; byte


;
; ▒▒▒▒▒.██
; ▒▒▒▒▒.██
; ▒▒▒▒▒.██
; ▒▒▒▒▒.██
; ▒▒▒▒▒.██
; ▒▒▒▒▒.██
; ▒▒▒▒.███
; ▒▒▒▒.███
;
    .byte $03,$03,$03,$03,$03,$03,$07,$07   ; byte
    .byte $fb,$fb,$fb,$fb,$fb,$fb,$f7,$f7   ; byte


;
; ▒▒▒.██..
; ▒▒.████.
; ..█████.
; ███████.
; ████████
; ████████
; ████████
; ████████
;
    .byte $0c,$1e,$3e,$fe,$ff,$ff,$ff,$ff   ; byte
    .byte $ec,$de,$3e,$fe,$ff,$ff,$ff,$ff   ; byte


;
; ........
; ████....
; ███████.
; ████████
; ████████
; ████████
; ████████
; ████████
;
    .byte $00,$f0,$fe,$ff,$ff,$ff,$ff,$ff   ; byte
    .byte $00,$f0,$fe,$ff,$ff,$ff,$ff,$ff   ; byte


;
; ░░░░░░..
; ░░░░░░.█
; ▒▒░░░░.▒
; ▒▒▒░░░.▒
; ▒▒▒▒░░.▒
; ▒▒▒▒░░.▒
; ▒▒░░░░░.
; ▒▒▒▒░░░.
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_19:
    .byte $fc,$fd,$3c,$1c,$0c,$0c,$3e,$0e   ; byte
    .byte $00,$01,$c1,$e1,$f1,$f1,$c0,$f0   ; byte


;
; ........
; █.......
; ████....
; ██████..
; ███████.
; ████████
; ▒███████
; ▒███████
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_20:
    .byte $00,$80,$f0,$fc,$fe,$ff,$7f,$7f   ; byte
    .byte $00,$80,$f0,$fc,$fe,$ff,$ff,$ff   ; byte


;
; ........
; ........
; ........
; ........
; ........
; █.......
; ███.....
; ████....
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_21:
    .byte $00,$00,$00,$00,$00,$80,$e0,$f0   ; byte
    .byte $00,$00,$00,$00,$00,$80,$e0,$f0   ; byte


;
; ██......
; █.▒▒....
; █.▒▒▒...
; .▒▒▒▒...
; .▒▒▒▒▒..
; .▒▒▒▒▒..
; .▒▒▒▒▒..
; .▒▒▒▒▒▒.
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_27:
    .byte $c0,$80,$80,$00,$00,$00,$00,$00   ; byte
    .byte $c0,$b0,$b8,$78,$7c,$7c,$7c,$7e   ; byte


;
; ▒▒▒▒▒▒▒.
; ▒▒▒▒▒▒▒.
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; ▒▒▒▒▒▒▒▒
; .▒▒▒▒▒▒▒
; .▒▒▒▒▒▒▒
; .▒▒▒▒▒▒▒
;
SPRITE_TILES_PORTRAIT_KEY_SALESMAN_32:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $fe,$fe,$ff,$ff,$ff,$7f,$7f,$7f   ; byte


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
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $fc,$00,$04,$00,$00,$00,$00,$00   ; undefined
    .byte $0b,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $29,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $7b,$00,$87,$00,$0a,$00,$00,$00   ; undefined
    .byte $cf,$00,$21,$00,$20,$00,$00,$00   ; undefined
    .byte $5a,$00,$08,$00,$00,$00,$00,$00   ; undefined
    .byte $40,$00,$10,$00,$00,$00,$00,$00   ; undefined
    .byte $e5,$00,$ff,$00,$04,$00,$00,$00   ; undefined
    .byte $76,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $1a,$00,$04,$00,$00,$00,$00,$00   ; undefined
    .byte $08,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $5f,$00,$f4,$00,$02,$00,$00,$00   ; undefined
    .byte $78,$00,$00,$00,$01,$00,$00,$00   ; undefined
    .byte $2c,$80,$18,$00,$00,$00,$00,$00   ; undefined
    .byte $8a,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $ce,$00,$28,$00,$02,$00,$00,$00   ; undefined
    .byte $4a,$00,$01,$00,$01,$00,$00,$00   ; undefined
    .byte $01,$00,$00,$00,$02,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $bf,$00,$a9,$00,$a5,$00,$00,$00   ; undefined
    .byte $ad,$00,$d2,$00,$80,$00,$00,$00   ; undefined
    .byte $ac,$00,$21,$00,$00,$00,$00,$80   ; undefined
    .byte $aa,$00,$5b,$00,$00,$00,$00,$00   ; undefined
    .byte $bf,$00,$f7,$00,$00,$00,$00,$00   ; undefined
    .byte $fb,$00,$23,$00,$80,$00,$00,$00   ; undefined
    .byte $b3,$00,$0a,$00,$01,$00,$00,$00   ; undefined
    .byte $48,$00,$10,$00,$00,$00,$00,$00   ; undefined
    .byte $8f,$00,$29,$00,$00,$00,$00,$00   ; undefined
    .byte $7f,$00,$f3,$00,$00,$00,$00,$00   ; undefined
    .byte $a9,$00,$96,$00,$00,$00,$00,$00   ; undefined
    .byte $23,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$cf,$00,$00,$00,$00,$00   ; undefined
    .byte $63,$00,$73,$00,$00,$00,$00,$00   ; undefined
    .byte $5b,$00,$01,$00,$00,$00,$00,$00   ; undefined
    .byte $09,$00,$01,$00,$10,$00,$00,$00   ; undefined
    .byte $df,$00,$29,$00,$02,$00,$00,$00   ; undefined
    .byte $82,$00,$3d,$00,$00,$00,$00,$00   ; undefined
    .byte $43,$00,$01,$00,$00,$00,$00,$00   ; undefined
    .byte $08,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $cd,$00,$c3,$00,$40,$00,$00,$00   ; undefined
    .byte $c1,$00,$40,$00,$02,$00,$00,$00   ; undefined
    .byte $08,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $10,$00,$00,$00,$10,$00,$00,$00   ; undefined
    .byte $7f,$00,$22,$00,$00,$00,$00,$00   ; undefined
    .byte $69,$00,$f0,$00,$10,$00,$00,$00   ; undefined
    .byte $04,$00,$00,$00,$80,$00,$00,$00   ; undefined
    .byte $08,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $81,$00,$1f,$00,$82,$00,$00,$00   ; undefined
    .byte $48,$00,$41,$00,$14,$00,$00,$00   ; undefined
    .byte $21,$00,$01,$00,$01,$00,$00,$00   ; undefined
    .byte $30,$00,$10,$00,$00,$00,$00,$00   ; undefined
    .byte $f7,$00,$a8,$00,$00,$00,$00,$00   ; undefined
    .byte $6b,$00,$55,$00,$00,$00,$00,$00   ; undefined
    .byte $b3,$00,$55,$00,$00,$00,$00,$00   ; undefined
    .byte $f0,$10,$48,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$ae,$00,$00,$00,$00,$00   ; undefined
    .byte $db,$00,$0d,$00,$00,$00,$00,$00   ; undefined
    .byte $8f,$00,$95,$00,$80,$00,$00,$00   ; undefined
    .byte $6d,$00,$01,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$01,$00,$00,$00,$00,$00   ; undefined
    .byte $de,$00,$00,$00,$80,$00,$00,$00   ; undefined
    .byte $5c,$00,$09,$00,$00,$00,$00,$00   ; undefined
    .byte $15,$00,$01,$00,$00,$00,$00,$00   ; undefined
    .byte $fa,$00,$dd,$00,$00,$00,$00,$00   ; undefined
    .byte $cf,$00,$d2,$00,$20,$00,$00,$00   ; undefined
    .byte $9d,$00,$01,$00,$80,$00,$00,$00   ; undefined
    .byte $15,$00,$22,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$29,$00,$01,$00,$00,$00   ; undefined
    .byte $fa,$00,$97,$00,$0a,$00,$00,$00   ; undefined
    .byte $58,$00,$00,$00,$20,$00,$00,$00   ; undefined
    .byte $0c,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $fd,$00,$28,$00,$04,$00,$00,$00   ; undefined
    .byte $1a,$00,$00,$00,$a1,$00,$00,$00   ; undefined
    .byte $49,$00,$98,$00,$00,$00,$00,$00   ; undefined
    .byte $05,$00,$08,$00,$00,$00,$00,$00   ; undefined
    .byte $be,$00,$18,$00,$00,$00,$00,$00   ; undefined
    .byte $6c,$00,$29,$00,$09,$00,$00,$00   ; undefined
    .byte $41,$00,$48,$00,$00,$00,$00,$00   ; undefined
    .byte $2c,$00,$02,$00,$00,$00,$00,$00   ; undefined
    .byte $d1,$00,$01,$00,$0b,$00,$00,$00   ; undefined
    .byte $7d,$00,$30,$00,$40,$00,$00,$00   ; undefined
    .byte $84,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$af,$00,$40,$00,$00,$00   ; undefined
    .byte $d7,$00,$d9,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$64,$00,$00,$00,$00,$00   ; undefined
    .byte $0c,$00,$13,$00,$00,$00,$00,$00   ; undefined
    .byte $7b,$00,$b4,$00,$00,$00,$00,$00   ; undefined
    .byte $25,$00,$07,$00,$00,$00,$00,$00   ; undefined
    .byte $4d,$00,$a1,$00,$00,$00,$00,$00   ; undefined
    .byte $28,$00,$40,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$29,$00,$01,$00,$00,$00   ; undefined
    .byte $4d,$00,$09,$00,$00,$00,$00,$00   ; undefined
    .byte $ab,$00,$01,$00,$80,$00,$00,$00   ; undefined
    .byte $09,$00,$84,$00,$00,$00,$00,$00   ; undefined
    .byte $7f,$00,$6a,$00,$00,$00,$00,$00   ; undefined
    .byte $cf,$00,$00,$00,$20,$00,$00,$00   ; undefined
    .byte $05,$00,$10,$00,$80,$00,$00,$00   ; undefined
    .byte $11,$00,$04,$00,$00,$00,$00,$00   ; undefined
    .byte $89,$00,$4f,$00,$00,$00,$00,$00   ; undefined
    .byte $c1,$00,$90,$00,$20,$00,$00,$00   ; undefined
    .byte $42,$00,$08,$00,$80,$00,$00,$00   ; undefined
    .byte $10,$00,$00,$00,$01,$00,$00,$00   ; undefined
    .byte $7f,$00,$0a,$00,$40,$00,$00,$00   ; undefined
    .byte $1d,$00,$04,$00,$80,$00,$00,$00   ; undefined
    .byte $13,$00,$04,$00,$00,$00,$00,$00   ; undefined
    .byte $64,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $ce,$00,$43,$00,$01,$00,$00,$00   ; undefined
    .byte $3c,$00,$00,$00,$28,$00,$00,$00   ; undefined
    .byte $40,$00,$40,$00,$00,$00,$00,$00   ; undefined
    .byte $40,$00,$40,$00,$00,$00,$00,$00   ; undefined
    .byte $ea,$00,$00,$00,$04,$00,$00,$00   ; undefined
    .byte $36,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$02,$00,$00,$00   ; undefined
    .byte $40,$80,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $9e,$00,$6f,$00,$80,$00,$00,$00   ; undefined
    .byte $fb,$00,$1c,$00,$00,$00,$00,$00   ; undefined
    .byte $bf,$00,$c3,$00,$00,$00,$00,$00   ; undefined
    .byte $6b,$00,$19,$00,$00,$00,$00,$00   ; undefined
    .byte $ba,$00,$5e,$00,$04,$00,$00,$00   ; undefined
    .byte $4e,$00,$51,$00,$00,$00,$00,$00   ; undefined
    .byte $2e,$00,$38,$00,$00,$00,$00,$00   ; undefined
    .byte $08,$00,$10,$00,$00,$00,$00,$00   ; undefined
    .byte $bf,$00,$af,$00,$08,$00,$00,$00   ; undefined
    .byte $fe,$00,$03,$00,$00,$00,$00,$00   ; undefined
    .byte $c8,$00,$84,$00,$00,$00,$00,$00   ; undefined
    .byte $4f,$80,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$8a,$00,$00,$00,$00,$00   ; undefined
    .byte $bc,$00,$21,$00,$00,$00,$00,$00   ; undefined
    .byte $53,$00,$42,$00,$00,$00,$00,$00   ; undefined
    .byte $05,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $df,$00,$0e,$00,$20,$00,$00,$00   ; undefined
    .byte $8d,$00,$07,$00,$00,$00,$00,$00   ; undefined
    .byte $1a,$00,$0c,$00,$80,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $2d,$00,$26,$00,$10,$00,$00,$00   ; undefined
    .byte $5e,$00,$b0,$00,$80,$00,$00,$00   ; undefined
    .byte $26,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $ed,$00,$50,$00,$0c,$00,$00,$00   ; undefined
    .byte $85,$00,$02,$00,$80,$00,$00,$00   ; undefined
    .byte $1c,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $40,$02,$04,$00,$00,$00,$00,$00   ; undefined
    .byte $ab,$00,$00,$00,$04,$00,$00,$00   ; undefined
    .byte $3d,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $14,$00,$10,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$20,$00,$00,$00,$00,$00   ; undefined
    .byte $5f,$00,$18,$00,$00,$00,$00,$00   ; undefined
    .byte $1f,$00,$7c,$00,$00,$00,$00,$00   ; undefined
    .byte $3f,$00,$ae,$00,$00,$00,$00,$00   ; undefined
    .byte $9c,$00,$00,$00,$10,$00,$00,$00   ; undefined
    .byte $fb,$00,$bc,$00,$00,$00,$00,$00   ; undefined
    .byte $4b,$00,$0f,$00,$00,$00,$00,$00   ; undefined
    .byte $b7,$00,$34,$00,$00,$00,$00,$00   ; undefined
    .byte $18,$00,$14,$00,$00,$00,$00,$00   ; undefined
    .byte $df,$00,$75,$00,$00,$00,$00,$00   ; undefined
    .byte $b2,$00,$58,$00,$00,$00,$00,$00   ; undefined
    .byte $ba,$00,$07,$00,$02,$00,$00,$00   ; undefined
    .byte $90,$00,$30,$00,$00,$00,$00,$00   ; undefined
    .byte $be,$00,$32,$00,$80,$00,$00,$00   ; undefined
    .byte $df,$00,$a8,$00,$00,$00,$00,$00   ; undefined
    .byte $56,$00,$a1,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $fd,$00,$23,$00,$00,$00,$00,$00   ; undefined
    .byte $e4,$00,$0c,$00,$00,$00,$00,$00   ; undefined
    .byte $24,$00,$05,$00,$08,$00,$00,$00   ; undefined
    .byte $49,$00,$01,$00,$00,$00,$00,$00   ; undefined
    .byte $51,$00,$b8,$00,$04,$00,$00,$00   ; undefined
    .byte $df,$00,$14,$00,$00,$00,$00,$00   ; undefined
    .byte $0f,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $af,$00,$18,$00,$05,$00,$00,$00   ; undefined
    .byte $90,$00,$04,$00,$03,$00,$00,$00   ; undefined
    .byte $81,$00,$02,$00,$00,$00,$00,$00   ; undefined
    .byte $54,$08,$04,$00,$00,$00,$00,$00   ; undefined
    .byte $b2,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $a8,$00,$80,$00,$01,$00,$00,$00   ; undefined
    .byte $11,$00,$00,$00,$02,$00,$00,$00   ; undefined
    .byte $00,$c0,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$cd,$00,$10,$00,$00,$00   ; undefined
    .byte $fa,$00,$1d,$00,$00,$00,$00,$00   ; undefined
    .byte $3f,$00,$4c,$00,$00,$00,$00,$00   ; undefined
    .byte $22,$00,$cc,$00,$00,$00,$00,$00   ; undefined
    .byte $5f,$00,$cf,$00,$40,$00,$00,$00   ; undefined
    .byte $df,$00,$0a,$00,$00,$00,$00,$00   ; undefined
    .byte $9d,$00,$71,$00,$00,$00,$00,$00   ; undefined
    .byte $86,$80,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $bf,$00,$c4,$00,$00,$00,$00,$00   ; undefined
    .byte $7b,$00,$ec,$00,$00,$00,$00,$00   ; undefined
    .byte $48,$00,$81,$00,$00,$00,$00,$00   ; undefined
    .byte $8c,$00,$a4,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$3e,$00,$00,$00,$00,$00   ; undefined
    .byte $7f,$00,$b6,$00,$00,$00,$00,$00   ; undefined
    .byte $4b,$00,$0d,$00,$01,$00,$00,$00   ; undefined
    .byte $0b,$40,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $9b,$00,$0b,$00,$01,$00,$00,$00   ; undefined
    .byte $8a,$00,$1b,$00,$24,$00,$00,$00   ; undefined
    .byte $95,$00,$a4,$00,$02,$00,$00,$00   ; undefined
    .byte $84,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $7f,$00,$db,$00,$18,$00,$00,$00   ; undefined
    .byte $cc,$00,$05,$00,$00,$00,$00,$00   ; undefined
    .byte $05,$00,$08,$00,$60,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$82,$00,$00,$00   ; undefined
    .byte $a2,$00,$5a,$00,$20,$00,$00,$00   ; undefined
    .byte $98,$00,$84,$00,$41,$00,$00,$00   ; undefined
    .byte $04,$00,$40,$00,$20,$00,$00,$00   ; undefined
    .byte $42,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $09,$00,$03,$00,$00,$00,$00,$00   ; undefined
    .byte $01,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $04,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$bc,$00,$10,$00,$00,$00   ; undefined
    .byte $7b,$00,$24,$00,$00,$00,$00,$00   ; undefined
    .byte $5d,$00,$06,$00,$00,$00,$00,$00   ; undefined
    .byte $cc,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $df,$00,$a8,$00,$04,$00,$00,$00   ; undefined
    .byte $5f,$00,$aa,$00,$10,$00,$00,$00   ; undefined
    .byte $7c,$00,$d0,$00,$00,$00,$00,$00   ; undefined
    .byte $06,$00,$10,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$f3,$00,$00,$00,$00,$00   ; undefined
    .byte $11,$00,$4c,$00,$00,$00,$00,$00   ; undefined
    .byte $76,$00,$80,$00,$00,$00,$00,$00   ; undefined
    .byte $15,$40,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $cd,$00,$4c,$00,$00,$00,$00,$00   ; undefined
    .byte $7c,$00,$09,$00,$00,$00,$00,$00   ; undefined
    .byte $3f,$00,$c8,$00,$00,$00,$00,$00   ; undefined
    .byte $49,$00,$05,$00,$00,$00,$00,$00   ; undefined
    .byte $6d,$00,$30,$00,$12,$00,$00,$00   ; undefined
    .byte $76,$00,$8c,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$60,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$10,$0a,$00,$00,$00,$00,$00   ; undefined
    .byte $5f,$00,$d8,$00,$00,$00,$00,$00   ; undefined
    .byte $2c,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $12,$00,$80,$00,$00,$00,$00,$00   ; undefined
    .byte $04,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $f9,$00,$18,$00,$00,$00,$00,$00   ; undefined
    .byte $1f,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $31,$00,$c0,$00,$08,$00,$00,$20   ; undefined
    .byte $04,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $b7,$00,$41,$00,$10,$00,$00,$00   ; undefined
    .byte $da,$00,$80,$00,$40,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $df,$00,$39,$00,$20,$00,$00,$00   ; undefined
    .byte $ae,$00,$58,$00,$00,$00,$00,$00   ; undefined
    .byte $f3,$00,$18,$00,$00,$00,$00,$00   ; undefined
    .byte $61,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$bd,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$3b,$00,$00,$00,$00,$00   ; undefined
    .byte $dc,$00,$f0,$00,$00,$00,$00,$00   ; undefined
    .byte $61,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $df,$00,$29,$00,$00,$00,$00,$00   ; undefined
    .byte $3d,$00,$1d,$00,$00,$00,$00,$00   ; undefined
    .byte $6c,$00,$5c,$00,$02,$00,$00,$00   ; undefined
    .byte $02,$00,$00,$00,$40,$00,$00,$00   ; undefined
    .byte $fe,$00,$16,$00,$38,$00,$00,$00   ; undefined
    .byte $66,$00,$29,$00,$20,$00,$00,$00   ; undefined
    .byte $fe,$00,$01,$00,$00,$00,$00,$00   ; undefined
    .byte $10,$00,$80,$00,$00,$00,$00,$00   ; undefined
    .byte $af,$00,$10,$00,$50,$00,$00,$00   ; undefined
    .byte $43,$00,$0c,$00,$00,$00,$00,$00   ; undefined
    .byte $02,$00,$40,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$80,$00,$00,$00,$00,$00   ; undefined
    .byte $06,$00,$2a,$00,$00,$00,$00,$00   ; undefined
    .byte $de,$00,$4a,$00,$c2,$00,$00,$00   ; undefined
    .byte $17,$00,$43,$00,$00,$00,$00,$00   ; undefined
    .byte $02,$00,$04,$00,$02,$00,$00,$00   ; undefined
    .byte $17,$00,$18,$00,$00,$00,$00,$00   ; undefined
    .byte $e7,$00,$d3,$00,$82,$00,$00,$00   ; undefined
    .byte $04,$00,$0c,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $6b,$00,$04,$00,$00,$00,$00,$00   ; undefined
    .byte $04,$00,$10,$00,$00,$00,$00,$00   ; undefined
    .byte $a0,$00,$00,$00,$20,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$39,$00,$a0,$00,$00,$00   ; undefined
    .byte $6d,$00,$64,$00,$00,$00,$00,$00   ; undefined
    .byte $4c,$00,$54,$00,$00,$00,$00,$00   ; undefined
    .byte $44,$00,$02,$00,$00,$00,$00,$00   ; undefined
    .byte $bf,$00,$ae,$00,$00,$00,$00,$00   ; undefined
    .byte $f7,$00,$e6,$00,$40,$00,$00,$00   ; undefined
    .byte $f1,$00,$39,$00,$40,$00,$00,$00   ; undefined
    .byte $08,$02,$21,$00,$00,$00,$00,$00   ; undefined
    .byte $3f,$00,$5a,$00,$80,$00,$00,$00   ; undefined
    .byte $e5,$00,$80,$00,$00,$00,$00,$00   ; undefined
    .byte $c1,$00,$01,$00,$80,$00,$00,$00   ; undefined
    .byte $1a,$00,$01,$00,$00,$00,$00,$00   ; undefined
    .byte $9b,$00,$2c,$00,$08,$00,$00,$00   ; undefined
    .byte $bd,$00,$26,$00,$00,$00,$00,$00   ; undefined
    .byte $49,$00,$01,$00,$00,$00,$00,$00   ; undefined
    .byte $08,$00,$04,$00,$00,$00,$00,$00   ; undefined
    .byte $bf,$00,$68,$00,$02,$00,$00,$00   ; undefined
    .byte $4d,$00,$59,$00,$00,$00,$00,$00   ; undefined
    .byte $05,$00,$10,$00,$00,$00,$00,$00   ; undefined
    .byte $09,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $7f,$00,$0c,$00,$40,$00,$00,$00   ; undefined
    .byte $c8,$00,$10,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$80,$00,$04,$00,$00,$00   ; undefined
    .byte $65,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $f7,$00,$24,$00,$01,$00,$00,$00   ; undefined
    .byte $00,$00,$02,$00,$20,$00,$00,$00   ; undefined
    .byte $08,$00,$04,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$01,$00,$00,$00,$00,$00   ; undefined
    .byte $0b,$00,$80,$00,$57,$00,$00,$00   ; undefined
    .byte $04,$00,$02,$00,$80,$00,$00,$00   ; undefined
    .byte $2a,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $02,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$4d,$00,$01,$00,$00,$00   ; undefined
    .byte $7d,$00,$44,$00,$00,$00,$00,$00   ; undefined
    .byte $b4,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $50,$00,$83,$00,$00,$00,$00,$00   ; undefined
    .byte $7b,$00,$72,$00,$00,$00,$00,$00   ; undefined
    .byte $92,$00,$05,$00,$00,$00,$00,$00   ; undefined
    .byte $ad,$00,$d3,$00,$40,$00,$00,$00   ; undefined
    .byte $3c,$00,$05,$00,$10,$00,$00,$00   ; undefined
    .byte $fe,$00,$59,$00,$00,$00,$00,$00   ; undefined
    .byte $5d,$00,$91,$00,$00,$00,$00,$00   ; undefined
    .byte $7a,$00,$00,$00,$80,$00,$00,$00   ; undefined
    .byte $3f,$00,$10,$00,$00,$00,$00,$00   ; undefined
    .byte $fe,$00,$f2,$00,$15,$00,$00,$00   ; undefined
    .byte $fe,$00,$dc,$00,$00,$00,$00,$00   ; undefined
    .byte $c0,$00,$34,$00,$00,$00,$00,$00   ; undefined
    .byte $04,$00,$08,$00,$00,$00,$00,$00   ; undefined
    .byte $39,$00,$4e,$00,$84,$00,$00,$00   ; undefined
    .byte $e3,$00,$10,$00,$00,$00,$00,$00   ; undefined
    .byte $0c,$00,$43,$00,$00,$00,$00,$00   ; undefined
    .byte $08,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $a7,$00,$c9,$00,$00,$00,$00,$00   ; undefined
    .byte $44,$00,$1b,$00,$01,$00,$00,$00   ; undefined
    .byte $aa,$00,$00,$00,$80,$00,$00,$00   ; undefined
    .byte $01,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $fb,$00,$d9,$00,$20,$00,$00,$00   ; undefined
    .byte $21,$00,$67,$00,$00,$00,$00,$00   ; undefined
    .byte $88,$00,$01,$00,$80,$00,$00,$00   ; undefined
    .byte $21,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $51,$00,$24,$00,$0c,$00,$00,$00   ; undefined
    .byte $08,$00,$01,$00,$80,$00,$00,$00   ; undefined
    .byte $04,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $b7,$00,$cf,$00,$82,$00,$00,$00   ; undefined
    .byte $df,$00,$26,$00,$02,$00,$00,$00   ; undefined
    .byte $34,$00,$05,$00,$00,$00,$00,$00   ; undefined
    .byte $8c,$00,$20,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$d7,$00,$00,$00,$00,$00   ; undefined
    .byte $7d,$00,$c3,$00,$00,$00,$00,$00   ; undefined
    .byte $89,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $19,$00,$05,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$4a,$00,$00,$00,$00,$00   ; undefined
    .byte $7e,$00,$41,$00,$00,$00,$00,$00   ; undefined
    .byte $67,$00,$0a,$00,$00,$00,$00,$00   ; undefined
    .byte $8a,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$b3,$00,$80,$00,$00,$00   ; undefined
    .byte $7d,$00,$6c,$00,$00,$00,$00,$00   ; undefined
    .byte $08,$00,$20,$00,$02,$00,$00,$00   ; undefined
    .byte $0a,$00,$04,$00,$80,$00,$00,$00   ; undefined
    .byte $fe,$00,$2f,$00,$41,$00,$00,$00   ; undefined
    .byte $c9,$00,$08,$00,$00,$00,$00,$00   ; undefined
    .byte $4a,$00,$c4,$00,$00,$00,$00,$00   ; undefined
    .byte $82,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$30,$00,$40,$00,$00,$00   ; undefined
    .byte $cf,$00,$42,$00,$80,$00,$00,$00   ; undefined
    .byte $19,$00,$00,$00,$10,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $a5,$00,$a3,$00,$00,$00,$00,$00   ; undefined
    .byte $47,$00,$28,$00,$00,$00,$00,$00   ; undefined
    .byte $53,$00,$01,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $72,$00,$8d,$00,$00,$00,$00,$00   ; undefined
    .byte $04,$00,$42,$00,$00,$00,$00,$00   ; undefined
    .byte $20,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$01,$00,$00,$00   ; undefined
    .byte $ff,$00,$9c,$00,$00,$00,$00,$00   ; undefined
    .byte $77,$00,$8b,$00,$00,$00,$00,$00   ; undefined
    .byte $8d,$00,$10,$00,$00,$00,$00,$00   ; undefined
    .byte $11,$08,$14,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$d8,$00,$00,$00,$00,$00   ; undefined
    .byte $5f,$00,$c1,$00,$02,$00,$00,$00   ; undefined
    .byte $52,$08,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $06,$00,$04,$00,$00,$00,$00,$00   ; undefined
    .byte $ff,$00,$85,$00,$01,$00,$00,$00   ; undefined
    .byte $67,$00,$6a,$00,$00,$00,$00,$00   ; undefined
    .byte $63,$00,$14,$00,$00,$00,$00,$00   ; undefined
    .byte $86,$00,$41,$00,$00,$00,$00,$00   ; undefined
    .byte $6f,$00,$73,$00,$00,$00,$00,$00   ; undefined
    .byte $1c,$00,$96,$00,$20,$00,$00,$00   ; undefined
    .byte $38,$00,$a2,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$02,$00,$00,$00,$00,$00   ; undefined
    .byte $6f,$00,$3a,$00,$a0,$00,$00,$00   ; undefined
    .byte $ac,$00,$00,$00,$04,$00,$00,$00   ; undefined
    .byte $1d,$20,$00,$00,$80,$00,$00,$00   ; undefined
    .byte $00,$04,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $f5,$00,$3a,$00,$00,$00,$00,$00   ; undefined
    .byte $3b,$00,$00,$00,$80,$00,$00,$00   ; undefined
    .byte $78,$00,$20,$00,$80,$00,$00,$40   ; undefined
    .byte $02,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $7a,$00,$06,$00,$41,$00,$00,$00   ; undefined
    .byte $23,$00,$01,$00,$00,$00,$00,$00   ; undefined
    .byte $b0,$00,$82,$00,$80,$00,$00,$00   ; undefined
    .byte $44,$82,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $f1,$00,$20,$00,$00,$00,$00,$00   ; undefined
    .byte $cd,$00,$02,$00,$80,$00,$00,$00   ; undefined
    .byte $e6,$02,$80,$00,$80,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$ff,$11   ; undefined
    .byte $ff,$ff,$ff,$ba,$ff,$00,$ff,$be   ; undefined
    .byte $ff,$fd,$ff,$fb,$ff,$00,$ff,$76   ; undefined
    .byte $ff,$bf,$ff,$fe,$ff,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$bf,$00,$ff,$ad   ; undefined
    .byte $ff,$9b,$ff,$8f,$9f,$00,$ff,$31   ; undefined
    .byte $ff,$fa,$ff,$f5,$ff,$00,$ff,$d7   ; undefined
    .byte $ff,$ff,$ff,$ef,$ee,$00,$ff,$7b   ; undefined
    .byte $ff,$ff,$ff,$ff,$3d,$00,$ff,$76   ; undefined
    .byte $ff,$f5,$ff,$bb,$ff,$00,$ff,$be   ; undefined
    .byte $ff,$fe,$ff,$8f,$ff,$00,$ff,$fe   ; undefined
    .byte $ff,$ef,$ff,$ff,$ff,$00,$ff,$f7   ; undefined
    .byte $ff,$ef,$ff,$ff,$ae,$00,$ff,$28   ; undefined
    .byte $ff,$e5,$ff,$bb,$ff,$00,$ff,$d0   ; undefined
    .byte $ff,$f9,$ff,$eb,$df,$00,$ff,$dd   ; undefined
    .byte $ff,$fd,$ff,$3f,$db,$00,$ff,$bf   ; undefined
    .byte $ff,$ff,$ff,$bf,$df,$00,$ff,$f8   ; undefined
    .byte $ff,$e4,$ff,$ee,$ff,$00,$ff,$b5   ; undefined
    .byte $ff,$bb,$ff,$f6,$bf,$00,$ff,$fe   ; undefined
    .byte $ff,$df,$ff,$df,$97,$00,$ff,$fb   ; undefined
    .byte $ff,$ff,$ff,$ff,$45,$00,$ff,$64   ; undefined
    .byte $ff,$c3,$ff,$7f,$ff,$00,$ff,$1a   ; undefined
    .byte $ff,$e6,$ff,$f7,$67,$00,$ff,$e6   ; undefined
    .byte $ff,$fd,$ff,$be,$7a,$00,$ff,$fd   ; undefined
    .byte $ff,$ff,$ff,$ff,$84,$00,$ff,$cc   ; undefined
    .byte $ff,$c7,$ff,$c7,$fe,$00,$ff,$60   ; undefined
    .byte $ff,$fd,$ff,$fb,$bb,$00,$ff,$bf   ; undefined
    .byte $ff,$7f,$ff,$ff,$3f,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$3f,$00,$ff,$08   ; undefined
    .byte $ff,$78,$ff,$c8,$7f,$00,$ff,$6b   ; undefined
    .byte $ff,$ef,$ff,$fd,$ed,$00,$ff,$32   ; undefined
    .byte $ff,$7f,$ff,$fb,$da,$00,$ff,$fe   ; undefined
    .byte $ff,$ff,$ff,$ff,$f7,$00,$ff,$31   ; undefined
    .byte $ff,$75,$ff,$7f,$ff,$00,$ff,$a2   ; undefined
    .byte $ff,$cd,$ff,$ff,$df,$00,$ff,$b6   ; undefined
    .byte $ff,$5f,$ff,$ff,$df,$00,$ff,$ef   ; undefined
    .byte $ff,$ff,$ff,$7f,$ff,$00,$ff,$64   ; undefined
    .byte $ff,$db,$ff,$6f,$ff,$00,$ff,$e7   ; undefined
    .byte $ff,$df,$ff,$ff,$ff,$00,$ff,$8a   ; undefined
    .byte $ff,$ef,$ff,$ff,$ff,$00,$ff,$ee   ; undefined
    .byte $ff,$ff,$ff,$ff,$7f,$00,$ff,$70   ; undefined
    .byte $ff,$fd,$ff,$ff,$ff,$00,$ff,$e4   ; undefined
    .byte $ff,$fe,$ff,$fd,$ff,$00,$ff,$f8   ; undefined
    .byte $ff,$7f,$ff,$ff,$ff,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$f5,$00,$ff,$aa   ; undefined
    .byte $ff,$3a,$ff,$d7,$ff,$00,$ff,$18   ; undefined
    .byte $ff,$ff,$7f,$df,$ef,$00,$ff,$5b   ; undefined
    .byte $ff,$fd,$ff,$ff,$7c,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ef,$9b,$00,$ff,$18   ; undefined
    .byte $ff,$df,$ff,$ab,$ff,$00,$ff,$d4   ; undefined
    .byte $ff,$ff,$ff,$fe,$bf,$00,$ff,$70   ; undefined
    .byte $ff,$ff,$ff,$ff,$4f,$00,$ff,$fb   ; undefined
    .byte $ff,$ff,$bf,$ff,$f5,$00,$ff,$80   ; undefined
    .byte $ff,$ec,$ff,$0c,$df,$00,$ff,$c0   ; undefined
    .byte $ff,$7e,$ff,$72,$ff,$00,$ff,$fe   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$7b,$00,$ff,$1a   ; undefined
    .byte $ff,$89,$ff,$ac,$ff,$00,$ff,$ea   ; undefined
    .byte $ff,$df,$ff,$fb,$df,$00,$ff,$7e   ; undefined
    .byte $ff,$fb,$ff,$f5,$f7,$00,$ff,$f3   ; undefined
    .byte $ff,$ff,$ff,$fe,$69,$00,$ff,$40   ; undefined
    .byte $ff,$de,$ff,$ce,$ff,$00,$ff,$67   ; undefined
    .byte $ff,$be,$7f,$eb,$fb,$00,$ff,$e7   ; undefined
    .byte $ff,$f7,$fe,$fe,$de,$00,$ff,$ee   ; undefined
    .byte $ff,$ff,$f3,$ff,$02,$00,$ff,$66   ; undefined
    .byte $ff,$eb,$ff,$de,$ff,$00,$ff,$cb   ; undefined
    .byte $ff,$eb,$ff,$ef,$7f,$00,$ff,$af   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$00,$ff,$f6   ; undefined
    .byte $ff,$ff,$ff,$fd,$7f,$00,$ff,$b4   ; undefined
    .byte $ff,$ae,$ff,$8d,$ff,$00,$ff,$cd   ; undefined
    .byte $ff,$ff,$ff,$fc,$f7,$00,$ff,$7c   ; undefined
    .byte $ff,$fe,$ef,$ff,$5b,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$00,$ff,$80   ; undefined
    .byte $ff,$dd,$ff,$5e,$ff,$00,$ff,$ea   ; undefined
    .byte $ff,$2f,$ff,$ff,$ff,$00,$ff,$dc   ; undefined
    .byte $ff,$ff,$ff,$fe,$3f,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$fe,$e7,$00,$ff,$64   ; undefined
    .byte $ff,$af,$ff,$f1,$ff,$00,$ff,$4e   ; undefined
    .byte $ff,$fe,$ff,$ee,$ff,$00,$ff,$bb   ; undefined
    .byte $ff,$b7,$ff,$ff,$fe,$00,$ff,$ff   ; undefined
    .byte $ff,$fc,$ff,$ff,$7e,$00,$ff,$08   ; undefined
    .byte $ff,$a9,$ff,$ed,$df,$00,$ff,$6a   ; undefined
    .byte $ff,$fe,$ff,$fa,$fd,$00,$ff,$d4   ; undefined
    .byte $ff,$ff,$ff,$ff,$ef,$00,$ff,$f6   ; undefined
    .byte $ff,$ff,$ff,$ff,$e1,$00,$ff,$80   ; undefined
    .byte $ff,$d4,$ff,$dd,$ff,$00,$ff,$ef   ; undefined
    .byte $ff,$fc,$ff,$fb,$ef,$00,$ff,$e2   ; undefined
    .byte $ff,$ef,$ff,$ff,$7c,$00,$ff,$ff   ; undefined
    .byte $ff,$fe,$7f,$fd,$c7,$00,$ff,$78   ; undefined
    .byte $ff,$5e,$ff,$f6,$e7,$00,$ff,$e8   ; undefined
    .byte $ff,$fd,$ff,$ef,$ff,$00,$ff,$ea   ; undefined
    .byte $ff,$ff,$ff,$b6,$7f,$00,$ff,$ff   ; undefined
    .byte $bf,$fe,$ff,$ff,$04,$00,$ff,$80   ; undefined
    .byte $ff,$f9,$ff,$fd,$fe,$00,$ff,$7a   ; undefined
    .byte $ff,$ff,$ff,$bb,$ff,$00,$ff,$fd   ; undefined
    .byte $ff,$ff,$ff,$ff,$de,$00,$ff,$9b   ; undefined
    .byte $ff,$ff,$bf,$ff,$1b,$00,$ff,$31   ; undefined
    .byte $ff,$f0,$ff,$f6,$ff,$00,$ff,$91   ; undefined
    .byte $ff,$ff,$ff,$ff,$f7,$00,$ff,$af   ; undefined
    .byte $ff,$bf,$ff,$7f,$fe,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$d6,$00,$ff,$02   ; undefined
    .byte $ff,$aa,$ff,$f7,$ff,$00,$ff,$b2   ; undefined
    .byte $ff,$bf,$ff,$7f,$ff,$00,$ff,$db   ; undefined
    .byte $ff,$ff,$ff,$ff,$ef,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$00,$ff,$c0   ; undefined
    .byte $ff,$54,$ff,$dd,$fb,$00,$ff,$6e   ; undefined
    .byte $ff,$bd,$ff,$ee,$ff,$00,$ff,$bf   ; undefined
    .byte $ff,$7e,$ff,$ff,$eb,$00,$ff,$eb   ; undefined
    .byte $ff,$ff,$ff,$f7,$ed,$00,$ff,$28   ; undefined
    .byte $ff,$be,$ff,$cd,$ff,$00,$ff,$1b   ; undefined
    .byte $ff,$ff,$ff,$eb,$7f,$00,$ff,$fd   ; undefined
    .byte $ff,$ff,$ff,$fd,$37,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$fd,$00,$ff,$24   ; undefined
    .byte $ff,$bb,$ff,$bf,$ff,$00,$ff,$ec   ; undefined
    .byte $ff,$ff,$ff,$fd,$cf,$00,$ff,$8f   ; undefined
    .byte $ff,$ff,$ff,$ed,$be,$00,$ff,$df   ; undefined
    .byte $ff,$ff,$ff,$ff,$f1,$00,$ff,$a0   ; undefined
    .byte $ff,$24,$ff,$c4,$ff,$00,$ff,$29   ; undefined
    .byte $ff,$ff,$ff,$fd,$df,$00,$ff,$da   ; undefined
    .byte $ff,$fb,$ff,$ff,$7f,$00,$ff,$df   ; undefined
    .byte $ef,$ff,$ff,$ff,$71,$00,$ff,$92   ; undefined
    .byte $ff,$dd,$ff,$d7,$eb,$00,$ff,$b9   ; undefined
    .byte $ff,$ef,$ff,$ff,$ff,$00,$ff,$ab   ; undefined
    .byte $ff,$ff,$ff,$ff,$f7,$00,$ff,$fb   ; undefined
    .byte $ff,$ff,$ff,$ff,$3e,$00,$ff,$e0   ; undefined
    .byte $ff,$52,$ff,$3e,$ff,$00,$ff,$da   ; undefined
    .byte $ff,$fb,$bf,$ff,$bb,$00,$ff,$df   ; undefined
    .byte $ff,$ff,$ff,$7e,$e9,$00,$ff,$f9   ; undefined
    .byte $ff,$ff,$ff,$df,$5f,$00,$ff,$e4   ; undefined
    .byte $ff,$f8,$ff,$7b,$df,$00,$ff,$eb   ; undefined
    .byte $ff,$fe,$ff,$ff,$f7,$00,$ff,$fe   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$00,$ff,$fe   ; undefined
    .byte $ff,$df,$ff,$ff,$df,$00,$ff,$ac   ; undefined
    .byte $ff,$b3,$ff,$9e,$ff,$00,$ff,$5a   ; undefined
    .byte $ff,$9f,$ff,$ff,$ff,$00,$ff,$ce   ; undefined
    .byte $ff,$fd,$ff,$fd,$bf,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$bf,$00,$ff,$24   ; undefined
    .byte $ff,$bd,$ff,$dd,$ff,$00,$ff,$8a   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$00,$ff,$fd   ; undefined
    .byte $ff,$ff,$ff,$fe,$cc,$00,$ff,$bd   ; undefined
    .byte $ff,$ff,$f7,$ff,$5b,$00,$ff,$0a   ; undefined
    .byte $ff,$6d,$ff,$5a,$9f,$00,$ff,$9e   ; undefined
    .byte $ff,$53,$ff,$fa,$4f,$00,$ff,$c4   ; undefined
    .byte $ff,$ff,$ff,$fb,$4f,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$b1,$00,$ff,$8f   ; undefined
    .byte $ff,$7d,$ff,$64,$ff,$00,$ff,$62   ; undefined
    .byte $ff,$7f,$ff,$e3,$7f,$00,$ff,$f3   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$09,$00,$ff,$16   ; undefined
    .byte $ff,$4d,$ff,$29,$ff,$00,$ff,$6e   ; undefined
    .byte $ff,$fb,$ff,$bb,$bf,$00,$ff,$df   ; undefined
    .byte $ff,$ff,$ff,$ef,$6e,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$81,$00,$ff,$04   ; undefined
    .byte $ff,$0b,$ff,$e3,$ff,$00,$ff,$b0   ; undefined
    .byte $ff,$e6,$ff,$fe,$ff,$00,$ff,$ec   ; undefined
    .byte $ff,$af,$ff,$ef,$ff,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$38,$00,$ff,$a5   ; undefined
    .byte $ff,$f3,$ff,$7f,$bf,$00,$ff,$3f   ; undefined
    .byte $ff,$b7,$fb,$ef,$6f,$00,$ff,$de   ; undefined
    .byte $ff,$ff,$ff,$ff,$67,$00,$ff,$ff   ; undefined
    .byte $ff,$fb,$f7,$ff,$a2,$00,$ff,$f8   ; undefined
    .byte $ff,$e7,$ff,$ca,$bf,$00,$ff,$a0   ; undefined
    .byte $ff,$ff,$ff,$fc,$ff,$00,$ff,$df   ; undefined
    .byte $ff,$fb,$ff,$ff,$f7,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$af,$00,$ff,$06   ; undefined
    .byte $ff,$b5,$ff,$a7,$ff,$00,$ff,$56   ; undefined
    .byte $ff,$f5,$ff,$f7,$6f,$00,$ff,$5f   ; undefined
    .byte $ff,$ff,$ff,$f5,$ff,$00,$ff,$bf   ; undefined
    .byte $ff,$ff,$ff,$ff,$f7,$00,$ff,$a0   ; undefined
    .byte $ff,$7e,$ff,$be,$ff,$00,$ff,$ea   ; undefined
    .byte $ff,$f7,$ff,$69,$5e,$00,$ff,$db   ; undefined
    .byte $ff,$ff,$ff,$ff,$7f,$00,$ff,$57   ; undefined
    .byte $ff,$ff,$ff,$ff,$2f,$00,$ff,$00   ; undefined
    .byte $ff,$db,$ff,$a8,$fe,$00,$ff,$be   ; undefined
    .byte $ff,$7f,$ff,$bf,$fe,$00,$ff,$e5   ; undefined
    .byte $ff,$ef,$ff,$df,$7e,$00,$ff,$ff   ; undefined
    .byte $ff,$f7,$ff,$ff,$f3,$00,$ff,$02   ; undefined
    .byte $ff,$f3,$ff,$60,$7f,$00,$ff,$97   ; undefined
    .byte $ff,$fd,$ff,$ff,$dc,$00,$ff,$ff   ; undefined
    .byte $ff,$d7,$ff,$bd,$ff,$00,$ff,$e7   ; undefined
    .byte $ff,$ff,$ff,$fb,$9c,$00,$ff,$82   ; undefined
    .byte $ff,$e7,$ff,$d7,$ff,$00,$ff,$7d   ; undefined
    .byte $ff,$e7,$ff,$f7,$ff,$00,$ff,$0a   ; undefined
    .byte $ff,$ff,$ff,$de,$97,$00,$ff,$bf   ; undefined
    .byte $ff,$e7,$ff,$ff,$98,$00,$ff,$07   ; undefined
    .byte $ff,$60,$ff,$da,$ff,$00,$ff,$88   ; undefined
    .byte $ff,$fe,$ff,$fd,$ff,$00,$ff,$e7   ; undefined
    .byte $ff,$fa,$ff,$ff,$ef,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$6f,$00,$ff,$21   ; undefined
    .byte $ff,$fd,$ff,$fe,$fb,$00,$ff,$90   ; undefined
    .byte $ff,$fb,$ff,$76,$fe,$00,$ff,$e1   ; undefined
    .byte $ff,$7f,$ff,$fd,$3f,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$f7,$4e,$00,$ff,$24   ; undefined
    .byte $ff,$1f,$ff,$6d,$ef,$00,$ff,$af   ; undefined
    .byte $ff,$7d,$ff,$e9,$ff,$00,$ff,$36   ; undefined
    .byte $ff,$7f,$ff,$ff,$b7,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$f7,$ff,$00,$ff,$c3   ; undefined
    .byte $ff,$ff,$ff,$ef,$ff,$00,$ff,$98   ; undefined
    .byte $ff,$7f,$ff,$ff,$fe,$00,$ff,$aa   ; undefined
    .byte $ff,$fe,$ff,$fd,$ff,$00,$ff,$fe   ; undefined
    .byte $ff,$bf,$ff,$ff,$fb,$00,$ff,$84   ; undefined
    .byte $ff,$bf,$ff,$b7,$ff,$00,$ff,$f7   ; undefined
    .byte $ff,$ff,$ff,$7b,$ff,$00,$ff,$bf   ; undefined
    .byte $ff,$ff,$ff,$ff,$7b,$00,$fd,$fb   ; undefined
    .byte $ff,$ff,$ff,$ff,$55,$00,$ff,$68   ; undefined
    .byte $ff,$e5,$ff,$d8,$ff,$00,$ff,$03   ; undefined
    .byte $ff,$ff,$ff,$7e,$ff,$00,$ff,$bb   ; undefined
    .byte $ff,$fb,$ff,$fd,$7b,$00,$ff,$fe   ; undefined
    .byte $ff,$ff,$ff,$ff,$ef,$00,$ff,$80   ; undefined
    .byte $ff,$e9,$ff,$bb,$f7,$00,$ff,$32   ; undefined
    .byte $ff,$ed,$ff,$4d,$fb,$00,$ff,$a5   ; undefined
    .byte $ff,$df,$ff,$df,$3f,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$7f,$ff,$e4,$00,$ff,$00   ; undefined
    .byte $ff,$cd,$ff,$bb,$ff,$00,$ff,$c2   ; undefined
    .byte $ff,$dd,$ff,$f7,$7f,$00,$ff,$46   ; undefined
    .byte $ff,$fd,$ff,$bf,$7f,$00,$ff,$fe   ; undefined
    .byte $ff,$fb,$ff,$ff,$5b,$00,$ff,$a0   ; undefined
    .byte $ff,$dc,$ff,$f4,$ff,$00,$ff,$f9   ; undefined
    .byte $ff,$c5,$ff,$fb,$bf,$00,$ff,$ff   ; undefined
    .byte $ff,$fb,$ff,$f3,$fe,$00,$ff,$ff   ; undefined
    .byte $7f,$ff,$ff,$ff,$60,$00,$ff,$35   ; undefined
    .byte $ff,$81,$ff,$f3,$ff,$00,$ff,$c1   ; undefined
    .byte $ff,$ff,$ff,$7b,$3f,$00,$ff,$fd   ; undefined
    .byte $ff,$ff,$ff,$ff,$5e,$00,$ff,$fb   ; undefined
    .byte $ff,$ff,$ff,$ff,$0d,$00,$ff,$85   ; undefined
    .byte $ff,$f8,$ff,$b2,$ff,$00,$ff,$f5   ; undefined
    .byte $ff,$ff,$ff,$f7,$ff,$00,$ff,$e9   ; undefined
    .byte $ff,$ef,$ff,$ff,$ff,$00,$ff,$ed   ; undefined
    .byte $ff,$ff,$ff,$ff,$db,$00,$ff,$e8   ; undefined
    .byte $ff,$fe,$ff,$f5,$ff,$00,$ff,$a6   ; undefined
    .byte $ff,$ff,$ff,$df,$ff,$00,$ff,$6f   ; undefined
    .byte $ff,$f7,$ff,$fd,$be,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$6b,$00,$ff,$86   ; undefined
    .byte $ff,$75,$ff,$d8,$ff,$00,$ff,$28   ; undefined
    .byte $ff,$f7,$ff,$f9,$ff,$00,$ff,$af   ; undefined
    .byte $ff,$ff,$ff,$f7,$fd,$00,$ff,$fe   ; undefined
    .byte $ff,$fe,$ff,$ff,$f7,$00,$ff,$a0   ; undefined
    .byte $ff,$a5,$ff,$be,$bf,$00,$ff,$95   ; undefined
    .byte $ff,$bf,$ff,$af,$ff,$00,$ff,$7d   ; undefined
    .byte $ff,$ff,$ff,$ef,$cb,$00,$ff,$fb   ; undefined
    .byte $ff,$ff,$ff,$fe,$be,$00,$ff,$0a   ; undefined
    .byte $ff,$5a,$ff,$b4,$f7,$00,$ff,$1b   ; undefined
    .byte $ff,$bd,$ff,$79,$ff,$00,$ff,$ff   ; undefined
    .byte $ff,$f7,$ff,$ff,$cf,$00,$ff,$fe   ; undefined
    .byte $ff,$ff,$ff,$ff,$ed,$00,$ff,$20   ; undefined
    .byte $ff,$23,$ff,$d3,$ff,$00,$ff,$bd   ; undefined
    .byte $ff,$ce,$ff,$ce,$ff,$00,$ff,$37   ; undefined
    .byte $ff,$ef,$ff,$ff,$ff,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$fb,$00,$ff,$45   ; undefined
    .byte $ff,$5e,$ff,$9f,$ff,$00,$ff,$f8   ; undefined
    .byte $ff,$75,$ff,$ff,$ff,$00,$ff,$b1   ; undefined
    .byte $ff,$ff,$ff,$ff,$b5,$00,$ff,$f7   ; undefined
    .byte $ff,$df,$ff,$ff,$17,$00,$ff,$c6   ; undefined
    .byte $ff,$f0,$ff,$83,$ff,$00,$ff,$f8   ; undefined
    .byte $ff,$ef,$ff,$ef,$dd,$00,$ef,$ff   ; undefined
    .byte $ff,$ff,$ff,$ef,$df,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$4e,$00,$ff,$80   ; undefined
    .byte $ff,$ff,$ff,$fe,$ff,$00,$ff,$d2   ; undefined
    .byte $ff,$ff,$ff,$ef,$ef,$00,$ff,$af   ; undefined
    .byte $ff,$f6,$ff,$ff,$ff,$00,$ff,$de   ; undefined
    .byte $ff,$fe,$ff,$ff,$f3,$00,$ff,$f0   ; undefined
    .byte $ff,$7d,$ff,$66,$fb,$00,$ff,$e6   ; undefined
    .byte $ff,$e2,$ff,$ff,$f7,$00,$ff,$df   ; undefined
    .byte $ff,$ff,$ff,$fe,$ff,$00,$ff,$d7   ; undefined
    .byte $ff,$ff,$fb,$fd,$fe,$00,$ff,$72   ; undefined
    .byte $ff,$ed,$ff,$f7,$ff,$00,$ff,$e8   ; undefined
    .byte $ff,$be,$ff,$ff,$ff,$00,$ff,$c6   ; undefined
    .byte $ff,$ff,$ff,$fd,$ee,$00,$ff,$ff   ; undefined
    .byte $ff,$fd,$bf,$f5,$e1,$00,$ff,$ac   ; undefined
    .byte $ff,$31,$ff,$ee,$fd,$00,$ff,$03   ; undefined
    .byte $ff,$be,$ff,$ef,$9e,$00,$ff,$f9   ; undefined
    .byte $ff,$7f,$ff,$df,$5f,$00,$ff,$fd   ; undefined
    .byte $ff,$7f,$ff,$fb,$fb,$00,$ff,$48   ; undefined
    .byte $ff,$8c,$ff,$70,$df,$00,$ff,$93   ; undefined
    .byte $ff,$ff,$ff,$e7,$ff,$00,$ff,$75   ; undefined
    .byte $ff,$ff,$ff,$ff,$ab,$00,$ff,$f5   ; undefined
    .byte $ff,$ff,$f7,$ff,$40,$00,$ff,$34   ; undefined
    .byte $ff,$f3,$ff,$f4,$ff,$00,$ff,$ac   ; undefined
    .byte $ff,$ff,$ff,$ff,$bf,$00,$ff,$dd   ; undefined
    .byte $ff,$fa,$ff,$ef,$32,$00,$ff,$ff   ; undefined
    .byte $ff,$fe,$ff,$ff,$2a,$00,$ff,$22   ; undefined
    .byte $ff,$68,$ff,$b6,$de,$00,$ff,$0e   ; undefined
    .byte $ff,$66,$ff,$72,$ed,$00,$ff,$da   ; undefined
    .byte $ff,$fe,$ff,$fd,$df,$00,$ff,$ff   ; undefined
    .byte $ff,$fb,$fb,$ff,$17,$00,$ff,$30   ; undefined
    .byte $ff,$b5,$ff,$de,$7f,$00,$ff,$79   ; undefined
    .byte $fb,$d7,$ff,$db,$ee,$00,$ff,$f9   ; undefined
    .byte $ff,$ff,$ff,$ff,$5a,$00,$ff,$f7   ; undefined
    .byte $ff,$ff,$ff,$ff,$4f,$00,$ff,$fc   ; undefined
    .byte $ff,$8c,$ff,$df,$ff,$00,$ff,$a1   ; undefined
    .byte $ff,$f5,$ff,$ef,$f7,$00,$ff,$75   ; undefined
    .byte $ff,$fa,$fb,$ff,$ff,$00,$ff,$5f   ; undefined
    .byte $ff,$ff,$bf,$ff,$ff,$00,$ff,$00   ; undefined
    .byte $ff,$b2,$ff,$1e,$7f,$00,$ff,$53   ; undefined
    .byte $ff,$ee,$ff,$df,$df,$00,$ff,$e9   ; undefined
    .byte $ff,$fe,$ff,$ff,$d7,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$7d,$00,$ff,$80   ; undefined
    .byte $ff,$fa,$ff,$ff,$ff,$00,$ff,$6a   ; undefined
    .byte $ff,$7e,$ff,$ff,$f7,$00,$ff,$fe   ; undefined
    .byte $ff,$db,$ff,$fe,$f7,$00,$ff,$fe   ; undefined
    .byte $ff,$ff,$ff,$ff,$47,$00,$ff,$a7   ; undefined
    .byte $ff,$65,$ff,$e5,$ff,$00,$ff,$50   ; undefined
    .byte $ff,$ef,$ff,$ba,$fd,$00,$ff,$7e   ; undefined
    .byte $ff,$fe,$ff,$ff,$ff,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$0f,$00,$ff,$4c   ; undefined
    .byte $ff,$e8,$ff,$32,$ff,$00,$ff,$11   ; undefined
    .byte $ff,$fa,$ff,$46,$ff,$00,$ff,$9d   ; undefined
    .byte $ff,$ff,$ff,$ff,$3f,$00,$ff,$f7   ; undefined
    .byte $ff,$ff,$ff,$ff,$25,$00,$ff,$92   ; undefined
    .byte $ff,$f2,$ff,$9f,$ff,$00,$ff,$ce   ; undefined
    .byte $ff,$ed,$ff,$fa,$df,$00,$ff,$ac   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$00,$ff,$fb   ; undefined
    .byte $ff,$fd,$ff,$df,$e4,$00,$ff,$b8   ; undefined
    .byte $ff,$7d,$ff,$82,$ff,$00,$ff,$f9   ; undefined
    .byte $ff,$77,$ff,$fa,$fe,$00,$ff,$ba   ; undefined
    .byte $ff,$fe,$ff,$7f,$7f,$00,$ff,$df   ; undefined
    .byte $ff,$fb,$ff,$ff,$27,$00,$ff,$42   ; undefined
    .byte $ff,$ca,$ff,$4b,$ff,$00,$ff,$a4   ; undefined
    .byte $ff,$ff,$ff,$fb,$95,$00,$ff,$fc   ; undefined
    .byte $ff,$ff,$ff,$f7,$fb,$00,$ff,$f7   ; undefined
    .byte $ff,$ff,$ff,$ff,$75,$00,$ff,$8c   ; undefined
    .byte $ff,$bf,$ff,$dc,$f7,$00,$ff,$b4   ; undefined
    .byte $ff,$fa,$ff,$df,$ff,$00,$ff,$ca   ; undefined
    .byte $ff,$ff,$ff,$be,$df,$00,$ff,$f7   ; undefined
    .byte $ff,$ff,$ff,$ff,$fe,$00,$ff,$93   ; undefined
    .byte $ff,$37,$ff,$91,$fb,$00,$ff,$6c   ; undefined
    .byte $ff,$df,$ff,$f7,$ff,$00,$ff,$5e   ; undefined
    .byte $ff,$df,$ff,$ff,$f5,$00,$ff,$fa   ; undefined
    .byte $ff,$ff,$ff,$ff,$97,$00,$ff,$04   ; undefined
    .byte $ff,$dc,$ff,$7c,$bb,$00,$ff,$ba   ; undefined
    .byte $ff,$de,$ff,$fc,$bf,$00,$ff,$32   ; undefined
    .byte $ff,$bf,$ff,$ff,$cb,$00,$fd,$fe   ; undefined
    .byte $ff,$ff,$ff,$ff,$dd,$00,$ff,$8e   ; undefined
    .byte $ff,$9d,$ff,$e5,$df,$00,$ff,$fb   ; undefined
    .byte $ff,$fe,$ff,$df,$ff,$00,$ff,$f7   ; undefined
    .byte $ff,$fb,$ff,$df,$d7,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$f3,$00,$ff,$b0   ; undefined
    .byte $ff,$e7,$ff,$5c,$ff,$00,$ff,$df   ; undefined
    .byte $ff,$9d,$ff,$ff,$ff,$00,$ff,$cc   ; undefined
    .byte $ff,$ff,$ff,$ff,$ae,$00,$ff,$5f   ; undefined
    .byte $ff,$ff,$df,$ff,$6e,$00,$ff,$8c   ; undefined
    .byte $ff,$5d,$ff,$f5,$ff,$00,$ff,$71   ; undefined
    .byte $ff,$fe,$ff,$ff,$bf,$00,$ff,$f7   ; undefined
    .byte $ff,$ff,$ff,$af,$6e,$00,$ff,$f1   ; undefined
    .byte $ff,$ff,$ff,$ff,$07,$00,$ff,$34   ; undefined
    .byte $ff,$2b,$ff,$fe,$ff,$00,$ff,$d8   ; undefined
    .byte $ff,$fa,$ef,$fe,$ff,$00,$ff,$f0   ; undefined
    .byte $7f,$ff,$ff,$ff,$b9,$00,$ff,$fb   ; undefined
    .byte $ff,$bd,$ff,$ff,$7e,$00,$ff,$c2   ; undefined
    .byte $ff,$46,$ff,$fb,$ff,$00,$ff,$f6   ; undefined
    .byte $ff,$87,$ff,$fd,$9e,$00,$ff,$7b   ; undefined
    .byte $ff,$ff,$ff,$ff,$33,$00,$7f,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$93,$00,$ff,$84   ; undefined
    .byte $ff,$ed,$ff,$6d,$ff,$00,$ff,$b1   ; undefined
    .byte $ff,$e7,$ff,$7f,$ff,$00,$ff,$fa   ; undefined
    .byte $ff,$ef,$ff,$ff,$ff,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$b7,$00,$ff,$80   ; undefined
    .byte $ff,$eb,$ff,$ff,$ff,$00,$ff,$d7   ; undefined
    .byte $ff,$fd,$ff,$7b,$fe,$00,$ff,$ff   ; undefined
    .byte $ff,$ef,$ff,$bf,$df,$00,$ff,$7f   ; undefined
    .byte $ff,$ff,$ff,$ff,$df,$00,$ff,$b8   ; undefined
    .byte $ff,$ed,$ff,$ad,$ff,$00,$ff,$5d   ; undefined
    .byte $ff,$b7,$ff,$bf,$bb,$00,$ff,$de   ; undefined
    .byte $ff,$bf,$ff,$ff,$f9,$00,$ff,$fb   ; undefined
    .byte $ff,$ff,$ff,$ff,$26,$00,$ff,$e4   ; undefined
    .byte $ff,$e7,$ff,$a1,$ff,$00,$ff,$b7   ; undefined
    .byte $ff,$3e,$ff,$ff,$5f,$00,$ff,$f4   ; undefined
    .byte $ff,$fb,$ff,$7f,$bd,$00,$ff,$df   ; undefined
    .byte $ff,$5f,$ff,$ff,$f7,$00,$ff,$80   ; undefined
    .byte $ff,$dd,$ff,$dc,$fe,$00,$ff,$db   ; undefined
    .byte $ff,$ff,$ff,$f7,$ff,$00,$ff,$ee   ; undefined
    .byte $ff,$ff,$ff,$ff,$7d,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$dd,$00,$ff,$9a   ; undefined
    .byte $ff,$51,$ff,$cd,$ff,$00,$ff,$12   ; undefined
    .byte $ff,$ef,$ff,$ff,$fe,$00,$ff,$7e   ; undefined
    .byte $ff,$3f,$ff,$df,$b7,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$fd,$e9,$00,$ff,$a3   ; undefined
    .byte $ff,$e3,$ff,$f4,$ff,$00,$ff,$b0   ; undefined
    .byte $ff,$fd,$ff,$fa,$ad,$00,$ff,$7f   ; undefined
    .byte $ff,$ff,$ff,$fd,$79,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$bf,$89,$00,$ff,$ba   ; undefined
    .byte $ff,$e9,$ff,$80,$ff,$00,$ff,$74   ; undefined
    .byte $ff,$ff,$ff,$7b,$cf,$00,$ff,$df   ; undefined
    .byte $ff,$7f,$ff,$ff,$b1,$00,$ff,$fd   ; undefined
    .byte $df,$ff,$bf,$ff,$4b,$00,$ff,$ce   ; undefined
    .byte $ff,$7e,$ff,$29,$bf,$00,$ff,$f7   ; undefined
    .byte $ff,$ef,$ff,$ef,$df,$00,$ff,$ef   ; undefined
    .byte $ff,$ff,$ff,$ff,$ef,$00,$ff,$de   ; undefined
    .byte $ff,$ff,$ff,$ff,$6b,$00,$ff,$73   ; undefined
    .byte $ff,$ef,$ff,$ff,$ff,$00,$ff,$a3   ; undefined
    .byte $ff,$ff,$ff,$fe,$bd,$00,$ff,$df   ; undefined
    .byte $ff,$f7,$ff,$f5,$bf,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$fe,$df,$5f,$00,$ff,$c1   ; undefined
    .byte $ff,$36,$ff,$fd,$ff,$00,$ff,$d3   ; undefined
    .byte $ff,$7b,$ff,$bb,$7f,$00,$ff,$ca   ; undefined
    .byte $ff,$ff,$ff,$fe,$f7,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$3f,$00,$ff,$14   ; undefined
    .byte $ff,$ab,$ff,$bd,$b7,$00,$ff,$7f   ; undefined
    .byte $ff,$ef,$ff,$fb,$f5,$00,$ff,$bf   ; undefined
    .byte $ff,$ff,$ff,$5f,$d7,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$45,$00,$ff,$70   ; undefined
    .byte $ff,$fa,$ff,$67,$ff,$00,$ff,$bb   ; undefined
    .byte $ff,$e9,$ff,$ef,$bf,$00,$ff,$2d   ; undefined
    .byte $ff,$ef,$ff,$df,$bf,$00,$ff,$ca   ; undefined
    .byte $ff,$ff,$ff,$ff,$78,$00,$ff,$4a   ; undefined
    .byte $ff,$36,$bf,$f1,$ff,$00,$ff,$d4   ; undefined
    .byte $ff,$ed,$ff,$7b,$ff,$00,$ff,$df   ; undefined
    .byte $ff,$fa,$ff,$ff,$7e,$00,$ff,$ef   ; undefined
    .byte $ff,$ff,$f7,$ff,$25,$00,$ff,$46   ; undefined
    .byte $ff,$ac,$ff,$bb,$bf,$00,$ff,$36   ; undefined
    .byte $ff,$f7,$ff,$df,$7f,$00,$ff,$c1   ; undefined
    .byte $ff,$bf,$ff,$ff,$fb,$00,$ff,$ef   ; undefined
    .byte $ff,$ff,$ff,$ff,$2e,$00,$ff,$02   ; undefined
    .byte $ff,$18,$ff,$f5,$fe,$00,$ff,$dd   ; undefined
    .byte $ff,$fc,$ff,$ff,$b7,$00,$ff,$bf   ; undefined
    .byte $ff,$be,$ff,$7f,$ea,$00,$ff,$fd   ; undefined
    .byte $ff,$ff,$ef,$ff,$87,$00,$ff,$02   ; undefined
    .byte $ff,$fa,$ff,$dc,$ff,$00,$ff,$ea   ; undefined
    .byte $ff,$7f,$ff,$f9,$ff,$00,$ff,$fa   ; undefined
    .byte $ff,$ff,$ff,$ff,$f7,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$bf,$00,$ff,$46   ; undefined
    .byte $ff,$fb,$ff,$ff,$ff,$00,$ff,$3d   ; undefined
    .byte $ff,$ef,$ff,$ff,$7f,$00,$ff,$be   ; undefined
    .byte $ff,$ff,$ff,$ff,$d5,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$5b,$00,$ff,$62   ; undefined
    .byte $ff,$aa,$ff,$bd,$fb,$00,$ff,$8b   ; undefined
    .byte $ff,$ef,$ff,$ff,$ff,$00,$ff,$f5   ; undefined
    .byte $ff,$ff,$ff,$ff,$5f,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$f7,$ff,$61,$00,$ff,$90   ; undefined
    .byte $ff,$e2,$ff,$ff,$ff,$00,$ff,$87   ; undefined
    .byte $ff,$cb,$ff,$53,$ff,$00,$ff,$ec   ; undefined
    .byte $ff,$ff,$ff,$ff,$7b,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$53,$00,$ff,$01   ; undefined
    .byte $ff,$9c,$ff,$e2,$ff,$00,$ff,$a8   ; undefined
    .byte $ff,$fe,$ff,$de,$ef,$00,$ff,$57   ; undefined
    .byte $ff,$fd,$ff,$fc,$fa,$00,$ff,$f7   ; undefined
    .byte $ff,$ff,$ff,$ff,$76,$00,$ff,$46   ; undefined
    .byte $ff,$b0,$ff,$6e,$ff,$00,$ff,$33   ; undefined
    .byte $ff,$f3,$ff,$fb,$fa,$00,$ff,$f7   ; undefined
    .byte $ff,$bf,$ff,$ff,$9b,$00,$ff,$ff   ; undefined
    .byte $ff,$f7,$ff,$ff,$11,$00,$ff,$44   ; undefined
    .byte $ff,$a6,$ff,$ca,$ff,$00,$ff,$f5   ; undefined
    .byte $ff,$f2,$ff,$ef,$df,$00,$ff,$dc   ; undefined
    .byte $ff,$ff,$ff,$fd,$bb,$00,$ff,$f7   ; undefined
    .byte $ff,$ff,$ff,$ff,$97,$00,$ff,$75   ; undefined
    .byte $ff,$55,$ff,$1b,$9f,$00,$ff,$9f   ; undefined
    .byte $ff,$7f,$ff,$7f,$fb,$00,$ff,$3b   ; undefined
    .byte $ff,$f7,$ff,$fd,$f7,$00,$fe,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$c5,$00,$ff,$a5   ; undefined
    .byte $ff,$72,$ff,$fa,$fe,$00,$ff,$62   ; undefined
    .byte $ff,$f9,$ff,$ef,$5f,$00,$ff,$5c   ; undefined
    .byte $ff,$bf,$ff,$ef,$ff,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$fe,$ff,$00,$ff,$c0   ; undefined
    .byte $ff,$51,$ff,$fe,$ff,$00,$ff,$b7   ; undefined
    .byte $ff,$f6,$ff,$ff,$ef,$00,$ff,$bb   ; undefined
    .byte $ff,$ff,$ff,$fd,$fb,$00,$ff,$f7   ; undefined
    .byte $ff,$fd,$ff,$ff,$3b,$00,$ff,$c4   ; undefined
    .byte $ff,$95,$ff,$ad,$ff,$00,$ff,$ce   ; undefined
    .byte $ff,$f6,$ff,$fa,$df,$00,$ff,$ef   ; undefined
    .byte $ff,$ff,$ff,$ff,$ef,$00,$ff,$f5   ; undefined
    .byte $ff,$ff,$ff,$fd,$02,$00,$ff,$d0   ; undefined
    .byte $ff,$4e,$ff,$54,$ff,$00,$ff,$ce   ; undefined
    .byte $ff,$ff,$ff,$f6,$7f,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$7b,$5f,$00,$ff,$be   ; undefined
    .byte $ff,$ff,$df,$ff,$5e,$00,$ff,$41   ; undefined
    .byte $ff,$b6,$ff,$3f,$ff,$00,$ff,$71   ; undefined
    .byte $ff,$ef,$ff,$37,$df,$00,$ff,$23   ; undefined
    .byte $ff,$f7,$ff,$fe,$db,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$fb,$ff,$fd,$00,$ff,$71   ; undefined
    .byte $ff,$1a,$ff,$9d,$ff,$00,$ff,$2d   ; undefined
    .byte $ff,$f7,$ff,$fb,$ff,$00,$ff,$fd   ; undefined
    .byte $ff,$ff,$ff,$fd,$77,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$2f,$00,$ff,$63   ; undefined
    .byte $ff,$d1,$ff,$34,$ff,$00,$ff,$d9   ; undefined
    .byte $ff,$bf,$ff,$5d,$7f,$00,$ff,$3f   ; undefined
    .byte $ff,$fe,$ff,$db,$fe,$00,$ff,$7d   ; undefined
    .byte $ff,$ff,$ff,$ff,$4d,$00,$ff,$c0   ; undefined
    .byte $ff,$f4,$ff,$fa,$ff,$00,$ff,$f6   ; undefined
    .byte $ff,$f4,$ff,$ef,$ef,$00,$ff,$de   ; undefined
    .byte $ff,$f7,$ff,$ef,$0d,$00,$bf,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$bc,$00,$ff,$86   ; undefined
    .byte $ff,$dd,$ff,$af,$fd,$00,$ff,$6d   ; undefined
    .byte $ff,$79,$ff,$ff,$ff,$00,$ff,$f7   ; undefined
    .byte $ff,$ff,$ff,$7f,$ff,$00,$ff,$ff   ; undefined
    .byte $ff,$f7,$ff,$ff,$3f,$00,$ff,$14   ; undefined
    .byte $ff,$fc,$ff,$ee,$7f,$00,$ff,$9a   ; undefined
    .byte $ff,$fc,$ff,$f7,$ff,$00,$ff,$d1   ; undefined
    .byte $ff,$fb,$ff,$fb,$ff,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$e7,$00,$ff,$50   ; undefined
    .byte $ff,$de,$ff,$d7,$ff,$00,$ff,$3a   ; undefined
    .byte $ff,$f7,$ff,$ff,$ff,$00,$ff,$ff   ; undefined
    .byte $ff,$7f,$ff,$f9,$f7,$00,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$5f,$00,$ff,$90   ; undefined
    .byte $ff,$67,$ff,$b0,$ff,$00,$ff,$97   ; undefined
    .byte $ff,$ff,$ff,$ff,$7f,$00,$ff,$5f   ; undefined
    .byte $ff,$ff,$ff,$ff,$de,$00,$ff,$ef   ; undefined
    .byte $ff,$ff,$ff,$ff,$3a,$00,$ff,$8c   ; undefined
    .byte $ff,$7c,$ff,$f4,$ff,$00,$ff,$e8   ; undefined
    .byte $ff,$cc,$ff,$ff,$bf,$00,$ff,$e7   ; undefined
    .byte $ff,$ff,$ff,$bf,$fc,$00,$ff,$ff   ; undefined
    .byte $7f,$ff,$ff,$ff,$83,$00,$ff,$61   ; undefined
    .byte $ff,$e6,$ff,$5c,$f7,$00,$ff,$9b   ; undefined
    .byte $ff,$db,$ff,$bd,$fd,$00,$ff,$bd   ; undefined
    .byte $ff,$fe,$ff,$ff,$de,$00,$ff,$fd   ; undefined
    .byte $ff,$ff,$ff,$ff,$7f,$00,$ff,$70   ; undefined
    .byte $ff,$ff,$ff,$d9,$ff,$00,$ff,$ef   ; undefined
    .byte $ff,$fe,$ff,$ff,$6d,$00,$ff,$fa   ; undefined
    .byte $ff,$fd,$ff,$7e,$2b,$00,$ff,$dd   ; undefined
    .byte $ff,$ff,$f7,$ff,$1d,$00,$ff,$48   ; undefined
    .byte $ff,$df,$ff,$e5,$ff,$00,$ff,$89   ; undefined
    .byte $ff,$ff,$ff,$ff,$8f,$00,$ff,$7f   ; undefined
    .byte $ff,$7d,$ff,$fe,$ff,$00,$ff,$ff   ; undefined
    .byte $f7,$ff,$ff,$ff,$19               ; undefined
