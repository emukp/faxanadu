;============================================================================
; Faxanadu (U).nes
;
; RAM ($0100 - $07ff)
;============================================================================

    .segment "RAM"
    .reloc


;============================================================================
; The currently-loaded ROM bank used for logic.
;
; XREFS:
;     Area_LoadBlockProperties
;     Area_LoadScrollData
;     Area_LoadTiles
;     Area_SetBlocks
;     Area_SetStateFromDoorDestination
;     CurrentSprite_LoadTilesInfo
;     Game_DrawScreenInFrozenState
;     Game_InitMMCAndBank
;     Game_InitScreenAndMusic
;     Game_LoadAreaTable
;     IScripts_DrawPortraitTileToPPU
;     IScripts_LoadPortraitTilesAddress
;     MMC1_EnsurePRG
;     MMC1_LoadBankAndJump
;     MMC1_SaveROMBankAndUpdateTo
;     MMC1_UpdateROMBank
;     Messages_Load
;     OnInterrupt
;     PPU_LoadGlyphsForStrings
;     PPU_WriteTilesFromCHRRAM
;     Player_LoadArmorSpriteTilesAddr
;     Player_LoadArmorTile
;     Player_LoadShieldSpriteTileAddrs
;     Player_LoadShieldTile
;     Player_LoadWeaponSpriteTileAddrs
;     Player_LoadWeaponTile
;     Screen_HandleScrollDown
;     Screen_HandleScrollLeft
;     Screen_HandleScrollRight
;     Screen_HandleScrollUp
;     Screen_LoadSpriteInfo
;     Screen_LoadUIPalette
;     Screen_SetFadeOutPalette
;     Screen_SetPaletteData
;     Sprite_DrawPortraitPartAppearance
;     Sprite_SetAppearanceAddrFromOffset
;     Sprite_SetPlayerAppearanceAddr
;     Sprites_LoadCommon
;     Sprites_LoadImageForCurrentSprite
;     Sprites_LoadSpriteValue
;     TextBox_GetBackingAttributeData
;     TextBox_LoadAndShowMessage
;     TextBox_LoadItemSourceTiles
;     TextBox_ShowNextChar
;     TextBox_WriteChar
;     Textbox_Maybe_GetAreaBehindTextbox
;     UI_DrawSelectedItem
;============================================================================

;
; XREFS:
;     Area_LoadBlockProperties
;     Area_LoadScrollData
;     Area_LoadTiles
;     Area_SetBlocks
;     Area_SetStateFromDoorDestination
;     CurrentSprite_LoadTilesInfo
;     Game_DrawScreenInFrozenState
;     Game_InitMMCAndBank
;     Game_InitScreenAndMusic
;     Game_LoadAreaTable
;     IScripts_DrawPortraitTileToPPU
;     IScripts_LoadPortraitTilesAddress
;     MMC1_EnsurePRG
;     MMC1_LoadBankAndJump
;     MMC1_SaveROMBankAndUpdateTo
;     MMC1_UpdateROMBank
;     Messages_Load
;     OnInterrupt
;     PPU_LoadGlyphsForStrings
;     PPU_WriteTilesFromCHRRAM
;     Player_LoadArmorSpriteTilesAddr
;     Player_LoadArmorTile
;     Player_LoadShieldSpriteTileAddrs
;     Player_LoadShieldTile
;     Player_LoadWeaponSpriteTileAddrs
;     Player_LoadWeaponTile
;     Screen_HandleScrollDown
;     Screen_HandleScrollLeft
;     Screen_HandleScrollRight
;     Screen_HandleScrollUp
;     Screen_LoadSpriteInfo
;     Screen_LoadUIPalette
;     Screen_SetFadeOutPalette
;     Screen_SetPaletteData
;     Sprite_DrawPortraitPartAppearance
;     Sprite_SetAppearanceAddrFromOffset
;     Sprite_SetPlayerAppearanceAddr
;     Sprites_LoadCommon
;     Sprites_LoadImageForCurrentSprite
;     Sprites_LoadSpriteValue
;     TextBox_GetBackingAttributeData
;     TextBox_LoadAndShowMessage
;     TextBox_LoadItemSourceTiles
;     TextBox_ShowNextChar
;     TextBox_WriteChar
;     Textbox_Maybe_GetAreaBehindTextbox
;     UI_DrawSelectedItem
;
CurrentROMBank:
    .byte $00                               ; ROMBank


;============================================================================
; MOD NOTES: 31 unused bytes of RAM.
;============================================================================
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00       ; undefined


;============================================================================
; Whether audio is playing or paused.
;
; If bit 0 is set, the game has been paused.
; If bit 7 is set, then audio has been paused.
;
; Audio will be paused following the game being paused,
; at the next hardware interrupt.
;
; XREFS:
;     GameLoop_CheckPauseGame
;     Game_InitScreenAndMusic
;     Audio_HandlePaused
;     Audio_InitPlayingState
;     Music_HandleOnInterrupt
;============================================================================

;
; XREFS:
;     GameLoop_CheckPauseGame
;     Game_InitScreenAndMusic
;     Audio_HandlePaused
;     Audio_InitPlayingState
;     Music_HandleOnInterrupt
;
Game_PausedState:
    .byte $00                               ; byte


;============================================================================
; The ID of the highest-priority sound being played.
;
; This is an index into SOUND_PRIORITIES, and
; helps
; manage which sound effect should be playing based on
; its priority level.
;
; XREFS:
;     SoundEffect_SetCurrent
;     Audio_InitPlayingState
;     SoundEffects_Init
;     Sound_ResetCurrentSound
;============================================================================

;
; XREFS:
;     SoundEffect_SetCurrent
;     Audio_InitPlayingState
;     SoundEffects_Init
;     Sound_ResetCurrentSound
;
SoundEffect_Unused_PriorityID:
    .byte $00                               ; byte

;
; XREFS:
;     Audio_InitPlayingState
;     SoundEffects_HandleOnInterrupt
;     Sound_ResetCurrentSound
;
SoundEffect_HandlerIndex:
    .byte $00                               ; byte


;============================================================================
; Number of ticks remaining for sound effect playback.
;
; Each index corresponds to a channel:
;
; 0: SQ1
; 1: SQ2
; 2: Triangle
; 3: Noise
;
; XREFS:
;     Music_ApplySQPitchEffectToLO
;     Music_PlayForChannel
;     Music_PlaySQEnvelopeModeCurveButHeld
;     Music_PlaySQEnvelopeModeLinearTrailoff
;     Music_PlaySQEnvelopeModePluck
;     Music_SetupWave
;     SoundEffect_PlayerDied_Setup
;     SoundEffects_HandleOnInterrupt
;     SoundEffects_Init
;============================================================================

;
; XREFS:
;     Music_ApplySQPitchEffectToLO
;     Music_PlayForChannel
;     Music_PlaySQEnvelopeModeCurveButHeld
;     Music_PlaySQEnvelopeModeLinearTrailoff
;     Music_PlaySQEnvelopeModePluck
;     Music_SetupWave
;     SoundEffect_PlayerDied_Setup
;     SoundEffects_HandleOnInterrupt
;     SoundEffects_Init
;
SoundEffect_TicksRemaining:
    .byte $00                               ; [0]:

;
; XREFS:
;     SoundEffect_0x48_OnTick
;     SoundEffect_0x48_Setup
;     SoundEffect_BreadTouched_Setup
;     SoundEffect_CharacterInput_Setup
;     SoundEffect_CoinDropped_Setup
;     SoundEffect_CoinTouchedCommon_Setup
;     SoundEffect_CursorMoved_Setup
;     SoundEffect_FillHPOrMP_Setup
;     SoundEffect_GoldAmountChanged_Setup
;     SoundEffect_HitEnemy_Setup
;     SoundEffect_HitPlayer_Setup
;     SoundEffect_ItemPickedUp_Setup
;     SoundEffect_Magic_Setup
;     SoundEffect_Maybe_Typing_OnTick
;     SoundEffect_Maybe_Typing_Setup
;     SoundEffect_Maybe_UseSpecialItem2_Setup
;     SoundEffect_OpenDoor_Setup
;     SoundEffect_Pakukame_OnTick
;     SoundEffect_Pakukame_Setup
;     SoundEffect_PasswordCharInput_Setup
;     SoundEffect_PlayerDied_Setup
;     SoundEffect_ShieldHitByMagic_Setup
;     SoundEffect_ShowPlayerMenu_Setup
;     SoundEffect_Tilte_Setup
;     SoundEffects_HandleOnInterrupt
;     SoundEffects_Init
;
SoundEffect_TicksRemaining_1_:
    .byte $00                               ; [1]:

;
; XREFS:
;     Audio_ResetIfNothingSet
;     SoundEffect_PlayerDied_Setup
;     SoundEffects_HandleOnInterrupt
;     SoundEffects_Init
;
SoundEffect_TicksRemaining_2_:
    .byte $00                               ; [2]:

;
; XREFS:
;     Audio_ResetIfNothingSet
;     Music_PlayNoise
;     SoundEffect_0x48_Setup
;     SoundEffect_EnemyDied_Setup
;     SoundEffect_HitEnemy_Setup
;     SoundEffect_LadderDropped_Setup
;     SoundEffect_MagicHitObstacle_Setup
;     SoundEffect_Maybe_Step_Setup
;     SoundEffect_Maybe_UseSpecialItem2_Setup
;     SoundEffect_Message_Setup
;     SoundEffect_OpenDoor_Setup
;     SoundEffect_PlayerDied_Setup
;     SoundEffect_PushBlock_Setup
;     SoundEffect_Tilte_Setup
;     SoundEffects_HandleOnInterrupt
;     SoundEffects_Init
;
SoundEffect_TicksRemaining_3_:
    .byte $00                               ; [3]:

;
; XREFS:
;     SoundEffect_0x48_OnTick
;     SoundEffect_0x48_Setup
;     SoundEffect_BreadTouched_OnTick
;     SoundEffect_BreadTouched_Setup
;     SoundEffect_CharacterInput_OnTick
;     SoundEffect_CharacterInput_Setup
;     SoundEffect_CoinDropped_OnTick
;     SoundEffect_CoinDropped_Setup
;     SoundEffect_CoinTouchedCommon_OnTick
;     SoundEffect_CoinTouchedCommon_Setup
;     SoundEffect_CursorMoved_OnTick
;     SoundEffect_CursorMoved_Setup
;     SoundEffect_EnemyDied_OnTick
;     SoundEffect_EnemyDied_Setup
;     SoundEffect_FillHPOrMP_OnTick
;     SoundEffect_FillHPOrMP_Setup
;     SoundEffect_GoldAmountChanged_Setup
;     SoundEffect_HitEnemy_OnTick
;     SoundEffect_HitEnemy_Setup
;     SoundEffect_HitPlayer_OnTick
;     SoundEffect_HitPlayer_Setup
;     SoundEffect_ItemPickedUp_OnTick
;     SoundEffect_ItemPickedUp_Setup
;     SoundEffect_LadderDropped_OnTick
;     SoundEffect_LadderDropped_Setup
;     SoundEffect_MagicHitObstacle_OnTick
;     SoundEffect_MagicHitObstacle_Setup
;     SoundEffect_Magic_OnTick
;     SoundEffect_Magic_Setup
;     SoundEffect_Maybe_Step_OnTick
;     SoundEffect_Maybe_Step_Setup
;     SoundEffect_Maybe_Typing_OnTick
;     SoundEffect_Maybe_Typing_Setup
;     SoundEffect_Maybe_UseSpecialItem2_OnTick
;     SoundEffect_Maybe_UseSpecialItem2_Setup
;     SoundEffect_Message_OnTick
;     SoundEffect_Message_Setup
;     SoundEffect_OpenDoor_OnTick
;     SoundEffect_OpenDoor_Setup
;     SoundEffect_Pakukame_OnTick
;     SoundEffect_Pakukame_Setup
;     SoundEffect_PasswordCharInput_Setup
;     SoundEffect_PlayerDied_OnTick
;     SoundEffect_PlayerDied_Setup
;     SoundEffect_PushBlock_OnTick
;     SoundEffect_PushBlock_Setup
;     SoundEffect_ShieldHitByMagic_OnTick
;     SoundEffect_ShieldHitByMagic_Setup
;     SoundEffect_ShowPlayerMenu_OnTick
;     SoundEffect_ShowPlayerMenu_Setup
;     SoundEffect_Tilte_OnTick
;     SoundEffect_Tilte_Setup
;     SoundEffects_DecrementCounter
;
SoundEffect_State_Counter:
    .byte $00                               ; byte

;
; XREFS:
;     SoundEffect_0x48_OnTick
;     SoundEffect_0x48_Setup
;     SoundEffect_BreadTouched_OnTick
;     SoundEffect_BreadTouched_Setup
;     SoundEffect_CoinTouchedCommon_OnTick
;     SoundEffect_CoinTouchedCommon_Setup
;     SoundEffect_CursorMoved_OnTick
;     SoundEffect_EnemyDied_OnTick
;     SoundEffect_EnemyDied_Setup
;     SoundEffect_FillHPOrMP_OnTick
;     SoundEffect_FillHPOrMP_Setup
;     SoundEffect_ItemPickedUp_OnTick
;     SoundEffect_ItemPickedUp_Setup
;     SoundEffect_MagicHitObstacle_Setup
;     SoundEffect_Magic_OnTick
;     SoundEffect_Magic_Setup
;     SoundEffect_Maybe_UseSpecialItem2_OnTick
;     SoundEffect_Maybe_UseSpecialItem2_Setup
;     SoundEffect_OpenDoor_Setup
;     SoundEffect_PlayerDied_OnTick
;     SoundEffect_PlayerDied_Setup
;     SoundEffect_ShowPlayerMenu_OnTick
;     SoundEffect_ShowPlayerMenu_Setup
;     SoundEffect_Tilte_OnTick
;     SoundEffect_Tilte_Setup
;
SoundEffect_State_0128:
    .byte $00                               ; byte

;
; XREFS:
;     SoundEffect_0x48_OnTick
;     SoundEffect_0x48_Setup
;     SoundEffect_BreadTouched_OnTick
;     SoundEffect_BreadTouched_Setup
;     SoundEffect_FillHPOrMP_OnTick
;     SoundEffect_FillHPOrMP_Setup
;     SoundEffect_Maybe_UseSpecialItem2_OnTick
;     SoundEffect_Maybe_UseSpecialItem2_Setup
;     SoundEffect_OpenDoor_OnTick
;     SoundEffect_OpenDoor_Setup
;     SoundEffect_ShowPlayerMenu_OnTick
;     SoundEffect_ShowPlayerMenu_Setup
;     SoundEffect_Tilte_OnTick
;     SoundEffect_Tilte_Setup
;
SoundEffect_State_0129:
    .byte $00                               ; byte

;
; XREFS:
;     SoundEffect_CharacterInput_OnTick
;     SoundEffect_HitEnemy_OnTick
;     SoundEffect_HitPlayer_OnTick
;     SoundEffect_ItemPickedUp_OnTick
;     SoundEffect_Maybe_Typing_OnTick
;     SoundEffect_Maybe_UseSpecialItem2_OnTick
;     SoundEffect_PlayerDied_OnTick
;     SoundEffect_SetNote
;     SoundEffect_ShowPlayerMenu_OnTick
;
SoundEffect_Note_Low:
    .byte $00                               ; byte

;
; XREFS:
;     SoundEffect_CharacterInput_OnTick
;     SoundEffect_HitEnemy_OnTick
;     SoundEffect_HitPlayer_OnTick
;     SoundEffect_ItemPickedUp_OnTick
;     SoundEffect_Maybe_Typing_OnTick
;     SoundEffect_Maybe_UseSpecialItem2_OnTick
;     SoundEffect_PlayerDied_OnTick
;     SoundEffect_SetNote
;     SoundEffect_ShowPlayerMenu_OnTick
;
SoundEffect_Note_High:
    .byte $00                               ; byte

;
; XREFS:
;     MScripts_SetNoteLengthFromValue
;     Music_Load
;     Music_ResetTicksRemaining
;
MScript_NoteDurations:
    .byte $00                               ; [0]:

;
; XREFS:
;     Music_Load
;
MScript_NoteDurations_1_:
    .byte $00                               ; [1]:

;
; XREFS:
;     Music_Load
;
MScript_NoteDurations_2_:
    .byte $00                               ; [2]:

;
; XREFS:
;     Music_Load
;
MScript_NoteDurations_3_:
    .byte $00                               ; [3]:

;
; XREFS:
;     MScript_Op_End
;     Music_Load
;     Music_PlayNext
;     Music_ResetTicksRemaining
;
Music_ChannelTicksRemaining:
    .byte $00                               ; [0]:

;
; XREFS:
;     Music_Load
;     Music_PlayNext
;
Music_ChannelTicksRemaining_1_:
    .byte $00                               ; [1]:

;
; XREFS:
;     Music_Load
;
Music_ChannelTicksRemaining_2_:
    .byte $00                               ; [2]:

;
; XREFS:
;     Music_Load
;
Music_ChannelTicksRemaining_3_:
    .byte $00                               ; [3]:
    .byte $00,$00,$00,$00                   ; undefined

;
; XREFS:
;     MScript_Op_BeginLoop
;     MScript_Op_EndLoop
;
MScript_LoopStartAddrs:
    .word $0000                             ; [0]:
    .word $0000                             ; [1]:
    .word $0000                             ; [2]:
    .word $0000                             ; [3]:

;
; XREFS:
;     MScript_Op_EndLoop
;     MScript_Op_NextLoopIfNCompleted
;
MScript_LoopEndAddrs:
    .word $0000                             ; [0]:
    .word $0000                             ; [1]:
    .word $0000                             ; [2]:
    .word $0000                             ; [3]:

;
; XREFS:
;     MScript_Op_BeginLoop
;     MScript_Op_EndLoop
;
MScript_LoopLength:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:

;
; XREFS:
;     MScript_Op_BeginLoop
;     MScript_Op_EndLoop
;     MScript_Op_NextLoopIfNCompleted
;
MScript_LoopCounter:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:


;============================================================================
; The saved MScript addresses that can be restored back to.
;
; There is 1 address per channel.
;
; XREFS:
;     MScript_Op_RestoreAddr
;     MScript_Op_SaveAddr_Store
;     Music_Load
;============================================================================

;
; XREFS:
;     MScript_Op_RestoreAddr
;     MScript_Op_SaveAddr_Store
;     Music_Load
;
MScript_SavedAddr:
    .word $0000                             ; [0]:
    .word $0000                             ; [1]:
    .word $0000                             ; [2]:
    .word $0000                             ; [3]:


;============================================================================
; Pushed MScript addresses for jumping to/returning from subroutines.
;
; There's one per channel.
;
; XREFS:
;     MScript_Op_JumpSubroutine
;     MScript_Op_Return
;============================================================================

;
; XREFS:
;     MScript_Op_JumpSubroutine
;     MScript_Op_Return
;
MScript_PushedAddrs:
    .word $0000,$0000,$0000,$0000           ; ushort

;
; XREFS:
;     MScript_Op_SetGlobalTranspose
;     Music_Load
;     Music_SetNote
;
Music_Global_Transpose:
    .byte $00                               ; byte

;
; XREFS:
;     MScript_Op_SetChannelTranspose
;     Music_Load
;     Music_SetNote
;
Music_Channel_Transpose:
    .byte $00                               ; [0]:

;
; XREFS:
;     Music_Load
;
Music_Channel_Transpose_1_:
    .byte $00                               ; [1]:

;
; XREFS:
;     Music_Load
;
Music_Channel_Transpose_2_:
    .byte $00                               ; [2]:

;
; XREFS:
;     MScripts_SetNoteLengthFromValue
;     Music_Load
;     Music_SetupWave
;
Music_SQ_Note_Lengths:
    .byte $00                               ; [0]:

;
; XREFS:
;     Music_Load
;     Music_SetupWave
;
Music_Note_Length_High:
    .byte $00                               ; [1]:

;
; XREFS:
;     Music_Load
;
Music_Unused_0166:
    .byte $00                               ; [0]:

;
; XREFS:
;     Music_Load
;
Music_Unused_0166_1_:
    .byte $00                               ; [1]:

;
; XREFS:
;     Music_PlayNoise
;     Music_PlayWaveOrNoise
;
Music_Noise_Index:
    .byte $00                               ; byte

;
; XREFS:
;     MScripts_InvokeNext
;     Music_Load
;     Music_PlayNoise
;     Music_PlayWaveOrNoise
;
Music_Noise_Remaining:
    .byte $00                               ; byte


;============================================================================
; The index into the sound channel data.
;
; Sound channels are in the following order:
;
; 0 = Square wave 1
; 1 = Square wave 2
; 2 = Triangle wave
; 3 = Noise
;
; XREFS:
;     MScript_Op_BeginLoop
;     MScript_Op_End
;     MScript_Op_EndLoop
;     MScript_Op_JumpSubroutine
;     MScript_Op_NextLoopIfNCompleted
;     MScript_Op_RestoreAddr
;     MScript_Op_Return
;     MScript_Op_SaveAddr_Store
;     MScript_Op_SetChannelTranspose
;     MScript_Op_SetControlBits
;     MScript_Op_SetSQEnvelopeMode
;     MScript_Op_SetSQPitchEffectDepth
;     MScript_Op_SetSQVol
;     MScripts_GetNextValue
;     MScripts_InvokeNext
;     MScripts_SetNoteLengthFromValue
;     Music_ApplySQPitchEffectToLO
;     Music_PlayForChannel
;     Music_PlayNext
;     Music_PlaySQEnvelopeModeCurveButHeld
;     Music_PlaySQEnvelopeModeLinearTrailoff
;     Music_PlaySQEnvelopeModePluck
;     Music_PlayWaveOrNoise
;     Music_ResetTicksRemaining
;     Music_SetNote
;     Music_SetupWave
;     Music_UpdateSQVolRegister
;============================================================================

;
; XREFS:
;     MScript_Op_BeginLoop
;     MScript_Op_End
;     MScript_Op_EndLoop
;     MScript_Op_JumpSubroutine
;     MScript_Op_NextLoopIfNCompleted
;     MScript_Op_RestoreAddr
;     MScript_Op_Return
;     MScript_Op_SaveAddr_Store
;     MScript_Op_SetChannelTranspose
;     MScript_Op_SetControlBits
;     MScript_Op_SetSQEnvelopeMode
;     MScript_Op_SetSQPitchEffectDepth
;     MScript_Op_SetSQVol
;     MScripts_GetNextValue
;     MScripts_InvokeNext
;     MScripts_SetNoteLengthFromValue
;     Music_ApplySQPitchEffectToLO
;     Music_PlayForChannel
;     Music_PlayNext
;     Music_PlaySQEnvelopeModeCurveButHeld
;     Music_PlaySQEnvelopeModeLinearTrailoff
;     Music_PlaySQEnvelopeModePluck
;     Music_PlayWaveOrNoise
;     Music_ResetTicksRemaining
;     Music_SetNote
;     Music_SetupWave
;     Music_UpdateSQVolRegister
;
MScript_CurrentChannel:
    .byte $00                               ; SoundChannel


;============================================================================
; Number of channels completed for the current song.
;
; This starts at 0. Once it hits 4, playback finishes and
; Music_Current is cleared.
;
; XREFS:
;     MScript_Op_End
;     Music_PlayNext
;============================================================================

;
; XREFS:
;     MScript_Op_End
;     Music_PlayNext
;
Music_NumChannelsCompleted:
    .byte $00                               ; byte

