;============================================================================
; Faxanadu (U).nes
;
; PRG11 ($8000 - $bfff)
;============================================================================

    .segment "PRG11"
    .reloc


;============================================================================
; Palette data comprising background tiles for areas.
;============================================================================
PALETTE_TILES_EOLIS:
    .byte $0f                               ; [0]:
    .byte $0f                               ; [1]:
    .byte $0c                               ; [2]:
    .byte $1b                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $0f                               ; [5]:
    .byte $08                               ; [6]:
    .byte $17                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $0f                               ; [9]:
    .byte $07                               ; [10]:
    .byte $0b                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $15                               ; [13]:
    .byte $19                               ; [14]:
    .byte $30                               ; [15]:

PALETTE_TILES_02:
    .byte $0f                               ; [0]:
    .byte $05                               ; [1]:
    .byte $17                               ; [2]:
    .byte $26                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $0f                               ; [5]:
    .byte $06                               ; [6]:
    .byte $17                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $06                               ; [9]:
    .byte $18                               ; [10]:
    .byte $28                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $15                               ; [13]:
    .byte $19                               ; [14]:
    .byte $30                               ; [15]:

PALETTE_TILES_03:
    .byte $0f                               ; [0]:
    .byte $0b                               ; [1]:
    .byte $1b                               ; [2]:
    .byte $21                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $0f                               ; [5]:
    .byte $0b                               ; [6]:
    .byte $1b                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $0b                               ; [9]:
    .byte $1b                               ; [10]:
    .byte $2b                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $15                               ; [13]:
    .byte $19                               ; [14]:
    .byte $30                               ; [15]:

PALETTE_TILES_04:
    .byte $0f                               ; [0]:
    .byte $00                               ; [1]:
    .byte $10                               ; [2]:
    .byte $20                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $07                               ; [5]:
    .byte $17                               ; [6]:
    .byte $10                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $18                               ; [9]:
    .byte $28                               ; [10]:
    .byte $38                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $15                               ; [13]:
    .byte $19                               ; [14]:
    .byte $30                               ; [15]:

PALETTE_TILES_05:
    .byte $0f                               ; [0]:
    .byte $0f                               ; [1]:
    .byte $0f                               ; [2]:
    .byte $0f                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $0f                               ; [5]:
    .byte $0f                               ; [6]:
    .byte $0f                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $0f                               ; [9]:
    .byte $0f                               ; [10]:
    .byte $0f                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $0f                               ; [13]:
    .byte $0f                               ; [14]:
    .byte $0f                               ; [15]:

PALETTE_TILES_06:
    .byte $0f                               ; [0]:
    .byte $0f                               ; [1]:
    .byte $00                               ; [2]:
    .byte $10                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $07                               ; [5]:
    .byte $17                               ; [6]:
    .byte $10                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $15                               ; [9]:
    .byte $27                               ; [10]:
    .byte $30                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $15                               ; [13]:
    .byte $19                               ; [14]:
    .byte $30                               ; [15]:

PALETTE_TILES_OUTSIDE_APOLUNE:
    .byte $0f                               ; [0]:
    .byte $08                               ; [1]:
    .byte $17                               ; [2]:
    .byte $27                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $0c                               ; [5]:
    .byte $17                               ; [6]:
    .byte $27                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $15                               ; [9]:
    .byte $19                               ; [10]:
    .byte $30                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $0a                               ; [13]:
    .byte $1b                               ; [14]:
    .byte $38                               ; [15]:

PALETTE_TILES_TOWER:
    .byte $0f                               ; [0]:
    .byte $0f                               ; [1]:
    .byte $08                               ; [2]:
    .byte $18                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $0f                               ; [5]:
    .byte $06                               ; [6]:
    .byte $18                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $15                               ; [9]:
    .byte $19                               ; [10]:
    .byte $30                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $08                               ; [13]:
    .byte $18                               ; [14]:
    .byte $25                               ; [15]:

PALETTE_TILES_BRANCH:
    .byte $0f                               ; [0]:
    .byte $08                               ; [1]:
    .byte $17                               ; [2]:
    .byte $26                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $0c                               ; [5]:
    .byte $17                               ; [6]:
    .byte $26                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $15                               ; [9]:
    .byte $19                               ; [10]:
    .byte $30                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $06                               ; [13]:
    .byte $16                               ; [14]:
    .byte $36                               ; [15]:

PALETTE_TILES_LEFT_TRUNK:
    .byte $0f                               ; [0]:
    .byte $09                               ; [1]:
    .byte $18                               ; [2]:
    .byte $36                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $0c                               ; [5]:
    .byte $18                               ; [6]:
    .byte $36                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $15                               ; [9]:
    .byte $19                               ; [10]:
    .byte $30                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $09                               ; [13]:
    .byte $19                               ; [14]:
    .byte $29                               ; [15]:

PALETTE_TILES_MIST:
    .byte $0f                               ; [0]:
    .byte $04                               ; [1]:
    .byte $00                               ; [2]:
    .byte $26                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $05                               ; [5]:
    .byte $16                               ; [6]:
    .byte $26                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $15                               ; [9]:
    .byte $19                               ; [10]:
    .byte $30                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $0f                               ; [13]:
    .byte $05                               ; [14]:
    .byte $16                               ; [15]:

PALETTE_TILES_SUFFER:
    .byte $0f                               ; [0]:
    .byte $07                               ; [1]:
    .byte $18                               ; [2]:
    .byte $28                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $09                               ; [5]:
    .byte $1b                               ; [6]:
    .byte $27                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $15                               ; [9]:
    .byte $19                               ; [10]:
    .byte $30                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $05                               ; [13]:
    .byte $16                               ; [14]:
    .byte $26                               ; [15]:

PALETTE_TILES_DARTMOOR:
    .byte $0f                               ; [0]:
    .byte $15                               ; [1]:
    .byte $19                               ; [2]:
    .byte $30                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $08                               ; [5]:
    .byte $18                               ; [6]:
    .byte $26                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $04                               ; [9]:
    .byte $00                               ; [10]:
    .byte $10                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $06                               ; [13]:
    .byte $16                               ; [14]:
    .byte $26                               ; [15]:

PALETTE_TILES_FRATERNAL:
    .byte $0f                               ; [0]:
    .byte $15                               ; [1]:
    .byte $19                               ; [2]:
    .byte $30                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $0f                               ; [5]:
    .byte $00                               ; [6]:
    .byte $30                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $04                               ; [9]:
    .byte $00                               ; [10]:
    .byte $10                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $0c                               ; [13]:
    .byte $00                               ; [14]:
    .byte $21                               ; [15]:

PALETTE_TILES_KING_GRIEVES_ROOM:
    .byte $0f                               ; [0]:
    .byte $15                               ; [1]:
    .byte $1a                               ; [2]:
    .byte $30                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $04                               ; [5]:
    .byte $13                               ; [6]:
    .byte $24                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $00                               ; [9]:
    .byte $10                               ; [10]:
    .byte $20                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $01                               ; [13]:
    .byte $11                               ; [14]:
    .byte $21                               ; [15]:

PALETTE_TILES_EVIL_FORTRESS:
    .byte $0f                               ; [0]:
    .byte $08                               ; [1]:
    .byte $00                               ; [2]:
    .byte $21                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $0b                               ; [5]:
    .byte $00                               ; [6]:
    .byte $23                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $08                               ; [9]:
    .byte $00                               ; [10]:
    .byte $10                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $15                               ; [13]:
    .byte $19                               ; [14]:
    .byte $30                               ; [15]:

PALETTE_TILES_START_SCREEN:
    .byte $0f                               ; [0]:
    .byte $05                               ; [1]:
    .byte $18                               ; [2]:
    .byte $38                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $17                               ; [5]:
    .byte $27                               ; [6]:
    .byte $30                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $0f                               ; [9]:
    .byte $16                               ; [10]:
    .byte $28                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $0f                               ; [13]:
    .byte $00                               ; [14]:
    .byte $10                               ; [15]:

PALETTE_TILES_KINGS_ROOM:
    .byte $0f                               ; [0]:
    .byte $07                               ; [1]:
    .byte $17                               ; [2]:
    .byte $27                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $0b                               ; [5]:
    .byte $00                               ; [6]:
    .byte $10                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $15                               ; [9]:
    .byte $19                               ; [10]:
    .byte $30                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $00                               ; [13]:
    .byte $10                               ; [14]:
    .byte $20                               ; [15]:

PALETTE_TILES_TEMPLE:
    .byte $0f                               ; [0]:
    .byte $08                               ; [1]:
    .byte $18                               ; [2]:
    .byte $28                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $0a                               ; [5]:
    .byte $00                               ; [6]:
    .byte $29                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $15                               ; [9]:
    .byte $19                               ; [10]:
    .byte $30                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $0b                               ; [13]:
    .byte $1b                               ; [14]:
    .byte $2b                               ; [15]:

PALETTE_TILES_HOSPITAL:
    .byte $0f                               ; [0]:
    .byte $0b                               ; [1]:
    .byte $17                               ; [2]:
    .byte $10                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $08                               ; [5]:
    .byte $00                               ; [6]:
    .byte $2b                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $15                               ; [9]:
    .byte $19                               ; [10]:
    .byte $30                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $0c                               ; [13]:
    .byte $1b                               ; [14]:
    .byte $24                               ; [15]:

PALETTE_TILES_TAVERN:
    .byte $0f                               ; [0]:
    .byte $08                               ; [1]:
    .byte $1b                               ; [2]:
    .byte $2c                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $08                               ; [5]:
    .byte $1b                               ; [6]:
    .byte $30                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $15                               ; [9]:
    .byte $19                               ; [10]:
    .byte $30                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $07                               ; [13]:
    .byte $00                               ; [14]:
    .byte $10                               ; [15]:

PALETTE_TILES_TOOL_SHOP:
    .byte $1f                               ; [0]:
    .byte $07                               ; [1]:
    .byte $18                               ; [2]:
    .byte $30                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $07                               ; [5]:
    .byte $17                               ; [6]:
    .byte $30                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $15                               ; [9]:
    .byte $19                               ; [10]:
    .byte $30                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $07                               ; [13]:
    .byte $17                               ; [14]:
    .byte $27                               ; [15]:

PALETTE_TILES_KEY_SHOP:
    .byte $0f                               ; [0]:
    .byte $06                               ; [1]:
    .byte $17                               ; [2]:
    .byte $30                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $06                               ; [5]:
    .byte $17                               ; [6]:
    .byte $3b                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $15                               ; [9]:
    .byte $19                               ; [10]:
    .byte $30                               ; [11]:
    .byte $3f                               ; [12]:
    .byte $07                               ; [13]:
    .byte $17                               ; [14]:
    .byte $28                               ; [15]:

PALETTE_TILES_HOUSE:
    .byte $0f                               ; [0]:
    .byte $07                               ; [1]:
    .byte $17                               ; [2]:
    .byte $20                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $07                               ; [5]:
    .byte $17                               ; [6]:
    .byte $36                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $15                               ; [9]:
    .byte $19                               ; [10]:
    .byte $30                               ; [11]:
    .byte $3f                               ; [12]:
    .byte $08                               ; [13]:
    .byte $17                               ; [14]:
    .byte $37                               ; [15]:

PALETTE_TILES_MEAT_SHOP:
    .byte $0f                               ; [0]:
    .byte $07                               ; [1]:
    .byte $18                               ; [2]:
    .byte $38                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $07                               ; [5]:
    .byte $1c                               ; [6]:
    .byte $37                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $15                               ; [9]:
    .byte $19                               ; [10]:
    .byte $30                               ; [11]:
    .byte $3f                               ; [12]:
    .byte $07                               ; [13]:
    .byte $00                               ; [14]:
    .byte $28                               ; [15]:

PALETTE_TILES_MARTIAL_ARTS:
    .byte $0f                               ; [0]:
    .byte $08                               ; [1]:
    .byte $18                               ; [2]:
    .byte $28                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $07                               ; [5]:
    .byte $17                               ; [6]:
    .byte $27                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $15                               ; [9]:
    .byte $19                               ; [10]:
    .byte $30                               ; [11]:
    .byte $3f                               ; [12]:
    .byte $08                               ; [13]:
    .byte $18                               ; [14]:
    .byte $2b                               ; [15]:

PALETTE_TILES_MAGIC_SHOP:
    .byte $0f                               ; [0]:
    .byte $08                               ; [1]:
    .byte $18                               ; [2]:
    .byte $28                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $06                               ; [5]:
    .byte $00                               ; [6]:
    .byte $10                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $15                               ; [9]:
    .byte $19                               ; [10]:
    .byte $30                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $00                               ; [13]:
    .byte $10                               ; [14]:
    .byte $20                               ; [15]:

PALETTE_TILES_TOWN:
    .byte $0f                               ; [0]:
    .byte $08                               ; [1]:
    .byte $17                               ; [2]:
    .byte $27                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $06                               ; [5]:
    .byte $17                               ; [6]:
    .byte $29                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $0a                               ; [9]:
    .byte $1c                               ; [10]:
    .byte $38                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $15                               ; [13]:
    .byte $19                               ; [14]:
    .byte $30                               ; [15]:


;============================================================================
; Palette data for sprites.
;============================================================================
PALETTE_SPRITES_OUTSIDE:
    .byte $0f                               ; [0]:
    .byte $18                               ; [1]:
    .byte $26                               ; [2]:
    .byte $30                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $00                               ; [5]:
    .byte $25                               ; [6]:
    .byte $30                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $0f                               ; [9]:
    .byte $1c                               ; [10]:
    .byte $33                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $0f                               ; [13]:
    .byte $27                               ; [14]:
    .byte $30                               ; [15]:

PALETTE_SPRITES_INSIDE:
    .byte $0f                               ; [0]:
    .byte $18                               ; [1]:
    .byte $26                               ; [2]:
    .byte $30                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $00                               ; [5]:
    .byte $25                               ; [6]:
    .byte $30                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $16                               ; [9]:
    .byte $2c                               ; [10]:
    .byte $30                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $17                               ; [13]:
    .byte $25                               ; [14]:
    .byte $30                               ; [15]:

PALETTE_SPRITES_PORTRAIT:
    .byte $0f                               ; [0]:
    .byte $18                               ; [1]:
    .byte $26                               ; [2]:
    .byte $30                               ; [3]:
    .byte $0f                               ; [4]:
    .byte $00                               ; [5]:
    .byte $25                               ; [6]:
    .byte $30                               ; [7]:
    .byte $0f                               ; [8]:
    .byte $18                               ; [9]:
    .byte $26                               ; [10]:
    .byte $2b                               ; [11]:
    .byte $0f                               ; [12]:
    .byte $0c                               ; [13]:
    .byte $1c                               ; [14]:
    .byte $30                               ; [15]:


;============================================================================
; Mapping of palette indexes to HUD/textbox attribute data lookup indexes.
;
; XREFS:
;     Screen_LoadUIPalette
;============================================================================

;
; XREFS:
;     Screen_LoadUIPalette
;
PALETTE_INDEX_TO_UI_BG_ATTRIBUTE_INDEX:
    .byte $03                               ; [0]: Eolis
    .byte $03                               ; [1]:
    .byte $03                               ; [2]:
    .byte $03                               ; [3]:
    .byte $03                               ; [4]:
    .byte $03                               ; [5]:
    .byte $02                               ; [6]: Between Eolis and Apolune
    .byte $02                               ; [7]: Tower
    .byte $02                               ; [8]: Branch
    .byte $02                               ; [9]: Left, darker side of Trunk
    .byte $02                               ; [10]: Mist
    .byte $02                               ; [11]: Tower of Suffer
    .byte $00                               ; [12]: Dartmoor
    .byte $00                               ; [13]: Castle of Fraternal
    .byte $00                               ; [14]: King Grieve's Room
    .byte $03                               ; [15]: Evil Fortress
    .byte $01                               ; [16]: Start Screen
    .byte $02                               ; [17]: King's Room
    .byte $02                               ; [18]: Temple
    .byte $02                               ; [19]: Hospital
    .byte $02                               ; [20]: Tavern
    .byte $02                               ; [21]: Tool Shop
    .byte $02                               ; [22]: Key Shop
    .byte $02                               ; [23]: House
    .byte $02                               ; [24]: Meat Shop
    .byte $02                               ; [25]: Martial Arts
    .byte $02                               ; [26]: Magic Shop
    .byte $03                               ; [27]: Town
    .byte $03                               ; [28]:
    .byte $03                               ; [29]:
    .byte $03                               ; [30]:
    .byte $03                               ; [31]:


;============================================================================
; Table of sprite information start addresses.
;
; Each index into this is an area index.
;
; XREFS:
;     Screen_LoadAllScreenInfo
;============================================================================

;
; XREFS:
;     Screen_LoadAllScreenInfo
;
AREA_SPRITE_ADDRESSES:
    pointer SPRITE_INFO_EOLIS               ; Eolis
    pointer SPRITE_INFO_APOLUNE             ; Apolune
    pointer SPRITE_INFO_FOREPAW             ; Forepaw
    pointer SPRITE_INFO_MASCON              ; Mascon
    pointer SPRITE_INFO_VICTIM              ; Victim
    pointer SPRITE_INFO_CONFLATE            ; Conflate
    pointer SPRITE_INFO_DAYBREAK            ; Daybreak
    pointer SPRITE_INFO_ZENIS               ; Final


;============================================================================
; Eolis Sprite Information by Screen Index
;
; XREFS:
;     AREA_SPRITE_ADDRESSES [$PRG11::8210]
;============================================================================

;
; XREFS:
;     AREA_SPRITE_ADDRESSES [$PRG11::8210]
;
SPRITE_INFO_EOLIS:
    pointer SPRITE_INFO_EOLIS_SCREEN_00     ; Screen 0
    pointer SPRITE_INFO_EOLIS_SCREEN_01     ; Screen 1
    pointer SPRITE_INFO_EOLIS_SCREEN_02     ; Screen 2
    pointer SPRITE_INFO_EOLIS_SCREEN_03     ; Screen 3
    pointer SPRITE_INFO_EOLIS_SCREEN_04     ; Screen 4
    pointer SPRITE_INFO_EOLIS_SCREEN_05     ; Screen 5
    pointer SPRITE_INFO_EOLIS_SCREEN_06     ; Screen 6
    pointer SPRITE_INFO_EOLIS_SCREEN_07     ; Screen 7
    pointer SPRITE_INFO_EOLIS_SCREEN_08     ; Screen 8

;
; XREFS:
;     SPRITE_INFO_EOLIS [$PRG11::8220]
;
SPRITE_INFO_EOLIS_SCREEN_00:
    .byte SPRITE_TRIGGER_INTRO              ; SpriteEntity
    .byte $04,$ff                           ; byte

    .byte ISCRIPT_ENTRYPOINT_INTRO          ; IScript 0
    .byte $ff                               ; byte

SPRITE_INFO_EOLIS_SCREEN_01:
    .byte SPRITE_NPC_WALKING_MAN_1          ; SpriteEntity
    .byte $9c,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_EOLIS_WALKING_MAN_1 ; IScript 1
    .byte $ff                               ; undefined

SPRITE_INFO_EOLIS_SCREEN_02:
    .byte SPRITE_NPC_WALKING_WOMAN_2        ; SpriteEntity
    .byte $97,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_EOLIS_WALKING_WOMAN_1 ; IScript 3
    .byte $ff                               ; undefined

SPRITE_INFO_EOLIS_SCREEN_03:
    .byte SPRITE_NPC_SMOKING_MAN            ; SpriteEntity
    .byte $84,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_EOLIS_SMOKING_MAN ; IScript 6
    .byte $ff                               ; undefined

SPRITE_INFO_EOLIS_SCREEN_04:
    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $a9                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $a4,$ff,$ff                       ; undefined

SPRITE_INFO_EOLIS_SCREEN_05:
    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $ab                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $a5,$ff,$ff                       ; undefined

SPRITE_INFO_EOLIS_SCREEN_06:
    .byte SPRITE_NPC_NURSE                  ; SpriteEntity
    .byte $93,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_EOLIS_WALKING_WOMAN_2 ; IScript 5
    .byte $ff                               ; undefined

SPRITE_INFO_EOLIS_SCREEN_07:
    .byte SPRITE_NPC_GUARD_1                ; SpriteEntity
    .byte $9a,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_EOLIS_KINGS_GUARD ; ISCRIPT_EOLIS_KINGS_GUARD
    .byte $ff                               ; undefined

SPRITE_INFO_EOLIS_SCREEN_08:
    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $9c,$ff,$ff                       ; undefined


;============================================================================
; Apolune Sprite Information
;============================================================================
SPRITE_INFO_APOLUNE:
    pointer SPRITE_INFO_APOLUNE_SCREEN_00   ; SPRITE_INFO_APOLUNE_SCREEN_00
    pointer SPRITE_INFO_APOLUNE_SCREEN_01   ; SPRITE_INFO_APOLUNE_SCREEN_01
    pointer SPRITE_INFO_APOLUNE_SCREEN_02   ; SPRITE_INFO_APOLUNE_SCREEN_02
    pointer SPRITE_INFO_APOLUNE_SCREEN_03   ; SPRITE_INFO_APOLUNE_SCREEN_03
    pointer SPRITE_INFO_APOLUNE_SCREEN_04   ; SPRITE_INFO_APOLUNE_SCREEN_04
    pointer SPRITE_INFO_APOLUNE_SCREEN_05   ; SPRITE_INFO_APOLUNE_SCREEN_05
    pointer SPRITE_INFO_APOLUNE_SCREEN_06   ; SPRITE_INFO_APOLUNE_SCREEN_06
    pointer SPRITE_INFO_APOLUNE_SCREEN_07   ; SPRITE_INFO_APOLUNE_SCREEN_07
    pointer SPRITE_INFO_APOLUNE_SCREEN_08   ; SPRITE_INFO_APOLUNE_SCREEN_08
    pointer SPRITE_INFO_APOLUNE_SCREEN_09   ; SPRITE_INFO_APOLUNE_SCREEN_09
    pointer SPRITE_INFO_APOLUNE_SCREEN_10   ; SPRITE_INFO_APOLUNE_SCREEN_10
    pointer SPRITE_INFO_APOLUNE_SCREEN_11   ; SPRITE_INFO_APOLUNE_SCREEN_11
    pointer SPRITE_INFO_APOLUNE_SCREEN_12   ; SPRITE_INFO_APOLUNE_SCREEN_12
    pointer SPRITE_INFO_APOLUNE_SCREEN_13   ; SPRITE_INFO_APOLUNE_SCREEN_13
    pointer SPRITE_INFO_APOLUNE_SCREEN_14   ; SPRITE_INFO_APOLUNE_SCREEN_14
    pointer SPRITE_INFO_APOLUNE_SCREEN_15   ; SPRITE_INFO_APOLUNE_SCREEN_15
    pointer SPRITE_INFO_APOLUNE_SCREEN_16   ; SPRITE_INFO_APOLUNE_SCREEN_16
    pointer SPRITE_INFO_APOLUNE_SCREEN_17   ; SPRITE_INFO_APOLUNE_SCREEN_17
    pointer SPRITE_INFO_APOLUNE_SCREEN_18   ; SPRITE_INFO_APOLUNE_SCREEN_18
    pointer SPRITE_INFO_APOLUNE_SCREEN_19   ; SPRITE_INFO_APOLUNE_SCREEN_19
    pointer SPRITE_INFO_APOLUNE_SCREEN_20   ; SPRITE_INFO_APOLUNE_SCREEN_20
    pointer SPRITE_INFO_APOLUNE_SCREEN_21   ; SPRITE_INFO_APOLUNE_SCREEN_21
    pointer SPRITE_INFO_APOLUNE_SCREEN_22   ; SPRITE_INFO_APOLUNE_SCREEN_22
    pointer SPRITE_INFO_APOLUNE_SCREEN_23   ; SPRITE_INFO_APOLUNE_SCREEN_23
    pointer SPRITE_INFO_APOLUNE_SCREEN_24   ; SPRITE_INFO_APOLUNE_SCREEN_24
    pointer SPRITE_INFO_APOLUNE_SCREEN_25   ; SPRITE_INFO_APOLUNE_SCREEN_25
    pointer SPRITE_INFO_APOLUNE_SCREEN_26   ; SPRITE_INFO_APOLUNE_SCREEN_26
    pointer SPRITE_INFO_APOLUNE_SCREEN_27   ; SPRITE_INFO_APOLUNE_SCREEN_27
    pointer SPRITE_INFO_APOLUNE_SCREEN_28   ; SPRITE_INFO_APOLUNE_SCREEN_28
    pointer SPRITE_INFO_APOLUNE_SCREEN_29   ; SPRITE_INFO_APOLUNE_SCREEN_29
    pointer SPRITE_INFO_APOLUNE_SCREEN_30   ; SPRITE_INFO_APOLUNE_SCREEN_30
    pointer SPRITE_INFO_APOLUNE_SCREEN_31   ; SPRITE_INFO_APOLUNE_SCREEN_31
    pointer SPRITE_INFO_APOLUNE_SCREEN_32   ; SPRITE_INFO_APOLUNE_SCREEN_32
    pointer SPRITE_INFO_APOLUNE_SCREEN_33   ; SPRITE_INFO_APOLUNE_SCREEN_33
    pointer SPRITE_INFO_APOLUNE_SCREEN_34   ; SPRITE_INFO_APOLUNE_SCREEN_34
    pointer SPRITE_INFO_APOLUNE_SCREEN_35   ; SPRITE_INFO_APOLUNE_SCREEN_35
    pointer SPRITE_INFO_APOLUNE_SCREEN_36   ; SPRITE_INFO_APOLUNE_SCREEN_36
    pointer SPRITE_INFO_APOLUNE_SCREEN_37   ; SPRITE_INFO_APOLUNE_SCREEN_37
    pointer SPRITE_INFO_APOLUNE_SCREEN_38   ; SPRITE_INFO_APOLUNE_SCREEN_38
    pointer SPRITE_INFO_APOLUNE_SCREEN_39   ; SPRITE_INFO_APOLUNE_SCREEN_39
    pointer SPRITE_INFO_APOLUNE_SCREEN_40   ; SPRITE_INFO_APOLUNE_SCREEN_40
    pointer SPRITE_INFO_APOLUNE_SCREEN_41   ; SPRITE_INFO_APOLUNE_SCREEN_41
    pointer SPRITE_INFO_APOLUNE_SCREEN_42   ; SPRITE_INFO_APOLUNE_SCREEN_42
    pointer SPRITE_INFO_APOLUNE_SCREEN_43   ; SPRITE_INFO_APOLUNE_SCREEN_43
    pointer SPRITE_INFO_APOLUNE_SCREEN_44   ; SPRITE_INFO_APOLUNE_SCREEN_44
    pointer SPRITE_INFO_APOLUNE_SCREEN_45   ; SPRITE_INFO_APOLUNE_SCREEN_45
    pointer SPRITE_INFO_APOLUNE_SCREEN_46   ; SPRITE_INFO_APOLUNE_SCREEN_46
    pointer SPRITE_INFO_APOLUNE_SCREEN_47   ; SPRITE_INFO_APOLUNE_SCREEN_47
    pointer SPRITE_INFO_APOLUNE_SCREEN_48   ; SPRITE_INFO_APOLUNE_SCREEN_48
    pointer SPRITE_INFO_APOLUNE_SCREEN_49   ; SPRITE_INFO_APOLUNE_SCREEN_49
    pointer SPRITE_INFO_APOLUNE_SCREEN_50   ; SPRITE_INFO_APOLUNE_SCREEN_50
    pointer SPRITE_INFO_APOLUNE_SCREEN_51   ; SPRITE_INFO_APOLUNE_SCREEN_51
    pointer SPRITE_INFO_APOLUNE_SCREEN_52   ; SPRITE_INFO_APOLUNE_SCREEN_52
    pointer SPRITE_INFO_APOLUNE_SCREEN_53   ; SPRITE_INFO_APOLUNE_SCREEN_53
    pointer SPRITE_INFO_APOLUNE_SCREEN_54   ; SPRITE_INFO_APOLUNE_SCREEN_54
    pointer SPRITE_INFO_APOLUNE_SCREEN_55   ; SPRITE_INFO_APOLUNE_SCREEN_55
    pointer SPRITE_INFO_APOLUNE_SCREEN_56   ; SPRITE_INFO_APOLUNE_SCREEN_56
    pointer SPRITE_INFO_APOLUNE_SCREEN_57   ; SPRITE_INFO_APOLUNE_SCREEN_57
    pointer SPRITE_INFO_APOLUNE_SCREEN_58   ; SPRITE_INFO_APOLUNE_SCREEN_58
    pointer SPRITE_INFO_APOLUNE_SCREEN_59   ; SPRITE_INFO_APOLUNE_SCREEN_59
    pointer SPRITE_INFO_APOLUNE_SCREEN_60   ; SPRITE_INFO_APOLUNE_SCREEN_60
    pointer SPRITE_INFO_APOLUNE_SCREEN_61   ; SPRITE_INFO_APOLUNE_SCREEN_61
    pointer SPRITE_INFO_APOLUNE_SCREEN_62   ; SPRITE_INFO_APOLUNE_SCREEN_62
    pointer SPRITE_INFO_APOLUNE_SCREEN_63   ; SPRITE_INFO_APOLUNE_SCREEN_63

;
; XREFS:
;     SPRITE_INFO_APOLUNE [$PRG11::8260]
;
SPRITE_INFO_APOLUNE_SCREEN_00:
    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $a8,$ff,$ff                       ; byte

SPRITE_INFO_APOLUNE_SCREEN_01:
    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $14                               ; byte

    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $a8,$ff,$ff                       ; byte