;
; XREFS:
;     MScripts_InvokeNext
;     MScripts_SetNoteLengthFromNext
;     MScripts_SetNoteLengthFromValue
;     Music_Load
;     Music_PlayForChannel
;     Music_PlaySQEnvelopeModeCurveButHeld
;     Music_PlaySQEnvelopeModeLinearTrailoff
;     Music_PlaySQEnvelopeModePluck
;     Music_SetNote
;     Music_SetupTriangleWave
;     Music_SetupWave
;     Music_UpdateSQVolRegister
;
Music_TempValue:
    .byte $00                               ; byte

;
; XREFS:
;     Music_Load
;     Music_SetNote
;     Music_SetupWave
;
Music_Note_Period_Low:
    .byte $00                               ; byte

;
; XREFS:
;     Music_Load
;     Music_SetNote
;     Music_SetupWave
;
Music_Note_Period_High:
    .byte $00                               ; byte

;
; XREFS:
;     Music_Load
;     Music_SetNote
;
MScript_Unused_RawValue:
    .byte $00                               ; byte


;============================================================================
; Value used for Square Wave envelope modes.
;
; This is used differently in the different modes:
;
; Mode 0: Fixed-point, with volume in the upper nibble.
; Mode 1: A volume value between 0-15 (in the lower nibble).
; Mode 2: A volume from the pre-built table (between 0-15).
;
; XREFS:
;     Music_PlaySQEnvelopeModeCurveButHeld
;     Music_PlaySQEnvelopeModeLinearTrailoff
;     Music_SetupWave
;============================================================================

;
; XREFS:
;     Music_PlaySQEnvelopeModeCurveButHeld
;     Music_PlaySQEnvelopeModeLinearTrailoff
;     Music_SetupWave
;
Music_SQEnvelope_Value:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:

;
; XREFS:
;     MScript_Op_SetControlBits
;     Music_Load
;     Music_UpdateSQVolRegister
;
Music_SQ_ControlBits:
    .byte $00                               ; [0]:

;
; XREFS:
;     Music_Load
;
Music_SQ_ControlBits_1_:
    .byte $00                               ; [1]:

;
; XREFS:
;     MScript_Op_SetSQVol
;     Music_Load
;     Music_UpdateSQVolRegister
;
Music_SQ_Fades:
    .byte $00                               ; [0]:

;
; XREFS:
;     Music_Load
;
Music_SQ_Fades_1_:
    .byte $00                               ; [1]:


;============================================================================
; The envelope mode for each Square Wave channel.
;
; This supports the following values:
;
; 0: Volume decay
;
;    Ramps down the volume smoothly
;
; 1: Curve but held
;
;    Clamps the envelope into a range 0..15 and then slows the decay
;
; 2: Pre-built attack/decay curve
;
;    Pitches up and then down in a set pattern
;
; XREFS:
;     MScript_Op_SetSQEnvelopeMode
;     Music_Load
;     Music_PlayForChannel
;============================================================================

;
; XREFS:
;     MScript_Op_SetSQEnvelopeMode
;     Music_Load
;     Music_PlayForChannel
;
Music_SQEnvelope_Mode:
    .byte $00                               ; [0]:

;
; XREFS:
;     Music_Load
;
Music_SQEnvelope_Mode_1_:
    .byte $00                               ; [1]:

;
; XREFS:
;     Music_ApplySQPitchEffectToLO
;     Music_Load
;     Music_SetupTriangleWave
;
Music_SQEffect_Delta:
    .byte $00                               ; undefined1

;
; XREFS:
;     Music_ApplySQPitchEffectToLO
;     Music_Load
;     Music_PlaySQEnvelopeModeCurveButHeld
;     Music_PlaySQEnvelopeModePluck
;     Music_SetupWave
;
Music_SQEnvelope_Phase:
    .byte $00                               ; [0]:

;
; XREFS:
;     Music_Load
;     Music_SetupWave
;
Music_SQEnvelope_Phase_1_:
    .byte $00                               ; [1]:
    .byte $00                               ; undefined

;
; XREFS:
;     Music_ApplySQPitchEffectToLO
;     Music_Load
;     Music_SetupWave
;
Music_Current_SQ_Low:
    .byte $00                               ; [0]:

;
; XREFS:
;     Music_Load
;     Music_SetupWave
;
Music_Current_SQ_Low_1_:
    .byte $00                               ; [1]:

;
; XREFS:
;     Music_Load
;     Music_PlayForChannel
;     Music_SetupTriangleWave
;
Music_Triangle_Remaining:
    .byte $00                               ; byte

;
; XREFS:
;     MScript_Op_SetSQPitchEffectDepth
;     Music_ApplySQPitchEffectToLO
;     Music_Load
;
Music_SQPitchDelta_Mask:
    .byte $00                               ; [0]:

;
; XREFS:
;     Music_Load
;
Music_SQPitchDelta_Mask_1_:
    .byte $00                               ; [1]:

;
; XREFS:
;     MScript_Op_SetSQ2Detune
;     Music_Load
;     Music_SetupWave
;
Music_SQ2_TimerLowBias:
    .byte $00                               ; undefined


;============================================================================
; MOD NOTES: 8 unused bytes of RAM.
;============================================================================
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined


;============================================================================
; Data zero'd out during horizontal screen scroll.
;
; This is written to but never read or otherwise used.
;
; XREFS:
;     Screen_LoadBlocksHoriz
;============================================================================

;
; XREFS:
;     Screen_LoadBlocksHoriz
;
Screen_ScrollHoriz_ZeroData:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:

;
; XREFS:
;     Screen_LoadBlockDataVert
;
Screen_ScrollVert_ZeroData:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00           ; undefined

;
; XREFS:
;     IScripts_Begin
;     Game_Init
;     Screen_LoadBlocksHoriz
;     Screen_WriteBlockTilesColumnToPPU
;
Temp_0200:
    .byte $00                               ; byte

;
; XREFS:
;     IScriptAction_EndScript
;     IScripts_Begin
;     IScripts_UpdatePortraitAnimation
;     TextBox_SetCoordsForNPC
;     Screen_LoadBlocksHoriz
;     Screen_WriteBlockTilesColumnToPPU
;
Temp_0201:
    .byte $00                               ; byte

;
; XREFS:
;     IScriptAction_AddGold
;     IScriptAction_OpenShop
;     IScriptAction_ShowSellMenu
;     IScriptAction_SpendGold
;     IScripts_ProgressivelyAddGold
;     IScripts_ProgressivelySubtractGold
;     Screen_LoadBlocksHoriz
;
Temp_0202:
    .byte $00                               ; byte

;
; XREFS:
;     IScriptAction_AddGold
;     IScriptAction_OpenShop
;     IScriptAction_ShowSellMenu
;     IScriptAction_SpendGold
;     IScripts_ProgressivelyAddGold
;     IScripts_ProgressivelySubtractGold
;     Screen_LoadBlocksHoriz
;
Temp_0203:
    .byte $00                               ; byte

    .byte $00                               ; undefined

;
; XREFS:
;     IScriptAction_ShowSellMenu
;
Maybe_Shop_InventoryBitmask:
    .byte $00                               ; byte

;
; XREFS:
;     IScriptAction_AddHP
;     IScriptAction_AddMP
;
IScript_HPOrMPValueToAdd:
    .byte $00                               ; byte

;
; XREFS:
;     IScriptAction_ShowPassword
;
IScripts_Unused_207:
    .byte $00                               ; byte


;============================================================================
; X tile position of a displayed textbox.
;
; XREFS:
;     IScriptAction_AddInventoryItem
;     IScriptAction_AddInventoryItem_ClearTextBox
;     IScripts_PositionAndFillPlaceholderText
;     PlayerMenu_Close
;     PlayerMenu_DrawInventoryItems
;     PlayerMenu_DrawStringLines
;     PlayerMenu_Show
;     PlayerMenu_ShowStatusMenu
;     PlayerMenu_ShowSubmenu
;     Shop_Draw
;     TextBox_ClearForPortraitAndText
;     TextBox_Close
;     TextBox_DrawDownArrowTerminatorSymbol
;     TextBox_DrawQuestionMarkTerminatorSymbol
;     TextBox_DrawUpArrowTerminatorSymbol
;     TextBox_FillBackground
;     TextBox_GetXPixelCoord
;     TextBox_Open
;     TextBox_SetCoordsForNPC
;     TextBox_SetCoordsForPortrait
;     TextBox_ShowMessage_Fill4Lines
;============================================================================

;
; XREFS:
;     IScriptAction_AddInventoryItem
;     IScriptAction_AddInventoryItem_ClearTextBox
;     IScripts_PositionAndFillPlaceholderText
;     PlayerMenu_Close
;     PlayerMenu_DrawInventoryItems
;     PlayerMenu_DrawStringLines
;     PlayerMenu_Show
;     PlayerMenu_ShowStatusMenu
;     PlayerMenu_ShowSubmenu
;     Shop_Draw
;     TextBox_ClearForPortraitAndText
;     TextBox_Close
;     TextBox_DrawDownArrowTerminatorSymbol
;     TextBox_DrawQuestionMarkTerminatorSymbol
;     TextBox_DrawUpArrowTerminatorSymbol
;     TextBox_FillBackground
;     TextBox_GetXPixelCoord
;     TextBox_Open
;     TextBox_SetCoordsForNPC
;     TextBox_SetCoordsForPortrait
;     TextBox_ShowMessage_Fill4Lines
;
TextBox_X:
    .byte $00                               ; byte


;============================================================================
; Y tile position of a displayed textbox.
;
; XREFS:
;     IScriptAction_AddInventoryItem
;     IScriptAction_AddInventoryItem_ClearTextBox
;     IScripts_PositionAndFillPlaceholderText
;     PlayerMenu_Close
;     PlayerMenu_DrawInventoryItems
;     PlayerMenu_DrawStringLines
;     PlayerMenu_Show
;     PlayerMenu_ShowStatusMenu
;     PlayerMenu_ShowSubmenu
;     Shop_Draw
;     TextBox_ClearForPortraitAndText
;     TextBox_Close
;     TextBox_DrawDownArrowTerminatorSymbol
;     TextBox_DrawQuestionMarkTerminatorSymbol
;     TextBox_DrawUpArrowTerminatorSymbol
;     TextBox_FillBackground
;     TextBox_GetYPixelCoord
;     TextBox_Open
;     TextBox_SetCoordsForNPC
;     TextBox_SetCoordsForPortrait
;     TextBox_ShowMessage_Fill4Lines
;============================================================================

;
; XREFS:
;     IScriptAction_AddInventoryItem
;     IScriptAction_AddInventoryItem_ClearTextBox
;     IScripts_PositionAndFillPlaceholderText
;     PlayerMenu_Close
;     PlayerMenu_DrawInventoryItems
;     PlayerMenu_DrawStringLines
;     PlayerMenu_Show
;     PlayerMenu_ShowStatusMenu
;     PlayerMenu_ShowSubmenu
;     Shop_Draw
;     TextBox_ClearForPortraitAndText
;     TextBox_Close
;     TextBox_DrawDownArrowTerminatorSymbol
;     TextBox_DrawQuestionMarkTerminatorSymbol
;     TextBox_DrawUpArrowTerminatorSymbol
;     TextBox_FillBackground
;     TextBox_GetYPixelCoord
;     TextBox_Open
;     TextBox_SetCoordsForNPC
;     TextBox_SetCoordsForPortrait
;     TextBox_ShowMessage_Fill4Lines
;
TextBox_Y:
    .byte $00                               ; byte


;============================================================================
; Width of a displayed textbox.
;
; XREFS:
;     IScriptAction_AddInventoryItem_ClearTextBox
;     PlayerMenu_Close
;     PlayerMenu_Show
;     PlayerMenu_ShowStatusMenu
;     PlayerMenu_ShowSubmenu
;     Shop_Draw
;     TextBox_ClearForPortraitAndText
;     TextBox_Close
;     TextBox_FillBackground
;     TextBox_SetCoordsForNPC
;     TextBox_SetCoordsForPortrait
;     TextBox_QueuePPUBufferTextBoxLength
;============================================================================

;
; XREFS:
;     IScriptAction_AddInventoryItem_ClearTextBox
;     PlayerMenu_Close
;     PlayerMenu_Show
;     PlayerMenu_ShowStatusMenu
;     PlayerMenu_ShowSubmenu
;     Shop_Draw
;     TextBox_ClearForPortraitAndText
;     TextBox_Close
;     TextBox_FillBackground
;     TextBox_SetCoordsForNPC
;     TextBox_SetCoordsForPortrait
;     TextBox_QueuePPUBufferTextBoxLength
;
TextBox_Width:
    .byte $00                               ; byte


;============================================================================
; Height of a displayed textbox.
;
; XREFS:
;     IScriptAction_AddInventoryItem_ClearTextBox
;     PlayerMenu_Close
;     PlayerMenu_Show
;     PlayerMenu_ShowStatusMenu
;     PlayerMenu_ShowSubmenu
;     Shop_Draw
;     TextBox_ClearForPortraitAndText
;     TextBox_Close
;     TextBox_FillBackground
;     TextBox_Open
;     TextBox_SetCoordsForNPC
;     TextBox_SetCoordsForPortrait
;============================================================================

;
; XREFS:
;     IScriptAction_AddInventoryItem_ClearTextBox
;     PlayerMenu_Close
;     PlayerMenu_Show
;     PlayerMenu_ShowStatusMenu
;     PlayerMenu_ShowSubmenu
;     Shop_Draw
;     TextBox_ClearForPortraitAndText
;     TextBox_Close
;     TextBox_FillBackground
;     TextBox_Open
;     TextBox_SetCoordsForNPC
;     TextBox_SetCoordsForPortrait
;
TextBox_Height:
    .byte $00                               ; byte


;============================================================================
; Whether the textbox is closed.
;
; 0 = Open
; 1 = Closed
;
; Note that at game startup, this may be a garbage value.
;
; XREFS:
;     TextBox_Close
;     TextBox_GetBackgroundAttributeData
;     TextBox_Open
;============================================================================

;
; XREFS:
;     TextBox_Close
;     TextBox_GetBackgroundAttributeData
;     TextBox_Open
;
TextBox_Closed:
    .byte $00                               ; bool

    .byte $00                               ; Unused


;============================================================================
; Inventory corresponding to the Player Menu selection.
;
; XREFS:
;     PlayerMenu_DrawInventoryItems
;     PlayerMenu_EquipItem
;     PlayerMenu_HandleInventoryMenuInput
;     PlayerMenu_ShowSubmenu
;============================================================================

;
; XREFS:
;     PlayerMenu_DrawInventoryItems
;     PlayerMenu_EquipItem
;     PlayerMenu_HandleInventoryMenuInput
;     PlayerMenu_ShowSubmenu
;
PlayerMenu_SelectedInventory:
    .byte $00                               ; byte

    .byte $00                               ; Unused


;============================================================================
; Temporary state for the new inventory item.
;
; This is used when equipping an item in Player_Equip
; to store the new item for the purpose of equipping it.
;
; XREFS:
;     Player_Equip
;============================================================================

;
; XREFS:
;     Player_Equip
;
Temp_EquipingItem:
    .byte $00                               ; byte


;============================================================================
; Temporary state for the previous inventory item.
;
; This is used when equipping an item in Player_Equip
; to store the previous item for the purpose of unequipping it.
;
; XREFS:
;     Player_Equip
;============================================================================

;
; XREFS:
;     Player_Equip
;
Temp_PrevInventoryItem:
    .byte $00                               ; byte

;
; XREFS:
;     TextBox_LoadAndShowMessage
;     TextBox_ShowMessageWithSound
;     TextBox_ShowNextChar
;
TextBox_PlayTextSound:
    .byte $00                               ; bool


;============================================================================
; ID of the message to show in a textbox.
;
; This would be a 1-based index into MESSAGE_STRINGS.
;
; XREFS:
;     IScripts_UpdatePortraitAnimation
;     TextBox_CheckShouldContinue
;     TextBox_CheckShouldContinueOrDismissMessage
;     TextBox_CheckShouldContinueOrDismissQuestion
;     IScripts_LoadAndShowMessage
;     Messages_Load
;     TextBox_ShowMessage_Pause
;     TextBox_ShowNextChar_IfReady
;============================================================================

;
; XREFS:
;     IScripts_UpdatePortraitAnimation
;     TextBox_CheckShouldContinue
;     TextBox_CheckShouldContinueOrDismissMessage
;     TextBox_CheckShouldContinueOrDismissQuestion
;     IScripts_LoadAndShowMessage
;     Messages_Load
;     TextBox_ShowMessage_Pause
;     TextBox_ShowNextChar_IfReady
;
MessageID:
    .byte $00                               ; Message


;============================================================================
; The number of bytes processed in a message string.
;
; XREFS:
;     Messages_Load
;     TextBox_ShowMessage_HandleSpaceOrEndOfLine
;     TextBox_ShowMessage_LoadMessage
;     TextBox_ShowMessage_Pause
;============================================================================

;
; XREFS:
;     Messages_Load
;     TextBox_ShowMessage_HandleSpaceOrEndOfLine
;     TextBox_ShowMessage_LoadMessage
;     TextBox_ShowMessage_Pause
;
Message_ProcessedLength:
    .byte $00                               ; byte


;
; Flag indicating if a message display is paused.
;
; 0x00 = Message is not paused.
; 0xFF = Message is paused.
;
;
; XREFS:
;     IScripts_UpdatePortraitAnimation
;     TextBox_CheckForDismiss
;     TextBox_CheckShouldContinue
;     TextBox_CheckShouldContinueOrDismissQuestion
;     TextBox_PrepareContinueMessage
;     TextBox_ClearPasswordSize
;     TextBox_ShowMessage_Pause
;     TextBox_ShowNextChar_IfReady
;
TextBox_MessagePaused:
    .byte $00                               ; byte

;
; XREFS:
;     TextBox_ClearPasswordSize
;     TextBox_ShowMessage_HandleSpaceOrEndOfLine
;     TextBox_ShowMessage_IncLineAndReset
;     TextBox_ShowMessage_Newline
;     TextBox_ShowMessage_Prepare4Lines
;     TextBox_WriteChar
;
TextBox_CharPosForLine:
    .byte $00                               ; byte


;============================================================================
; Last drawn line number (0-based).
;
; XREFS:
;     TextBox_ClearPasswordSize
;     TextBox_ShowMessage_IncLineAndReset
;     TextBox_WriteChar
;============================================================================

;
; XREFS:
;     TextBox_ClearPasswordSize
;     TextBox_ShowMessage_IncLineAndReset
;     TextBox_WriteChar
;
TextBox_DrawnLineNum:
    .byte $00                               ; byte

;
; XREFS:
;     Messages_Load
;     TextBox_ShowMessage_HandleSpaceOrEndOfLine
;     TextBox_ShowMessage_LoadMessage
;     TextBox_ShowMessage_Pause
;
Message_StartAddr:
    .byte $00                               ; byte

;
; XREFS:
;     Messages_Load
;     TextBox_ShowMessage_HandleSpaceOrEndOfLine
;     TextBox_ShowMessage_LoadMessage
;     TextBox_ShowMessage_Pause
;
Message_StartAddr_U:
    .byte $00                               ; byte

;
; XREFS:
;     TextBox_ClearPasswordSize
;     TextBox_ShowMessage_Fill4Lines
;     TextBox_WriteChar
;
TextBox_LineScrollOffset:
    .byte $00                               ; byte

;
; XREFS:
;     TextBox_PrepareContinueMessage
;     TextBox_ClearPasswordSize
;
Unused_Arg_Text_NumLines:
    .byte $00                               ; byte


;
; Offset into the process of writing a player title in a
; textbox.
;
; This is a value from 0x81 to 0x90 that is incremented with
; every character of the player title written in a textbox. It's
; used for IScripts that list the player title using code 0xFB
; (namely, Guru title rank scripts).
;
; The values are indexes 1 through 16 (length of the player
; title strings), with the MSB set.
;
;
; XREFS:
;     TextBox_ClearPasswordSize
;     TextBox_DisplayMessage
;     TextBox_ShowMessage_ShowPlayerTitle
;
Textbox_TitleCharOffset:
    .byte $00                               ; byte


;============================================================================
; Count-up timer used to control the rate at which
; characters are shown in textboxes.
;
; This will increment up by 1 every tick of the message box.
; TextBox_ShowNextChar_IfReady will AND this with
; 3 and only process/display the next character if the
; result is 0.
;
; XREFS:
;     Messages_Load
;     TextBox_ShowNextChar
;     TextBox_ShowNextChar_IfReady
;============================================================================

;
; XREFS:
;     Messages_Load
;     TextBox_ShowNextChar
;     TextBox_ShowNextChar_IfReady
;
TextBox_Timer:
    .byte $00                               ; byte

;
; XREFS:
;     IScriptAction_OpenShop
;     IScriptAction_ShowBuySellMenu
;     IScriptAction_ShowSellMenu
;     Menu_UpdateAndDraw
;     PlayerMenu_EquipItem
;     PlayerMenu_HandleInventoryMenuInput
;     PlayerMenu_Show
;     PlayerMenu_ShowInventoryMenu
;     PlayerMenu_ShowSubmenu
;     Shop_Draw
;     Shop_GetPlayerHasSelectedItem
;     Shop_Populate
;
Menu_CursorPos:
    .byte $00                               ; byte

;
; XREFS:
;     IScriptAction_ShowBuySellMenu
;     IScriptAction_ShowSellMenu
;     Menu_UpdateAndDraw
;     PlayerMenu_DrawInventoryItems
;     PlayerMenu_DrawStringLines
;     PlayerMenu_Show
;     PlayerMenu_ShowInventoryMenu
;     PlayerMenu_ShowStatusMenu
;     Shop_Draw
;     Shop_Populate
;
Arg_StringsCount:
    .byte $00                               ; byte


;============================================================================
; Temporary data used for multiple purposes:
;
; 1. Shop items
; 2. Player menu items
; 3. Vertical screen scroll PPU tile data
;
; For #3, the data will overflow through $0240.
;
; XREFS:
;     IScriptAction_OpenShop
;     IScriptAction_ShowSellMenu
;     PlayerMenu_DrawInventoryItems
;     PlayerMenu_DrawStringLines
;     PlayerMenu_EquipItem
;     PlayerMenu_HandleInventoryMenuInput
;     PlayerMenu_Show
;     PlayerMenu_ShowInventoryMenu
;     PlayerMenu_ShowStatusMenu
;     Shop_Draw
;     Shop_GetPlayerHasSelectedItem
;     Shop_Populate
;     Screen_LoadBlockDataVert
;     Screen_WriteBlockTilesRowToPPU
;============================================================================

;
; XREFS:
;     IScriptAction_OpenShop
;     IScriptAction_ShowSellMenu
;     PlayerMenu_DrawInventoryItems
;     PlayerMenu_DrawStringLines
;     PlayerMenu_EquipItem
;     PlayerMenu_HandleInventoryMenuInput
;     PlayerMenu_Show
;     PlayerMenu_ShowInventoryMenu
;     PlayerMenu_ShowStatusMenu
;     Shop_Draw
;     Shop_GetPlayerHasSelectedItem
;     Shop_Populate
;     Screen_LoadBlockDataVert
;     Screen_WriteBlockTilesRowToPPU
;
DataArray:
    .byte $00                               ; [0]:

;
; XREFS:
;     PlayerMenu_Show
;     PlayerMenu_ShowInventoryMenu
;     PlayerMenu_ShowStatusMenu
;     Screen_LoadBlockDataVert
;     Screen_WriteBlockTilesRowToPPU
;
DataArray_1_:
    .byte $00                               ; [1]:

;
; XREFS:
;     PlayerMenu_Show
;     PlayerMenu_ShowStatusMenu
;     Screen_LoadBlockDataVert
;
DataArray_2_:
    .byte $00                               ; [2]:

;
; XREFS:
;     PlayerMenu_Show
;     PlayerMenu_ShowStatusMenu
;
DataArray_3_:
    .byte $00                               ; [3]:

;
; XREFS:
;     PlayerMenu_Show
;     PlayerMenu_ShowStatusMenu
;
DataArray_4_:
    .byte $00                               ; [4]:

;
; XREFS:
;     PlayerMenu_Show
;     PlayerMenu_ShowStatusMenu
;
DataArray_5_:
    .byte $00                               ; [5]:

;
; XREFS:
;     PlayerMenu_ShowStatusMenu
;
DataArray_6_:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:


;============================================================================
; Lower byte of costs of items currently shown in the shop.
;
; XREFS:
;     IScriptAction_OpenShop
;     IScriptAction_ShowSellMenu
;     Shop_Draw
;     Shop_Populate
;============================================================================

;
; XREFS:
;     IScriptAction_OpenShop
;     IScriptAction_ShowSellMenu
;     Shop_Draw
;     Shop_Populate
;
ShopItemCostsL:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:


;============================================================================
; Upper byte of costs of items currently shown in the shop.
;
; XREFS:
;     IScriptAction_OpenShop
;     IScriptAction_ShowSellMenu
;     Shop_Draw
;     Shop_Populate
;============================================================================

;
; XREFS:
;     IScriptAction_OpenShop
;     IScriptAction_ShowSellMenu
;     Shop_Draw
;     Shop_Populate
;
ShopItemCostsU:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:


;============================================================================
; ASCII digits to render in the Gold or Experience area.
;
; Each digit corresponds to a single digit, populating based
; on the gold or experience.
;
; XREFS:
;     UI_DrawDigitsZeroPadded
;     UI_PopulateDigitsNoLeadingZeroes
;============================================================================

;
; XREFS:
;     UI_DrawDigitsZeroPadded
;     UI_PopulateDigitsNoLeadingZeroes
;
UI_DigitsToRender:
    .byte $00,$00,$00,$00,$00,$00           ; char

;
; XREFS:
;     UI_PopulateDigits
;
CHAR_ARRAY_023e:
    .byte $00,$00,$00,$00                   ; char


;
; PPU Attribute Data for a textbox.
;
; XREFS:
;     DEADCODE_FUN_PRG12__9041
;     TextBox_FillBackground
;     TextBox_SetNextAttributeData
;
TextBox_AttributeData:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:

ScreenBlocks:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte

;
; XREFS:
;     Screen_LoadBlocksHoriz
;     Screen_WriteBlockAttrsColumnToPPU
;
Screen_ScrollHorizPPUAttrData:
    .byte $00                               ; [0]:

;
; XREFS:
;     Screen_LoadBlocksHoriz
;     Screen_WriteBlockAttrsColumnToPPU
;
Screen_ScrollHorizPPUAttrData_1_:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:

;
; XREFS:
;     Screen_LoadBlockDataVert
;     Screen_WriteBlockAttrsRowToPPU
;
Screen_ScrollVertPPUAttrData:
    .byte $00                               ; [0]:

;
; XREFS:
;     Screen_LoadBlockDataVert
;     Screen_WriteBlockAttrsRowToPPU
;
Screen_ScrollVertPPUAttrData_1_:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:
    .byte $00                               ; undefined

;
; XREFS:
;     PasswordScreen_Show
;     SplashAnimation_DrawScenery
;     PPUBuffer_DrawCommand_WritePalette
;
Screen_PaletteData_Tiles:
    .byte $00                               ; [0]:

;
; XREFS:
;     PPUBuffer_DrawCommand_WritePalette
;
Screen_PaletteData_Tiles_1_:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:
    .byte $00                               ; [8]:
    .byte $00                               ; [9]:
    .byte $00                               ; [10]:
    .byte $00                               ; [11]:
    .byte $00                               ; [12]:
    .byte $00                               ; [13]:
    .byte $00                               ; [14]:

;
; XREFS:
;     Screen_SetFadeOutPalette
;
Screen_PaletteData_Tiles_15_:
    .byte $00                               ; [15]:

;
; XREFS:
;     StartScreen_Draw
;
Screen_PaletteData_Sprites:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:
    .byte $00                               ; [8]:
    .byte $00                               ; [9]:
    .byte $00                               ; [10]:
    .byte $00                               ; [11]:
    .byte $00                               ; [12]:
    .byte $00                               ; [13]:

;
; XREFS:
;     SplashAnimation_Intro_SomethingA708
;     Screen_SetPaletteData
;
Screen_PaletteData_Sprites_14_:
    .byte $00                               ; [14]:

;
; XREFS:
;     SplashAnimation_Intro_SomethingA708
;     Screen_SetPaletteData
;
Screen_PaletteData_Sprites_15_:
    .byte $00                               ; [15]:


;============================================================================
; Magic-related variables.
;
; XREFS:
;     CastMagic_CheckDirection_CheckImpassable
;     CastMagic_CheckDirection_Right
;     CastMagic_Clear
;     CastMagic_HitHandler_Death
;     CastMagic_HitHandler_Deluge
;     CastMagic_HitHandler_Fire
;     CastMagic_HitHandler_Thunder
;     CastMagic_HitHandler_Tilte
;     CastMagic_RunSpellHandler
;     CastMagic_Unused_UpdateDelugeAfterFirstHit
;     CastMagic_Unused_UpdateHitWallEffect
;     CastMagic_UpdateDeathAfterFirstHit
;     CastMagic_UpdateDeluge
;     CastMagic_UpdateFire
;     CastMagic_UpdateFireAfterFirstHit
;     CastMagic_UpdateThunderAfterFirstHit
;     CastMagic_UpdateTilteAfterFirstHit
;     CastMagic_UpdateXPosition
;     Player_CastMagic
;     Player_ClearVisibleMagic
;     Sprite_CheckHitByCastMagic
;     Area_ScrollTo
;     CastMagic_RunUpdateSpellHandler
;     CastMagic_SetAppearance
;============================================================================

;
; The type of magic currently on screen.
;
; This may also contain results of a spell, including
; explosion effects.
;
;
; XREFS:
;     CastMagic_CheckDirection_CheckImpassable
;     CastMagic_CheckDirection_Right
;     CastMagic_Clear
;     CastMagic_HitHandler_Death
;     CastMagic_HitHandler_Deluge
;     CastMagic_HitHandler_Fire
;     CastMagic_HitHandler_Thunder
;     CastMagic_HitHandler_Tilte
;     CastMagic_RunSpellHandler
;     CastMagic_Unused_UpdateDelugeAfterFirstHit
;     CastMagic_Unused_UpdateHitWallEffect
;     CastMagic_UpdateDeathAfterFirstHit
;     CastMagic_UpdateDeluge
;     CastMagic_UpdateFire
;     CastMagic_UpdateFireAfterFirstHit
;     CastMagic_UpdateThunderAfterFirstHit
;     CastMagic_UpdateTilteAfterFirstHit
;     CastMagic_UpdateXPosition
;     Player_CastMagic
;     Player_ClearVisibleMagic
;     Sprite_CheckHitByCastMagic
;     Area_ScrollTo
;     CastMagic_RunUpdateSpellHandler
;     CastMagic_SetAppearance
;
CastMagic_Type:
    .byte $00                               ; SelectedMagic


;
; Flags dictating direction and movement for a cast magic spell.
;
;
; XREFS:
;     CastMagic_UpdateFire
;     CastMagic_UpdateTilte
;     CastMagic_UpdateXPosition
;     CastMagic_UpdateYPosition
;     Player_CastMagic
;     Sprite_CheckHitByCastMagic
;     CastMagic_CalculateVisibility
;     CastMagic_UpdateSpriteDirection
;
CastMagic_Flags:
    .byte $00                               ; CastMagicFlags


;
; The fractional (lower byte) X position of any visible magic.
;
;
; XREFS:
;     CastMagic_UpdateXPosition
;     Player_CastMagic
;
CastMagic_XPos_Frac:
    .byte $00                               ; byte


;
; The block (upper byte) X position of any visible magic.
;
;
; XREFS:
;     CastMagic_CheckDirection_Left
;     CastMagic_CheckDirection_Right
;     CastMagic_HitHandler_Deluge
;     CastMagic_UpdateFire
;     CastMagic_UpdateXPosition
;     Player_CastMagic
;     Sprite_CheckHitByCastMagic
;     CastMagic_CalculateVisibility
;     CastMagic_FinishHandler_TilteAfterFirstHit
;     CastMagic_RunUpdateSpellHandler
;
CastMagic_XPos_Full:
    .byte $00                               ; byte


;
; The fractional (lower byte) Y position of any visible magic.
;
;
; XREFS:
;     CastMagic_UpdateYPosition
;     Player_CastMagic
;
CastMagic_YPos_Frac:
    .byte $00                               ; byte


;
; The block (upper byte) Y position of any visible magic.
;
;
; XREFS:
;     CastMagic_CheckDirection_CheckImpassable
;     CastMagic_UpdateYPosition
;     Player_CastMagic
;     Sprite_CheckHitByCastMagic
;     CastMagic_CalculateVisibility
;     CastMagic_FinishHandler_HitWallEffect
;     CastMagic_FinishHandler_TilteAfterFirstHit
;     CastMagic_RunUpdateSpellHandler
;
CastMagic_YPos_Full:
    .byte $00                               ; byte

;
; XREFS:
;     CastMagic_HitHandler_Deluge
;     CastMagic_HitHandler_Fire
;     CastMagic_HitHandler_Thunder
;     CastMagic_HitHandler_Tilte
;     CastMagic_Unused_UpdateDelugeAfterFirstHit
;     CastMagic_UpdateFireAfterFirstHit
;     CastMagic_UpdateThunderAfterFirstHit
;     CastMagic_UpdateTilte
;     CastMagic_UpdateTilteAfterFirstHit
;     Player_CastMagic
;     CastMagic_FinishHandler_TilteAfterFirstHit
;
CastMagic_Counter:
    .byte $00                               ; byte


;
; The phase of the current spell.
;
; This is spell-dependent.
;
;
; XREFS:
;     CastMagic_UpdateTilte
;     Player_CastMagic
;     CastMagic_FinishHandler_Tilte
;
CastMagic_Phase:
    .byte $00                               ; byte


;
; Relative Y position used for the magic's Hit Wall effect.
;
; This is set but never actually used in Faxanadu. The game
; wired it off, but it was intended for the Deluge and Fire
; spells. It would be the center Y position of the explosion
; relative to the magic's Y position.
;
; It can be enabled via these Game Genie codes:
;
; ZAVLOUNN
; ZEUUSUNN
;
;
; XREFS:
;     CastMagic_UpdateDeluge
;     CastMagic_UpdateFire
;     CastMagic_FinishHandler_HitWallEffect
;
CastMagic_Unused_HitWallDeltaPosY:
    .byte $00                               ; byte

;
; XREFS:
;     Sprite_AddPosX
;     Sprite_SubtractPosX
;
CurrentSprites_XPos_Frac:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:

;
; XREFS:
;     Sprite_CalculateNewVertPos
;
CurrentSprites_YPos_Frac:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:


;============================================================================
; Sprite IDs of the 8 active sprites
;
; XREFS:
;     BScript_Action_CastMagic
;     CurrentSprite_CheckHitPlayer
;     CurrentSprite_HandleFall
;     CurrentSprite_UpdateState
;     FUN_PRG14__a1cc
;     Player_AddExperienceFromSprite
;     Player_ApplyDamage
;     Player_CheckShieldHitByMagic
;     Player_HandleHitByMagic
;     Player_HandleShieldHitByMagic
;     Player_HandleTouchBreadOrCoin
;     Player_HandleTouchEnemy
;     Player_HandleTouchEnemyMagic
;     Player_HandleTouchItem
;     Player_HitEnemyWithMagic
;     Player_HitSpriteWithWeapon
;     SpriteBehavior_BossDeath
;     SpriteBehavior_EnemyDeath
;     SpriteBehavior_EnemyMagic
;     SpriteBehavior_EnemyUnused18__9991
;     SpriteBehavior_ExecutionHood__a0ad
;     SpriteBehavior_Garbled3
;     SpriteBehavior_MaybeFallingRocks__ClearEntity
;     SpriteBehavior_Pakukame
;     SpriteBehavior_ShadowEura__a12d
;     SpriteBehavior_Unknown_29
;     SpriteBehavior_Zorugeriru__9e13
;     SpriteBehavior_a25f_ClearEntity
;     Sprite_CastMagic
;     Sprite_CheckHitByCastMagic
;     Sprite_EnterNextAppearancePhase
;     Sprite_GetBounds
;     Sprite_Maybe_ResetState
;     Sprite_ReplaceWithDroppedItem
;     Sprite_ReplaceWithMattock
;     Sprite_SetDeathEntity
;     Sprites_HasAnyEnemyOnScreen
;     Sprites_IsSpriteOutOfWeaponRange
;     Sprites_Remove
;     Sprites_UpdateBehavior
;============================================================================

;
; XREFS:
;     BScript_Action_CastMagic
;     CurrentSprite_CheckHitPlayer
;     CurrentSprite_HandleFall
;     CurrentSprite_UpdateState
;     FUN_PRG14__a1cc
;     Player_AddExperienceFromSprite
;     Player_ApplyDamage
;     Player_CheckShieldHitByMagic
;     Player_HandleHitByMagic
;     Player_HandleShieldHitByMagic
;     Player_HandleTouchBreadOrCoin
;     Player_HandleTouchEnemy
;     Player_HandleTouchEnemyMagic
;     Player_HandleTouchItem
;     Player_HitEnemyWithMagic
;     Player_HitSpriteWithWeapon
;     SpriteBehavior_BossDeath
;     SpriteBehavior_EnemyDeath
;     SpriteBehavior_EnemyMagic
;     SpriteBehavior_EnemyUnused18__9991
;     SpriteBehavior_ExecutionHood__a0ad
;     SpriteBehavior_Garbled3
;     SpriteBehavior_MaybeFallingRocks__ClearEntity
;     SpriteBehavior_Pakukame
;     SpriteBehavior_ShadowEura__a12d
;     SpriteBehavior_Unknown_29
;     SpriteBehavior_Zorugeriru__9e13
;     SpriteBehavior_a25f_ClearEntity
;     Sprite_CastMagic
;     Sprite_CheckHitByCastMagic
;     Sprite_EnterNextAppearancePhase
;     Sprite_GetBounds
;     Sprite_Maybe_ResetState
;     Sprite_ReplaceWithDroppedItem
;     Sprite_ReplaceWithMattock
;     Sprite_SetDeathEntity
;     Sprites_HasAnyEnemyOnScreen
;     Sprites_IsSpriteOutOfWeaponRange
;     Sprites_Remove
;     Sprites_UpdateBehavior
;
CurrentSprites_Entities:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:

;
; XREFS:
;     SpriteBehavior_Pakukame__9d78
;     SpriteBehavior_Zorugeriru__9df7
;     Sprites_ClearAllEntities
;     Sprites_HasAnyEnemyOnScreen
;     Sprites_HasMaxOnScreen
;     _Sprites_ReplaceWithMattock_HasMaxOnScreen
;     GameLoop_LoadSpriteImages
;     Maybe_IsSpriteEntityNotOnScreen
;     Screen_ClearSprites
;     Sprites_HasBoss
;     Sprites_HasCurrentSprites
;     Sprites_HasSpritesNotOfType
;     Sprites_PopulateNextAvailableSprite
;
CurrentSprites_Entities_6_:
    .byte $00                               ; [6]:

;
; XREFS:
;     SpriteBehavior_Pakukame__9d78
;     SpriteBehavior_Zorugeriru__9df7
;     Sprites_ClearAllEntities
;     Sprites_HasAnyEnemyOnScreen
;     Sprites_HasMaxOnScreen
;     _Sprites_ReplaceWithMattock_HasMaxOnScreen
;     GameLoop_LoadSpriteImages
;     Maybe_IsSpriteEntityNotOnScreen
;     Screen_ClearSprites
;     Sprites_HasBoss
;     Sprites_HasCurrentSprites
;     Sprites_HasSpritesNotOfType
;     Sprites_PopulateNextAvailableSprite
;
CurrentSprites_Entities_7_:
    .byte $00                               ; [7]:


;============================================================================
; Subtype of the currently-active sprites
;
; XREFS:
;     BScript_Op_GoTo
;     BScript_Op_MaybeDisableAndGoTo
;     BScript_Op_RunAction
;     BScript_Op_SetPhase
;     BScript_Op_SwitchBehavior
;     BScripts_LoadNextOp
;     SpriteOp_CheckDistanceToPlayer_X
;     SpriteOp_CheckDistanceToPlayer_Y
;     Sprite_FinishBehavior
;     Sprite_Maybe_ResetState
;     Sprite_ReplaceWithDroppedItem
;     Sprite_ReplaceWithMattock
;     Sprite_SetDeathEntity
;     Sprites_UpdateBehavior
;============================================================================

;
; XREFS:
;     BScript_Op_GoTo
;     BScript_Op_MaybeDisableAndGoTo
;     BScript_Op_RunAction
;     BScript_Op_SetPhase
;     BScript_Op_SwitchBehavior
;     BScripts_LoadNextOp
;     SpriteOp_CheckDistanceToPlayer_X
;     SpriteOp_CheckDistanceToPlayer_Y
;     Sprite_FinishBehavior
;     Sprite_Maybe_ResetState
;     Sprite_ReplaceWithDroppedItem
;     Sprite_ReplaceWithMattock
;     Sprite_SetDeathEntity
;     Sprites_UpdateBehavior
;
CurrentSprites_Behaviors:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:

;
; XREFS:
;     Screen_ClearSprites
;
CurrentSprites_Behaviors_6_:
    .byte $00                               ; [6]:

;
; XREFS:
;     Screen_ClearSprites
;     Sprites_PopulateNextAvailableSprite
;
CurrentSprites_Behaviors_7_:
    .byte $00                               ; [7]:

;
; XREFS:
;     BScript_Action_CastMagic
;     BScript_Action_FacePlayerX
;     BScript_Action_FacePlayerY
;     BScript_Action_FlipXDirection
;     BScript_Action_FlipYDirection
;     BScript_Action_RandomlyFlipXDirection
;     BScript_Action_RandomlyFlipYDirection
;     BScript_Action_RiseUp
;     CurrentSpriteFlags_SetBit5
;     CurrentSprite_CalculateVisibility
;     CurrentSprite_HandleFall
;     CurrentSprite_UpdateFlipMask
;     FUN_PRG14__844b
;     FUN_PRG14__a1cc
;     MoveSpriteHorizIfPossible
;     MoveSpriteVerticalIfPossible
;     Player_HitSpriteWithWeapon
;     Player_SetDamagedBySprite
;     SpriteBehavior_BounceAndExpire
;     SpriteBehavior_EnemyUnused43
;     SpriteBehavior_ExecutionHood__a0ad
;     SpriteBehavior_Garbled3
;     SpriteBehavior_GiantBees
;     SpriteBehavior_Hop
;     SpriteBehavior_Ishiisu
;     SpriteBehavior_KingGrieve
;     SpriteBehavior_KingGrieve_9f65
;     SpriteBehavior_KingGrieve_MoveDown
;     SpriteBehavior_Lilith
;     SpriteBehavior_MoveTowardPlayer
;     SpriteBehavior_Naga
;     SpriteBehavior_NecronAides
;     SpriteBehavior_Pakukame
;     SpriteBehavior_Ripasheiku
;     SpriteBehavior_Ripasheiku_CastMagicOrUpdatePos
;     SpriteBehavior_ShadowEura__a077
;     SpriteBehavior_ShadowEura__a12d
;     SpriteBehavior_SomethingZoradohna_18
;     SpriteBehavior_Something_850d
;     SpriteBehavior_Unknown_29
;     SpriteBehavior_Zorugeriru__9e13
;     SpriteBehavior__a8d7
;     SpriteBehavior__a91e
;     Sprite_CalculateNewVertPos
;     Sprite_CapToBlockOppositeFalling
;     Sprite_CastMagic
;     Sprite_CheckHitByCastMagic
;     Sprite_ClearFlags
;     Sprite_IsBehaviorNotReady
;     Sprite_Maybe_AddFacingPosX
;     Sprite_Maybe_ResetState
;     Sprite_Maybe_TurnAroundIfAtScreenEdgeHoriz
;     Sprite_Maybe_TurnAroundIfAtScreenEdgeVert
;     Sprite_MoveForwardX
;     Sprite_MoveHorizAndTurnAroundIfNeeded
;     Sprite_MoveVertAndFlipIfNeeded
;     Sprite_SetBehaviorNotReady
;     Sprite_SetBehaviorReady
;     Sprite_SetVisible
;     Sprites_CheckPlacementInvalidAtY
;     Sprites_HideSprite
;     Sprites_IsSpriteHidden
;     Sprites_SetCurrentSpriteCanMove
;
CurrentSprites_Flags:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:

;
; XREFS:
;     Sprites_PopulateNextAvailableSprite
;
CurrentSprites_Flags_7_:
    .byte $00                               ; [7]:

;
; XREFS:
;     BScript_Op_GoTo
;     BScript_Op_SetPhase
;     BScript_Op_SwitchBehavior
;     FUN_PRG14__9693
;     FUN_PRG14__9699
;     FUN_PRG14__9917
;     FUN_PRG14__9a3c
;     FUN_PRG14__9a61
;     FUN_PRG14__9ac6
;     Player_HandleTouchEnemy
;     Player_HitEnemyWithMagic
;     Player_HitSpriteWithWeapon
;     SpriteBehavior_BattleHelmetDroppedByZoradohna
;     SpriteBehavior_BattleSuitDroppedByZoradohna
;     SpriteBehavior_BlackOnyxDropFromZoradohna
;     SpriteBehavior_Borabohra
;     SpriteBehavior_BossDeath
;     SpriteBehavior_BounceAndExpire
;     SpriteBehavior_BuzzAround
;     SpriteBehavior_DragonSlayerDroppedByKingGrieve
;     SpriteBehavior_EnemyUnused18
;     SpriteBehavior_EnemyUnused18__994a
;     SpriteBehavior_EnemyUnused36
;     SpriteBehavior_EnemyUnused39
;     SpriteBehavior_EnemyUnused43
;     SpriteBehavior_ExecutionHood
;     SpriteBehavior_Garbled3
;     SpriteBehavior_GiantBees
;     SpriteBehavior_Ishiisu
;     SpriteBehavior_KingGrieve
;     SpriteBehavior_KingGrieve_9f86
;     SpriteBehavior_KingGrieve_MoveDown
;     SpriteBehavior_Lilith
;     SpriteBehavior_Magman
;     SpriteBehavior_MattockDroppedFromRipasheiku
;     SpriteBehavior_Naga
;     SpriteBehavior_Nash
;     SpriteBehavior_NecronAides
;     SpriteBehavior_Pakukame
;     SpriteBehavior_PendantDroppedFromRipasheiku
;     SpriteBehavior_Ripasheiku
;     SpriteBehavior_Ripasheiku_CastMagicOrUpdatePos
;     SpriteBehavior_ShadowEura
;     SpriteBehavior_SirGawaineWolfman
;     SpriteBehavior_SpringOfFortress
;     SpriteBehavior_SpringOfJoker
;     SpriteBehavior_SpringOfSky
;     SpriteBehavior_Springs_UpdateFlowing
;     SpriteBehavior_Tamazutsu
;     SpriteBehavior_WingBootsDroppedByZorugeriru
;     SpriteBehavior_Yareeka
;     SpriteBehavior_Zorugeriru
;     SpriteBehavior_Zorugeriru__9e13
;     SpriteUpdateHandler_Boss_Borabohra
;     SpriteUpdateHandler_Boss_KingGrieve
;     SpriteUpdateHandler_Boss_Pakukame
;     SpriteUpdateHandler_Boss_Ripasheiku
;     SpriteUpdateHandler_Boss_Zorugeriru
;     SpriteUpdateHandler_Effect_BossDeath
;     SpriteUpdateHandler_Effect_Spring
;     SpriteUpdateHandler_Enemy_Charron
;     SpriteUpdateHandler_Enemy_ExecutionHood
;     SpriteUpdateHandler_Enemy_FireGiant
;     SpriteUpdateHandler_Enemy_Geributa
;     SpriteUpdateHandler_Enemy_GiantStrider
;     SpriteUpdateHandler_Enemy_Grimlock
;     SpriteUpdateHandler_Enemy_Ishiisu
;     SpriteUpdateHandler_Enemy_Magman
;     SpriteUpdateHandler_Enemy_Maskman
;     SpriteUpdateHandler_Enemy_Myconid
;     SpriteUpdateHandler_Enemy_Nash
;     SpriteUpdateHandler_Enemy_NecronAides
;     SpriteUpdateHandler_Enemy_Raiden
;     SpriteUpdateHandler_Enemy_SirGawaine_Wolfman
;     SpriteUpdateHandler_Enemy_Snowman
;     SpriteUpdateHandler_Enemy_Tamazutsu
;     SpriteUpdateHandler_Enemy_Unused29
;     SpriteUpdateHandler_Enemy_Unused_CurlyTail
;     SpriteUpdateHandler_Garbled03
;     SpriteUpdateHandler_NPC_King
;     SpriteUpdateHandler_NPC_Walking
;     Sprite_GetBounds
;     Sprite_GetPreviousSpritePhase
;     Sprite_Maybe_ResetState
;     Sprite_SetPhase2
;     Sprites_MaybeResetPhaseAndEnable
;
CurrentSprites_Phases:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:

;
; XREFS:
;     Sprites_PopulateNextAvailableSprite
;
CurrentSprites_Phases_7_:
    .byte $00                               ; [7]:

;
; XREFS:
;     FUN_PRG14__9593
;     FUN_PRG14__9699
;     FUN_PRG14__9917
;     FUN_PRG14__9a61
;     FUN_PRG14__9a87
;     FUN_PRG14__9aa1
;     FUN_PRG14__9ac6
;     LAB_PRG14__9735 [$PRG14::9735]
;     Maybe_SpriteBody__99f3
;     SpriteBehavior_Bihoruda
;     SpriteBehavior_Borabohra
;     SpriteBehavior_BossDeath
;     SpriteBehavior_BuzzAround
;     SpriteBehavior_EnemyDeath
;     SpriteBehavior_EnemyUnused18__994a
;     SpriteBehavior_EnemyUnused18__9991
;     SpriteBehavior_EnemyUnused36
;     SpriteBehavior_EnemyUnused39
;     SpriteBehavior_ExecutionHood
;     SpriteBehavior_FlashScreenHitPlayer
;     SpriteBehavior_Garbled3
;     SpriteBehavior_GiantBees
;     SpriteBehavior_Ishiisu
;     SpriteBehavior_KingGrieve
;     SpriteBehavior_KingGrieve_9f86
;     SpriteBehavior_KingGrieve_MoveDown
;     SpriteBehavior_Lilith
;     SpriteBehavior_Magman
;     SpriteBehavior_MoveTowardPlayer
;     SpriteBehavior_Nash
;     SpriteBehavior_NecronAides
;     SpriteBehavior_Pakukame
;     SpriteBehavior_Ripasheiku
;     SpriteBehavior_Ripasheiku_CastMagicOrUpdatePos
;     SpriteBehavior_ShadowEura
;     SpriteBehavior_Springs_UpdateFlowing
;     SpriteBehavior_Tamazutsu
;     SpriteBehavior_WalkForward
;     SpriteBehavior_Yareeka
;     SpriteBehavior_Yuinaru
;     SpriteBehavior_Zorugeriru
;     SpriteBehavior__8f9a [$PRG14::8f9a]
;     SpriteBehavior__a8d7
;     SpriteBehavior__a91e
;     SpriteUpdateHandler_Boss_Borabohra
;     SpriteUpdateHandler_Effect_EnemyDeath
;     SpriteUpdateHandler_Effect_LightningBall20
;     SpriteUpdateHandler_Effect_Spring
;     SpriteUpdateHandler_Enemy_Bihoruda
;     SpriteUpdateHandler_Enemy_Ishiisu
;     SpriteUpdateHandler_Enemy_Nash
;     SpriteUpdateHandler_Enemy_Tamazutsu
;     SpriteUpdateHandler_Enemy_Yuinaru
;     SpriteUpdateHandler_Garbled03
;     Sprite_SetDeathEntity
;
CurrentSprites_BehaviorData2:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:


;============================================================================
; Tick counter used for some behaviors.
;
; XREFS:
;     FUN_PRG14__9917
;     FUN_PRG14__9aa1
;     FUN_PRG14__9ac6
;     LAB_PRG14__8fb7 [$PRG14::8fb7]
;     SpriteBehavior_Bihoruda
;     SpriteBehavior_BounceAndExpire
;     SpriteBehavior_EnemyUnused18
;     SpriteBehavior_EnemyUnused36
;     SpriteBehavior_EnemyUnused43
;     SpriteBehavior_ExecutionHood
;     SpriteBehavior_Garbled3
;     SpriteBehavior_GiantBees
;     SpriteBehavior_Hop
;     SpriteBehavior_KingGrieve
;     SpriteBehavior_KingGrieve_9f86
;     SpriteBehavior_Lilith
;     SpriteBehavior_MoveTowardPlayer
;     SpriteBehavior_Naga
;     SpriteBehavior_NecronAides
;     SpriteBehavior_Ripasheiku
;     SpriteBehavior_Ripasheiku_CastMagicOrUpdatePos
;     SpriteBehavior_ShadowEura
;     SpriteBehavior_SomethingZoradohna_18
;     SpriteBehavior_Springs_UpdateFlowing
;     SpriteBehavior_WalkForward
;     SpriteBehavior_Yuinaru
;     SpriteBehavior__a8d7
;     SpriteBehavior__a91e
;     SpriteUpdateHandler_Enemy_Unused_SnakeRoundPart
;============================================================================

;
; XREFS:
;     FUN_PRG14__9917
;     FUN_PRG14__9aa1
;     FUN_PRG14__9ac6
;     LAB_PRG14__8fb7 [$PRG14::8fb7]
;     SpriteBehavior_Bihoruda
;     SpriteBehavior_BounceAndExpire
;     SpriteBehavior_EnemyUnused18
;     SpriteBehavior_EnemyUnused36
;     SpriteBehavior_EnemyUnused43
;     SpriteBehavior_ExecutionHood
;     SpriteBehavior_Garbled3
;     SpriteBehavior_GiantBees
;     SpriteBehavior_Hop
;     SpriteBehavior_KingGrieve
;     SpriteBehavior_KingGrieve_9f86
;     SpriteBehavior_Lilith
;     SpriteBehavior_MoveTowardPlayer
;     SpriteBehavior_Naga
;     SpriteBehavior_NecronAides
;     SpriteBehavior_Ripasheiku
;     SpriteBehavior_Ripasheiku_CastMagicOrUpdatePos
;     SpriteBehavior_ShadowEura
;     SpriteBehavior_SomethingZoradohna_18
;     SpriteBehavior_Springs_UpdateFlowing
;     SpriteBehavior_WalkForward
;     SpriteBehavior_Yuinaru
;     SpriteBehavior__a8d7
;     SpriteBehavior__a91e
;     SpriteUpdateHandler_Enemy_Unused_SnakeRoundPart
;
CurrentSprites_BehaviorData3:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:


;============================================================================
; XXX Some lookup map.
;
; XREFS:
;     FUN_PRG14__9aa1
;     Maybe_SpriteBody__99f3
;     SpriteBehavior_BounceAndExpire
;     SpriteBehavior_EnemyUnused18__994a
;     SpriteBehavior_EnemyUnused18__9991
;     SpriteBehavior_Hop
;     SpriteBehavior_Lilith
;     SpriteBehavior_Ripasheiku
;     SpriteBehavior_ShadowEura
;     SpriteBehavior_SomethingZoradohna_18
;     SpriteBehavior_Unknown_29
;     SpriteUpdateHandler_Boss_ShadowEura
;     SpriteUpdateHandler_Coin
;     SpriteUpdateHandler_Magic_83
;     Sprite_RunDeathDropHandler
;     Sprite_SetDeathEntity
;============================================================================

;
; XREFS:
;     FUN_PRG14__9aa1
;     Maybe_SpriteBody__99f3
;     SpriteBehavior_BounceAndExpire
;     SpriteBehavior_EnemyUnused18__994a
;     SpriteBehavior_EnemyUnused18__9991
;     SpriteBehavior_Hop
;     SpriteBehavior_Lilith
;     SpriteBehavior_Ripasheiku
;     SpriteBehavior_ShadowEura
;     SpriteBehavior_SomethingZoradohna_18
;     SpriteBehavior_Unknown_29
;     SpriteUpdateHandler_Boss_ShadowEura
;     SpriteUpdateHandler_Coin
;     SpriteUpdateHandler_Magic_83
;     Sprite_RunDeathDropHandler
;     Sprite_SetDeathEntity
;
CurrentSprites_InternalBehaviorStates:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:

;
; XREFS:
;     Game_Init
;
CurrentSprites_InternalBehaviorStates_4_:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:

;
; XREFS:
;     CurrentSprite_CanMoveInDirection
;     DEADCODE_Sprites_CanMoveDownBelowHitbox
;     FUN_PRG14__9917
;     SpriteBehavior_Borabohra
;     SpriteBehavior_Garbled3
;     SpriteBehavior_KingGrieve
;     SpriteBehavior_Pakukame
;     SpriteBehavior_Ripasheiku
;     SpriteBehavior_ShadowEura
;     SpriteBehavior_Zorugeriru
;     Sprite_CalcDistanceXToPlayer
;     Sprite_CheckHitByCastMagic
;     Sprite_Maybe_ResetState
;     Sprite_ReplaceWithDroppedItem
;     Sprite_ReplaceWithMattock
;     Sprites_CanMoveDownByHitbox
;     Sprites_MoveRight
;     Sprites_MoveRight__86c6
;
CurrentSprites_HitBoxTypes:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:

;
; XREFS:
;     Screen_LoadBlockDataVert
;
CurrentSprites_HitBoxTypes_2_:
    .byte $00                               ; [2]:

;
; XREFS:
;     Screen_LoadBlockDataVert
;
CurrentSprites_HitBoxTypes_3_:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:

;
; XREFS:
;     Sprites_PopulateNextAvailableSprite
;
CurrentSprites_HitBoxTypes_7_:
    .byte $00                               ; [7]:


;============================================================================
; XXX Some lookup map.
;
; XREFS:
;     FUN_PRG14__8398
;     FUN_PRG14__83a8
;     SpriteBehavior_Hop
;     SpriteBehavior_SomethingEyeball_17
;     SpriteBehavior_SomethingZoradohna_18
;     SpriteBehavior_Unknown_29
;     SpriteBehavior_Unknown_29_SomeSetup
;============================================================================

;
; XREFS:
;     FUN_PRG14__8398
;     FUN_PRG14__83a8
;     SpriteBehavior_Hop
;     SpriteBehavior_SomethingEyeball_17
;     SpriteBehavior_SomethingZoradohna_18
;     SpriteBehavior_Unknown_29
;     SpriteBehavior_Unknown_29_SomeSetup
;
CurrentSprites_BehaviorState_XFull:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:


;============================================================================
; XXX Some lookup map.
;
; XREFS:
;     FUN_PRG14__8398
;     FUN_PRG14__83a8
;     SpriteBehavior_MoveVertically
;     SpriteBehavior_SomethingEyeball_17
;     SpriteBehavior_Unknown_29
;     SpriteBehavior_Unknown_29_SomeSetup
;============================================================================

;
; XREFS:
;     FUN_PRG14__8398
;     FUN_PRG14__83a8
;     SpriteBehavior_MoveVertically
;     SpriteBehavior_SomethingEyeball_17
;     SpriteBehavior_Unknown_29
;     SpriteBehavior_Unknown_29_SomeSetup
;
CurrentSprites_BehaviorState_YFull:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:


;============================================================================
; XXX Some sprites lookup map.
;
; XREFS:
;     FUN_PRG14__8398
;     FUN_PRG14__83a8
;     SpriteBehavior_Hop
;     SpriteBehavior_SomethingEyeball_17
;     SpriteBehavior_SomethingZoradohna_18
;     SpriteBehavior_Unknown_29
;     SpriteBehavior_Unknown_29_SomeSetup
;============================================================================

;
; XREFS:
;     FUN_PRG14__8398
;     FUN_PRG14__83a8
;     SpriteBehavior_Hop
;     SpriteBehavior_SomethingEyeball_17
;     SpriteBehavior_SomethingZoradohna_18
;     SpriteBehavior_Unknown_29
;     SpriteBehavior_Unknown_29_SomeSetup
;
CurrentSprites_BehaviorState_XFrac:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:


;============================================================================
; XXX Some lookup map.
;
; XREFS:
;     FUN_PRG14__8398
;     FUN_PRG14__83a8
;     SpriteBehavior_MoveVertically
;     SpriteBehavior_SomethingEyeball_17
;     SpriteBehavior_Unknown_29
;     SpriteBehavior_Unknown_29_SomeSetup
;============================================================================

;
; XREFS:
;     FUN_PRG14__8398
;     FUN_PRG14__83a8
;     SpriteBehavior_MoveVertically
;     SpriteBehavior_SomethingEyeball_17
;     SpriteBehavior_Unknown_29
;     SpriteBehavior_Unknown_29_SomeSetup
;
CurrentSprites_BehaviorState_YFrac:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:


;============================================================================
; Loaded PPU offsets where the first tile of the sprite is stored.
;
; XREFS:
;     BScript_Action_CastMagic
;     CurrentSprite_UpdateState
;     FUN_PRG14__a1cc
;     SpriteBehavior_BounceAndExpire
;     SpriteBehavior_ExecutionHood__a0ad
;     SpriteBehavior_Pakukame
;     SpriteBehavior_ShadowEura__a12d
;     SpriteBehavior_Zorugeriru__9e13
;     SpriteUpdateHandler_Enemy_Unused_SnakeRoundPart
;     Sprite_CastMagic
;     Sprite_ReplaceWithMattock
;============================================================================

;
; XREFS:
;     BScript_Action_CastMagic
;     CurrentSprite_UpdateState
;     FUN_PRG14__a1cc
;     SpriteBehavior_BounceAndExpire
;     SpriteBehavior_ExecutionHood__a0ad
;     SpriteBehavior_Pakukame
;     SpriteBehavior_ShadowEura__a12d
;     SpriteBehavior_Zorugeriru__9e13
;     SpriteUpdateHandler_Enemy_Unused_SnakeRoundPart
;     Sprite_CastMagic
;     Sprite_ReplaceWithMattock
;
CurrentSprites_PPUOffsets:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:

;
; XREFS:
;     GameLoop_LoadSpriteImages
;
CurrentSprites_PPUOffsets_7_:
    .byte $00                               ; [7]:


;============================================================================
; Magic type the sprite was hit by
;
; $FF = Not hit by magic
;
; XREFS:
;     SpriteBehavior_Zorugeriru__9e13
;     Sprite_CheckHitByCastMagic
;     Sprite_Maybe_ResetState
;     Sprite_RunDeathDropHandler
;     Sprite_SetDeathEntity
;     Sprites_Maybe_UpdateHitByMagic
;============================================================================

;
; XREFS:
;     SpriteBehavior_Zorugeriru__9e13
;     Sprite_CheckHitByCastMagic
;     Sprite_Maybe_ResetState
;     Sprite_RunDeathDropHandler
;     Sprite_SetDeathEntity
;     Sprites_Maybe_UpdateHitByMagic
;
CurrentSprites_HitByMagicBehavior:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:

;
; XREFS:
;     Sprites_PopulateNextAvailableSprite
;
CurrentSprites_HitByMagicBehavior_7_:
    .byte $00                               ; [7]:

;
; XREFS:
;     Sprite_CheckHitByCastMagic
;     Sprites_Maybe_UpdateHitByMagic
;
CurrentSprites_HitByMagicIFrames:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:

;
; XREFS:
;     Player_HitEnemyWithMagic
;     Player_HitSpriteWithWeapon
;     SpriteBehavior_Pakukame
;
CurrentSprites_HP:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:

;
; XREFS:
;     Screen_ClearSprites
;
CurrentSprites_HP_6_:
    .byte $00                               ; [6]:

;
; XREFS:
;     Screen_ClearSprites
;     Sprites_PopulateNextAvailableSprite
;
CurrentSprites_HP_7_:
    .byte $00                               ; [7]:


;============================================================================
; Counter used after sprite was hit
;
; XREFS:
;     CurrentSprite_UpdateState
;     Player_HitSpriteWithWeapon
;     Sprite_RunDeathDropHandler
;     _handleHit [$PRG14::804e]
;============================================================================

;
; XREFS:
;     CurrentSprite_UpdateState
;     Player_HitSpriteWithWeapon
;     Sprite_RunDeathDropHandler
;     _handleHit [$PRG14::804e]
;
CurrentSprites_HitCounter:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:

;
; XREFS:
;     Screen_ClearSprites
;
CurrentSprites_HitCounter_6_:
    .byte $00                               ; [6]:

;
; XREFS:
;     _handleHit [$PRG14::804e]
;     Screen_ClearSprites
;
CurrentSprites_HitCounter_7_:
    .byte $00                               ; [7]:

;
; XREFS:
;     Sprite_Maybe_ResetState
;     Sprite_ReplaceWithDroppedItem
;     Sprite_ReplaceWithMattock
;     Sprite_SetDeathEntity
;     Sprites_UpdateBehavior
;
CurrentSprites_BehaviorAddrs_L:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:

;
; XREFS:
;     Sprites_PopulateNextAvailableSprite
;
CurrentSprites_BehaviorAddrs_L_7_:
    .byte $00                               ; [7]:

;
; XREFS:
;     Sprite_Maybe_ResetState
;     Sprite_ReplaceWithDroppedItem
;     Sprite_ReplaceWithMattock
;     Sprite_SetDeathEntity
;     Sprites_UpdateBehavior
;
CurrentSprites_BehaviorAddrs_U:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:

;
; XREFS:
;     Sprites_PopulateNextAvailableSprite
;
CurrentSprites_BehaviorAddrs_U_7_:
    .byte $00                               ; [7]:

;
; XREFS:
;     BScript_Op_SwitchBehavior
;     SpriteBehavior_Hop
;     Sprites_CountdownBehavior
;
CurrentSprites_BehaviorArg1:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:


;============================================================================
; Message IDs of the NPC messages
;
; XREFS:
;     Player_CheckHandlePressUpOnNPC
;     Player_HandleTouchBread
;     Player_HandleTouchCoin
;     Player_HandleTouchNPC
;     Sprite_RunDeathDropHandler
;     Sprites_LoadSpriteValue
;============================================================================

;
; XREFS:
;     Player_CheckHandlePressUpOnNPC
;     Player_HandleTouchBread
;     Player_HandleTouchCoin
;     Player_HandleTouchNPC
;     Sprite_RunDeathDropHandler
;     Sprites_LoadSpriteValue
;
CurrentSprites_Values:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:

;
; XREFS:
;     Sprites_LoadSpriteValue
;
CurrentSprites_Values_7_:
    .byte $00                               ; [7]:

;
; XREFS:
;     CastMagic_UpdateDeluge
;     CastMagic_UpdateFire
;     CastMagic_UpdateThunderOrDeath
;     CastMagic_UpdateTilte
;     CastMagic_UpdateXPosition
;     FUN_PRG14__83a8
;     FUN_PRG14__848a
;     SpriteBehavior_BuzzAround
;     SpriteBehavior_EnemyMagic
;     SpriteBehavior_EnemyUnused36
;     SpriteBehavior_EnemyUnused43
;     SpriteBehavior_ExecutionHood
;     SpriteBehavior_GiantBees
;     SpriteBehavior_Hop
;     SpriteBehavior_Ishiisu
;     SpriteBehavior_KingGrieve
;     SpriteBehavior_Lilith
;     SpriteBehavior_NecronAides
;     SpriteBehavior_ShadowEura
;     SpriteBehavior_SirGawaineWolfman
;     SpriteBehavior_SomethingEyeball_17
;     SpriteBehavior_SomethingZoradohna_18
;     SpriteBehavior_Unknown_29
;     SpriteBehavior_WalkForward
;     SpriteBehavior_Yareeka
;     SpriteBehavior__a91e
;     Sprite_AddPosX
;     Sprite_MoveHorizOneBlockOrTurnAround
;     Sprite_SubtractPosX
;     Sprites_CalcHorizSpriteMovement
;     Sprites_Maybe_UpdateHitByMagic
;
Arg_DeltaX_Frac:
    .byte $00                               ; byte

;
; XREFS:
;     CastMagic_UpdateDeluge
;     CastMagic_UpdateFire
;     CastMagic_UpdateThunderOrDeath
;     CastMagic_UpdateTilte
;     CastMagic_UpdateXPosition
;     FUN_PRG14__83a8
;     FUN_PRG14__848a
;     FUN_PRG14__9593
;     SpriteBehavior_Bihoruda
;     SpriteBehavior_BuzzAround
;     SpriteBehavior_EnemyMagic
;     SpriteBehavior_EnemyUnused36
;     SpriteBehavior_EnemyUnused43
;     SpriteBehavior_ExecutionHood
;     SpriteBehavior_GiantBees
;     SpriteBehavior_Hop
;     SpriteBehavior_Ishiisu
;     SpriteBehavior_KingGrieve
;     SpriteBehavior_Lilith
;     SpriteBehavior_NecronAides
;     SpriteBehavior_ShadowEura
;     SpriteBehavior_SirGawaineWolfman
;     SpriteBehavior_SomethingEyeball_17
;     SpriteBehavior_SomethingZoradohna_18
;     SpriteBehavior_Unknown_29
;     SpriteBehavior_WalkForward
;     SpriteBehavior_Yareeka
;     SpriteBehavior_Yuinaru
;     SpriteBehavior__a91e
;     Sprite_AddPosX
;     Sprite_MoveHorizOneBlockOrTurnAround
;     Sprite_SubtractPosX
;     Sprites_CalcHorizSpriteMovement
;     Sprites_Maybe_UpdateHitByMagic
;
Arg_DeltaX_Full:
    .byte $00                               ; byte

;
; XREFS:
;     CastMagic_UpdateTilte
;     CastMagic_UpdateYPosition
;     FUN_PRG14__83a8
;     SpriteBehavior_BounceAndExpire
;     SpriteBehavior_BuzzAround
;     SpriteBehavior_EnemyUnused43
;     SpriteBehavior_GiantBees
;     SpriteBehavior_KingGrieve_MoveDown
;     SpriteBehavior_MoveVertically
;     SpriteBehavior_Naga
;     SpriteBehavior_NecronAides
;     SpriteBehavior_Ripasheiku
;     SpriteBehavior_SomethingEyeball_17
;     SpriteBehavior_Unknown_29
;     Sprite_CalculateNewVertPos
;     Sprites_CalcVerticalSpriteMovement
;
Arg_DeltaY_Frac:
    .byte $00                               ; byte