SPRITE_INFO_APOLUNE_SCREEN_02:
    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $18                               ; byte

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $b6                               ; byte

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $ba,$ff,$ff                       ; byte

SPRITE_INFO_APOLUNE_SCREEN_03:
    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $ba                               ; byte

    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $a5,$ff,$ff                       ; byte

SPRITE_INFO_APOLUNE_SCREEN_04:
    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $a4                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $b4,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_05:
    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $a6                               ; undefined

    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $aa,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_06:
    .byte SPRITE_ENEMY_ZOMBIE               ; SpriteEntity
    .byte $a6                               ; undefined

    .byte SPRITE_ENEMY_ZOMBIE               ; SpriteEntity
    .byte $5b,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_07:
    .byte SPRITE_ENEMY_ZOMBIE               ; SpriteEntity
    .byte $a5                               ; byte

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $ba,$ff                           ; byte

SPRITE_INFO_APOLUNE_SCREEN_08:
    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $25                               ; byte

    .byte SPRITE_ENEMY_ZOMBIE               ; SpriteEntity
    .byte $aa,$ff,$ff                       ; byte

SPRITE_INFO_APOLUNE_SCREEN_09:
    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $aa                               ; undefined

    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $a5,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_10:
    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $a8                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $bb,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_11:
    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $ab                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $b6,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_12:
    .byte SPRITE_OBJ_RED_POTION             ; SpriteEntity
    .byte $3b                               ; undefined

    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $48                               ; undefined

    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $ad,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_13:
    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $9a                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $52                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $5e,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_14:
    .byte SPRITE_OBJ_MATTOCK1               ; SpriteEntity
    .byte $5d                               ; undefined

    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $9a                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $58                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $5d,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_15:
    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $9a                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $46,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_16:
    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $9a,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_17:
    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $9a,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_18:
    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $9a                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $45,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_19:
    .byte SPRITE_OBJ_HOUR_GLASS             ; SpriteEntity
    .byte $4d                               ; undefined

    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $7a                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $4b                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $89,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_20:
    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $7a                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $a6                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $ac,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_21:
    .byte SPRITE_OBJ_MATTOCK2               ; SpriteEntity
    .byte $ae                               ; undefined

    .byte SPRITE_BOSS_RIPASHEIKU            ; SpriteEntity
    .byte $4b,$ff,$ff                       ; undefined

    .byte SCREEN_HAS_SPECIAL_EVENT          ; ScreenExtraInfo
    .byte SCREEN_EVENT_BOSS                 ; CurrentScreen_SpecialEventID

SPRITE_INFO_APOLUNE_SCREEN_22:
    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $9c                               ; undefined

    .byte SPRITE_ENEMY_MYCONID              ; SpriteEntity
    .byte $46,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_23:
    .byte SPRITE_ENEMY_MONODRON             ; SpriteEntity
    .byte $9a                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $35                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $5f,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_24:
    .byte SPRITE_ENEMY_MYCONID              ; SpriteEntity
    .byte $9c                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $55                               ; undefined

    .byte SPRITE_OBJ_GLOVE_2                ; SpriteEntity
    .byte $31,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_25:
    .byte SPRITE_ENEMY_MYCONID              ; SpriteEntity
    .byte $98                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $4d,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_26:
    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $28                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $99,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_28:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $25                               ; undefined

    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $98,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_29:
    .byte SPRITE_OBJ_OINTMENT               ; SpriteEntity
    .byte $41                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $99                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $cc                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $55,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_30:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $99                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $3b,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_31:
    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $99                               ; undefined

    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $95,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_32:
    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $99                               ; undefined

    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $95,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_33:
    .byte SPRITE_OBJ_RED_POTION             ; SpriteEntity
    .byte $7e                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $88,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_34:
    .byte SPRITE_OBJ_RED_POTION_2           ; SpriteEntity
    .byte $6e                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $55                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $7b,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_39:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $95                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $38,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_35:
    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $35                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $58                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $8f,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_36:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $89                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $35,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_38:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $34                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $75,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_37:
    .byte SPRITE_NPC_MAGIC_TEACHER          ; SpriteEntity
    .byte $4b,$62,$38,$ff,$25,$ff           ; undefined

SPRITE_INFO_APOLUNE_SCREEN_61:
    .byte SPRITE_NPC_MAGIC_TEACHER          ; SpriteEntity
    .byte $2a,$61,$1b,$ff                   ; undefined

    .byte $26                               ; ScreenExtraInfo
    .byte $ff                               ; undefined

SPRITE_INFO_APOLUNE_SCREEN_63:
    .byte SPRITE_NPC_MAGIC_TEACHER          ; SpriteEntity
    .byte $99,$63,$8a,$ff                   ; undefined

    .byte $27                               ; ScreenExtraInfo
    .byte $ff                               ; undefined

SPRITE_INFO_APOLUNE_SCREEN_40:
    .byte SPRITE_EFFECT_FOUNTAIN            ; SpriteEntity
    .byte $55,$ff,$ff                       ; undefined

    .byte SCREEN_HAS_SPECIAL_EVENT          ; ScreenExtraInfo
    .byte SCREEN_EVENT_PATH_TO_MASCON       ; CurrentScreen_SpecialEventID

SPRITE_INFO_APOLUNE_SCREEN_41:
    .byte SPRITE_OBJ_POISON_2               ; SpriteEntity
    .byte $31                               ; undefined

    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $99                               ; undefined

    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $96,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_42:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $99,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_43:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $35                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $3b,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_44:
    .byte SPRITE_ENEMY_MYCONID              ; SpriteEntity
    .byte $99                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $6a                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $53,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_45:
    .byte SPRITE_OBJ_WING_BOOTS             ; SpriteEntity
    .byte $41                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $89                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $12                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $6c,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_46:
    .byte SPRITE_BOSS_RIPASHEIKU            ; SpriteEntity
    .byte $64,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_47:
    .byte SPRITE_ENEMY_MYCONID              ; SpriteEntity
    .byte $39                               ; undefined

    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $99,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_48:
    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $99                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $45,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_49:
    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $99                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $45,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_50:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $99                               ; undefined

    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $23,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_51:
    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $94                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $45,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_52:
    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $99                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $21,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_53:
    .byte SPRITE_OBJ_POISON_2               ; SpriteEntity
    .byte $a2                               ; undefined

    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $93                               ; undefined

    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $45,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_54:
    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $9e                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $45,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_55:
    .byte SPRITE_OBJ_OINTMENT_2             ; SpriteEntity
    .byte $33                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $95,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_56:
    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $79                               ; undefined

    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $76,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_57:
    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $97                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $4a,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_58:
    .byte SPRITE_BOSS_BORABOHRA             ; SpriteEntity
    .byte $8a                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $45                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $28,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_59:
    .byte SPRITE_OBJ_WING_BOOTS_QUEST       ; SpriteEntity
    .byte $3d                               ; undefined

    .byte SPRITE_BOSS_ZORUGERIRU            ; SpriteEntity
    .byte $2c,$ff,$ff                       ; undefined

    .byte SCREEN_HAS_SPECIAL_EVENT          ; ScreenExtraInfo
    .byte SCREEN_EVENT_BOSS                 ; CurrentScreen_SpecialEventID

SPRITE_INFO_APOLUNE_SCREEN_60:
    .byte SPRITE_OBJ_ELIXIR                 ; SpriteEntity
    .byte $32                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $15                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $3c                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $89,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_62:
    .byte SPRITE_BOSS_RIPASHEIKU            ; SpriteEntity
    .byte $69,$ff,$ff                       ; undefined

SPRITE_INFO_APOLUNE_SCREEN_27:
    .byte $ff,$ff                           ; undefined


;============================================================================
; Forepaw Sprite Information
;============================================================================
SPRITE_INFO_FOREPAW:
    pointer SPRITE_INFO_FOREPAW_SCREEN_00   ; SPRITE_INFO_FOREPAW_SCREEN_00
    pointer SPRITE_INFO_FOREPAW_SCREEN_01   ; SPRITE_INFO_FOREPAW_SCREEN_01
    pointer SPRITE_INFO_FOREPAW_SCREEN_02   ; SPRITE_INFO_FOREPAW_SCREEN_02
    pointer SPRITE_INFO_FOREPAW_SCREEN_03   ; SPRITE_INFO_FOREPAW_SCREEN_03
    pointer SPRITE_INFO_FOREPAW_SCREEN_04   ; SPRITE_INFO_FOREPAW_SCREEN_04
    pointer SPRITE_INFO_FOREPAW_SCREEN_05   ; SPRITE_INFO_FOREPAW_SCREEN_05
    pointer SPRITE_INFO_FOREPAW_SCREEN_06   ; SPRITE_INFO_FOREPAW_SCREEN_06
    pointer SPRITE_INFO_FOREPAW_SCREEN_07   ; SPRITE_INFO_FOREPAW_SCREEN_07
    pointer SPRITE_INFO_FOREPAW_SCREEN_08   ; SPRITE_INFO_FOREPAW_SCREEN_08
    pointer SPRITE_INFO_FOREPAW_SCREEN_09   ; SPRITE_INFO_FOREPAW_SCREEN_09
    pointer SPRITE_INFO_FOREPAW_SCREEN_10_11 ; SPRITE_INFO_FOREPAW_SCREEN_10_11
    pointer SPRITE_INFO_FOREPAW_SCREEN_10_11 ; SPRITE_INFO_FOREPAW_SCREEN_10_11
    pointer SPRITE_INFO_FOREPAW_SCREEN_12   ; SPRITE_INFO_FOREPAW_SCREEN_12
    pointer SPRITE_INFO_FOREPAW_SCREEN_13   ; SPRITE_INFO_FOREPAW_SCREEN_13
    pointer SPRITE_INFO_FOREPAW_SCREEN_14   ; SPRITE_INFO_FOREPAW_SCREEN_14
    pointer SPRITE_INFO_FOREPAW_SCREEN_15   ; SPRITE_INFO_FOREPAW_SCREEN_15
    pointer SPRITE_INFO_FOREPAW_SCREEN_16   ; SPRITE_INFO_FOREPAW_SCREEN_16
    pointer SPRITE_INFO_FOREPAW_SCREEN_17   ; SPRITE_INFO_FOREPAW_SCREEN_17
    pointer SPRITE_INFO_FOREPAW_SCREEN_18   ; SPRITE_INFO_FOREPAW_SCREEN_18
    pointer SPRITE_INFO_FOREPAW_SCREEN_19   ; SPRITE_INFO_FOREPAW_SCREEN_19
    pointer SPRITE_INFO_FOREPAW_SCREEN_20   ; SPRITE_INFO_FOREPAW_SCREEN_20
    pointer SPRITE_INFO_FOREPAW_SCREEN_21   ; SPRITE_INFO_FOREPAW_SCREEN_21
    pointer SPRITE_INFO_FOREPAW_SCREEN_22   ; SPRITE_INFO_FOREPAW_SCREEN_22
    pointer SPRITE_INFO_FOREPAW_SCREEN_23   ; SPRITE_INFO_FOREPAW_SCREEN_23
    pointer SPRITE_INFO_FOREPAW_SCREEN_24   ; SPRITE_INFO_FOREPAW_SCREEN_24
    pointer SPRITE_INFO_FOREPAW_SCREEN_25   ; SPRITE_INFO_FOREPAW_SCREEN_25
    pointer SPRITE_INFO_FOREPAW_SCREEN_26   ; SPRITE_INFO_FOREPAW_SCREEN_26
    pointer SPRITE_INFO_FOREPAW_SCREEN_27   ; SPRITE_INFO_FOREPAW_SCREEN_27
    pointer SPRITE_INFO_FOREPAW_SCREEN_28   ; SPRITE_INFO_FOREPAW_SCREEN_28
    pointer SPRITE_INFO_FOREPAW_SCREEN_29   ; SPRITE_INFO_FOREPAW_SCREEN_29
    pointer SPRITE_INFO_FOREPAW_SCREEN_30   ; SPRITE_INFO_FOREPAW_SCREEN_30
    pointer SPRITE_INFO_FOREPAW_SCREEN_31   ; SPRITE_INFO_FOREPAW_SCREEN_31
    pointer SPRITE_INFO_FOREPAW_SCREEN_32   ; SPRITE_INFO_FOREPAW_SCREEN_32
    pointer SPRITE_INFO_FOREPAW_SCREEN_33   ; SPRITE_INFO_FOREPAW_SCREEN_33
    pointer SPRITE_INFO_FOREPAW_SCREEN_34   ; SPRITE_INFO_FOREPAW_SCREEN_34
    pointer SPRITE_INFO_FOREPAW_SCREEN_35_36 ; SPRITE_INFO_FOREPAW_SCREEN_35_36
    pointer SPRITE_INFO_FOREPAW_SCREEN_35_36 ; SPRITE_INFO_FOREPAW_SCREEN_35_36
    pointer SPRITE_INFO_FOREPAW_SCREEN_37   ; SPRITE_INFO_FOREPAW_SCREEN_37
    pointer SPRITE_INFO_FOREPAW_SCREEN_38   ; SPRITE_INFO_FOREPAW_SCREEN_38
    pointer SPRITE_INFO_FOREPAW_SCREEN_39   ; SPRITE_INFO_FOREPAW_SCREEN_39
    pointer SPRITE_INFO_FOREPAW_SCREEN_40   ; SPRITE_INFO_FOREPAW_SCREEN_40
    pointer SPRITE_INFO_FOREPAW_SCREEN_41   ; SPRITE_INFO_FOREPAW_SCREEN_41
    pointer SPRITE_INFO_FOREPAW_SCREEN_42   ; SPRITE_INFO_FOREPAW_SCREEN_42
    pointer SPRITE_INFO_FOREPAW_SCREEN_43   ; SPRITE_INFO_FOREPAW_SCREEN_43
    pointer SPRITE_INFO_FOREPAW_SCREEN_44   ; SPRITE_INFO_FOREPAW_SCREEN_44
    pointer SPRITE_INFO_FOREPAW_SCREEN_45   ; SPRITE_INFO_FOREPAW_SCREEN_45
    pointer SPRITE_INFO_FOREPAW_SCREEN_46   ; SPRITE_INFO_FOREPAW_SCREEN_46
    pointer SPRITE_INFO_FOREPAW_SCREEN_47   ; SPRITE_INFO_FOREPAW_SCREEN_47
    pointer SPRITE_INFO_FOREPAW_SCREEN_48   ; SPRITE_INFO_FOREPAW_SCREEN_48
    pointer SPRITE_INFO_FOREPAW_SCREEN_49   ; SPRITE_INFO_FOREPAW_SCREEN_49
    pointer SPRITE_INFO_FOREPAW_SCREEN_50   ; SPRITE_INFO_FOREPAW_SCREEN_50
    pointer SPRITE_INFO_FOREPAW_SCREEN_51   ; SPRITE_INFO_FOREPAW_SCREEN_51
    pointer SPRITE_INFO_FOREPAW_SCREEN_52   ; SPRITE_INFO_FOREPAW_SCREEN_52
    pointer SPRITE_INFO_FOREPAW_SCREEN_53   ; SPRITE_INFO_FOREPAW_SCREEN_53
    pointer SPRITE_INFO_FOREPAW_SCREEN_54   ; SPRITE_INFO_FOREPAW_SCREEN_54
    pointer SPRITE_INFO_FOREPAW_SCREEN_55   ; SPRITE_INFO_FOREPAW_SCREEN_55
    pointer SPRITE_INFO_FOREPAW_SCREEN_56   ; SPRITE_INFO_FOREPAW_SCREEN_56
    pointer SPRITE_INFO_FOREPAW_SCREEN_57   ; SPRITE_INFO_FOREPAW_SCREEN_57
    pointer SPRITE_INFO_FOREPAW_SCREEN_58   ; SPRITE_INFO_FOREPAW_SCREEN_58
    pointer SPRITE_INFO_FOREPAW_SCREEN_59   ; SPRITE_INFO_FOREPAW_SCREEN_59
    pointer SPRITE_INFO_FOREPAW_SCREEN_60   ; SPRITE_INFO_FOREPAW_SCREEN_60
    pointer SPRITE_INFO_FOREPAW_SCREEN_61   ; SPRITE_INFO_FOREPAW_SCREEN_61
    pointer SPRITE_INFO_FOREPAW_SCREEN_62   ; SPRITE_INFO_FOREPAW_SCREEN_62
    pointer SPRITE_INFO_FOREPAW_SCREEN_63   ; SPRITE_INFO_FOREPAW_SCREEN_63
    pointer SPRITE_INFO_FOREPAW_SCREEN_64   ; SPRITE_INFO_FOREPAW_SCREEN_64
    pointer SPRITE_INFO_FOREPAW_SCREEN_65   ; SPRITE_INFO_FOREPAW_SCREEN_65
    pointer SPRITE_INFO_FOREPAW_SCREEN_66   ; SPRITE_INFO_FOREPAW_SCREEN_66
    pointer SPRITE_INFO_FOREPAW_SCREEN_67   ; SPRITE_INFO_FOREPAW_SCREEN_67
    pointer SPRITE_INFO_FOREPAW_SCREEN_68   ; SPRITE_INFO_FOREPAW_SCREEN_68
    pointer SPRITE_INFO_FOREPAW_SCREEN_69   ; SPRITE_INFO_FOREPAW_SCREEN_69
    pointer SPRITE_INFO_FOREPAW_SCREEN_70   ; SPRITE_INFO_FOREPAW_SCREEN_70
    pointer SPRITE_INFO_FOREPAW_SCREEN_71   ; SPRITE_INFO_FOREPAW_SCREEN_71
    pointer SPRITE_INFO_FOREPAW_SCREEN_72   ; SPRITE_INFO_FOREPAW_SCREEN_72
    pointer SPRITE_INFO_FOREPAW_SCREEN_73   ; SPRITE_INFO_FOREPAW_SCREEN_73
    pointer SPRITE_INFO_FOREPAW_SCREEN_74   ; SPRITE_INFO_FOREPAW_SCREEN_74
    pointer SPRITE_INFO_FOREPAW_SCREEN_75   ; SPRITE_INFO_FOREPAW_SCREEN_75
    pointer SPRITE_INFO_FOREPAW_SCREEN_76   ; SPRITE_INFO_FOREPAW_SCREEN_76
    pointer SPRITE_INFO_FOREPAW_SCREEN_77   ; SPRITE_INFO_FOREPAW_SCREEN_77
    pointer SPRITE_INFO_FOREPAW_SCREEN_78   ; SPRITE_INFO_FOREPAW_SCREEN_78
    pointer SPRITE_INFO_FOREPAW_SCREEN_79   ; SPRITE_INFO_FOREPAW_SCREEN_79
    pointer SPRITE_INFO_FOREPAW_SCREEN_80   ; SPRITE_INFO_FOREPAW_SCREEN_80
    pointer SPRITE_INFO_FOREPAW_SCREEN_81   ; SPRITE_INFO_FOREPAW_SCREEN_81
    pointer SPRITE_INFO_FOREPAW_SCREEN_82   ; SPRITE_INFO_FOREPAW_SCREEN_82