;
; XREFS:
;     CastMagic_UpdateTilte
;     CastMagic_UpdateYPosition
;     FUN_PRG14__83a8
;     SpriteBehavior_Bihoruda
;     SpriteBehavior_BounceAndExpire
;     SpriteBehavior_BuzzAround
;     SpriteBehavior_EnemyUnused36
;     SpriteBehavior_EnemyUnused43
;     SpriteBehavior_ExecutionHood
;     SpriteBehavior_GiantBees
;     SpriteBehavior_KingGrieve_MoveDown
;     SpriteBehavior_MoveVertically
;     SpriteBehavior_Naga
;     SpriteBehavior_NecronAides
;     SpriteBehavior_Ripasheiku
;     SpriteBehavior_SomethingEyeball_17
;     SpriteBehavior_Unknown_29
;     SpriteBehavior_Yuinaru
;     Sprite_CalculateNewVertPos
;     Sprites_CalcVerticalSpriteMovement
;
Arg_DeltaY_Full:
    .byte $00                               ; byte


;============================================================================
; Currently-active sprite
;
; XREFS:
;     BScript_Action_RandomlyFlipXDirection
;     BScript_Action_RandomlyFlipYDirection
;     CastMagic_HitHandler_Deluge
;     CastMagic_HitHandler_Fire
;     CurrentSprite_CalculateVisibility
;     CurrentSprite_CanMoveInDirection
;     CurrentSprite_CheckHitPlayer
;     CurrentSprite_HandleFall
;     CurrentSprite_UpdateState
;     DEADCODE_FUN_PRG14__84f4
;     FUN_PRG14__9a61
;     LAB_PRG14__8043 [$PRG14::8043]
;     MoveSpriteHorizIfPossible
;     MoveSpriteVerticalIfPossible
;     Player_AddExperienceFromSprite
;     Player_CheckHandlePressUpOnNPC
;     Player_CheckShieldHitByMagic
;     Player_HandleHitByMagic
;     Player_HandleShieldHitByMagic
;     Player_HandleTouchBread
;     Player_HandleTouchCoin
;     Player_HandleTouchEnemyMagic
;     Player_HandleTouchItem
;     Player_HitSpriteWithWeapon
;     SpriteBehavior_EnemyUnused18__9991
;     SpriteBehavior_FlashScreenHitPlayer
;     SpriteBehavior_NecronAides
;     SpriteBehavior_Pakukame
;     SpriteBehavior_RestoreXRegister
;     SpriteBehavior_Something_850d
;     SpriteUpdateHandler_Effect_EnemyDeath
;     SpriteUpdateHandler_Effect_LightningBall20
;     SpriteUpdateHandler_Enemy_Unused_SnakeRoundPart
;     Sprite_CheckHitByCastMagic
;     Sprite_HandleDeathDropIfPossible
;     Sprites_HasAnyEnemyOnScreen
;     Sprites_MoveRight__86c6
;     Sprites_SetBlockIsMovingResult
;     Sprites_SetCurrentSpriteCanMove
;     Sprites_UpdateAllStates
;     Sprites_UpdateBehavior
;     _afterFarJump [$PRG14::89ff]
;     _updateSpriteLoop [$PRG14::8011]
;     CastMagic_CalculateVisibility
;     GameLoop_LoadSpriteImages
;     Player_PickUpRedPotion
;     Sprites_PopulateNextAvailableSprite
;============================================================================

;
; XREFS:
;     BScript_Action_RandomlyFlipXDirection
;     BScript_Action_RandomlyFlipYDirection
;     CastMagic_HitHandler_Deluge
;     CastMagic_HitHandler_Fire
;     CurrentSprite_CalculateVisibility
;     CurrentSprite_CanMoveInDirection
;     CurrentSprite_CheckHitPlayer
;     CurrentSprite_HandleFall
;     CurrentSprite_UpdateState
;     DEADCODE_FUN_PRG14__84f4
;     FUN_PRG14__9a61
;     LAB_PRG14__8043 [$PRG14::8043]
;     MoveSpriteHorizIfPossible
;     MoveSpriteVerticalIfPossible
;     Player_AddExperienceFromSprite
;     Player_CheckHandlePressUpOnNPC
;     Player_CheckShieldHitByMagic
;     Player_HandleHitByMagic
;     Player_HandleShieldHitByMagic
;     Player_HandleTouchBread
;     Player_HandleTouchCoin
;     Player_HandleTouchEnemyMagic
;     Player_HandleTouchItem
;     Player_HitSpriteWithWeapon
;     SpriteBehavior_EnemyUnused18__9991
;     SpriteBehavior_FlashScreenHitPlayer
;     SpriteBehavior_NecronAides
;     SpriteBehavior_Pakukame
;     SpriteBehavior_RestoreXRegister
;     SpriteBehavior_Something_850d
;     SpriteUpdateHandler_Effect_EnemyDeath
;     SpriteUpdateHandler_Effect_LightningBall20
;     SpriteUpdateHandler_Enemy_Unused_SnakeRoundPart
;     Sprite_CheckHitByCastMagic
;     Sprite_HandleDeathDropIfPossible
;     Sprites_HasAnyEnemyOnScreen
;     Sprites_MoveRight__86c6
;     Sprites_SetBlockIsMovingResult
;     Sprites_SetCurrentSpriteCanMove
;     Sprites_UpdateAllStates
;     Sprites_UpdateBehavior
;     _afterFarJump [$PRG14::89ff]
;     _updateSpriteLoop [$PRG14::8011]
;     CastMagic_CalculateVisibility
;     GameLoop_LoadSpriteImages
;     Player_PickUpRedPotion
;     Sprites_PopulateNextAvailableSprite
;
CurrentSpriteIndex:
    .byte $00                               ; byte

;
; XREFS:
;     FUN_PRG14__9917
;     Maybe_BodyHandler__9a57
;     Maybe_BodyHandler__9a7a
;     Maybe_SpriteBody__99f3
;     SpriteBehavior_EnemyUnused18__9991
;     SpriteUpdateHandler_Enemy_Unused_SnakeRoundPart
;
Sprite12BodyPartHandler:
    .byte $00                               ; [0]:

;
; XREFS:
;     FUN_PRG14__9917
;     Maybe_SpriteBody__99f3
;     SpriteUpdateHandler_Enemy_Unused_SnakeRoundPart
;
Sprite12BodyPartHandler_1_:
    .byte $00                               ; [1]:

;
; XREFS:
;     FUN_PRG14__9917
;     Maybe_SpriteBody__99f3
;     SpriteBehavior_EnemyUnused18__994a
;     SpriteUpdateHandler_Enemy_Unused_SnakeRoundPart
;
Sprite12BodyPartHandler_2_:
    .byte $00                               ; [2]:

;
; XREFS:
;     FUN_PRG14__9917
;     SpriteBehavior_EnemyUnused18__9991
;     SpriteUpdateHandler_Enemy_Unused_SnakeRoundPart
;
Sprite12BodyPartHandler_3_:
    .byte $00                               ; [3]:

;
; XREFS:
;     FUN_PRG14__9917
;     SpriteUpdateHandler_Enemy_Unused_SnakeRoundPart
;
Sprite12BodyPartHandler_4_:
    .byte $00                               ; [4]:

;
; XREFS:
;     FUN_PRG14__9917
;     FUN_PRG14__9ac6
;     SpriteBehavior_EnemyUnused18__994a
;     SpriteUpdateHandler_Enemy_Unused_SnakeRoundPart
;
Sprite12BodyPartHandler_5_:
    .byte $00                               ; [5]:

;
; XREFS:
;     Player_HitSpriteWithWeapon
;     Sprites_IsSpriteOutOfWeaponRange
;
Something_Maybe_WeaponDistanceX:
    .byte $00                               ; byte

;
; XREFS:
;     Player_HitSpriteWithWeapon
;     Sprites_IsSpriteOutOfWeaponRange
;
Something_Maybe_WeaponDistanceY:
    .byte $00                               ; byte

    .byte $00,$00                           ; undefined

;
; XREFS:
;     FUN_PRG14__a2eb
;     SpriteBehavior_KingGrieve_9f65
;     SpriteBehavior_NecronAides
;     SpriteBehavior_Pakukame
;     SpriteBehavior_Ripasheiku_CastMagicOrUpdatePos
;     SpriteBehavior_SirGawaineWolfman
;     SpriteBehavior_Unknown_29
;     SpriteUpdateHandler_Boss_Borabohra
;     SpriteUpdateHandler_Boss_KingGrieve
;     SpriteUpdateHandler_Boss_Ripasheiku
;     SpriteUpdateHandler_Boss_Rokusutahn
;     SpriteUpdateHandler_Boss_Zoradohna
;     SpriteUpdateHandler_Boss_Zorugeriru
;     SpriteUpdateHandler_Effect_EnemyDeath
;     SpriteUpdateHandler_Effect_Fountain
;     SpriteUpdateHandler_Effect_LightningBall20
;     SpriteUpdateHandler_EnemyMagic
;     SpriteUpdateHandler_Enemy_Charron
;     SpriteUpdateHandler_Enemy_ExecutionHood
;     SpriteUpdateHandler_Enemy_FireGiant
;     SpriteUpdateHandler_Enemy_Geributa
;     SpriteUpdateHandler_Enemy_GiantBees
;     SpriteUpdateHandler_Enemy_GiantStrider
;     SpriteUpdateHandler_Enemy_Grimlock
;     SpriteUpdateHandler_Enemy_Hornet
;     SpriteUpdateHandler_Enemy_Ikeda
;     SpriteUpdateHandler_Enemy_Ishiisu
;     SpriteUpdateHandler_Enemy_Lamprey
;     SpriteUpdateHandler_Enemy_Lilith
;     SpriteUpdateHandler_Enemy_Magman
;     SpriteUpdateHandler_Enemy_Maskman
;     SpriteUpdateHandler_Enemy_MuppetGuy
;     SpriteUpdateHandler_Enemy_Myconid
;     SpriteUpdateHandler_Enemy_Naga
;     SpriteUpdateHandler_Enemy_Nash
;     SpriteUpdateHandler_Enemy_NecronAides
;     SpriteUpdateHandler_Enemy_Raiden
;     SpriteUpdateHandler_Enemy_Snowman
;     SpriteUpdateHandler_Enemy_Sugata
;     SpriteUpdateHandler_Enemy_Unused29
;     SpriteUpdateHandler_Enemy_Unused_CurlyTail
;     SpriteUpdateHandler_Enemy_Unused_SnakeRoundPart
;     SpriteUpdateHandler_Enemy_Unused_WingedSkeleton
;     SpriteUpdateHandler_Enemy_Yareeka
;     SpriteUpdateHandler_Enemy_Zombie
;     SpriteUpdateHandler_Magic_81
;     SpriteUpdateHandler_NPC_ArmorSalesman
;     SpriteUpdateHandler_NPC_King
;     SpriteUpdateHandler_NPC_MagicTeacher
;     SpriteUpdateHandler_NPC_MartialArts
;     SpriteUpdateHandler_NPC_Priest
;     SpriteUpdateHandler_NPC_Walking
;     SpriteUpdateHandler_TODO_Garbled10
;     Sprites_UpdateAll
;
SpriteUpdateCounter:
    .byte $00                               ; byte

;
; XREFS:
;     FUN_PRG14__a1cc
;     SpriteBehavior_KingGrieve_9f65
;     SpriteBehavior_Ripasheiku_CastMagicOrUpdatePos
;     SpriteBehavior_ShadowEura__a077
;     SpriteBehavior_ShadowEura__a12d
;     Sprite_CastMagic
;
CurrentSprite_Arg_CastMagicX:
    .byte $00                               ; byte

;
; XREFS:
;     FUN_PRG14__a1cc
;     SpriteBehavior_KingGrieve_9f65
;     SpriteBehavior_Ripasheiku_CastMagicOrUpdatePos
;     SpriteBehavior_ShadowEura__a077
;     SpriteBehavior_ShadowEura__a12d
;     Sprite_CastMagic
;
CurrentSprite_Arg_CastMagicY:
    .byte $00                               ; byte


;============================================================================
; ROM bank where images of the current sprite can be found.
;
; This is set based on the table in
; SPRITE_IMAGE_BANKS.
;
; XREFS:
;     CurrentSprite_LoadTilesInfo
;     Sprites_LoadImageForCurrentSprite
;     Sprites_StoreBankForCurrentSprite
;============================================================================

;
; XREFS:
;     CurrentSprite_LoadTilesInfo
;     Sprites_LoadImageForCurrentSprite
;     Sprites_StoreBankForCurrentSprite
;
CurrentSprite_TilesBank:
    .byte $00                               ; byte

    .byte $00,$00                           ; undefined


;============================================================================
; X coordinate of the sprite being processed.
;
; XREFS:
;     Screen_LoadSpriteInfo
;     Sprites_PopulateNextAvailableSprite
;============================================================================

;
; XREFS:
;     Screen_LoadSpriteInfo
;     Sprites_PopulateNextAvailableSprite
;
CurrentSprite_XPos:
    .byte $00                               ; byte


;============================================================================
; Y coordinate of the sprite being processed.
;
; XREFS:
;     Screen_LoadSpriteInfo
;     Sprites_PopulateNextAvailableSprite
;============================================================================

;
; XREFS:
;     Screen_LoadSpriteInfo
;     Sprites_PopulateNextAvailableSprite
;
CurrentSprite_YPos:
    .byte $00                               ; byte


;============================================================================
; Entity ID of the sprite being processed.
;
; XREFS:
;     CurrentSprite_LoadTilesInfo
;     GameLoop_LoadSpriteImages
;     Screen_LoadSpriteInfo
;     Sprites_PopulateNextAvailableSprite
;     Sprites_StoreBankForCurrentSprite
;============================================================================

;
; XREFS:
;     CurrentSprite_LoadTilesInfo
;     GameLoop_LoadSpriteImages
;     Screen_LoadSpriteInfo
;     Sprites_PopulateNextAvailableSprite
;     Sprites_StoreBankForCurrentSprite
;
CurrentSprite_Entity:
    .byte $00                               ; SpriteEntity


;============================================================================
; Numeric value of the sprite being processed.
;
; For items like coins and bread, this will contain the value
; to add to the player's gold and HP, respectively.
;
; For NPCs, this will be the IScript entrypoint index to
; activate upon interaction.
;
; XREFS:
;     Player_CheckHandlePressUpOnNPC
;     Player_HandleTouchNPC
;============================================================================

;
; XREFS:
;     Player_CheckHandlePressUpOnNPC
;     Player_HandleTouchNPC
;
CurrentSprite_Value:
    .byte $00                               ; byte


;============================================================================
; Index into HUD_ATTRIBUTE_DATA_BY_INDEX where the
; HUD palette can be found.
;
; XREFS:
;     TextBox_GetBackgroundAttributeData
;     Screen_LoadUIPalette
;     UI_SetHUDPPUAttributes
;============================================================================

;
; XREFS:
;     TextBox_GetBackgroundAttributeData
;     Screen_LoadUIPalette
;     UI_SetHUDPPUAttributes
;
UI_AttributeDataIndex:
    .byte $00                               ; byte

    .byte $00,$00                           ; undefined


;============================================================================
; The player's experience as a 16-bit value.
;
; This is in Lower, Upper byte order.
;
; XREFS:
;     Player_SetInitialExpAndGold
;     Player_SetStartGameState
;     Game_Start
;     Player_CheckReachedNextTitle
;     Player_UpdateExperience
;     UI_DrawPlayerExperience
;============================================================================

;
; XREFS:
;     Player_SetInitialExpAndGold
;     Player_SetStartGameState
;     Game_Start
;     Player_CheckReachedNextTitle
;     Player_UpdateExperience
;     UI_DrawPlayerExperience
;
Experience:
    .byte $00                               ; byte


;============================================================================
; Upper byte of player's experience
;
; XREFS:
;     Player_SetInitialExpAndGold
;     Player_SetStartGameState
;     Game_Start
;     Player_CheckReachedNextTitle
;     Player_UpdateExperience
;     UI_DrawPlayerExperience
;============================================================================

;
; XREFS:
;     Player_SetInitialExpAndGold
;     Player_SetStartGameState
;     Game_Start
;     Player_CheckReachedNextTitle
;     Player_UpdateExperience
;     UI_DrawPlayerExperience
;
Experience_U:
    .byte $00                               ; byte


;============================================================================
; The player's gold as a 24-bit value.
;
; This is in Lower, Middle, Upper byte order.
;
; XREFS:
;     IScriptAction_IfPlayerHasGold
;     IScripts_CheckEnoughMoney
;     Player_SetInitialExpAndGold
;     Player_SetStartGameState
;     Player_HandleTouchCoin
;     Player_AddGold
;     Player_SubtractGold
;     UI_DrawGoldValue
;============================================================================

;
; XREFS:
;     IScriptAction_IfPlayerHasGold
;     IScripts_CheckEnoughMoney
;     Player_SetInitialExpAndGold
;     Player_SetStartGameState
;     Player_HandleTouchCoin
;     Player_AddGold
;     Player_SubtractGold
;     UI_DrawGoldValue
;
Gold:
    .byte $00                               ; byte


;============================================================================
; Middle byte of player's gold
;
; XREFS:
;     IScriptAction_IfPlayerHasGold
;     IScripts_CheckEnoughMoney
;     Player_SetInitialExpAndGold
;     Player_SetStartGameState
;     Player_HandleTouchCoin
;     Player_AddGold
;     Player_SubtractGold
;     UI_DrawGoldValue
;============================================================================

;
; XREFS:
;     IScriptAction_IfPlayerHasGold
;     IScripts_CheckEnoughMoney
;     Player_SetInitialExpAndGold
;     Player_SetStartGameState
;     Player_HandleTouchCoin
;     Player_AddGold
;     Player_SubtractGold
;     UI_DrawGoldValue
;
Gold_M:
    .byte $00                               ; byte


;============================================================================
; Upper byte of player's gold
;
; XREFS:
;     IScriptAction_IfPlayerHasGold
;     IScripts_CheckEnoughMoney
;     Player_SetInitialExpAndGold
;     Player_SetStartGameState
;     Player_HandleTouchCoin
;     Player_AddGold
;     Player_SubtractGold
;     UI_DrawGoldValue
;============================================================================

;
; XREFS:
;     IScriptAction_IfPlayerHasGold
;     IScripts_CheckEnoughMoney
;     Player_SetInitialExpAndGold
;     Player_SetStartGameState
;     Player_HandleTouchCoin
;     Player_AddGold
;     Player_SubtractGold
;     UI_DrawGoldValue
;
Gold_U:
    .byte $00                               ; byte

    .byte $00,$00,$00,$00                   ; undefined


;============================================================================
; Temporary variable used when adding or showing player HP.
;
; XREFS:
;     IScriptAction_AddHP
;     UI_DrawPlayerHPValue
;============================================================================

;
; XREFS:
;     IScriptAction_AddHP
;     UI_DrawPlayerHPValue
;
Temp_AddedHPValue:
    .byte $00                               ; byte


;============================================================================
; The player's available MP.
;
; XREFS:
;     IScriptAction_AddMP
;     Game_Start
;     Player_AddMP
;     Player_FillHPAndMP
;     Player_ReduceMP
;     Player_SetMP
;     Player_Spawn
;     UI_DrawHUD
;============================================================================

;
; XREFS:
;     IScriptAction_AddMP
;     Game_Start
;     Player_AddMP
;     Player_FillHPAndMP
;     Player_ReduceMP
;     Player_SetMP
;     Player_Spawn
;     UI_DrawHUD
;
Player_MP:
    .byte $00                               ; byte

;
; XREFS:
;     Player_CheckShieldHitByMagic
;     Player_DrawShield
;
Player_ShieldPositionX:
    .byte $00                               ; byte

;
; XREFS:
;     Player_CheckShieldHitByMagic
;     Player_DrawShield
;
Player_ShieldPositionY:
    .byte $00                               ; byte


;============================================================================
; Inventory of the player's weapons.
;
; They can have up to 4 weapons in the inventory.
;
; XREFS:
;     INVENTORY_CATEGORY_L [$PRG12::9b29]
;     SpriteBehavior_DragonSlayerDroppedByKingGrieve
;     Player_PickUpDragonSlayer
;============================================================================

;
; XREFS:
;     INVENTORY_CATEGORY_L [$PRG12::9b29]
;     SpriteBehavior_DragonSlayerDroppedByKingGrieve
;     Player_PickUpDragonSlayer
;
WeaponInventory:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:

;
; XREFS:
;     Player_PickUpDragonSlayer
;
WeaponInventory_3_:
    .byte $00                               ; [3]:


;============================================================================
; Inventory of the player's armor.
;
; They can have up to 4 armors in the inventory.
;
; XREFS:
;     INVENTORY_CATEGORY_L [$PRG12::9b2a]
;     SpriteBehavior_BattleSuitDroppedByZoradohna
;     Player_PickUpBattleSuit
;============================================================================

;
; XREFS:
;     INVENTORY_CATEGORY_L [$PRG12::9b2a]
;     SpriteBehavior_BattleSuitDroppedByZoradohna
;     Player_PickUpBattleSuit
;
ArmorInventory:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:

;
; XREFS:
;     Player_PickUpBattleSuit
;
ArmorInventory_3_:
    .byte $00                               ; [3]:


;============================================================================
; Inventory of the player's shields.
;
; They can have up to 4 shields in the inventory.
;
; XREFS:
;     INVENTORY_CATEGORY_L [$PRG12::9b2b]
;     SpriteBehavior_BattleHelmetDroppedByZoradohna
;     Player_PickUpBattleHelmet
;============================================================================

;
; XREFS:
;     INVENTORY_CATEGORY_L [$PRG12::9b2b]
;     SpriteBehavior_BattleHelmetDroppedByZoradohna
;     Player_PickUpBattleHelmet
;
ShieldInventory:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:

;
; XREFS:
;     Player_PickUpBattleHelmet
;
ShieldInventory_3_:
    .byte $00                               ; [3]:


;============================================================================
; Inventory of the player's magic spells.
;
; They can have up to 5 magic spells in the inventory.
;
; XXX It seems there's only room for 4 though? Check on this.
;
; XREFS:
;     INVENTORY_CATEGORY_L [$PRG12::9b2c]
;============================================================================

;
; XREFS:
;     INVENTORY_CATEGORY_L [$PRG12::9b2c]
;
MagicInventory:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:


;============================================================================
; Inventory of the player's items.
;
; XREFS:
;     INVENTORY_CATEGORY_L [$PRG12::9b2d]
;     Player_PickUpItem
;============================================================================

;
; XREFS:
;     INVENTORY_CATEGORY_L [$PRG12::9b2d]
;     Player_PickUpItem
;
ItemInventory:
    .byte $00                               ; [0]: [0]:
    .byte $00                               ; [0]: [1]:
    .byte $00                               ; [0]: [2]:
    .byte $00                               ; [0]: [3]:
    .byte $00                               ; [0]: [4]:
    .byte $00                               ; [0]: [5]:
    .byte $00                               ; [0]: [6]:
    .byte $00                               ; [0]: [7]:
    .byte $00                               ; [1]: [0]:
    .byte $00                               ; [1]: [1]:
    .byte $00                               ; [1]: [2]:
    .byte $00                               ; [1]: [3]:
    .byte $00                               ; [1]: [4]:
    .byte $00                               ; [1]: [5]:
    .byte $00                               ; [1]: [6]:
    .byte $00                               ; [1]: [7]:


;============================================================================
; The currently-selected weapon:
;
; 0 = Hand Dagger
; 1 = Long Sword
; 2 = Giant Blade
; 3 = Dragon Slayer
;
; XREFS:
;     Password_EncodeGameState
;     Password_Load
;     PlayerMenu_HandleInventoryMenuInput
;     PlayerMenu_ShowStatusMenu
;     Player_Equip
;     Player_LacksItem
;     Player_SetStartGameState
;     Shop_GetPlayerHasSelectedItem
;     PlayerDeath_ResetSelectedItemState
;     Game_ExitBuilding
;     Player_HandleDeath
;     Player_SetWeapon
;============================================================================

;
; XREFS:
;     Password_EncodeGameState
;     Password_Load
;     PlayerMenu_HandleInventoryMenuInput
;     PlayerMenu_ShowStatusMenu
;     Player_Equip
;     Player_LacksItem
;     Player_SetStartGameState
;     Shop_GetPlayerHasSelectedItem
;     PlayerDeath_ResetSelectedItemState
;     Game_ExitBuilding
;     Player_HandleDeath
;     Player_SetWeapon
;
Inventories:
SelectedWeapon:
    .byte $00                               ; WeaponInventory


;============================================================================
; The currently-selected armor:
;
; 0 = Leather Armor
; 1 = Studded Mail
; 2 = Full Plate
; 3 = Battle Suit
;
; XREFS:
;     Password_EncodeGameState
;     Password_Load
;     Player_SetStartGameState
;     PlayerDeath_ResetSelectedItemState
;     Player_ApplyDamage
;     SpriteBehavior_BattleSuitDroppedByZoradohna
;     FUN_PRG15_MIRROR__ec58
;     Player_DrawBody
;     Player_HandleDeath
;     Player_LoadArmorTilesToPPU
;     Player_SetArmor
;============================================================================

;
; XREFS:
;     Password_EncodeGameState
;     Password_Load
;     Player_SetStartGameState
;     PlayerDeath_ResetSelectedItemState
;     Player_ApplyDamage
;     SpriteBehavior_BattleSuitDroppedByZoradohna
;     FUN_PRG15_MIRROR__ec58
;     Player_DrawBody
;     Player_HandleDeath
;     Player_LoadArmorTilesToPPU
;     Player_SetArmor
;
SelectedArmor:
    .byte $00                               ; ArmorInventory


;============================================================================
; The currently-selected shield.
;
; 0 = Small Shield
; 1 = Large Shield
; 2 = Magic Shield
; 3 = Battle Helmet
;
; XREFS:
;     Password_EncodeGameState
;     Password_Load
;     Player_SetStartGameState
;     PlayerDeath_ResetSelectedItemState
;     Player_CheckShieldHitByMagic
;     Player_DrawShield
;     Player_HandleHitByMagic
;     SpriteBehavior_BattleHelmetDroppedByZoradohna
;     FUN_PRG15_MIRROR__ec58
;     Player_DrawBody
;     Player_HandleDeath
;     Player_LoadArmorTilesToPPU
;     Player_LoadShieldTilesToPPU
;     Player_SetShield
;============================================================================

;
; XREFS:
;     Password_EncodeGameState
;     Password_Load
;     Player_SetStartGameState
;     PlayerDeath_ResetSelectedItemState
;     Player_CheckShieldHitByMagic
;     Player_DrawShield
;     Player_HandleHitByMagic
;     SpriteBehavior_BattleHelmetDroppedByZoradohna
;     FUN_PRG15_MIRROR__ec58
;     Player_DrawBody
;     Player_HandleDeath
;     Player_LoadArmorTilesToPPU
;     Player_LoadShieldTilesToPPU
;     Player_SetShield
;
SelectedShield:
    .byte $00                               ; ShieldInventory


;============================================================================
; The currently-selected magic spell.
;
; 0x00 = Deluge
; 0x01 = Thunder
; 0x02 = Fire
; 0x03 = Death
; 0x04 = Tilte
; 0xFF = None
;
; XREFS:
;     Password_EncodeGameState
;     Password_Load
;     Player_SetMagic
;     Player_SetStartGameState
;     PlayerDeath_ResetSelectedItemState
;     Player_CastMagic
;     Player_HandleDeath
;     Player_ReduceMP
;============================================================================

;
; XREFS:
;     Password_EncodeGameState
;     Password_Load
;     Player_SetMagic
;     Player_SetStartGameState
;     PlayerDeath_ResetSelectedItemState
;     Player_CastMagic
;     Player_HandleDeath
;     Player_ReduceMP
;
SelectedMagic:
    .byte $00                               ; SelectedMagic


;============================================================================
; The currently-selected item:
;
; 0x00 = Ring of Elf
; 0x01 = Ring of Ruby
; 0x02 = Ring of Dworf
; 0x03 = Demons Ring
; 0x04 = Key A
; 0x05 = Key K
; 0x06 = Key Q
; 0x07 = Key J
; 0x08 = Key Jo
; 0x09 = Mattock
; 0x0A = Magical Rod
; 0x0B = Crystal
; 0x0C = Lamp
; 0x0D = Hour Glass
; 0x0E = Book
; 0x0F = Wing Boots
; 0x10 = Red Potion
; 0x11 = Poison
; 0x12 = Elixir
; 0x13 = Pendant
; 0x14 = Black Onyx
; 0x15 = Fire Crystal
;
; XREFS:
;     Password_EncodeGameState
;     Password_Load
;     Player_SetStartGameState
;     PlayerDeath_ResetSelectedItemState
;     GameLoop_CheckUseCurrentItem
;     Game_OpenDoorWithAKey
;     Game_OpenDoorWithJKey
;     Game_OpenDoorWithJoKey
;     Game_OpenDoorWithKKey
;     Game_OpenDoorWithQKey
;     Game_UnlockDoorWithUsableItem
;     Player_ClearSelectedItem
;     Player_HandleDeath
;     Player_SetItem
;     UI_DrawSelectedItem
;============================================================================

;
; XREFS:
;     Password_EncodeGameState
;     Password_Load
;     Player_SetStartGameState
;     PlayerDeath_ResetSelectedItemState
;     GameLoop_CheckUseCurrentItem
;     Game_OpenDoorWithAKey
;     Game_OpenDoorWithJKey
;     Game_OpenDoorWithJoKey
;     Game_OpenDoorWithKKey
;     Game_OpenDoorWithQKey
;     Game_UnlockDoorWithUsableItem
;     Player_ClearSelectedItem
;     Player_HandleDeath
;     Player_SetItem
;     UI_DrawSelectedItem
;
SelectedItem:
    .byte $00                               ; ItemInventory


;============================================================================
; Number of weapons in the player's inventory
;
; XREFS:
;     IScriptAction_OpenShop
;     IScriptAction_ShowSellMenu
;     Password_EncodeGameState
;     Password_Load
;     PlayerMenu_ShowSubmenu
;     Player_AddToInventory
;     Player_LacksItem
;     Player_RemoveItem
;     Player_SetStartGameState
;     Shop_GetPlayerHasSelectedItem
;     Player_InitInventoryState
;     SpriteBehavior_DragonSlayerDroppedByKingGrieve
;     Player_PickUpBattleSuit
;     Player_PickUpDragonSlayer
;============================================================================

;
; XREFS:
;     IScriptAction_OpenShop
;     IScriptAction_ShowSellMenu
;     Password_EncodeGameState
;     Password_Load
;     PlayerMenu_ShowSubmenu
;     Player_AddToInventory
;     Player_LacksItem
;     Player_RemoveItem
;     Player_SetStartGameState
;     Shop_GetPlayerHasSelectedItem
;     Player_InitInventoryState
;     SpriteBehavior_DragonSlayerDroppedByKingGrieve
;     Player_PickUpBattleSuit
;     Player_PickUpDragonSlayer
;
AllInventories:
NumberOfWeapons:
    .byte $00                               ; byte


;============================================================================
; Number of armors in the player's inventory
;
; XREFS:
;     Password_EncodeGameState
;     Password_Load
;     Player_SetStartGameState
;     Player_InitInventoryState
;     SpriteBehavior_BattleSuitDroppedByZoradohna
;     Player_PickUpBattleSuit
;     Player_PickUpDragonSlayer
;============================================================================

;
; XREFS:
;     Password_EncodeGameState
;     Password_Load
;     Player_SetStartGameState
;     Player_InitInventoryState
;     SpriteBehavior_BattleSuitDroppedByZoradohna
;     Player_PickUpBattleSuit
;     Player_PickUpDragonSlayer
;
NumberOfArmors:
    .byte $00                               ; byte


;============================================================================
; Number of shields in the player's inventory
;
; XREFS:
;     Password_EncodeGameState
;     Password_Load
;     Player_SetStartGameState
;     Player_InitInventoryState
;     SpriteBehavior_BattleHelmetDroppedByZoradohna
;     Player_PickUpBattleHelmet
;============================================================================

;
; XREFS:
;     Password_EncodeGameState
;     Password_Load
;     Player_SetStartGameState
;     Player_InitInventoryState
;     SpriteBehavior_BattleHelmetDroppedByZoradohna
;     Player_PickUpBattleHelmet
;
NumberOfShields:
    .byte $00                               ; byte


;============================================================================
; Number of magic spells in the player's inventory
;
; XREFS:
;     Password_EncodeGameState
;     Password_Load
;     Player_SetStartGameState
;     Player_InitInventoryState
;============================================================================

;
; XREFS:
;     Password_EncodeGameState
;     Password_Load
;     Player_SetStartGameState
;     Player_InitInventoryState
;
NumberOfMagicSpells:
    .byte $00                               ; byte


;============================================================================
; Number of items in the player's inventory
;
; XREFS:
;     IScriptAction_ShowSellMenu
;     Password_EncodeGameState
;     Password_Load
;     Player_SetStartGameState
;     Player_InitInventoryState
;     Player_PickUpItem
;============================================================================

;
; XREFS:
;     IScriptAction_ShowSellMenu
;     Password_EncodeGameState
;     Password_Load
;     Player_SetStartGameState
;     Player_InitInventoryState
;     Player_PickUpItem
;
NumberOfItems:
    .byte $00                               ; byte


;============================================================================
; The loaded portrait ID from an IScript.
;
; This will be 0xFF if unset.
;
; If set, the player won't be drawn, and instead portrait
; data will be loaded, displayed, and animated.
;
; XREFS:
;     IScriptAction_ShowSellMenu
;     CurrentSprite_UpdateState
;     Player_DrawShield
;     Player_DrawWeapon
;     IScripts_ClearPortraitImage
;     IScripts_DrawPortraitAnimationFrame
;     IScripts_GetPortraitOffset
;     IScripts_LoadPortraitTiles
;     IScripts_LoadPortraitTilesAddress
;     Player_DrawBody
;     Screen_ClearSprites
;============================================================================

;
; XREFS:
;     IScriptAction_ShowSellMenu
;     CurrentSprite_UpdateState
;     Player_DrawShield
;     Player_DrawWeapon
;     IScripts_ClearPortraitImage
;     IScripts_DrawPortraitAnimationFrame
;     IScripts_GetPortraitOffset
;     IScripts_LoadPortraitTiles
;     IScripts_LoadPortraitTilesAddress
;     Player_DrawBody
;     Screen_ClearSprites
;
IScript_PortraitID:
    .byte $00                               ; byte

;
; XREFS:
;     PlayerDeath_ResetSelectedItemState
;     Player_DrawWeapon
;     Player_GetNormalizedWeaponID
;     Player_HitSpriteWithWeapon
;     SpriteBehavior_DragonSlayerDroppedByKingGrieve
;     Game_EnterBuilding
;     Game_ExitBuilding
;     Player_LoadWeaponTilesToPPU
;     Player_SetWeapon
;
Player_CurWeapon:
    .byte $00                               ; WeaponInventory

;
; XREFS:
;     Area_HandleBreakableFloor
;     Area_SetBlocks
;     Area_SetBlocks_SetAttributes
;     Area_SetBlocks_WriteBlockDataColumn1
;     Area_SetBlocks_WriteBlockDataColumn2
;     Player_UseMattock
;
Arg_BlockAttributesIndex:
    .byte $00                               ; byte

    .byte $00,$00,$00,$00                   ; undefined

;
; XREFS:
;     SpriteBehavior_EnemyUnused18__9991
;     SpriteBehavior_EnemyUnused18_SomethingSetBlocks
;
Something_UnusedSprite_BlockOffset:
    .byte $00                               ; byte

;
; XREFS:
;     SpriteBehavior_EnemyUnused18__9991
;     SpriteBehavior_EnemyUnused18_SomethingSetBlocks
;
Something_UnusedSprite_ScreenBufferOffset:
    .byte $00                               ; byte

;
; XREFS:
;     Fog_OnTick
;     Game_EnterBuilding
;     Game_SpawnInTemple
;     Player_HandleDeath
;     Screen_NextTransitionState
;     Screen_SetupNew
;     UNUSED_WriteCurrentBackgroundPalette
;
Screen_PaletteIndex:
    .byte $00                               ; Palette

;
; XREFS:
;     Area_ScrollTo
;     EndGame_MoveToKingsRoom
;     Game_BeginExitBuilding
;     Game_EnterAreaHandler
;     Game_EnterBuilding
;     Game_ExitBuilding
;     Game_LoadCurrentArea
;     Game_LoadFirstLevel
;     Game_SpawnInTemple
;     Player_CheckHandleEnterDoor
;     Player_EnterDoorToInside
;     ScreenEvents_HandleBoss
;     _afterFarJump [$PRG15_MIRROR::c603]
;
Areas_DefaultMusic:
    .byte $00                               ; Music

;
; XREFS:
;     Game_BeginExitBuilding
;     Game_SpawnInTemple
;     Player_EnterDoorToInside
;
Area_Music_Outside:
    .byte $00                               ; byte


;============================================================================
; Palette index data.
;
; XREFS:
;     IScripts_ClearPortraitImage
;     IScripts_LoadPortraitTiles
;============================================================================

;
; The saved palette index, when temporarily switching to
; a new one.
;
; This is used in IScripts.
;
;
; XREFS:
;     IScripts_ClearPortraitImage
;     IScripts_LoadPortraitTiles
;
Palette_SavedIndex:
    .byte $00                               ; byte


;
; The current palette index.
;
; This is set when loading a new palette, and used
; exclusively for the process of restoring palette state
; after showing portraits in IScripts.
;
;
; XREFS:
;     IScripts_LoadPortraitTiles
;     Screen_LoadSpritePalette
;
Palette_SpritePaletteIndex:
    .byte $00                               ; byte


;============================================================================
; Region and screen information.
;
; XREFS:
;     Game_EnterBuilding
;     Game_ExitBuilding
;============================================================================

;
; XREFS:
;     Game_EnterBuilding
;     Game_ExitBuilding
;
Area_SavedArea:
    .byte $00                               ; byte

;
; XREFS:
;     Game_EnterBuilding
;     Game_ExitBuilding
;
Area_SavedScreen:
    .byte $00                               ; byte

;
; XREFS:
;     Game_EnterBuilding
;     Game_ExitBuilding
;
Screen_SavedPalette:
    .byte $00                               ; byte

;
; XREFS:
;     Game_EnterBuilding
;     Game_ExitBuilding
;
Player_SavedPosXY:
    .byte $00                               ; byte

;
; XREFS:
;     EndGame_MoveToKingsRoom
;     Game_EnterBuilding
;     Game_SpawnInTemple
;     Player_EnterDoorToInside
;
Building_TilesIndex:
    .byte $00                               ; byte

;
; XREFS:
;     EndGame_MoveToKingsRoom
;     Game_EnterBuilding
;     Game_SpawnInTemple
;     Player_EnterDoorToInside
;
Area_DestScreen:
    .byte $00                               ; byte

;
; XREFS:
;     Player_HandleDeath
;     Screen_NextTransitionState
;
Screen_TransitionCounter:
    .byte $00                               ; byte

;
; XREFS:
;     Screen_NextTransitionState
;
Screen_FadeOutCounter:
    .byte $00                               ; byte

;
; XREFS:
;     Player_DrawDeathAnimation
;     Player_HandleDeath
;
Player_DeathAnimationPhase:
    .byte $00                               ; byte

;
; XREFS:
;     Player_DrawDeathAnimation
;     Player_HandleDeath
;
Player_DeathAnimationCounter:
    .byte $00                               ; byte

    .byte $00,$00,$00                       ; undefined

;
; XREFS:
;     CurrentSprite_CheckHitPlayer
;     Player_CheckShieldHitByMagic
;
SpriteBox_Left:
    .byte $00                               ; byte

;
; XREFS:
;     CurrentSprite_CheckHitPlayer
;     Player_CheckShieldHitByMagic
;
SpriteBox_Top:
    .byte $00                               ; byte

;
; XREFS:
;     CurrentSprite_CheckHitPlayer
;     Player_CheckShieldHitByMagic
;
SpriteBox_Width:
    .byte $00                               ; byte

;
; XREFS:
;     CurrentSprite_CheckHitPlayer
;     Player_CheckShieldHitByMagic
;
SpriteBox_Height:
    .byte $00                               ; byte


;============================================================================
; IDs of blocks in the last column of screen to the left
;
; XREFS:
;     Area_CanPlayerMoveLeft
;     Area_LoadScrollData
;============================================================================

;
; XREFS:
;     Area_CanPlayerMoveLeft
;     Area_LoadScrollData
;
LastColumnLeftScreen:
    .byte $00                               ; [0]:

;
; XREFS:
;     Area_LoadScrollData
;
LastColumnLeftScreen_1_:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:
    .byte $00                               ; [8]:
    .byte $00                               ; [9]:
    .byte $00                               ; [10]:
    .byte $00                               ; [11]:
    .byte $00                               ; [12]:
    .byte $00                               ; [13]:
    .byte $00                               ; [14]:
    .byte $00                               ; [15]:


;============================================================================
; IDs of blocks in the first column of screen to the right
;
; XREFS:
;     Area_CanMoveUp
;     Area_LoadScrollData
;============================================================================

;
; XREFS:
;     Area_CanMoveUp
;     Area_LoadScrollData
;
FirstColumnInRightScreen:
    .byte $00                               ; [0]:

;
; XREFS:
;     Area_LoadScrollData
;
FirstColumnInRightScreen_1_:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:
    .byte $00                               ; [8]:
    .byte $00                               ; [9]:

;
; XREFS:
;     Game_Init
;
FirstColumnInRightScreen_10_:
    .byte $00                               ; [10]:
    .byte $00                               ; [11]:
    .byte $00                               ; [12]:
    .byte $00                               ; [13]:
    .byte $00                               ; [14]:
    .byte $00                               ; [15]:


;============================================================================
; IDs of blocks in the last row of screen above
;
; XREFS:
;     Area_CanPlayerMoveUp
;     Area_LoadScrollData
;============================================================================

;
; XREFS:
;     Area_CanPlayerMoveUp
;     Area_LoadScrollData
;
LastRowAboveScreen:
    .byte $00                               ; [0]:

;
; XREFS:
;     Area_LoadScrollData
;
LastRowAboveScreen_1_:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:
    .byte $00                               ; [8]:
    .byte $00                               ; [9]:
    .byte $00                               ; [10]:
    .byte $00                               ; [11]:
    .byte $00                               ; [12]:
    .byte $00                               ; [13]:
    .byte $00                               ; [14]:
    .byte $00                               ; [15]:


;============================================================================
; IDs of blocks in the first row of screen below
;
; XREFS:
;     Area_LoadScrollData
;     Player_CheckIfPassable
;============================================================================

;
; XREFS:
;     Area_LoadScrollData
;     Player_CheckIfPassable
;
FirstRowBelowScreen:
    .byte $00                               ; [0]:

;
; XREFS:
;     Area_LoadScrollData
;
FirstRowBelowScreen_1_:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:
    .byte $00                               ; [8]:
    .byte $00                               ; [9]:
    .byte $00                               ; [10]:
    .byte $00                               ; [11]:
    .byte $00                               ; [12]:
    .byte $00                               ; [13]:
    .byte $00                               ; [14]:
    .byte $00                               ; [15]:


;============================================================================
; Flag indicating whether updates to sprites are paused.
;
; This prevents sprite movement or collision handling when
; set.
;
; XREFS:
;     Sprites_UpdateAll
;     Game_DrawScreenInFrozenState
;============================================================================

;
; XREFS:
;     Sprites_UpdateAll
;     Game_DrawScreenInFrozenState
;
Sprites_UpdatesPaused:
    .byte $00                               ; bool


;============================================================================
; Duration of the pointment
;
; XREFS:
;     Player_HandleTouchEnemy
;     Player_HandleTouchEnemyMagic
;     SpriteBehavior_Ointment
;     Game_ClearTimedItems
;     Game_DecOintmentDuration
;     LimitItemDurations
;     Player_PickUpOintment
;============================================================================

;
; XREFS:
;     Player_HandleTouchEnemy
;     Player_HandleTouchEnemyMagic
;     SpriteBehavior_Ointment
;     Game_ClearTimedItems
;     Game_DecOintmentDuration
;     LimitItemDurations
;     Player_PickUpOintment
;
DurationOintment:
    .byte $00                               ; byte


;============================================================================
; Duration of the gloves
;
; XREFS:
;     Player_HitSpriteWithWeapon
;     SpriteBehavior_Glove
;     Game_ClearTimedItems
;     Game_DecGloveDuration
;     Player_PickUpGlove
;============================================================================

;
; XREFS:
;     Player_HitSpriteWithWeapon
;     SpriteBehavior_Glove
;     Game_ClearTimedItems
;     Game_DecGloveDuration
;     Player_PickUpGlove
;
DurationGlove:
    .byte $00                               ; byte


;============================================================================
; Duration of the wing boots
;
; XREFS:
;     Game_ClearTimedItems
;     Game_DecWingBootsDuration
;     Player_UseWingBoots
;============================================================================

;
; XREFS:
;     Game_ClearTimedItems
;     Game_DecWingBootsDuration
;     Player_UseWingBoots
;
DurationWingBoots:
    .byte $00                               ; byte


;============================================================================
; Duration of the active hour glass
;
; XREFS:
;     Sprites_UpdateAll
;     Sprites_UpdateBehavior
;     Game_ClearTimedItems
;     Game_DecHourGlassDuration
;     LimitItemDurations
;     Player_UseHourGlass
;============================================================================

;
; XREFS:
;     Sprites_UpdateAll
;     Sprites_UpdateBehavior
;     Game_ClearTimedItems
;     Game_DecHourGlassDuration
;     LimitItemDurations
;     Player_UseHourGlass
;
DurationHourGlass:
    .byte $00                               ; byte


;============================================================================
; Key requirement for the current door
;
; XREFS:
;     Game_RunDoorRequirementHandler
;     Game_UnlockDoor
;     Player_CheckHandleEnterDoor
;     Player_EnterDoorToOutside
;============================================================================

;
; XREFS:
;     Game_RunDoorRequirementHandler
;     Game_UnlockDoor
;     Player_CheckHandleEnterDoor
;     Player_EnterDoorToOutside
;
CurrentDoor_KeyRequirement:
    .byte $00                               ; byte


;============================================================================
; 0x01 = Black Onyx
; 0x02 = Pendant
; 0x04 = Magical Rod
; 0x08 = Elixir
; 0x10 = Demons Ring
; 0x20 = Ring of Dworf
; 0x40 = Ring of Ruby
; 0x80 = Ring of Elf
;
; XREFS:
;     Password_EncodeGameState
;     Password_Load
;     PlayerMenu_ShowStatusMenu
;     Player_AddSpecialItem
;     Player_LacksItem
;     Player_RemoveItem
;     Player_SetStartGameState
;     Shop_GetPlayerHasSelectedItem
;     Player_ApplyDamage
;     Player_HitEnemyWithMagic
;     Player_HitSpriteWithWeapon
;     SpriteBehavior_BlackOnyxDropFromZoradohna
;     SpriteBehavior_PendantDroppedFromRipasheiku
;     SpriteBehavior_ShowMagicalRod
;     Game_OpenDoorWithDemonsRing
;     Game_OpenDoorWithRingOfDworf
;     Game_OpenDoorWithRingOfElf
;     Player_CheckPushingBlock
;     Player_PickUpBlackOnyx
;     Player_PickUpElixir
;     Player_ReduceHP
;     Player_UseElixir
;============================================================================