;
; XREFS:
;     SPRITE_INFO_FOREPAW [$PRG11::8482]
;
SPRITE_INFO_FOREPAW_SCREEN_00:
    .byte SPRITE_ENEMY_NAGA                 ; SpriteEntity
    .byte $85                               ; undefined

    .byte SPRITE_ENEMY_BIHORUDA             ; SpriteEntity
    .byte $43                               ; undefined

    .byte SPRITE_ENEMY_BIHORUDA             ; SpriteEntity
    .byte $2c,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_01:
    .byte SPRITE_ENEMY_NAGA                 ; SpriteEntity
    .byte $9c                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $5d                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $81,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_02:
    .byte SPRITE_ENEMY_NAGA                 ; SpriteEntity
    .byte $66                               ; undefined

    .byte SPRITE_ENEMY_NAGA                 ; SpriteEntity
    .byte $8c,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_03:
    .byte SPRITE_ENEMY_NAGA                 ; SpriteEntity
    .byte $94                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $48                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $23,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_04:
    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $96                               ; undefined

    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $22,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_05:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $43                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $98,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_06:
    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $23                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $89,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_07:
    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $38                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $3b,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_08:
    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $28                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $4b                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $98,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_09:
    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $38                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $54                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $9b,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_10_11:
    .byte $ff,$ff                           ; undefined

SPRITE_INFO_FOREPAW_SCREEN_12:
    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $45                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $78                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $2b,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_13:
    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $63                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $38                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $5a,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_14:
    .byte SPRITE_ENEMY_BIHORUDA             ; SpriteEntity
    .byte $43                               ; undefined

    .byte SPRITE_ENEMY_BIHORUDA             ; SpriteEntity
    .byte $3b                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $87,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_15:
    .byte SPRITE_ENEMY_BIHORUDA             ; SpriteEntity
    .byte $27                               ; undefined

    .byte SPRITE_ENEMY_BIHORUDA             ; SpriteEntity
    .byte $4c                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $87,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_16:
    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $45                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $88                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $9b,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_17:
    .byte SPRITE_OBJ_WING_BOOTS             ; SpriteEntity
    .byte $5e                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $45                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $88                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $24,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_18:
    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $45                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $68                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $9b,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_19:
    .byte SPRITE_ENEMY_BIHORUDA             ; SpriteEntity
    .byte $45                               ; undefined

    .byte SPRITE_ENEMY_BIHORUDA             ; SpriteEntity
    .byte $88                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $9b,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_20:
    .byte SPRITE_ENEMY_BIHORUDA             ; SpriteEntity
    .byte $35                               ; undefined

    .byte SPRITE_ENEMY_BIHORUDA             ; SpriteEntity
    .byte $28                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $97,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_21:
    .byte SPRITE_ENEMY_BIHORUDA             ; SpriteEntity
    .byte $45                               ; undefined

    .byte SPRITE_ENEMY_BIHORUDA             ; SpriteEntity
    .byte $88                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $98,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_22:
    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $98                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $77,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_23:
    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $69                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $a3                               ; undefined

    .byte SPRITE_ENEMY_RAIDEN               ; SpriteEntity
    .byte $a5,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_24:
    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $64                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $1a                               ; undefined

    .byte SPRITE_ENEMY_RAIDEN               ; SpriteEntity
    .byte $87,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_25:
    .byte SPRITE_ENEMY_YAREEKA              ; SpriteEntity
    .byte $81                               ; undefined

    .byte SPRITE_ENEMY_RAIDEN               ; SpriteEntity
    .byte $37,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_26:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $61                               ; undefined

    .byte SPRITE_ENEMY_RAIDEN               ; SpriteEntity
    .byte $25,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_27:
    .byte SPRITE_OBJ_WING_BOOTS             ; SpriteEntity
    .byte $35                               ; undefined

    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $24                               ; undefined

    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $99,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_28:
    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $84                               ; undefined

    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $98,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_29:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $44                               ; undefined

    .byte SPRITE_ENEMY_YAREEKA              ; SpriteEntity
    .byte $89,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_30:
    .byte SPRITE_OBJ_POISON                 ; SpriteEntity
    .byte $68                               ; undefined

    .byte SPRITE_ENEMY_SUGATA               ; SpriteEntity
    .byte $99,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_31:
    .byte SPRITE_OBJ_POISON                 ; SpriteEntity
    .byte $a1                               ; undefined

    .byte SPRITE_ENEMY_SUGATA               ; SpriteEntity
    .byte $95,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_32:
    .byte SPRITE_ENEMY_YAREEKA              ; SpriteEntity
    .byte $39                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $96,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_33:
    .byte SPRITE_ENEMY_YAREEKA              ; SpriteEntity
    .byte $64                               ; undefined

    .byte SPRITE_ENEMY_GIANT_BEES           ; SpriteEntity
    .byte $53                               ; undefined

    .byte SPRITE_ENEMY_GIANT_BEES           ; SpriteEntity
    .byte $5a,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_34:
    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $4c                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $34                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $5c,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_35_36:
    .byte $ff,$ff                           ; undefined

SPRITE_INFO_FOREPAW_SCREEN_37:
    .byte SPRITE_ENEMY_YAREEKA              ; SpriteEntity
    .byte $29                               ; undefined

    .byte SPRITE_ENEMY_YAREEKA              ; SpriteEntity
    .byte $85,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_38:
    .byte SPRITE_ENEMY_LAMPREY              ; SpriteEntity
    .byte $98                               ; undefined

    .byte SPRITE_ENEMY_GIANT_BEES           ; SpriteEntity
    .byte $15                               ; undefined

    .byte SPRITE_ENEMY_GIANT_BEES           ; SpriteEntity
    .byte $5a,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_39:
    .byte SPRITE_ENEMY_LAMPREY              ; SpriteEntity
    .byte $3a                               ; undefined

    .byte SPRITE_ENEMY_LAMPREY              ; SpriteEntity
    .byte $85,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_40:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $87                               ; undefined

    .byte SPRITE_ENEMY_LAMPREY              ; SpriteEntity
    .byte $2b,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_41:
    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $7d                               ; undefined

    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $75,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_42:
    .byte SPRITE_ENEMY_NASH                 ; SpriteEntity
    .byte $1c                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $7a,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_43:
    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $99                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $4e,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_44:
    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $6d                               ; undefined

    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $85,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_45:
    .byte SPRITE_ENEMY_YAREEKA              ; SpriteEntity
    .byte $82                               ; undefined

    .byte SPRITE_ENEMY_YAREEKA              ; SpriteEntity
    .byte $2b,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_46:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $39                               ; undefined

    .byte SPRITE_ENEMY_LAMPREY              ; SpriteEntity
    .byte $9a,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_47:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $25                               ; undefined

    .byte SPRITE_ENEMY_LAMPREY              ; SpriteEntity
    .byte $9a,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_48:
    .byte SPRITE_OBJ_HOUR_GLASS             ; SpriteEntity
    .byte $32                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $65                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $a7,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_49:
    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $97                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $13                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $8d,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_50:
    .byte SPRITE_OBJ_WING_BOOTS             ; SpriteEntity
    .byte $48                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $3a                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $b8                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $be,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_51:
    .byte SPRITE_BOSS_RIPASHEIKU            ; SpriteEntity
    .byte $59,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_52:
    .byte SPRITE_OBJ_PENDANT                ; SpriteEntity
    .byte $9e                               ; undefined

    .byte SPRITE_BOSS_RIPASHEIKU            ; SpriteEntity
    .byte $48,$ff,$ff                       ; undefined

    .byte SCREEN_HAS_SPECIAL_EVENT          ; ScreenExtraInfo
    .byte SCREEN_EVENT_BOSS                 ; CurrentScreen_SpecialEventID

SPRITE_INFO_FOREPAW_SCREEN_53:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $ac                               ; undefined

    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $67,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_54:
    .byte SPRITE_ENEMY_NECRON_AIDES         ; SpriteEntity
    .byte $28                               ; undefined

    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $97,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_55:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $52                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $a7,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_56:
    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $98                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $33,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_57:
    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $98                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $39                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $35,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_58:
    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $98                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $35,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_59:
    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $54                               ; undefined

    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $97,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_60:
    .byte SPRITE_ENEMY_GRIMLOCK             ; SpriteEntity
    .byte $a6                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $53,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_61:
    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $4a                               ; undefined

    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $a7,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_62:
    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $25                               ; undefined

    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $2a                               ; undefined

    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $98,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_63:
    .byte SPRITE_BOSS_RIPASHEIKU            ; SpriteEntity
    .byte $3a,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_64:
    .byte SPRITE_BOSS_ZORUGERIRU            ; SpriteEntity
    .byte $4c,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_65:
    .byte SPRITE_BOSS_ZORADOHNA             ; SpriteEntity
    .byte $67                               ; undefined

    .byte SPRITE_OBJ_ELIXIR                 ; SpriteEntity
    .byte $a1,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_66:
    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $4a                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $9a                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $86                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $72,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_67:
    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $3a                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $6c                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $98                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $a3,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_68:
    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $4a                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $63                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $97                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $8b,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_69:
    .byte SPRITE_ENEMY_MASKMAN              ; SpriteEntity
    .byte $a6                               ; undefined

    .byte SPRITE_ENEMY_MASKMAN              ; SpriteEntity
    .byte $3c,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_70:
    .byte SPRITE_ENEMY_MASKMAN              ; SpriteEntity
    .byte $35                               ; undefined

    .byte SPRITE_ENEMY_MASKMAN              ; SpriteEntity
    .byte $3c,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_71:
    .byte SPRITE_OBJ_OINTMENT               ; SpriteEntity
    .byte $42                               ; undefined

    .byte SPRITE_ENEMY_GERIBUTA             ; SpriteEntity
    .byte $35                               ; undefined

    .byte SPRITE_ENEMY_GERIBUTA             ; SpriteEntity
    .byte $ac,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_72:
    .byte SPRITE_BOSS_RIPASHEIKU            ; SpriteEntity
    .byte $3a,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_73:
    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $9c                               ; undefined

    .byte SPRITE_ENEMY_RAIDEN               ; SpriteEntity
    .byte $a8,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_74:
    .byte SPRITE_ENEMY_GERIBUTA             ; SpriteEntity
    .byte $39                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $ac,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_75:
    .byte SPRITE_ENEMY_GERIBUTA             ; SpriteEntity
    .byte $35                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $ab,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_76:
    .byte SPRITE_OBJ_BLACK_ONYX             ; SpriteEntity
    .byte $a4                               ; undefined

    .byte SPRITE_BOSS_ZORADOHNA             ; SpriteEntity
    .byte $49,$ff,$ff                       ; undefined

    .byte SCREEN_HAS_SPECIAL_EVENT          ; ScreenExtraInfo
    .byte SCREEN_EVENT_BOSS                 ; CurrentScreen_SpecialEventID