;
; XREFS:
;     Password_EncodeGameState
;     Password_Load
;     PlayerMenu_ShowStatusMenu
;     Player_AddSpecialItem
;     Player_LacksItem
;     Player_RemoveItem
;     Player_SetStartGameState
;     Shop_GetPlayerHasSelectedItem
;     Player_ApplyDamage
;     Player_HitEnemyWithMagic
;     Player_HitSpriteWithWeapon
;     SpriteBehavior_BlackOnyxDropFromZoradohna
;     SpriteBehavior_PendantDroppedFromRipasheiku
;     SpriteBehavior_ShowMagicalRod
;     Game_OpenDoorWithDemonsRing
;     Game_OpenDoorWithRingOfDworf
;     Game_OpenDoorWithRingOfElf
;     Player_CheckPushingBlock
;     Player_PickUpBlackOnyx
;     Player_PickUpElixir
;     Player_ReduceHP
;     Player_UseElixir
;
SpecialItems:
    .byte $00                               ; SpecialItemsBits


;============================================================================
; Special flags for objectives.
;
; 0x01 = Spring of Trunk has been completed (maybe?)
; 0x02 = Spring of Trunk quest has started (maybe?)
; 0x10 = Mattock collected
; 0x20 = Path to Mascon was opened
;
; XREFS:
;     IScriptAction_IfQuestCompleted
;     IScriptAction_SetQuestComplete
;     Password_EncodeGameState
;     Password_Load
;     Player_SetStartGameState
;     SpriteBehavior_Fountain
;     SpriteBehavior_MattockDroppedFromRipasheiku
;     SpriteBehavior_SpringOfFortress
;     SpriteBehavior_SpringOfJoker
;     SpriteBehavior_SpringOfSky
;     SpriteBehavior_WingBootsDroppedByZorugeriru
;     Game_DropLadderToMascon
;     Game_OpenPathToMascon
;     Player_CheckPushingBlock
;     Player_PickUpMattockWithQuest
;     Player_PickUpWingBootsWithQuest
;     Player_Spawn
;     ScreenEvents_HandlePathToMasconEvent
;============================================================================

;
; XREFS:
;     IScriptAction_IfQuestCompleted
;     IScriptAction_SetQuestComplete
;     Password_EncodeGameState
;     Password_Load
;     Player_SetStartGameState
;     SpriteBehavior_Fountain
;     SpriteBehavior_MattockDroppedFromRipasheiku
;     SpriteBehavior_SpringOfFortress
;     SpriteBehavior_SpringOfJoker
;     SpriteBehavior_SpringOfSky
;     SpriteBehavior_WingBootsDroppedByZorugeriru
;     Game_DropLadderToMascon
;     Game_OpenPathToMascon
;     Player_CheckPushingBlock
;     Player_PickUpMattockWithQuest
;     Player_PickUpWingBootsWithQuest
;     Player_Spawn
;     ScreenEvents_HandlePathToMasconEvent
;
Quests:
    .byte $00                               ; Quests


;============================================================================
; The loaded special event ID for the current screen.
;
; This controls which custom logic is run for a screen,
; and the state around that logic.
;
; Bits 0-2 define the handler in a lookup table (count of
; 0-2), but in theory could be extended for more handlers.
;
; Bit 7 is reserved for the handler's use.
;
; If 0xFF, this is unset. Handlers may set this after
; use.
;
; XREFS:
;     Area_ScrollTo
;     GameLoop_RunScreenEventHandlers
;     ScreenEvents_HandleBoss
;     ScreenEvents_HandlePathToMasconEvent
;     Screen_LoadSpecialEventID
;     Screen_SetNoSpecialEventID
;     UNUSED_ClearScreenSpecialEventID
;============================================================================

;
; XREFS:
;     Area_ScrollTo
;     GameLoop_RunScreenEventHandlers
;     ScreenEvents_HandleBoss
;     ScreenEvents_HandlePathToMasconEvent
;     Screen_LoadSpecialEventID
;     Screen_SetNoSpecialEventID
;     UNUSED_ClearScreenSpecialEventID
;
CurrentScreen_SpecialEventID:
    .byte $00                               ; byte

;
; XREFS:
;     Game_InitScreenAndMusic
;     Game_InitStateForSpawn
;     Game_MainLoop
;
Maybe_Game_Ready:
    .byte $00                               ; bool


;============================================================================
; The current phase of the screen fade-out.
;
; This is a value between 0 and 3 (inclusive) that indicates
; the phase when fading out the screen (used during screen
; transitions or death). This is used as a counter as an index
; into a palette delta table,
; FADE_OUT_DELTA_TABLE.
;
; XREFS:
;     Player_HandleDeath
;     Screen_FadeToBlack
;     Screen_NextTransitionState
;     Screen_SetFadeOutPalette
;     UNUSED_Screen_ClearFadeOutStage
;============================================================================

;
; XREFS:
;     Player_HandleDeath
;     Screen_FadeToBlack
;     Screen_NextTransitionState
;     Screen_SetFadeOutPalette
;     UNUSED_Screen_ClearFadeOutStage
;
Screen_FadeOutStage:
    .byte $00                               ; byte


;============================================================================
; Player's health (full)
;
; XREFS:
;     Game_LoadFirstLevel
;     Player_AddHP
;     Player_FillHPAndMP
;     Player_ReduceHP
;     Player_Spawn
;     Player_UseHourGlass
;     Player_UseRedPotion
;     UI_DrawPlayerHP
;     UI_DrawPlayerHPValue
;============================================================================

;
; XREFS:
;     Game_LoadFirstLevel
;     Player_AddHP
;     Player_FillHPAndMP
;     Player_ReduceHP
;     Player_Spawn
;     Player_UseHourGlass
;     Player_UseRedPotion
;     UI_DrawPlayerHP
;     UI_DrawPlayerHPValue
;
Player_HP_U:
    .byte $00                               ; byte


;============================================================================
; Player's health (fraction)
;
; XREFS:
;     Player_ReduceHP
;     Player_UseHourGlass
;============================================================================

;
; XREFS:
;     Player_ReduceHP
;     Player_UseHourGlass
;
Player_HP_L:
    .byte $00                               ; byte

    .byte $00,$00                           ; undefined

;
; XREFS:
;     Debug_ChooseArea
;     EndGame_MoveToKingsRoom
;     FUN_PRG15_MIRROR__daf6
;     Game_DropLadderToMascon
;     Game_InitStateForStartScreen
;     Game_SetupAndLoadOutsideArea
;     Game_SpawnInTemple
;     Player_EnterDoorToOutside
;
Area_Region:
    .byte $00                               ; AreasRegion


;============================================================================
; Temporary storage for a sound ID.
;
; The sound ID to play (the A register) is stored here
; in PlaySound() while registers get pushed onto the
; stack. It's then loaded from here before calling
; PlaySoundInner().
;
; This is not used outside of this.
;
; XREFS:
;     Sound_PlayEffect
;============================================================================

;
; XREFS:
;     Sound_PlayEffect
;
Temp_SoundIDToPlay:
    .byte $00                               ; SoundID


;============================================================================
; Player's current title
;
; XREFS:
;     IScriptAction_CheckUpdatePlayerTitle
;     IScriptAction_IfPlayerHasTitle
;     Password_EncodeGameState
;     Password_Load
;     PlayerMenu_ShowStatusMenu
;     Player_SetInitialExpAndGold
;     Player_SetStartGameState
;     Player_UpdateAcceleration
;     Player_UseWingBoots
;     TextBox_DisplayMessage
;     TextBox_ShowMessage_ShowPlayerTitle
;============================================================================

;
; XREFS:
;     IScriptAction_CheckUpdatePlayerTitle
;     IScriptAction_IfPlayerHasTitle
;     Password_EncodeGameState
;     Password_Load
;     PlayerMenu_ShowStatusMenu
;     Player_SetInitialExpAndGold
;     Player_SetStartGameState
;     Player_UpdateAcceleration
;     Player_UseWingBoots
;     TextBox_DisplayMessage
;     TextBox_ShowMessage_ShowPlayerTitle
;
PlayerTitle:
    .byte $00                               ; byte


;============================================================================
; 0x00 = Player is alive
; 0x01 = Player is dead
;
; XREFS:
;     Game_InitStateForSpawn
;     Game_MainLoop
;     Player_HandleDeath
;     Player_ReduceHP
;============================================================================

;
; XREFS:
;     Game_InitStateForSpawn
;     Game_MainLoop
;     Player_HandleDeath
;     Player_ReduceHP
;
PlayerIsDead:
    .byte $00                               ; bool


;============================================================================
; The temple in which the player will be spawned upon death.
;
; XREFS:
;     IScriptAction_SetSpawnPoint
;     Password_EncodeGameState
;     Password_Load
;     Player_SetStartGameState
;     Game_SpawnInTemple
;============================================================================

;
; XREFS:
;     IScriptAction_SetSpawnPoint
;     Password_EncodeGameState
;     Password_Load
;     Player_SetStartGameState
;     Game_SpawnInTemple
;
TempleSpawnPoint:
    .byte $00                               ; Temple


;============================================================================
; A rotating counter tracking a visits to certain screens.
;
; This is used for screens that only show an item once out
; of every 4 visits. It's incremented and then checked by
; Screen_Is3Of4Visits, which is called by some
; item BScripts, to determine whether to hide or show items.
;
; XREFS:
;     Screen_Is3Of4Visits
;============================================================================

;
; XREFS:
;     Screen_Is3Of4Visits
;
Screen_TrackedVisitCount:
    .byte $00,$00                           ; undefined


;============================================================================
; Block properties of the currently-active screen
;
; XREFS:
;     Area_GetBlockProperty
;     Area_LoadBlockProperties
;============================================================================

;
; XREFS:
;     Area_GetBlockProperty
;     Area_LoadBlockProperties
;
BlockProperties:
    .byte $00                               ; [0]:

;
; XREFS:
;     Area_LoadBlockProperties
;
BlockProperties_1_:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:
    .byte $00                               ; [8]:
    .byte $00                               ; [9]:
    .byte $00                               ; [10]:
    .byte $00                               ; [11]:
    .byte $00                               ; [12]:
    .byte $00                               ; [13]:
    .byte $00                               ; [14]:
    .byte $00                               ; [15]:
    .byte $00                               ; [16]:
    .byte $00                               ; [17]:
    .byte $00                               ; [18]:
    .byte $00                               ; [19]:
    .byte $00                               ; [20]:
    .byte $00                               ; [21]:
    .byte $00                               ; [22]:
    .byte $00                               ; [23]:
    .byte $00                               ; [24]:
    .byte $00                               ; [25]:
    .byte $00                               ; [26]:
    .byte $00                               ; [27]:
    .byte $00                               ; [28]:
    .byte $00                               ; [29]:
    .byte $00                               ; [30]:
    .byte $00                               ; [31]:
    .byte $00                               ; [32]:
    .byte $00                               ; [33]:
    .byte $00                               ; [34]:
    .byte $00                               ; [35]:
    .byte $00                               ; [36]:
    .byte $00                               ; [37]:
    .byte $00                               ; [38]:
    .byte $00                               ; [39]:
    .byte $00                               ; [40]:
    .byte $00                               ; [41]:
    .byte $00                               ; [42]:
    .byte $00                               ; [43]:
    .byte $00                               ; [44]:
    .byte $00                               ; [45]:
    .byte $00                               ; [46]:
    .byte $00                               ; [47]:
    .byte $00                               ; [48]:
    .byte $00                               ; [49]:
    .byte $00                               ; [50]:
    .byte $00                               ; [51]:
    .byte $00                               ; [52]:
    .byte $00                               ; [53]:
    .byte $00                               ; [54]:
    .byte $00                               ; [55]:
    .byte $00                               ; [56]:
    .byte $00                               ; [57]:
    .byte $00                               ; [58]:
    .byte $00                               ; [59]:
    .byte $00                               ; [60]:
    .byte $00                               ; [61]:
    .byte $00                               ; [62]:
    .byte $00                               ; [63]:
    .byte $00                               ; [64]:
    .byte $00                               ; [65]:
    .byte $00                               ; [66]:
    .byte $00                               ; [67]:
    .byte $00                               ; [68]:
    .byte $00                               ; [69]:
    .byte $00                               ; [70]:
    .byte $00                               ; [71]:
    .byte $00                               ; [72]:
    .byte $00                               ; [73]:
    .byte $00                               ; [74]:
    .byte $00                               ; [75]:
    .byte $00                               ; [76]:
    .byte $00                               ; [77]:
    .byte $00                               ; [78]:
    .byte $00                               ; [79]:
    .byte $00                               ; [80]:
    .byte $00                               ; [81]:
    .byte $00                               ; [82]:
    .byte $00                               ; [83]:
    .byte $00                               ; [84]:
    .byte $00                               ; [85]:
    .byte $00                               ; [86]:
    .byte $00                               ; [87]:
    .byte $00                               ; [88]:
    .byte $00                               ; [89]:
    .byte $00                               ; [90]:
    .byte $00                               ; [91]:
    .byte $00                               ; [92]:
    .byte $00                               ; [93]:
    .byte $00                               ; [94]:
    .byte $00                               ; [95]:
    .byte $00                               ; [96]:
    .byte $00                               ; [97]:
    .byte $00                               ; [98]:
    .byte $00                               ; [99]:
    .byte $00                               ; [100]:
    .byte $00                               ; [101]:
    .byte $00                               ; [102]:
    .byte $00                               ; [103]:
    .byte $00                               ; [104]:
    .byte $00                               ; [105]:
    .byte $00                               ; [106]:
    .byte $00                               ; [107]:
    .byte $00                               ; [108]:
    .byte $00                               ; [109]:
    .byte $00                               ; [110]:
    .byte $00                               ; [111]:
    .byte $00                               ; [112]:
    .byte $00                               ; [113]:
    .byte $00                               ; [114]:
    .byte $00                               ; [115]:
    .byte $00                               ; [116]:
    .byte $00                               ; [117]:
    .byte $00                               ; [118]:
    .byte $00                               ; [119]:
    .byte $00                               ; [120]:
    .byte $00                               ; [121]:
    .byte $00                               ; [122]:
    .byte $00                               ; [123]:
    .byte $00                               ; [124]:
    .byte $00                               ; [125]:
    .byte $00                               ; [126]:
    .byte $00                               ; [127]:

;
; XREFS:
;     Player_ApplyDamage
;     Player_HandleHitByMagic
;     SpriteBehavior_FlashScreenHitPlayer
;     SpriteBehavior_Unknown_29_SomeSetup
;     Player_ReduceHP
;     Player_Something_ChangeHP
;
Arg_PlayerHealthDelta_L:
    .byte $00                               ; byte

;
; XREFS:
;     Player_ApplyDamage
;     Player_HandleHitByMagic
;     SpriteBehavior_FlashScreenHitPlayer
;     SpriteBehavior_Unknown_29_SomeSetup
;     Player_ReduceHP
;     Player_Something_ChangeHP
;
Arg_PlayerHealthDelta_U:
    .byte $00                               ; byte

;
; XREFS:
;     SpriteBehavior_Unknown_29_SomeSetup
;     Player_Something_ChangeHP
;
SpriteBehaviorUnknown20_SomethingXOrY:
    .byte $00                               ; byte

;
; XREFS:
;     SpriteBehavior_Unknown_29_SomeSetup
;     Player_Something_ChangeHP
;
BYTE_04bf:
    .byte $00                               ; byte

;
; XREFS:
;     Player_Something_ChangeHP
;
Temp1_SomethingChangedHP:
    .byte $00                               ; byte

;
; XREFS:
;     Player_Something_ChangeHP
;
Temp2_SomethingChangedHP:
    .byte $00                               ; byte

;
; XREFS:
;     PasswordScreen_GetDPadBits
;     PasswordScreen_Show
;
Password_DPadBits:
    .byte $00                               ; ButtonBitmask


;============================================================================
; A counter used to wait after holding down a direction before auto-repeating
; the cursor movement.
;
; See PasswordScreen_GetDPadBits for usage.
;
; XREFS:
;     PasswordScreen_GetDPadBits
;     PasswordScreen_Show
;============================================================================

;
; XREFS:
;     PasswordScreen_GetDPadBits
;     PasswordScreen_Show
;
Password_CounterBeforeAutoRepeatMove:
    .byte $00,$00,$00                       ; byte

;
; XREFS:
;     Password_EncodeValueList
;
Password_TempY:
    .byte $00                               ; byte

;
; XREFS:
;     Password_DecodeValueList
;     Password_EncodeValueList
;
Password_TempX:
    .byte $00                               ; byte

;
; XREFS:
;     Password_DecodeValueList
;     Password_EncodeValueList
;
Password_TempA:
    .byte $00                               ; byte

;
; XREFS:
;     Password_DecodeValue
;     Password_EncodeValue
;     Password_GenerateState
;     Password_GenerateStateAndReset
;     Password_Load
;     Password_Maybe_CheckPasswordLength
;
Password_ByteCounter:
    .byte $00                               ; byte

;
; XREFS:
;     Password_DecodeValue
;     Password_EncodeValue
;     Password_GenerateState
;     Password_GenerateStateAndReset
;     Password_Load
;     Password_Maybe_CheckPasswordLength
;
Password_BitCounter:
    .byte $00                               ; byte

;
; XREFS:
;     Password_GenerateState
;     Password_GetNext6Bits
;
Password_6BitCount:
    .byte $00                               ; byte

;
; XREFS:
;     Password_EncodeValue
;     Password_GenerateState
;     Password_Maybe_CheckPasswordLength
;
Password_Checksum:
    .byte $00                               ; byte

;
; XREFS:
;     Password_DecodeValue
;     Password_EncodeValue
;     Password_GenerateState
;
Password_EncodedState:
    .byte $00                               ; [0]:

;
; XREFS:
;     Password_Maybe_CheckPasswordLength
;
Password_EncodedState_1_:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:
    .byte $00                               ; [4]:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:
    .byte $00                               ; [8]:
    .byte $00                               ; [9]:
    .byte $00                               ; [10]:
    .byte $00                               ; [11]:
    .byte $00                               ; [12]:
    .byte $00                               ; [13]:
    .byte $00                               ; [14]:
    .byte $00                               ; [15]:
    .byte $00                               ; [16]:
    .byte $00                               ; [17]:
    .byte $00                               ; [18]:
    .byte $00                               ; [19]:
    .byte $00                               ; [20]:
    .byte $00                               ; [21]:
    .byte $00                               ; [22]:
    .byte $00                               ; [23]:
    .byte $00                               ; [24]:
    .byte $00                               ; [25]:
    .byte $00                               ; [26]:
    .byte $00                               ; [27]:
    .byte $00                               ; [28]:
    .byte $00                               ; [29]:
    .byte $00                               ; [30]:
    .byte $00                               ; [31]:


;============================================================================
; Title the player will get in the next guru visit.
;
; XREFS:
;     IScriptAction_CheckUpdatePlayerTitle
;     PlayerMenu_ShowStatusMenu
;     Player_SetInitialExpAndGold
;     Player_SetStartGameState
;     Player_CheckReachedNextTitle
;============================================================================

;
; XREFS:
;     IScriptAction_CheckUpdatePlayerTitle
;     PlayerMenu_ShowStatusMenu
;     Player_SetInitialExpAndGold
;     Player_SetStartGameState
;     Player_CheckReachedNextTitle
;
NextPlayerTitle:
    .byte $00                               ; byte


;============================================================================
; Width of the HP/MP bar.
;
; This gets set when loading a screen, and is used to draw
; the screen width.
;
; It's possible that this was at one point meant to be
; updated based on progression or some other state. Pure
; speculation.
;
; XREFS:
;     UI_DrawHUDSprites
;     UI_SetHUDBarValue
;============================================================================

;
; XREFS:
;     UI_DrawHUDSprites
;     UI_SetHUDBarValue
;
UI_MPAndHPBarWidth:
    .byte $00                               ; byte

    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00                               ; undefined


;============================================================================
; Buffer of state to write to the PPU.
;
; Entries are in the order of:
;
; 1. Control + length byte
;
;    Bit 7 controls whether to set PPUCTRL to
;    VRAM_INC_ADD32_DOWN mode (if set).
;
;    The rest controls how many bytes to write from the buffer (remaining
;    bits).
;
; 2. Upper byte of PPUADDR to write.
;
; 3. Lower byte of PPUADDR to write.
;
; 4...N. Up to <length> bytes of PPUDATA to write.
;
; XREFS:
;     Area_SetBlocks_SetAttributes
;     Area_SetBlocks_WriteBlockDataColumn1
;     Area_SetBlocks_WriteBlockDataColumn2
;     DEADCODE_FUN_PRG15_MIRROR__c033
;     Fog_UpdateTiles
;     Game_Init
;     PPUBuffer_Draw
;     PPUBuffer_DrawCommand_RemoveVerticalLines
;     PPUBuffer_DrawCommand_RotateTilesRight1Pixel
;     PPUBuffer_QueueCommandOrLength
;     PPUBuffer_Set
;     PPUBuffer_WritePalette
;     Player_DrawDeathAnimation
;     Sprites_LoadImageForCurrentSprite
;============================================================================

;
; XREFS:
;     Area_SetBlocks_SetAttributes
;     Area_SetBlocks_WriteBlockDataColumn1
;     Area_SetBlocks_WriteBlockDataColumn2
;     DEADCODE_FUN_PRG15_MIRROR__c033
;     Fog_UpdateTiles
;     Game_Init
;     PPUBuffer_Draw
;     PPUBuffer_DrawCommand_RemoveVerticalLines
;     PPUBuffer_DrawCommand_RotateTilesRight1Pixel
;     PPUBuffer_QueueCommandOrLength
;     PPUBuffer_Set
;     PPUBuffer_WritePalette
;     Player_DrawDeathAnimation
;     Sprites_LoadImageForCurrentSprite
;
PPUBuffer:
    .byte $00                               ; [0]:
    .byte $00                               ; [1]:
    .byte $00                               ; [2]:
    .byte $00                               ; [3]:

;
; XREFS:
;     UI_ClearSelectedItemPic
;
PPUBuffer_4_:
    .byte $00                               ; [4]:

;
; XREFS:
;     UI_ClearSelectedItemPic
;
PPUBuffer_5_:
    .byte $00                               ; [5]:
    .byte $00                               ; [6]:
    .byte $00                               ; [7]:

;
; XREFS:
;     IScripts_DrawPortraitTileToPPU
;     Player_LoadWeaponTile
;
PPUBuffer_8_:
    .byte $00                               ; [8]:

;
; XREFS:
;     IScripts_DrawPortraitTileToPPU
;     Player_LoadWeaponTile
;
PPUBuffer_9_:
    .byte $00                               ; [9]:
    .byte $00                               ; [10]:
    .byte $00                               ; [11]:
    .byte $00                               ; [12]:
    .byte $00                               ; [13]:
    .byte $00                               ; [14]:
    .byte $00                               ; [15]:
    .byte $00                               ; [16]:
    .byte $00                               ; [17]:
    .byte $00                               ; [18]:
    .byte $00                               ; [19]:
    .byte $00                               ; [20]:
    .byte $00                               ; [21]:
    .byte $00                               ; [22]:
    .byte $00                               ; [23]:
    .byte $00                               ; [24]:
    .byte $00                               ; [25]:
    .byte $00                               ; [26]:
    .byte $00                               ; [27]:
    .byte $00                               ; [28]:
    .byte $00                               ; [29]:
    .byte $00                               ; [30]:
    .byte $00                               ; [31]:
    .byte $00                               ; [32]:
    .byte $00                               ; [33]:
    .byte $00                               ; [34]:
    .byte $00                               ; [35]:
    .byte $00                               ; [36]:
    .byte $00                               ; [37]:
    .byte $00                               ; [38]:
    .byte $00                               ; [39]:
    .byte $00                               ; [40]:
    .byte $00                               ; [41]:
    .byte $00                               ; [42]:
    .byte $00                               ; [43]:
    .byte $00                               ; [44]:
    .byte $00                               ; [45]:
    .byte $00                               ; [46]:
    .byte $00                               ; [47]:
    .byte $00                               ; [48]:
    .byte $00                               ; [49]:
    .byte $00                               ; [50]:
    .byte $00                               ; [51]:
    .byte $00                               ; [52]:
    .byte $00                               ; [53]:
    .byte $00                               ; [54]:
    .byte $00                               ; [55]:
    .byte $00                               ; [56]:
    .byte $00                               ; [57]:
    .byte $00                               ; [58]:
    .byte $00                               ; [59]:
    .byte $00                               ; [60]:
    .byte $00                               ; [61]:
    .byte $00                               ; [62]:
    .byte $00                               ; [63]:
    .byte $00                               ; [64]:
    .byte $00                               ; [65]:
    .byte $00                               ; [66]:
    .byte $00                               ; [67]:
    .byte $00                               ; [68]:
    .byte $00                               ; [69]:
    .byte $00                               ; [70]:
    .byte $00                               ; [71]:
    .byte $00                               ; [72]:
    .byte $00                               ; [73]:
    .byte $00                               ; [74]:
    .byte $00                               ; [75]:
    .byte $00                               ; [76]:
    .byte $00                               ; [77]:
    .byte $00                               ; [78]:
    .byte $00                               ; [79]:
    .byte $00                               ; [80]:
    .byte $00                               ; [81]:
    .byte $00                               ; [82]:
    .byte $00                               ; [83]:
    .byte $00                               ; [84]:
    .byte $00                               ; [85]:
    .byte $00                               ; [86]:
    .byte $00                               ; [87]:
    .byte $00                               ; [88]:
    .byte $00                               ; [89]:
    .byte $00                               ; [90]:
    .byte $00                               ; [91]:
    .byte $00                               ; [92]:
    .byte $00                               ; [93]:
    .byte $00                               ; [94]:
    .byte $00                               ; [95]:
    .byte $00                               ; [96]:
    .byte $00                               ; [97]:
    .byte $00                               ; [98]:
    .byte $00                               ; [99]:
    .byte $00                               ; [100]:
    .byte $00                               ; [101]:
    .byte $00                               ; [102]:
    .byte $00                               ; [103]:
    .byte $00                               ; [104]:
    .byte $00                               ; [105]:
    .byte $00                               ; [106]:
    .byte $00                               ; [107]:
    .byte $00                               ; [108]:
    .byte $00                               ; [109]:
    .byte $00                               ; [110]:
    .byte $00                               ; [111]:
    .byte $00                               ; [112]:
    .byte $00                               ; [113]:
    .byte $00                               ; [114]:
    .byte $00                               ; [115]:
    .byte $00                               ; [116]:
    .byte $00                               ; [117]:
    .byte $00                               ; [118]:
    .byte $00                               ; [119]:
    .byte $00                               ; [120]:
    .byte $00                               ; [121]:
    .byte $00                               ; [122]:
    .byte $00                               ; [123]:
    .byte $00                               ; [124]:
    .byte $00                               ; [125]:
    .byte $00                               ; [126]:
    .byte $00                               ; [127]:
    .byte $00                               ; [128]:
    .byte $00                               ; [129]:
    .byte $00                               ; [130]:
    .byte $00                               ; [131]:
    .byte $00                               ; [132]:
    .byte $00                               ; [133]:
    .byte $00                               ; [134]:
    .byte $00                               ; [135]:
    .byte $00                               ; [136]:
    .byte $00                               ; [137]:
    .byte $00                               ; [138]:
    .byte $00                               ; [139]:
    .byte $00                               ; [140]:
    .byte $00                               ; [141]:
    .byte $00                               ; [142]:
    .byte $00                               ; [143]:
    .byte $00                               ; [144]:
    .byte $00                               ; [145]:
    .byte $00                               ; [146]:
    .byte $00                               ; [147]:
    .byte $00                               ; [148]:
    .byte $00                               ; [149]:
    .byte $00                               ; [150]:
    .byte $00                               ; [151]:
    .byte $00                               ; [152]:
    .byte $00                               ; [153]:
    .byte $00                               ; [154]:
    .byte $00                               ; [155]:
    .byte $00                               ; [156]:
    .byte $00                               ; [157]:
    .byte $00                               ; [158]:
    .byte $00                               ; [159]:
    .byte $00                               ; [160]:
    .byte $00                               ; [161]:
    .byte $00                               ; [162]:
    .byte $00                               ; [163]:
    .byte $00                               ; [164]:
    .byte $00                               ; [165]:
    .byte $00                               ; [166]:
    .byte $00                               ; [167]:
    .byte $00                               ; [168]:
    .byte $00                               ; [169]:
    .byte $00                               ; [170]:
    .byte $00                               ; [171]:
    .byte $00                               ; [172]:
    .byte $00                               ; [173]:
    .byte $00                               ; [174]:
    .byte $00                               ; [175]:
    .byte $00                               ; [176]:
    .byte $00                               ; [177]:
    .byte $00                               ; [178]:
    .byte $00                               ; [179]:
    .byte $00                               ; [180]:
    .byte $00                               ; [181]:
    .byte $00                               ; [182]:
    .byte $00                               ; [183]:
    .byte $00                               ; [184]:
    .byte $00                               ; [185]:
    .byte $00                               ; [186]:
    .byte $00                               ; [187]:
    .byte $00                               ; [188]:
    .byte $00                               ; [189]:
    .byte $00                               ; [190]:
    .byte $00                               ; [191]:
    .byte $00                               ; [192]:
    .byte $00                               ; [193]:
    .byte $00                               ; [194]:
    .byte $00                               ; [195]:
    .byte $00                               ; [196]:
    .byte $00                               ; [197]:
    .byte $00                               ; [198]:
    .byte $00                               ; [199]:
    .byte $00                               ; [200]:
    .byte $00                               ; [201]:
    .byte $00                               ; [202]:
    .byte $00                               ; [203]:
    .byte $00                               ; [204]:
    .byte $00                               ; [205]:
    .byte $00                               ; [206]:
    .byte $00                               ; [207]:
    .byte $00                               ; [208]:
    .byte $00                               ; [209]:
    .byte $00                               ; [210]:
    .byte $00                               ; [211]:
    .byte $00                               ; [212]:
    .byte $00                               ; [213]:
    .byte $00                               ; [214]:
    .byte $00                               ; [215]:
    .byte $00                               ; [216]:
    .byte $00                               ; [217]:
    .byte $00                               ; [218]:
    .byte $00                               ; [219]:
    .byte $00                               ; [220]:
    .byte $00                               ; [221]:
    .byte $00                               ; [222]:
    .byte $00                               ; [223]:
    .byte $00                               ; [224]:
    .byte $00                               ; [225]:
    .byte $00                               ; [226]:
    .byte $00                               ; [227]:
    .byte $00                               ; [228]:
    .byte $00                               ; [229]:
    .byte $00                               ; [230]:
    .byte $00                               ; [231]:
    .byte $00                               ; [232]:
    .byte $00                               ; [233]:
    .byte $00                               ; [234]:
    .byte $00                               ; [235]:
    .byte $00                               ; [236]:
    .byte $00                               ; [237]:
    .byte $00                               ; [238]:
    .byte $00                               ; [239]:
    .byte $00                               ; [240]:
    .byte $00                               ; [241]:
    .byte $00                               ; [242]:
    .byte $00                               ; [243]:
    .byte $00                               ; [244]:
    .byte $00                               ; [245]:
    .byte $00                               ; [246]:
    .byte $00                               ; [247]:
    .byte $00                               ; [248]:
    .byte $00                               ; [249]:
    .byte $00                               ; [250]:
    .byte $00                               ; [251]:
    .byte $00                               ; [252]:
    .byte $00                               ; [253]:
    .byte $00                               ; [254]:
    .byte $00                               ; [255]:


;============================================================================
; Uncompressed block data of the current screen.
;
; The screen data can be up to 256 bytes.
;
; This section is also used for other places of the game,
; such as the password screen management and intro/outro
; animatinos.
;
; XREFS:
;     PasswordScreen_DrawAtCursorPosition
;     PasswordScreen_HandleDeleteAtCursor
;     PasswordScreen_HandleDeleteLastChar
;     PasswordScreen_HandleInputChar
;     PasswordScreen_Show
;     Password_Maybe_CheckPasswordLength
;     Area_HandleBreakableFloor
;     Area_IsBlockImpassableOrLadder
;     Area_LoadBlocks
;     Area_LoadScrollData
;     Area_SetStateFromDoorDestination
;     Area_StoreBlockIsAir
;     Game_Init
;     Game_OpenPathToMascon
;     Player_CheckIfOnLadder
;     Player_CheckOnBreakableBlock
;     Player_CheckPushingBlock
;     Player_UseMattock
;     ScreenBuffer_Clear
;     ScreenBuffer_IsBlockImpassable
;     ScreenBuffer_LoadBlockProperty
;     SpriteBehavior_EnemyUnused18_SomethingSetBlocks
;     TextBox_GetBackingAttributeData
;     Textbox_Maybe_GetAreaBehindTextbox
;============================================================================

;
; XREFS:
;     PasswordScreen_DrawAtCursorPosition
;     PasswordScreen_HandleDeleteAtCursor
;     PasswordScreen_HandleDeleteLastChar
;     PasswordScreen_HandleInputChar
;     PasswordScreen_Show
;     Password_Maybe_CheckPasswordLength
;     Area_HandleBreakableFloor
;     Area_IsBlockImpassableOrLadder
;     Area_LoadBlocks
;     Area_LoadScrollData
;     Area_SetStateFromDoorDestination
;     Area_StoreBlockIsAir
;     Game_Init
;     Game_OpenPathToMascon
;     Player_CheckIfOnLadder
;     Player_CheckOnBreakableBlock
;     Player_CheckPushingBlock
;     Player_UseMattock
;     ScreenBuffer_Clear
;     ScreenBuffer_IsBlockImpassable
;     ScreenBuffer_LoadBlockProperty
;     SpriteBehavior_EnemyUnused18_SomethingSetBlocks
;     TextBox_GetBackingAttributeData
;     Textbox_Maybe_GetAreaBehindTextbox
;
Password_EnteredChars:
ScreenBuffer:
    .byte $00                               ; byte

;
; XREFS:
;     PasswordScreen_HandleDeleteAtCursor
;     Password_Maybe_CheckPasswordLength
;     Area_LoadScrollData
;     ScreenBuffer_Clear
;
DAT_0601:
    .byte $00                               ; undefined

;
; XREFS:
;     Password_Maybe_CheckPasswordLength
;
DAT_0602:
    .byte $00                               ; undefined

;
; XREFS:
;     Password_Maybe_CheckPasswordLength
;
DAT_0603:
    .byte $00                               ; undefined

;
; XREFS:
;     Password_Maybe_CheckPasswordLength
;
DAT_0604:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00                       ; undefined

;
; XREFS:
;     Area_LoadScrollData
;
DAT_060f:
    .byte $00                               ; undefined

;
; XREFS:
;     Area_LoadScrollData
;
DAT_0610:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00       ; undefined

;
; XREFS:
;     Area_LoadScrollData
;
DAT_061f:
    .byte $00,$00,$00                       ; undefined

;
; XREFS:
;     Game_DropLadderToMascon
;
DAT_0622:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined


;============================================================================
; Password screen state.
;
; XREFS:
;     PasswordScreen_DrawSelectionCursor
;     PasswordScreen_IsCursorSpotInvalid
;     PasswordScreen_SetCursorCol
;     PasswordScreen_Show
;     PasswordScreen_UpdateCursorMovedFromLastRow
;     PasswordScreen_UpdateCursorMovedToLastRow
;     Password_HandleDPadInput
;============================================================================

;
; The input cursor column in the password screen.
;
;
; XREFS:
;     PasswordScreen_DrawSelectionCursor
;     PasswordScreen_IsCursorSpotInvalid
;     PasswordScreen_SetCursorCol
;     PasswordScreen_Show
;     PasswordScreen_UpdateCursorMovedFromLastRow
;     PasswordScreen_UpdateCursorMovedToLastRow
;     Password_HandleDPadInput
;
Password_CursorCol:
    .byte $00                               ; byte


;
; The input cursor row in the password screen.
;
;
; XREFS:
;     PasswordScreen_DrawSelectionCursor
;     PasswordScreen_IsCursorSpotInvalid
;     PasswordScreen_Show
;     Password_HandleDPadInput
;
Password_CursorRow:
    .byte $00                               ; byte


;
; The position of the selection cursor in the password field.
;
;
; XREFS:
;     PasswordScreen_DrawAtCursorPosition
;     PasswordScreen_HandleDeleteAtCursor
;     PasswordScreen_HandleDeleteLastChar
;     PasswordScreen_HandleInputChar
;     PasswordScreen_HandleMoveCursorLeft
;     PasswordScreen_HandleMoveCursorRight
;     PasswordScreen_Show
;     PasswordScreen_WriteCharTile
;
Password_FieldCursorPos:
    .byte $00                               ; byte


;
; Maximum number of characters allowed for the password.
;
;
; XREFS:
;     PasswordScreen_HandleInputChar
;     PasswordScreen_HandleMoveCursorLeft
;     PasswordScreen_HandleMoveCursorRight
;     PasswordScreen_Show
;
Password_MaxChars:
    .byte $00                               ; byte


;
; The number of password characters entered.
;
;
; XREFS:
;     PasswordScreen_HandleDeleteAtCursor
;     PasswordScreen_HandleDeleteLastChar
;     PasswordScreen_HandleInputChar
;     PasswordScreen_HandleMoveCursorLeft
;     PasswordScreen_HandleMoveCursorRight
;     PasswordScreen_Show
;     PasswordScreen_WaitForInput
;     Password_Maybe_CheckPasswordLength
;
Password_EnteredCharsLength:
    .byte $00                               ; byte

    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined

;
; XREFS:
;     StartScreen_CheckHandleInput
;     StartScreen_Draw
;     Game_ShowStartScreen
;
DAT_0687:
    .byte $00                               ; undefined

;
; XREFS:
;     SplashAnimation_FuncAA94
;     SplashAnimation_SomethingUpdateState
;
SplashAnimation_Something_SpriteOffset:
    .byte $00                               ; undefined

;
; XREFS:
;     SplashAnimation_A90F
;     SplashAnimation_FuncAA94
;     SplashAnimation_UpdateOutro
;
SplashAnimation_0689:
    .byte $00                               ; byte

;
; XREFS:
;     SplashAnimation_A90F
;     SplashAnimation_FuncAA94
;     SplashAnimation_UpdateOutro
;
SplashAnimation_068a:
    .byte $00                               ; byte

;
; XREFS:
;     SplashAnimation_FuncAA94
;
DAT_068b:
    .byte $00                               ; undefined

;
; XREFS:
;     Maybe_SplashAnimation_InitIntroState
;     Maybe_SplashAnimation_InitOutroState
;     SplashAnimation_A90F
;     SplashAnimation_Maybe_AnimPlayerStep
;
SplashAnimation_068c:
    .byte $00                               ; undefined


;============================================================================
; Counter indicating the player size scale in the intro animation.
;
; This goes from 0 to 4. The larger the number, the smaller
; the player.
;
; XREFS:
;     Maybe_SplashAnimation_InitIntroState
;     Maybe_SplashAnimation_InitOutroState
;     SplashAnimation_A90F
;     SplashAnimation_Maybe_AnimPlayerStep
;     SplashAnimation_Maybe_CalcPlayerAnimSize
;     SplashAnimation_Maybe_CalcPlayerAnimState
;     SplashAnimation_RunIntro
;============================================================================

;
; XREFS:
;     Maybe_SplashAnimation_InitIntroState
;     Maybe_SplashAnimation_InitOutroState
;     SplashAnimation_A90F
;     SplashAnimation_Maybe_AnimPlayerStep
;     SplashAnimation_Maybe_CalcPlayerAnimSize
;     SplashAnimation_Maybe_CalcPlayerAnimState
;     SplashAnimation_RunIntro
;
IntroAnimation_PlayerSizeCounter:
    .byte $00                               ; byte

;
; XREFS:
;     Maybe_SplashAnimation_InitIntroState
;     Maybe_SplashAnimation_InitOutroState
;     SplashAnimation_A90F
;     SplashAnimation_Maybe_NextAnimState1
;
SplashAnimation_068e:
    .byte $00                               ; byte

;
; XREFS:
;     Maybe_SplashAnimation_InitIntroState
;     Maybe_SplashAnimation_InitOutroState
;     SplashAnimation_A90F
;     SplashAnimation_Maybe_NextAnimState2
;     SplashAnimation_RunOutro
;
SplashAnimation_068f:
    .byte $00                               ; byte

;
; XREFS:
;     Maybe_SplashAnimation_InitIntroState
;     Maybe_SplashAnimation_InitOutroState
;     SplashAnimation_Maybe_NextAnimState1
;
SplashAnimation_0690:
    .byte $00                               ; byte

;
; XREFS:
;     Maybe_SplashAnimation_InitIntroState
;     Maybe_SplashAnimation_InitOutroState
;     SplashAnimation_Maybe_NextAnimState2
;
SplashAnimation_0691:
    .byte $00                               ; byte

;
; XREFS:
;     Maybe_SplashAnimation_InitIntroState
;     Maybe_SplashAnimation_InitOutroState
;     SplashAnimation_Maybe_CalcPlayerAnimSize
;     SplashAnimation_Maybe_CalcPlayerAnimState
;     SplashAnimation_Maybe_NextAnimState1
;
SplashAnimation_0692:
    .byte $00                               ; byte

;
; XREFS:
;     Maybe_SplashAnimation_InitIntroState
;     Maybe_SplashAnimation_InitOutroState
;     SplashAnimation_Maybe_CalcPlayerAnimSize
;     SplashAnimation_Maybe_CalcPlayerAnimState
;     SplashAnimation_Maybe_NextAnimState2
;
SplashAnimation_0693:
    .byte $00                               ; byte

;
; XREFS:
;     LAB_PRG12__a9f8 [$PRG12::a9f8]
;     SpashAnimation_SomethingOutro_a9a2
;
SplashAnimation_0694:
    .byte $00                               ; [0]:

;
; XREFS:
;     LAB_PRG12__a9f8 [$PRG12::a9f8]
;     SpashAnimation_SomethingOutro_a9a2
;
SplashAnimation_0695:
    .byte $00                               ; [1]:

;
; XREFS:
;     SpashAnimation_SomethingOutro_a9a2
;
SplashAnimation_0696:
    .byte $00                               ; [0]:

;
; XREFS:
;     SpashAnimation_SomethingOutro_a9a2
;
SplashAnimation_0697:
    .byte $00                               ; [1]:

;
; XREFS:
;     SpashAnimation_SomethingOutro_a9a2
;     SpashAnimation_SomethingOutro_aa20
;
SplashAnimation_0698:
    .byte $00                               ; [0]:

;
; XREFS:
;     SpashAnimation_SomethingOutro_a9a2
;
SplashAnimation_0698_1_:
    .byte $00                               ; [1]:

;
; XREFS:
;     SpashAnimation_SomethingOutro_a9a2
;     SpashAnimation_SomethingOutro_aa46
;
SplashAnimation_069a:
    .byte $00                               ; [0]:

;
; XREFS:
;     SpashAnimation_SomethingOutro_a9a2
;
SplashAnimation_069a_1_:
    .byte $00                               ; [1]:

;
; XREFS:
;     SpashAnimation_SomethingOutro_a9a2
;     SpashAnimation_SomethingOutro_aa20
;
SplashAnimation_069c:
    .byte $00                               ; [0]:

;
; XREFS:
;     SpashAnimation_SomethingOutro_a9a2
;
SplashAnimation_069c_1_:
    .byte $00                               ; [1]:

;
; XREFS:
;     SpashAnimation_SomethingOutro_a9a2
;     SpashAnimation_SomethingOutro_aa46
;
SplashAnimation_069e:
    .byte $00                               ; [0]:

;
; XREFS:
;     SpashAnimation_SomethingOutro_a9a2
;
SplashAnimation_069e_1_:
    .byte $00                               ; [1]:

;
; XREFS:
;     SpashAnimation_SomethingOutro_a9a2
;     SpashAnimation_SomethingOutro_aa20
;
SplashAnimation_06a0:
    .byte $00                               ; [0]:

;
; XREFS:
;     SpashAnimation_SomethingOutro_a9a2
;
SplashAnimation_06a0_1_:
    .byte $00                               ; [1]:

;
; XREFS:
;     SpashAnimation_SomethingOutro_a9a2
;     SpashAnimation_SomethingOutro_aa46
;
SplashAnimation_06a2:
    .byte $00                               ; [0]:

;
; XREFS:
;     SpashAnimation_SomethingOutro_a9a2
;
SplashAnimation_06a2_1_:
    .byte $00                               ; [1]:

;
; XREFS:
;     SplashAnimation_Intro_SomethingA708
;     SplashAnimation_RunIntro
;
SplashAnimation_PaletteStage:
    .byte $00                               ; byte

;
; XREFS:
;     SplashAnimation_DrawScenery
;
SplashAnimation_SceneIndex:
    .byte $00                               ; byte

    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00                           ; undefined

;
; XREFS:
;     Area_LoadScrollData
;
DAT_06c0:
    .byte $00                               ; undefined

;
; XREFS:
;     Area_LoadScrollData
;
DAT_06c1:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00       ; undefined

;
; XREFS:
;     Area_LoadBlocks
;
DAT_06f0:
    .byte $00                               ; undefined

;
; XREFS:
;     Area_LoadBlocks
;
DAT_06f1:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; undefined
    .byte $00,$00,$00,$00,$00,$00,$00       ; undefined

;
; XREFS:
;     SplashAnimation_FuncAA94
;     SplashAnimation_SomethingUpdateState
;     Game_Init
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;     Sprites_Reset
;
SPRITE0_Y:
SPRITE_0_RANGE_1_START:
    .byte $00                               ; byte

;
; XREFS:
;     SplashAnimation_FuncAA94
;     Sprites_Reset
;
SPRITE0_TILE:
    .byte $00                               ; byte

;
; XREFS:
;     SplashAnimation_FuncAA94
;     Sprites_Reset
;
SPRITE0_ATTRS:
    .byte $00                               ; byte

;
; XREFS:
;     SplashAnimation_FuncAA94
;     Sprites_Reset
;
SPRITE0_X:
    .byte $00                               ; byte

;
; XREFS:
;     SplashAnimation_SomethingUpdateState
;     Sprites_FlipRanges
;
SPRITE_1_RANGE_1_START:
    .byte $00                               ; byte

;
; XREFS:
;     Sprites_FlipRanges
;
BYTE_0705:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00                       ; byte

SPRITE_0_RANGE_2_START:
    .byte $00,$00,$00,$00                   ; byte

;
; XREFS:
;     Sprites_FlipRanges
;
SPRITE_1_RANGE_2_START:
    .byte $00                               ; byte

;
; XREFS:
;     Sprites_FlipRanges
;
BYTE_0785:
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00,$00,$00,$00,$00,$00   ; byte
    .byte $00,$00,$00                       ; byte