SPRITE_INFO_FOREPAW_SCREEN_77:
    .byte SPRITE_OBJ_RED_POTION_2           ; SpriteEntity
    .byte $31                               ; undefined

    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $9a,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_78:
    .byte SPRITE_ENEMY_SUGATA               ; SpriteEntity
    .byte $a8                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $a3,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_79:
    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $a6                               ; undefined

    .byte SPRITE_ENEMY_SUGATA               ; SpriteEntity
    .byte $38,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_80:
    .byte SPRITE_OBJ_RED_POTION             ; SpriteEntity
    .byte $31                               ; undefined

    .byte SPRITE_ENEMY_FIRE_GIANT           ; SpriteEntity
    .byte $3b                               ; undefined

    .byte SPRITE_ENEMY_ISHIISU              ; SpriteEntity
    .byte $aa,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_81:
    .byte SPRITE_ENEMY_FIRE_GIANT           ; SpriteEntity
    .byte $36                               ; undefined

    .byte SPRITE_ENEMY_ISHIISU              ; SpriteEntity
    .byte $ab,$ff,$ff                       ; undefined

SPRITE_INFO_FOREPAW_SCREEN_82:
    .byte SPRITE_ENEMY_FIRE_GIANT           ; SpriteEntity
    .byte $37                               ; undefined

    .byte SPRITE_ENEMY_ISHIISU              ; SpriteEntity
    .byte $ac,$ff,$ff                       ; undefined


;============================================================================
; Conflate Sprite Information
;============================================================================
SPRITE_INFO_CONFLATE:
    pointer SPRITE_INFO_CONFLATE_SCREEN_00  ; SPRITE_INFO_CONFLATE_SCREEN_00
    pointer SPRITE_INFO_CONFLATE_SCREEN_01  ; SPRITE_INFO_CONFLATE_SCREEN_01
    pointer SPRITE_INFO_CONFLATE_SCREEN_02  ; SPRITE_INFO_CONFLATE_SCREEN_02
    pointer SPRITE_INFO_CONFLATE_SCREEN_03  ; SPRITE_INFO_CONFLATE_SCREEN_03
    pointer SPRITE_INFO_CONFLATE_SCREEN_04  ; SPRITE_INFO_CONFLATE_SCREEN_04
    pointer SPRITE_INFO_CONFLATE_SCREEN_05  ; SPRITE_INFO_CONFLATE_SCREEN_05
    pointer SPRITE_INFO_CONFLATE_SCREEN_06  ; SPRITE_INFO_CONFLATE_SCREEN_06
    pointer SPRITE_INFO_CONFLATE_SCREEN_07  ; SPRITE_INFO_CONFLATE_SCREEN_07
    pointer SPRITE_INFO_CONFLATE_SCREEN_08  ; SPRITE_INFO_CONFLATE_SCREEN_08
    pointer SPRITE_INFO_CONFLATE_SCREEN_09  ; SPRITE_INFO_CONFLATE_SCREEN_09
    pointer SPRITE_INFO_CONFLATE_SCREEN_10  ; SPRITE_INFO_CONFLATE_SCREEN_10
    pointer SPRITE_INFO_CONFLATE_SCREEN_11  ; SPRITE_INFO_CONFLATE_SCREEN_11
    pointer SPRITE_INFO_CONFLATE_SCREEN_12  ; SPRITE_INFO_CONFLATE_SCREEN_12
    pointer SPRITE_INFO_CONFLATE_SCREEN_13  ; SPRITE_INFO_CONFLATE_SCREEN_13
    pointer SPRITE_INFO_CONFLATE_SCREEN_14  ; SPRITE_INFO_CONFLATE_SCREEN_14
    pointer SPRITE_INFO_CONFLATE_SCREEN_15  ; SPRITE_INFO_CONFLATE_SCREEN_15
    pointer SPRITE_INFO_CONFLATE_SCREEN_16  ; SPRITE_INFO_CONFLATE_SCREEN_16
    pointer SPRITE_INFO_CONFLATE_SCREEN_17  ; SPRITE_INFO_CONFLATE_SCREEN_17
    pointer SPRITE_INFO_CONFLATE_SCREEN_18  ; SPRITE_INFO_CONFLATE_SCREEN_18
    pointer SPRITE_INFO_CONFLATE_SCREEN_19  ; SPRITE_INFO_CONFLATE_SCREEN_19
    pointer SPRITE_INFO_CONFLATE_SCREEN_20  ; SPRITE_INFO_CONFLATE_SCREEN_20
    pointer SPRITE_INFO_CONFLATE_SCREEN_21  ; SPRITE_INFO_CONFLATE_SCREEN_21
    pointer SPRITE_INFO_CONFLATE_SCREEN_22  ; SPRITE_INFO_CONFLATE_SCREEN_22
    pointer SPRITE_INFO_CONFLATE_SCREEN_23  ; SPRITE_INFO_CONFLATE_SCREEN_23
    pointer SPRITE_INFO_CONFLATE_SCREEN_24  ; SPRITE_INFO_CONFLATE_SCREEN_24
    pointer SPRITE_INFO_CONFLATE_SCREEN_25  ; SPRITE_INFO_CONFLATE_SCREEN_25
    pointer SPRITE_INFO_CONFLATE_SCREEN_26  ; SPRITE_INFO_CONFLATE_SCREEN_26
    pointer SPRITE_INFO_CONFLATE_SCREEN_27  ; SPRITE_INFO_CONFLATE_SCREEN_27
    pointer SPRITE_INFO_CONFLATE_SCREEN_28  ; SPRITE_INFO_CONFLATE_SCREEN_28
    pointer SPRITE_INFO_CONFLATE_SCREEN_29  ; SPRITE_INFO_CONFLATE_SCREEN_29
    pointer SPRITE_INFO_CONFLATE_SCREEN_30  ; SPRITE_INFO_CONFLATE_SCREEN_30
    pointer SPRITE_INFO_CONFLATE_SCREEN_31  ; SPRITE_INFO_CONFLATE_SCREEN_31
    pointer SPRITE_INFO_CONFLATE_SCREEN_32  ; SPRITE_INFO_CONFLATE_SCREEN_32
    pointer SPRITE_INFO_CONFLATE_SCREEN_33  ; SPRITE_INFO_CONFLATE_SCREEN_33
    pointer SPRITE_INFO_CONFLATE_SCREEN_34  ; SPRITE_INFO_CONFLATE_SCREEN_34
    pointer SPRITE_INFO_CONFLATE_SCREEN_35  ; SPRITE_INFO_CONFLATE_SCREEN_35
    pointer SPRITE_INFO_CONFLATE_SCREEN_36  ; SPRITE_INFO_CONFLATE_SCREEN_36
    pointer SPRITE_INFO_CONFLATE_SCREEN_37  ; SPRITE_INFO_CONFLATE_SCREEN_37
    pointer SPRITE_INFO_CONFLATE_SCREEN_38  ; SPRITE_INFO_CONFLATE_SCREEN_38
    pointer SPRITE_INFO_CONFLATE_SCREEN_39  ; SPRITE_INFO_CONFLATE_SCREEN_39

;
; XREFS:
;     SPRITE_INFO_CONFLATE [$PRG11::874a]
;
SPRITE_INFO_CONFLATE_SCREEN_00:
    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $aa                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $55,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_01:
    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $8d                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $65,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_02:
    .byte SPRITE_ENEMY_MASKMAN              ; SpriteEntity
    .byte $76                               ; undefined

    .byte SPRITE_ENEMY_MASKMAN              ; SpriteEntity
    .byte $8b,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_03:
    .byte SPRITE_ENEMY_TAMAZUTSU            ; SpriteEntity
    .byte $58,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_04:
    .byte SPRITE_OBJ_OINTMENT               ; SpriteEntity
    .byte $4d                               ; undefined

    .byte SPRITE_ENEMY_MASKMAN              ; SpriteEntity
    .byte $5a,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_05:
    .byte SPRITE_ENEMY_NECRON_AIDES         ; SpriteEntity
    .byte $37                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $33                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $1d,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_06:
    .byte SPRITE_ENEMY_LAMPREY              ; SpriteEntity
    .byte $44,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_07:
    .byte SPRITE_OBJ_BATTLE_HELMET          ; SpriteEntity
    .byte $a4                               ; undefined

    .byte SPRITE_BOSS_ZORADOHNA             ; SpriteEntity
    .byte $49,$ff,$ff                       ; undefined

    .byte SCREEN_HAS_SPECIAL_EVENT          ; ScreenExtraInfo
    .byte SCREEN_EVENT_BOSS                 ; ScreenEventID

SPRITE_INFO_CONFLATE_SCREEN_08:
    .byte SPRITE_OBJ_GLOVE                  ; SpriteEntity
    .byte $4e                               ; undefined

    .byte SPRITE_ENEMY_GRIMLOCK             ; SpriteEntity
    .byte $36                               ; undefined

    .byte SPRITE_ENEMY_GRIMLOCK             ; SpriteEntity
    .byte $3b,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_09:
    .byte SPRITE_ENEMY_LAMPREY              ; SpriteEntity
    .byte $64                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $15                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $af,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_10:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $35,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_11:
    .byte SPRITE_OBJ_POISON_2               ; SpriteEntity
    .byte $7d                               ; undefined

    .byte SPRITE_ENEMY_LAMPREY              ; SpriteEntity
    .byte $6d                               ; undefined

    .byte SPRITE_ENEMY_LAMPREY              ; SpriteEntity
    .byte $72,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_12:
    .byte SPRITE_ENEMY_YAREEKA              ; SpriteEntity
    .byte $49,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_13:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $63                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $79,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_14:
    .byte SPRITE_ENEMY_LAMPREY              ; SpriteEntity
    .byte $6d,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_15:
    .byte SPRITE_ENEMY_GRIMLOCK             ; SpriteEntity
    .byte $69,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_16:
    .byte SPRITE_OBJ_OINTMENT               ; SpriteEntity
    .byte $48                               ; undefined

    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $98                               ; undefined

    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $3b,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_17:
    .byte SPRITE_ENEMY_TAMAZUTSU            ; SpriteEntity
    .byte $4b                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $35                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $9b,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_18:
    .byte SPRITE_ENEMY_GRIMLOCK             ; SpriteEntity
    .byte $47                               ; undefined

    .byte SPRITE_ENEMY_GRIMLOCK             ; SpriteEntity
    .byte $85,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_19:
    .byte SPRITE_ENEMY_MASKMAN              ; SpriteEntity
    .byte $8c,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_20:
    .byte SPRITE_ENEMY_MASKMAN              ; SpriteEntity
    .byte $48                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $3c                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $64,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_21:
    .byte SPRITE_ENEMY_GRIMLOCK             ; SpriteEntity
    .byte $28                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $5c,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_22:
    .byte SPRITE_OBJ_HOUR_GLASS             ; SpriteEntity
    .byte $72                               ; undefined

    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $85,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_23:
    .byte SPRITE_OBJ_POISON_2               ; SpriteEntity
    .byte $56                               ; undefined

    .byte SPRITE_ENEMY_MASKMAN              ; SpriteEntity
    .byte $a6                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $8b,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_24:
    .byte SPRITE_OBJ_MATTOCK1               ; SpriteEntity
    .byte $58                               ; undefined

    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $97                               ; undefined

    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $35,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_25:
    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $29                               ; undefined

    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $56,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_26:
    .byte SPRITE_ENEMY_GRIMLOCK             ; SpriteEntity
    .byte $33                               ; undefined

    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $89,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_27:
    .byte SPRITE_ENEMY_GRIMLOCK             ; SpriteEntity
    .byte $55                               ; undefined

    .byte SPRITE_ENEMY_GRIMLOCK             ; SpriteEntity
    .byte $9a,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_28:
    .byte SPRITE_OBJ_WING_BOOTS             ; SpriteEntity
    .byte $a9                               ; undefined

    .byte SPRITE_ENEMY_GRIMLOCK             ; SpriteEntity
    .byte $57                               ; undefined

    .byte SPRITE_ENEMY_GRIMLOCK             ; SpriteEntity
    .byte $18,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_29:
    .byte SPRITE_OBJ_BATTLE_SUIT            ; SpriteEntity
    .byte $bd                               ; undefined

    .byte SPRITE_BOSS_ZORADOHNA             ; SpriteEntity
    .byte $59,$ff,$ff                       ; undefined

    .byte SCREEN_HAS_SPECIAL_EVENT          ; ScreenExtraInfo
    .byte SCREEN_EVENT_BOSS                 ; CurrentScreen_SpecialEventID

SPRITE_INFO_CONFLATE_SCREEN_30:
    .byte SPRITE_OBJ_MAGICAL_ROD            ; SpriteEntity
    .byte $b9                               ; undefined

    .byte SPRITE_OBJ_POISON_2               ; SpriteEntity
    .byte $4d                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $ba                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $4a,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_31:
    .byte SPRITE_ENEMY_GERIBUTA             ; SpriteEntity
    .byte $9a,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_32:
    .byte SPRITE_ENEMY_MAGMAN               ; SpriteEntity
    .byte $8a                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $2d                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $66,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_33:
    .byte SPRITE_OBJ_GLOVE_2                ; SpriteEntity
    .byte $32                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $4d                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $49,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_34:
    .byte SPRITE_OBJ_WING_BOOTS             ; SpriteEntity
    .byte $92                               ; undefined

    .byte SPRITE_ENEMY_MAGMAN               ; SpriteEntity
    .byte $00                               ; undefined

    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $3c,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_35:
    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $3d                               ; undefined

    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $99,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_36:
    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $21                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $9a                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $49                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $63,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_37:
    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $7b                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $4d                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $98,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_38:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $7c                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $21,$ff,$ff                       ; undefined

SPRITE_INFO_CONFLATE_SCREEN_39:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $36                               ; undefined

    .byte SPRITE_ENEMY_LAMPREY              ; SpriteEntity
    .byte $69,$ff,$ff                       ; undefined


;============================================================================
; Daybreak Sprite Information
;============================================================================
SPRITE_INFO_DAYBREAK:
    pointer SPRITE_INFO_DAYBREAK_SCREEN_00  ; SPRITE_INFO_DAYBREAK_SCREEN_00
    pointer SPRITE_INFO_DAYBREAK_SCREEN_01  ; SPRITE_INFO_DAYBREAK_SCREEN_01
    pointer SPRITE_INFO_DAYBREAK_SCREEN_02  ; SPRITE_INFO_DAYBREAK_SCREEN_02
    pointer SPRITE_INFO_DAYBREAK_SCREEN_03  ; SPRITE_INFO_DAYBREAK_SCREEN_03
    pointer SPRITE_INFO_DAYBREAK_SCREEN_04  ; SPRITE_INFO_DAYBREAK_SCREEN_04
    pointer SPRITE_INFO_DAYBREAK_SCREEN_05  ; SPRITE_INFO_DAYBREAK_SCREEN_05
    pointer SPRITE_INFO_DAYBREAK_SCREEN_06  ; SPRITE_INFO_DAYBREAK_SCREEN_06
    pointer SPRITE_INFO_DAYBREAK_SCREEN_07  ; SPRITE_INFO_DAYBREAK_SCREEN_07
    pointer SPRITE_INFO_DAYBREAK_SCREEN_08  ; SPRITE_INFO_DAYBREAK_SCREEN_08
    pointer SPRITE_INFO_DAYBREAK_SCREEN_09  ; SPRITE_INFO_DAYBREAK_SCREEN_09
    pointer SPRITE_INFO_DAYBREAK_SCREEN_10  ; SPRITE_INFO_DAYBREAK_SCREEN_10
    pointer SPRITE_INFO_DAYBREAK_SCREEN_11  ; SPRITE_INFO_DAYBREAK_SCREEN_11
    pointer SPRITE_INFO_DAYBREAK_SCREEN_12  ; SPRITE_INFO_DAYBREAK_SCREEN_12
    pointer SPRITE_INFO_DAYBREAK_SCREEN_13  ; SPRITE_INFO_DAYBREAK_SCREEN_13
    pointer SPRITE_INFO_DAYBREAK_SCREEN_14  ; SPRITE_INFO_DAYBREAK_SCREEN_14
    pointer SPRITE_INFO_DAYBREAK_SCREEN_15  ; SPRITE_INFO_DAYBREAK_SCREEN_15
    pointer SPRITE_INFO_DAYBREAK_SCREEN_16  ; SPRITE_INFO_DAYBREAK_SCREEN_16
    pointer SPRITE_INFO_DAYBREAK_SCREEN_17  ; SPRITE_INFO_DAYBREAK_SCREEN_17
    pointer SPRITE_INFO_DAYBREAK_SCREEN_18  ; SPRITE_INFO_DAYBREAK_SCREEN_18
    pointer SPRITE_INFO_DAYBREAK_SCREEN_19  ; SPRITE_INFO_DAYBREAK_SCREEN_19
    pointer SPRITE_INFO_DAYBREAK_SCREEN_20  ; SPRITE_INFO_DAYBREAK_SCREEN_20
    pointer SPRITE_INFO_DAYBREAK_SCREEN_21  ; SPRITE_INFO_DAYBREAK_SCREEN_21
    pointer SPRITE_INFO_DAYBREAK_SCREEN_22  ; SPRITE_INFO_DAYBREAK_SCREEN_22
    pointer SPRITE_INFO_DAYBREAK_SCREEN_23  ; SPRITE_INFO_DAYBREAK_SCREEN_23
    pointer SPRITE_INFO_DAYBREAK_SCREEN_24  ; SPRITE_INFO_DAYBREAK_SCREEN_24
    pointer SPRITE_INFO_DAYBREAK_SCREEN_25  ; SPRITE_INFO_DAYBREAK_SCREEN_25
    pointer SPRITE_INFO_DAYBREAK_SCREEN_26  ; SPRITE_INFO_DAYBREAK_SCREEN_26
    pointer SPRITE_INFO_DAYBREAK_SCREEN_27  ; SPRITE_INFO_DAYBREAK_SCREEN_27
    pointer SPRITE_INFO_DAYBREAK_SCREEN_28  ; SPRITE_INFO_DAYBREAK_SCREEN_28
    pointer SPRITE_INFO_DAYBREAK_SCREEN_29  ; SPRITE_INFO_DAYBREAK_SCREEN_29
    pointer SPRITE_INFO_DAYBREAK_SCREEN_30  ; SPRITE_INFO_DAYBREAK_SCREEN_30
    pointer SPRITE_INFO_DAYBREAK_SCREEN_31  ; SPRITE_INFO_DAYBREAK_SCREEN_31

;
; XREFS:
;     SPRITE_INFO_DAYBREAK [$PRG11::88a2]
;
SPRITE_INFO_DAYBREAK_SCREEN_00:
    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $a4                               ; undefined

    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $47,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_01:
    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $48                               ; undefined

    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $a4,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_02:
    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $49                               ; undefined

    .byte SPRITE_ENEMY_MASKMAN              ; SpriteEntity
    .byte $a5,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_03:
    .byte SPRITE_ENEMY_LAMPREY              ; SpriteEntity
    .byte $aa                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $a4                               ; undefined

    .byte SPRITE_ENEMY_YUINARU              ; SpriteEntity
    .byte $58,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_04:
    .byte SPRITE_OBJ_HOUR_GLASS             ; SpriteEntity
    .byte $5e                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $9a                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $43,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_05:
    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $45                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $99,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_06:
    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $98                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $4c,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_07:
    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $48                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $95                               ; undefined

    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $98,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_08:
    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $98                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $42                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $78,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_09:
    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $16                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $4a                               ; undefined

    .byte SPRITE_ENEMY_LAMPREY              ; SpriteEntity
    .byte $a8,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_10:
    .byte SPRITE_ENEMY_FIRE_GIANT           ; SpriteEntity
    .byte $66                               ; undefined

    .byte SPRITE_ENEMY_GERIBUTA             ; SpriteEntity
    .byte $ab                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $39,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_11:
    .byte SPRITE_ENEMY_FIRE_GIANT           ; SpriteEntity
    .byte $a8                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $55                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $4a,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_12:
    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $ab                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $ae,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_13:
    .byte SPRITE_ENEMY_MASKMAN              ; SpriteEntity
    .byte $a8                               ; undefined

    .byte SPRITE_ENEMY_NECRON_AIDES         ; SpriteEntity
    .byte $61,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_14:
    .byte SPRITE_OBJ_POISON_2               ; SpriteEntity
    .byte $b1                               ; undefined

    .byte SPRITE_ENEMY_FIRE_GIANT           ; SpriteEntity
    .byte $2c                               ; undefined

    .byte SPRITE_ENEMY_MASKMAN              ; SpriteEntity
    .byte $6d,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_15:
    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $aa                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $48,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_16:
    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $33                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $2b                               ; undefined

    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $8b,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_17:
    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $4b                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $73                               ; undefined

    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $26                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $aa,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_18:
    .byte SPRITE_BOSS_ZORADOHNA             ; SpriteEntity
    .byte $6a                               ; undefined

    .byte SPRITE_OBJ_HOUR_GLASS             ; SpriteEntity
    .byte $32,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_19:
    .byte SPRITE_BOSS_PAKUKAME              ; SpriteEntity
    .byte $15                               ; undefined

    .byte SPRITE_OBJ_POISON_2               ; SpriteEntity
    .byte $a6                               ; undefined

    .byte SPRITE_OBJ_RED_POTION_2           ; SpriteEntity
    .byte $ae,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_20:
    .byte SPRITE_BOSS_PAKUKAME              ; SpriteEntity
    .byte $16                               ; undefined

    .byte SPRITE_OBJ_POISON_2               ; SpriteEntity
    .byte $66,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_21:
    .byte SPRITE_OBJ_DRAGON_SLAYER          ; SpriteEntity
    .byte $9d                               ; undefined

    .byte SPRITE_BOSS_KING_GRIEVE           ; SpriteEntity
    .byte $49,$ff,$ff                       ; undefined

    .byte SCREEN_HAS_SPECIAL_EVENT          ; ScreenExtraInfo
    .byte SCREEN_EVENT_BOSS                 ; CurrentScreen_SpecialEventID

SPRITE_INFO_DAYBREAK_SCREEN_22:
    .byte SPRITE_BOSS_KING_GRIEVE           ; SpriteEntity
    .byte $41,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_23:
    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $4c                               ; undefined

    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $93,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_24:
    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $a7                               ; undefined

    .byte SPRITE_ENEMY_SNOWMAN              ; SpriteEntity
    .byte $43,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_25:
    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $98                               ; undefined

    .byte SPRITE_ENEMY_YAREEKA              ; SpriteEntity
    .byte $3c,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_26:
    .byte SPRITE_OBJ_OINTMENT               ; SpriteEntity
    .byte $be                               ; undefined

    .byte SPRITE_BOSS_BORABOHRA             ; SpriteEntity
    .byte $98,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_27:
    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $56                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $5b                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $ab                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $a3,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_28:
    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $4c                               ; undefined

    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $99,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_29:
    .byte SPRITE_OBJ_POISON_2               ; SpriteEntity
    .byte $b2                               ; undefined

    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $4d                               ; undefined

    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $a9,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_30:
    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $92,$ff,$ff                       ; undefined

SPRITE_INFO_DAYBREAK_SCREEN_31:
    .byte SPRITE_BOSS_PAKUKAME              ; SpriteEntity
    .byte $2b,$ff,$ff                       ; undefined


;============================================================================
; Zenis Sprite Information
;============================================================================
SPRITE_INFO_ZENIS:
    pointer SPRITE_INFO_ZENIS_SCREEN_00     ; SPRITE_INFO_ZENIS_SCREEN_00
    pointer SPRITE_INFO_ZENIS_SCREEN_01     ; SPRITE_INFO_ZENIS_SCREEN_01
    pointer SPRITE_INFO_ZENIS_SCREEN_02     ; SPRITE_INFO_ZENIS_SCREEN_02
    pointer SPRITE_INFO_ZENIS_SCREEN_03     ; SPRITE_INFO_ZENIS_SCREEN_03
    pointer SPRITE_INFO_ZENIS_SCREEN_04     ; SPRITE_INFO_ZENIS_SCREEN_04
    pointer SPRITE_INFO_ZENIS_SCREEN_05     ; SPRITE_INFO_ZENIS_SCREEN_05
    pointer SPRITE_INFO_ZENIS_SCREEN_06     ; SPRITE_INFO_ZENIS_SCREEN_06
    pointer SPRITE_INFO_ZENIS_SCREEN_07     ; SPRITE_INFO_ZENIS_SCREEN_07
    pointer SPRITE_INFO_ZENIS_SCREEN_08     ; SPRITE_INFO_ZENIS_SCREEN_08
    pointer SPRITE_INFO_ZENIS_SCREEN_09     ; SPRITE_INFO_ZENIS_SCREEN_09
    pointer SPRITE_INFO_ZENIS_SCREEN_10     ; SPRITE_INFO_ZENIS_SCREEN_10
    pointer SPRITE_INFO_ZENIS_SCREEN_11     ; SPRITE_INFO_ZENIS_SCREEN_11
    pointer SPRITE_INFO_ZENIS_SCREEN_12     ; SPRITE_INFO_ZENIS_SCREEN_12
    pointer SPRITE_INFO_ZENIS_SCREEN_13     ; SPRITE_INFO_ZENIS_SCREEN_13
    pointer SPRITE_INFO_ZENIS_SCREEN_14     ; SPRITE_INFO_ZENIS_SCREEN_14
    pointer SPRITE_INFO_ZENIS_SCREEN_15     ; SPRITE_INFO_ZENIS_SCREEN_15
    pointer SPRITE_INFO_ZENIS_SCREEN_16     ; SPRITE_INFO_ZENIS_SCREEN_16
    pointer SPRITE_INFO_ZENIS_SCREEN_17     ; SPRITE_INFO_ZENIS_SCREEN_17
    pointer SPRITE_INFO_ZENIS_SCREEN_18     ; SPRITE_INFO_ZENIS_SCREEN_18
    pointer SPRITE_INFO_ZENIS_SCREEN_19     ; SPRITE_INFO_ZENIS_SCREEN_19

;
; XREFS:
;     SPRITE_INFO_ZENIS [$PRG11::89bc]
;
SPRITE_INFO_ZENIS_SCREEN_00:
    .byte SPRITE_BOSS_SHADOW_EURA           ; SpriteEntity
    .byte $73,$ff,$ff,$80,$02               ; undefined

SPRITE_INFO_ZENIS_SCREEN_01:
    .byte SPRITE_BOSS_ZORADOHNA             ; SpriteEntity
    .byte $34                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $a9,$ff,$ff                       ; undefined

SPRITE_INFO_ZENIS_SCREEN_02:
    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $a2                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $3d                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $68,$ff,$ff                       ; undefined

SPRITE_INFO_ZENIS_SCREEN_03:
    .byte SPRITE_ENEMY_GERIBUTA             ; SpriteEntity
    .byte $a5                               ; undefined

    .byte SPRITE_ENEMY_GERIBUTA             ; SpriteEntity
    .byte $aa                               ; undefined

    .byte SPRITE_ENEMY_GRIMLOCK             ; SpriteEntity
    .byte $48,$ff,$ff                       ; undefined

SPRITE_INFO_ZENIS_SCREEN_04:
    .byte SPRITE_BOSS_RIPASHEIKU            ; SpriteEntity
    .byte $66,$ff,$ff                       ; undefined

SPRITE_INFO_ZENIS_SCREEN_05:
    .byte SPRITE_BOSS_ZORUGERIRU            ; SpriteEntity
    .byte $4e,$ff,$ff                       ; undefined

SPRITE_INFO_ZENIS_SCREEN_06:
    .byte SPRITE_OBJ_OINTMENT_2             ; SpriteEntity
    .byte $b2                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $1b                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $23                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $ad                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $ab,$ff,$ff                       ; undefined

SPRITE_INFO_ZENIS_SCREEN_07:
    .byte SPRITE_BOSS_PAKUKAME              ; SpriteEntity
    .byte $13,$ff,$ff                       ; undefined

SPRITE_INFO_ZENIS_SCREEN_08:
    .byte $ff,$ff                           ; undefined

SPRITE_INFO_ZENIS_SCREEN_09:
    .byte SPRITE_OBJ_POISON_2               ; SpriteEntity
    .byte $be                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $46                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $a6                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $8a,$ff,$ff                       ; undefined

SPRITE_INFO_ZENIS_SCREEN_10:
    .byte SPRITE_OBJ_GLOVE_2                ; SpriteEntity
    .byte $6d                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $37                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $a9                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $a7                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $24,$ff,$ff                       ; undefined

SPRITE_INFO_ZENIS_SCREEN_11:
    .byte SPRITE_BOSS_PAKUKAME              ; SpriteEntity
    .byte $12,$ff,$ff                       ; undefined

SPRITE_INFO_ZENIS_SCREEN_12:
    .byte SPRITE_BOSS_ZORUGERIRU            ; SpriteEntity
    .byte $2c,$ff,$ff                       ; undefined

SPRITE_INFO_ZENIS_SCREEN_13:
    .byte SPRITE_OBJ_POISON_2               ; SpriteEntity
    .byte $3e                               ; undefined

    .byte SPRITE_ENEMY_IKEDA                ; SpriteEntity
    .byte $ad                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $85                               ; undefined

    .byte SPRITE_ENEMY_HORNET               ; SpriteEntity
    .byte $48,$ff,$ff                       ; undefined

SPRITE_INFO_ZENIS_SCREEN_14:
    .byte SPRITE_OBJ_POISON_2               ; SpriteEntity
    .byte $a1                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $29                               ; undefined

    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $97,$ff,$ff                       ; undefined

SPRITE_INFO_ZENIS_SCREEN_15:
    .byte SPRITE_ENEMY_MASKMAN              ; SpriteEntity
    .byte $46                               ; undefined

    .byte SPRITE_ENEMY_MASKMAN              ; SpriteEntity
    .byte $99                               ; undefined

    .byte SPRITE_ENEMY_TAMAZUTSU            ; SpriteEntity
    .byte $93,$ff,$ff                       ; undefined

SPRITE_INFO_ZENIS_SCREEN_16:
    .byte SPRITE_ENEMY_EXECUTION_HOOD       ; SpriteEntity
    .byte $4c                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $aa                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $a6                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $a8,$ff,$ff                       ; undefined

SPRITE_INFO_ZENIS_SCREEN_17:
    .byte SPRITE_OBJ_GLOVE                  ; SpriteEntity
    .byte $ac                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $66                               ; undefined

    .byte SPRITE_ENEMY_ZOZURA               ; SpriteEntity
    .byte $63                               ; undefined

    .byte SPRITE_BOSS_BORABOHRA             ; SpriteEntity
    .byte $93,$ff,$ff                       ; undefined

SPRITE_INFO_ZENIS_SCREEN_18:
    .byte SPRITE_BOSS_ROKUSUTAHN            ; SpriteEntity
    .byte $48                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $a5                               ; undefined

    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $ab,$ff,$ff                       ; undefined

SPRITE_INFO_ZENIS_SCREEN_19:
    .byte SPRITE_ENEMY_MYCONID              ; SpriteEntity
    .byte $58                               ; undefined

    .byte SPRITE_ENEMY_CHARRON              ; SpriteEntity
    .byte $ac                               ; undefined

    .byte SPRITE_ENEMY_GERIBUTA             ; SpriteEntity
    .byte $a3,$ff,$ff                       ; undefined


;============================================================================
; Victim and Indoor Area Sprite Information
;============================================================================
SPRITE_INFO_VICTIM:
    pointer SPRITE_INFO_VICTIM_SCREEN_00    ; SPRITE_INFO_VICTIM_SCREEN_00
    pointer SPRITE_INFO_VICTIM_SCREEN_01    ; SPRITE_INFO_VICTIM_SCREEN_01
    pointer SPRITE_INFO_VICTIM_SCREEN_02    ; SPRITE_INFO_VICTIM_SCREEN_02
    pointer SPRITE_INFO_VICTIM_SCREEN_03    ; SPRITE_INFO_VICTIM_SCREEN_03
    pointer SPRITE_INFO_VICTIM_SCREEN_04    ; SPRITE_INFO_VICTIM_SCREEN_04
    pointer SPRITE_INFO_VICTIM_SCREEN_05    ; SPRITE_INFO_VICTIM_SCREEN_05
    pointer SPRITE_INFO_VICTIM_SCREEN_06    ; SPRITE_INFO_VICTIM_SCREEN_06
    pointer SPRITE_INFO_VICTIM_SCREEN_07    ; SPRITE_INFO_VICTIM_SCREEN_07
    pointer SPRITE_INFO_VICTIM_SCREEN_08    ; SPRITE_INFO_VICTIM_SCREEN_08
    pointer SPRITE_INFO_VICTIM_SCREEN_09    ; SPRITE_INFO_VICTIM_SCREEN_09
    pointer SPRITE_INFO_VICTIM_SCREEN_10    ; SPRITE_INFO_VICTIM_SCREEN_10
    pointer SPRITE_INFO_VICTIM_SCREEN_11    ; SPRITE_INFO_VICTIM_SCREEN_11
    pointer SPRITE_INFO_VICTIM_SCREEN_12    ; SPRITE_INFO_VICTIM_SCREEN_12
    pointer SPRITE_INFO_VICTIM_SCREEN_13    ; SPRITE_INFO_VICTIM_SCREEN_13
    pointer SPRITE_INFO_VICTIM_SCREEN_14    ; SPRITE_INFO_VICTIM_SCREEN_14
    pointer SPRITE_INFO_VICTIM_SCREEN_15    ; SPRITE_INFO_VICTIM_SCREEN_15
    pointer SPRITE_INFO_VICTIM_SCREEN_16    ; SPRITE_INFO_VICTIM_SCREEN_16
    pointer SPRITE_INFO_VICTIM_SCREEN_17    ; SPRITE_INFO_VICTIM_SCREEN_17
    pointer SPRITE_INFO_VICTIM_SCREEN_18    ; SPRITE_INFO_VICTIM_SCREEN_18
    pointer SPRITE_INFO_VICTIM_SCREEN_19    ; SPRITE_INFO_VICTIM_SCREEN_19
    pointer SPRITE_INFO_VICTIM_SCREEN_20    ; SPRITE_INFO_VICTIM_SCREEN_20
    pointer SPRITE_INFO_VICTIM_SCREEN_21    ; SPRITE_INFO_VICTIM_SCREEN_21
    pointer SPRITE_INFO_VICTIM_SCREEN_22    ; SPRITE_INFO_VICTIM_SCREEN_22
    pointer SPRITE_INFO_VICTIM_SCREEN_23    ; SPRITE_INFO_VICTIM_SCREEN_23
    pointer SPRITE_INFO_VICTIM_SCREEN_24    ; SPRITE_INFO_VICTIM_SCREEN_24
    pointer SPRITE_INFO_VICTIM_SCREEN_25    ; SPRITE_INFO_VICTIM_SCREEN_25
    pointer SPRITE_INFO_VICTIM_SCREEN_26    ; SPRITE_INFO_VICTIM_SCREEN_26
    pointer SPRITE_INFO_VICTIM_SCREEN_27    ; SPRITE_INFO_VICTIM_SCREEN_27
    pointer SPRITE_INFO_VICTIM_SCREEN_28    ; SPRITE_INFO_VICTIM_SCREEN_28
    pointer SPRITE_INFO_VICTIM_SCREEN_29    ; SPRITE_INFO_VICTIM_SCREEN_29
    pointer SPRITE_INFO_VICTIM_SCREEN_30    ; SPRITE_INFO_VICTIM_SCREEN_30
    pointer SPRITE_INFO_VICTIM_SCREEN_31    ; SPRITE_INFO_VICTIM_SCREEN_31
    pointer SPRITE_INFO_VICTIM_SCREEN_32    ; SPRITE_INFO_VICTIM_SCREEN_32
    pointer SPRITE_INFO_VICTIM_SCREEN_33    ; SPRITE_INFO_VICTIM_SCREEN_33
    pointer SPRITE_INFO_VICTIM_SCREEN_34    ; SPRITE_INFO_VICTIM_SCREEN_34
    pointer SPRITE_INFO_VICTIM_SCREEN_35    ; SPRITE_INFO_VICTIM_SCREEN_35
    pointer SPRITE_INFO_VICTIM_SCREEN_36    ; SPRITE_INFO_VICTIM_SCREEN_36
    pointer SPRITE_INFO_VICTIM_SCREEN_37    ; SPRITE_INFO_VICTIM_SCREEN_37
    pointer SPRITE_INFO_VICTIM_SCREEN_38    ; SPRITE_INFO_VICTIM_SCREEN_38
    pointer SPRITE_INFO_VICTIM_SCREEN_39    ; SPRITE_INFO_VICTIM_SCREEN_39
    pointer SPRITE_INFO_VICTIM_SCREEN_40    ; SPRITE_INFO_VICTIM_SCREEN_40
    pointer SPRITE_INFO_VICTIM_SCREEN_41    ; SPRITE_INFO_VICTIM_SCREEN_41
    pointer SPRITE_INFO_VICTIM_SCREEN_42    ; SPRITE_INFO_VICTIM_SCREEN_42
    pointer SPRITE_INFO_VICTIM_SCREEN_43    ; SPRITE_INFO_VICTIM_SCREEN_43
    pointer SPRITE_INFO_VICTIM_SCREEN_44    ; SPRITE_INFO_VICTIM_SCREEN_44
    pointer SPRITE_INFO_VICTIM_SCREEN_45    ; SPRITE_INFO_VICTIM_SCREEN_45
    pointer SPRITE_INFO_VICTIM_SCREEN_46    ; SPRITE_INFO_VICTIM_SCREEN_46
    pointer SPRITE_INFO_VICTIM_SCREEN_47    ; SPRITE_INFO_VICTIM_SCREEN_47
    pointer SPRITE_INFO_VICTIM_SCREEN_48    ; SPRITE_INFO_VICTIM_SCREEN_48
    pointer SPRITE_INFO_VICTIM_SCREEN_49    ; SPRITE_INFO_VICTIM_SCREEN_49
    pointer SPRITE_INFO_VICTIM_SCREEN_50    ; SPRITE_INFO_VICTIM_SCREEN_50
    pointer SPRITE_INFO_VICTIM_SCREEN_51    ; SPRITE_INFO_VICTIM_SCREEN_51
    pointer SPRITE_INFO_VICTIM_SCREEN_52    ; SPRITE_INFO_VICTIM_SCREEN_52
    pointer SPRITE_INFO_VICTIM_SCREEN_53    ; SPRITE_INFO_VICTIM_SCREEN_53
    pointer SPRITE_INFO_VICTIM_SCREEN_54    ; SPRITE_INFO_VICTIM_SCREEN_54
    pointer SPRITE_INFO_VICTIM_SCREEN_55    ; SPRITE_INFO_VICTIM_SCREEN_55
    pointer SPRITE_INFO_VICTIM_SCREEN_56    ; SPRITE_INFO_VICTIM_SCREEN_56
    pointer SPRITE_INFO_VICTIM_SCREEN_57    ; SPRITE_INFO_VICTIM_SCREEN_57
    pointer SPRITE_INFO_VICTIM_SCREEN_58    ; SPRITE_INFO_VICTIM_SCREEN_58
    pointer SPRITE_INFO_VICTIM_SCREEN_59    ; SPRITE_INFO_VICTIM_SCREEN_59
    pointer SPRITE_INFO_VICTIM_SCREEN_60    ; SPRITE_INFO_VICTIM_SCREEN_60
    pointer SPRITE_INFO_VICTIM_SCREEN_61    ; SPRITE_INFO_VICTIM_SCREEN_61
    pointer SPRITE_INFO_VICTIM_SCREEN_62    ; SPRITE_INFO_VICTIM_SCREEN_62
    pointer SPRITE_INFO_VICTIM_SCREEN_63    ; SPRITE_INFO_VICTIM_SCREEN_63
    pointer SPRITE_INFO_VICTIM_SCREEN_64    ; SPRITE_INFO_VICTIM_SCREEN_64
    pointer SPRITE_INFO_VICTIM_SCREEN_65    ; SPRITE_INFO_VICTIM_SCREEN_65
    pointer SPRITE_INFO_VICTIM_SCREEN_66    ; SPRITE_INFO_VICTIM_SCREEN_66
    pointer SPRITE_INFO_VICTIM_SCREEN_67    ; SPRITE_INFO_VICTIM_SCREEN_67
    pointer SPRITE_INFO_VICTIM_SCREEN_68    ; SPRITE_INFO_VICTIM_SCREEN_68
    pointer SPRITE_INFO_VICTIM_SCREEN_69    ; SPRITE_INFO_VICTIM_SCREEN_69

;
; XREFS:
;     SPRITE_INFO_VICTIM [$PRG11::8a76]
;
SPRITE_INFO_VICTIM_SCREEN_00:
    .byte SPRITE_NPC_MEAT_SALESMAN          ; SpriteEntity
    .byte $84,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_EOLIS_MEAT_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_01:
    .byte SPRITE_NPC_SITTING_MAN_1          ; SpriteEntity
    .byte $84                               ; undefined

    .byte SPRITE_NPC_WALKING_WOMAN_2        ; SpriteEntity
    .byte $89,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_9              ; IScriptEntrypoint
    .byte ISCRIPT_ENTRYPOINT_10             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_02:
    .byte SPRITE_NPC_PRIEST                 ; SpriteEntity
    .byte $82,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_EOLIS_GURU     ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_03:
    .byte SPRITE_NPC_KEY_SALESMAN           ; SpriteEntity
    .byte $84,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_EOLIS_KEY_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_04:
    .byte SPRITE_NPC_ARMOR_SALESMAN         ; SpriteEntity
    .byte $73,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_EOLIS_TOOL_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_05:
    .byte SPRITE_NPC_MAGIC_TEACHER          ; SpriteEntity
    .byte $71,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_EOLIS_MARTIAL_ARTS_MAGIC_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_06:
    .byte SPRITE_NPC_MARTIAL_ARTS           ; SpriteEntity
    .byte $87,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_EOLIS_MARTIAL_ARTS ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_07:
    .byte SPRITE_NPC_KING                   ; SpriteEntity
    .byte $72,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_EOLIS_KING     ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_08:
    .byte SPRITE_NPC_ARMOR_SALESMAN         ; SpriteEntity
    .byte $73,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_APOLUNE_TOOL_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_09:
    .byte SPRITE_NPC_KEY_SALESMAN           ; SpriteEntity
    .byte $84,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_APOLUNE_KEY_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_10:
    .byte SPRITE_NPC_SMOKING_MAN            ; SpriteEntity
    .byte $81                               ; undefined

    .byte SPRITE_NPC_DOCTOR                 ; SpriteEntity
    .byte $87,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_18             ; IScriptEntrypoint
    .byte ISCRIPT_ENTRYPOINT_19             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_11:
    .byte SPRITE_NPC_PRIEST                 ; SpriteEntity
    .byte $82,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_APOLUNE_GURU   ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_12:
    .byte SPRITE_NPC_MAN_IN_CHAIR           ; SpriteEntity
    .byte $82                               ; undefined

    .byte SPRITE_NPC_NURSE                  ; SpriteEntity
    .byte $95,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_APOLUNE_DOCTOR ; IScriptEntrypoint
    .byte ISCRIPT_ENTRYPOINT_22             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_13:
    .byte SPRITE_NPC_SITTING_MAN_1          ; SpriteEntity
    .byte $84                               ; undefined

    .byte SPRITE_NPC_WALKING_WOMAN_2        ; SpriteEntity
    .byte $89,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_23             ; IScriptEntrypoint
    .byte ISCRIPT_ENTRYPOINT_24             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_14:
    .byte SPRITE_NPC_MEAT_SALESMAN          ; SpriteEntity
    .byte $84,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_44_FOREPAW_MEAT_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_15:
    .byte SPRITE_NPC_ARMOR_SALESMAN         ; SpriteEntity
    .byte $73,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_40_FOREPAW_TOOL_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_16:
    .byte SPRITE_NPC_PRIEST                 ; SpriteEntity
    .byte $82,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_41_FOREPAW_GURU ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_17:
    .byte SPRITE_NPC_MAN_IN_CHAIR           ; SpriteEntity
    .byte $82                               ; undefined

    .byte SPRITE_NPC_NURSE                  ; SpriteEntity
    .byte $85,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_42_FOREPAW_DOCTOR ; IScriptEntrypoint
    .byte ISCRIPT_ENTRYPOINT_35             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_18:
    .byte SPRITE_NPC_SITTING_MAN_1          ; SpriteEntity
    .byte $84,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_34             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_19:
    .byte SPRITE_NPC_KEY_SALESMAN           ; SpriteEntity
    .byte $84,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_43_FOREPAW_KEY_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_20:
    .byte SPRITE_NPC_ARMOR_SALESMAN         ; SpriteEntity
    .byte $73,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_BEFORE_APOLUNE_TOOL_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_21:
    .byte SPRITE_NPC_PRIEST                 ; SpriteEntity
    .byte $82,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_36             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_22:
    .byte SPRITE_NPC_SMOKING_MAN            ; SpriteEntity
    .byte $81                               ; undefined

    .byte SPRITE_NPC_LADY_BLUE_DRESS_WITH_CUP ; SpriteEntity
    .byte $87,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_49             ; IScriptEntrypoint
    .byte ISCRIPT_ENTRYPOINT_50             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_23:
    .byte SPRITE_NPC_MEAT_SALESMAN          ; SpriteEntity
    .byte $84,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_58_MASCON_MEAT_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_24:
    .byte SPRITE_NPC_ARMOR_SALESMAN         ; SpriteEntity
    .byte $73,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_57_MASCON_TOOL_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_25:
    .byte SPRITE_NPC_KEY_SALESMAN           ; SpriteEntity
    .byte $84,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_59_MASCON_KEY_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_26:
    .byte SPRITE_NPC_SITTING_MAN_1          ; SpriteEntity
    .byte $84                               ; undefined

    .byte SPRITE_NPC_WALKING_WOMAN_2        ; SpriteEntity
    .byte $89,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_51             ; IScriptEntrypoint
    .byte ISCRIPT_ENTRYPOINT_52             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_27:
    .byte SPRITE_NPC_MAN_IN_CHAIR           ; SpriteEntity
    .byte $82                               ; undefined

    .byte SPRITE_NPC_NURSE                  ; SpriteEntity
    .byte $95,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_56_MASCON_DOCTOR ; IScriptEntrypoint
    .byte ISCRIPT_ENTRYPOINT_55             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_28:
    .byte SPRITE_NPC_MAGIC_TEACHER          ; SpriteEntity
    .byte $71,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_75_AFTER_VICTIM_MAGIC_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_29:
    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $87,$ff,$ff                       ; undefined

SPRITE_INFO_VICTIM_SCREEN_30:
    .byte SPRITE_NPC_PRIEST                 ; SpriteEntity
    .byte $82,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_61_MASCON_GURU ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_31:
    .byte SPRITE_OBJ_WING_BOOTS             ; SpriteEntity
    .byte $a3                               ; undefined

    .byte SPRITE_ENEMY_GIANT_STRIDER        ; SpriteEntity
    .byte $82,$ff,$ff                       ; undefined

SPRITE_INFO_VICTIM_SCREEN_32:
    .byte SPRITE_NPC_ARMOR_SALESMAN         ; SpriteEntity
    .byte $73,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_60_AFTER_MASCON_TOOL_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_33:
    .byte SPRITE_NPC_SITTING_MAN_1          ; SpriteEntity
    .byte $84                               ; undefined

    .byte SPRITE_NPC_WALKING_WOMAN_2        ; SpriteEntity
    .byte $89,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_53_OVERWORLD_MIST_HOUSE_MAN ; IScriptEntrypoint
    .byte ISCRIPT_ENTRYPOINT_54_OVERWORLD_MIST_HOUSE_WOMAN ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_34:
    .byte SPRITE_NPC_SITTING_MAN_1          ; SpriteEntity
    .byte $84,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_70             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_35:
    .byte SPRITE_NPC_PRIEST                 ; SpriteEntity
    .byte $82,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_76_VICTIM_GURU ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_36:
    .byte SPRITE_NPC_MAN_IN_CHAIR           ; SpriteEntity
    .byte $82,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_71_VICTIM_DOCTOR ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_37:
    .byte SPRITE_NPC_SITTING_MAN_1          ; SpriteEntity
    .byte $84                               ; undefined

    .byte SPRITE_NPC_WALKING_WOMAN_2        ; SpriteEntity
    .byte $89,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_65             ; IScriptEntrypoint
    .byte ISCRIPT_ENTRYPOINT_66             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_38:
    .byte SPRITE_NPC_MEAT_SALESMAN          ; SpriteEntity
    .byte $84,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_73_VICTIM_MEAT_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_39:
    .byte SPRITE_NPC_KEY_SALESMAN           ; SpriteEntity
    .byte $84,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_74_VICTIM_KEY_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_40:
    .byte SPRITE_NPC_SMOKING_MAN            ; SpriteEntity
    .byte $81                               ; undefined

    .byte SPRITE_NPC_DOCTOR                 ; SpriteEntity
    .byte $87,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_67             ; IScriptEntrypoint
    .byte ISCRIPT_ENTRYPOINT_68             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_41:
    .byte SPRITE_NPC_SITTING_MAN_1          ; SpriteEntity
    .byte $84,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_81             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_42:
    .byte SPRITE_NPC_MEAT_SALESMAN          ; SpriteEntity
    .byte $84,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_88_CONFLATE_MEAT_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_43:
    .byte SPRITE_NPC_PRIEST                 ; SpriteEntity
    .byte $82,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_85_CONFLATE_GURU ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_44:
    .byte SPRITE_NPC_MAN_IN_CHAIR           ; SpriteEntity
    .byte $82,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_86_CONFLATE_DOCTOR ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_45:
    .byte SPRITE_NPC_ARMOR_SALESMAN         ; SpriteEntity
    .byte $73,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_87_CONFLATE_TOOL_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_46:
    .byte SPRITE_NPC_SMOKING_MAN            ; SpriteEntity
    .byte $81                               ; undefined

    .byte SPRITE_NPC_DOCTOR                 ; SpriteEntity
    .byte $87,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_83             ; IScriptEntrypoint
    .byte ISCRIPT_ENTRYPOINT_84             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_47:
    .byte SPRITE_NPC_KEY_SALESMAN           ; SpriteEntity
    .byte $84,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_104_DAYBREAK_KEY_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_48:
    .byte SPRITE_NPC_ARMOR_SALESMAN         ; SpriteEntity
    .byte $73,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_102_DAYBREAK_TOOL_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_49:
    .byte SPRITE_NPC_MEAT_SALESMAN          ; SpriteEntity
    .byte $84                               ; undefined

    .byte SPRITE_NPC_NURSE                  ; SpriteEntity
    .byte $88,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_103_DAYBREAK_MEAT_SHOP ; IScriptEntrypoint
    .byte ISCRIPT_ENTRYPOINT_99             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_50:
    .byte SPRITE_NPC_SMOKING_MAN            ; SpriteEntity
    .byte $81                               ; undefined

    .byte SPRITE_NPC_LADY_BLUE_DRESS_WITH_CUP ; SpriteEntity
    .byte $87,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_100            ; IScriptEntrypoint
    .byte ISCRIPT_ENTRYPOINT_101            ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_51:
    .byte SPRITE_NPC_PRIEST                 ; SpriteEntity
    .byte $82,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_105_DAYBREAK_GURU ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_52:
    .byte SPRITE_NPC_SITTING_MAN_1          ; SpriteEntity
    .byte $84                               ; undefined

    .byte SPRITE_NPC_WALKING_WOMAN_2        ; SpriteEntity
    .byte $89,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_97             ; IScriptEntrypoint
    .byte ISCRIPT_ENTRYPOINT_98             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_53:
    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $84,$ff,$ff                       ; undefined

SPRITE_INFO_VICTIM_SCREEN_54:
    .byte SPRITE_ENEMY_GRIMLOCK             ; SpriteEntity
    .byte $84,$ff,$ff                       ; undefined

SPRITE_INFO_VICTIM_SCREEN_55:
    .byte SPRITE_OBJ_RED_POTION             ; SpriteEntity
    .byte $98                               ; undefined

    .byte SPRITE_ENEMY_GRIMLOCK             ; SpriteEntity
    .byte $84,$ff,$ff                       ; undefined

SPRITE_INFO_VICTIM_SCREEN_56:
    .byte SPRITE_ENEMY_MASKMAN              ; SpriteEntity
    .byte $84,$ff,$ff                       ; undefined

SPRITE_INFO_VICTIM_SCREEN_57:
    .byte SPRITE_ENEMY_SIR_GAWAINE          ; SpriteEntity
    .byte $84,$ff,$ff                       ; undefined

SPRITE_INFO_VICTIM_SCREEN_58:
    .byte SPRITE_NPC_SITTING_MAN_1          ; SpriteEntity
    .byte $84                               ; undefined

    .byte SPRITE_NPC_WALKING_WOMAN_2        ; SpriteEntity
    .byte $89,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_113_OVERWORLD_HOUSE_MAN ; IScriptEntrypoint
    .byte ISCRIPT_ENTRYPOINT_114_OVERWORLD_HOUSE_WOMAN ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_59:
    .byte SPRITE_NPC_PRIEST                 ; SpriteEntity
    .byte $82,$ff,$ff                       ; undefined

SPRITE_INFO_VICTIM_SCREEN_60:
    .byte SPRITE_NPC_PRIEST                 ; SpriteEntity
    .byte $82,$ff,$78,$ff                   ; undefined

SPRITE_INFO_VICTIM_SCREEN_61:
    .byte SPRITE_NPC_SMOKING_MAN            ; SpriteEntity
    .byte $81,$ff,$73,$ff                   ; undefined

SPRITE_INFO_VICTIM_SCREEN_62:
    .byte SPRITE_NPC_MEAT_SALESMAN          ; SpriteEntity
    .byte $84,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_118_DARTMOOR_MEAT_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_63:
    .byte SPRITE_NPC_MAN_IN_CHAIR           ; SpriteEntity
    .byte $82,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_122_DARTMOOR_DOCTOR ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_64:
    .byte SPRITE_NPC_KEY_SALESMAN           ; SpriteEntity
    .byte $84,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_119_DARTMOOR_KEY_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_65:
    .byte SPRITE_NPC_ARMOR_SALESMAN         ; SpriteEntity
    .byte $73,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_117_DARTMOOR_TOOL_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_66:
    .byte SPRITE_NPC_PRIEST                 ; SpriteEntity
    .byte $82,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_116_FRATERNAL_GURU ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_67:
    .byte SPRITE_OBJ_OINTMENT               ; SpriteEntity
    .byte $95                               ; undefined

    .byte SPRITE_ENEMY_WOLFMAN              ; SpriteEntity
    .byte $87,$ff,$ff                       ; undefined

SPRITE_INFO_VICTIM_SCREEN_68:
    .byte SPRITE_NPC_KING                   ; SpriteEntity
    .byte $72,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_121_GLAD_YOU_ARE_BACK ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_VICTIM_SCREEN_69:
    .byte SPRITE_NPC_ARMOR_SALESMAN         ; SpriteEntity
    .byte $73,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_72_VICTIM_TOOL_SHOP ; IScriptEntrypoint
    .byte $ff                               ; undefined


;============================================================================
; Mascon Sprite Information
;============================================================================
SPRITE_INFO_MASCON:
    pointer SPRITE_INFO_MASCON_SCREEN_00    ; SPRITE_INFO_MASCON_SCREEN_00
    pointer SPRITE_INFO_MASCON_SCREEN_01    ; SPRITE_INFO_MASCON_SCREEN_01
    pointer SPRITE_INFO_MASCON_SCREEN_02    ; SPRITE_INFO_MASCON_SCREEN_02
    pointer SPRITE_INFO_MASCON_SCREEN_03    ; SPRITE_INFO_MASCON_SCREEN_03
    pointer SPRITE_INFO_MASCON_SCREEN_04    ; SPRITE_INFO_MASCON_SCREEN_04
    pointer SPRITE_INFO_MASCON_SCREEN_05    ; SPRITE_INFO_MASCON_SCREEN_05
    pointer SPRITE_INFO_MASCON_SCREEN_06    ; SPRITE_INFO_MASCON_SCREEN_06
    pointer SPRITE_INFO_MASCON_SCREEN_07    ; SPRITE_INFO_MASCON_SCREEN_07
    pointer SPRITE_INFO_MASCON_SCREEN_08    ; SPRITE_INFO_MASCON_SCREEN_08
    pointer SPRITE_INFO_MASCON_SCREEN_09    ; SPRITE_INFO_MASCON_SCREEN_09
    pointer SPRITE_INFO_MASCON_SCREEN_10    ; SPRITE_INFO_MASCON_SCREEN_10
    pointer SPRITE_INFO_MASCON_SCREEN_11    ; SPRITE_INFO_MASCON_SCREEN_11
    pointer SPRITE_INFO_MASCON_SCREEN_12_13 ; SPRITE_INFO_MASCON_SCREEN_12_13
    pointer SPRITE_INFO_MASCON_SCREEN_12_13 ; SPRITE_INFO_MASCON_SCREEN_12_13

;
; XREFS:
;     SPRITE_INFO_MASCON [$PRG11::8c8d]
;
SPRITE_INFO_MASCON_SCREEN_00:
    .byte SPRITE_NPC_WALKING_WOMAN_2        ; SpriteEntity
    .byte $97,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_17             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_MASCON_SCREEN_01:
    .byte SPRITE_NPC_WALKING_MAN_1          ; SpriteEntity
    .byte $97,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_16             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_MASCON_SCREEN_02:
    .byte SPRITE_NPC_NURSE                  ; SpriteEntity
    .byte $97,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_32_FOREPAW_GREETER ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_MASCON_SCREEN_03:
    .byte SPRITE_NPC_WALKING_MAN_1          ; SpriteEntity
    .byte $97,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_33             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_MASCON_SCREEN_04:
    .byte SPRITE_NPC_WALKING_MAN_1          ; SpriteEntity
    .byte $97,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_48             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_MASCON_SCREEN_05:
    .byte $ff,$ff                           ; undefined

SPRITE_INFO_MASCON_SCREEN_06:
    .byte SPRITE_NPC_WALKING_WOMAN_2        ; SpriteEntity
    .byte $97,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_64             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_MASCON_SCREEN_07:
    .byte $ff,$ff                           ; undefined

SPRITE_INFO_MASCON_SCREEN_08:
    .byte SPRITE_NPC_GUARD_1                ; SpriteEntity
    .byte $9b,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_82             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_MASCON_SCREEN_09:
    .byte SPRITE_NPC_WALKING_MAN_1          ; SpriteEntity
    .byte $97,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_80             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_MASCON_SCREEN_10:
    .byte SPRITE_NPC_LADY_BLUE_DRESS_WITH_CUP ; SpriteEntity
    .byte $97,$ff                           ; undefined

    .byte ISCRIPT_ENTRYPOINT_96             ; IScriptEntrypoint
    .byte $ff                               ; undefined

SPRITE_INFO_MASCON_SCREEN_11:
    .byte $ff,$ff                           ; undefined

SPRITE_INFO_MASCON_SCREEN_12_13:
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff   ; undefined
    .byte $ff,$ff,$ff,$ff                   ; undefined
