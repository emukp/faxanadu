;============================================================================
; Faxanadu (U).nes
;
; APU_IO ($4000 - $4017)
;============================================================================

    .segment "APU_IO"
    .reloc

;
; XREFS:
;     Audio_Reset
;     Music_UpdateSQVolRegister
;     SoundEffect_PlayerDied_OnTick
;
SQ1_VOL:
    .byte $00                               ; undefined

;
; XREFS:
;     Audio_Reset
;     Music_SetupWave
;     SoundEffect_PlayerDied_OnTick
;
SQ1_SWEEP:
    .byte $00                               ; undefined

;
; XREFS:
;     Audio_Reset
;     Music_ApplySQPitchEffectToLO
;     Music_SetupWave
;     SoundEffect_PlayerDied_OnTick
;
SQ1_LO:
    .byte $00                               ; undefined

;
; XREFS:
;     Audio_Reset
;     Music_SetupWave
;     SoundEffect_PlayerDied_OnTick
;
SQ1_HI:
    .byte $00                               ; undefined

;
; XREFS:
;     Audio_Reset
;     SoundEffect_0x48_OnTick
;     SoundEffect_BreadTouched_OnTick
;     SoundEffect_CharacterInput_OnTick
;     SoundEffect_CoinDropped_OnTick
;     SoundEffect_CoinTouchedCommon_OnTick
;     SoundEffect_CursorMoved_OnTick
;     SoundEffect_FillHPOrMP_OnTick
;     SoundEffect_GoldAmountChanged_Setup
;     SoundEffect_HitEnemy_OnTick
;     SoundEffect_HitPlayer_OnTick
;     SoundEffect_ItemPickedUp_OnTick
;     SoundEffect_Magic_OnTick
;     SoundEffect_Maybe_Typing_OnTick
;     SoundEffect_Maybe_UseSpecialItem2_OnTick
;     SoundEffect_OpenDoor_OnTick
;     SoundEffect_Pakukame_OnTick
;     SoundEffect_PasswordCharInput_Setup
;     SoundEffect_PlayerDied_OnTick
;     SoundEffect_ShieldHitByMagic_OnTick
;     SoundEffect_ShowPlayerMenu_OnTick
;     SoundEffect_Tilte_OnTick
;
SQ2_VOL:
    .byte $00                               ; undefined

;
; XREFS:
;     Audio_Reset
;     Music_SetupWave
;     SoundEffect_0x48_OnTick
;     SoundEffect_BreadTouched_OnTick
;     SoundEffect_CharacterInput_OnTick
;     SoundEffect_CoinDropped_OnTick
;     SoundEffect_CoinTouchedCommon_OnTick
;     SoundEffect_CursorMoved_OnTick
;     SoundEffect_FillHPOrMP_OnTick
;     SoundEffect_GoldAmountChanged_Setup
;     SoundEffect_HitEnemy_OnTick
;     SoundEffect_HitPlayer_OnTick
;     SoundEffect_ItemPickedUp_OnTick
;     SoundEffect_Magic_OnTick
;     SoundEffect_Maybe_Typing_OnTick
;     SoundEffect_Maybe_UseSpecialItem2_OnTick
;     SoundEffect_OpenDoor_OnTick
;     SoundEffect_Pakukame_OnTick
;     SoundEffect_PasswordCharInput_Setup
;     SoundEffect_PlayerDied_OnTick
;     SoundEffect_ShieldHitByMagic_OnTick
;     SoundEffect_ShowPlayerMenu_OnTick
;     SoundEffect_Tilte_OnTick
;
SQ2_SWEEP:
    .byte $00                               ; undefined

;
; XREFS:
;     Audio_Reset
;     Music_SetupWave
;     SoundEffect_0x48_OnTick
;     SoundEffect_BreadTouched_OnTick
;     SoundEffect_CharacterInput_OnTick
;     SoundEffect_CoinDropped_OnTick
;     SoundEffect_CoinTouchedCommon_OnTick
;     SoundEffect_CursorMoved_OnTick
;     SoundEffect_FillHPOrMP_OnTick
;     SoundEffect_GoldAmountChanged_Setup
;     SoundEffect_HitEnemy_OnTick
;     SoundEffect_HitPlayer_OnTick
;     SoundEffect_ItemPickedUp_OnTick
;     SoundEffect_Magic_OnTick
;     SoundEffect_Maybe_Typing_OnTick
;     SoundEffect_Maybe_UseSpecialItem2_OnTick
;     SoundEffect_OpenDoor_OnTick
;     SoundEffect_Pakukame_OnTick
;     SoundEffect_PasswordCharInput_Setup
;     SoundEffect_PlayerDied_OnTick
;     SoundEffect_ShieldHitByMagic_OnTick
;     SoundEffect_ShowPlayerMenu_OnTick
;     SoundEffect_Tilte_OnTick
;
SQ2_LO:
    .byte $00                               ; undefined

;
; XREFS:
;     Audio_Reset
;     Music_SetupWave
;     SoundEffect_0x48_OnTick
;     SoundEffect_BreadTouched_OnTick
;     SoundEffect_CharacterInput_OnTick
;     SoundEffect_CoinDropped_OnTick
;     SoundEffect_CoinTouchedCommon_OnTick
;     SoundEffect_CursorMoved_OnTick
;     SoundEffect_FillHPOrMP_OnTick
;     SoundEffect_GoldAmountChanged_Setup
;     SoundEffect_HitEnemy_OnTick
;     SoundEffect_HitPlayer_OnTick
;     SoundEffect_ItemPickedUp_OnTick
;     SoundEffect_Magic_OnTick
;     SoundEffect_Maybe_Typing_OnTick
;     SoundEffect_Maybe_UseSpecialItem2_OnTick
;     SoundEffect_OpenDoor_OnTick
;     SoundEffect_Pakukame_OnTick
;     SoundEffect_PasswordCharInput_Setup
;     SoundEffect_PlayerDied_OnTick
;     SoundEffect_ShieldHitByMagic_OnTick
;     SoundEffect_ShowPlayerMenu_OnTick
;     SoundEffect_Tilte_OnTick
;
SQ2_HI:
    .byte $00                               ; undefined

;
; XREFS:
;     Audio_Reset
;     Music_PlayForChannel
;     Music_SetupWave
;     SoundEffect_PlayerDied_OnTick
;
TRI_LINEAR:
    .byte $00,$00                           ; undefined

;
; XREFS:
;     Audio_Reset
;     Music_SetupWave
;     SoundEffect_PlayerDied_OnTick
;
TRI_LO:
    .byte $00                               ; undefined

;
; XREFS:
;     Audio_Reset
;     Music_SetupWave
;
TRI_HI:
    .byte $00                               ; undefined

;
; XREFS:
;     Audio_Reset
;     Music_PlayNoise
;     SoundEffect_0x48_OnTick
;     SoundEffect_EnemyDied_OnTick
;     SoundEffect_HitEnemy_OnTick
;     SoundEffect_LadderDropped_OnTick
;     SoundEffect_MagicHitObstacle_OnTick
;     SoundEffect_Maybe_Step_OnTick
;     SoundEffect_Maybe_UseSpecialItem2_OnTick
;     SoundEffect_Message_OnTick
;     SoundEffect_OpenDoor_OnTick
;     SoundEffect_PlayerDied_OnTick
;     SoundEffect_PushBlock_OnTick
;     SoundEffect_Tilte_OnTick
;
NOISE_VOL:
    .byte $00                               ; undefined1

;
; XREFS:
;     Music_PlayNoise
;
DAT_400d:
    .byte $00                               ; undefined1

;
; XREFS:
;     Audio_Reset
;     SoundEffect_0x48_OnTick
;     SoundEffect_EnemyDied_OnTick
;     SoundEffect_HitEnemy_OnTick
;     SoundEffect_LadderDropped_OnTick
;     SoundEffect_MagicHitObstacle_OnTick
;     SoundEffect_Maybe_Step_OnTick
;     SoundEffect_Maybe_UseSpecialItem2_OnTick
;     SoundEffect_Message_OnTick
;     SoundEffect_OpenDoor_OnTick
;     SoundEffect_PlayerDied_OnTick
;     SoundEffect_PushBlock_OnTick
;     SoundEffect_Tilte_OnTick
;
NOISE_LO:
    .byte $00                               ; undefined

;
; XREFS:
;     Audio_Reset
;     SoundEffect_0x48_OnTick
;     SoundEffect_EnemyDied_OnTick
;     SoundEffect_HitEnemy_OnTick
;     SoundEffect_LadderDropped_OnTick
;     SoundEffect_MagicHitObstacle_OnTick
;     SoundEffect_Maybe_Step_OnTick
;     SoundEffect_Maybe_UseSpecialItem2_OnTick
;     SoundEffect_Message_OnTick
;     SoundEffect_OpenDoor_OnTick
;     SoundEffect_PlayerDied_OnTick
;     SoundEffect_PushBlock_OnTick
;     SoundEffect_Tilte_OnTick
;
NOISE_HI:
    .byte $00                               ; undefined

DMC_FREQ:
    .byte $00                               ; undefined

;
; XREFS:
;     SoundEffects_Init
;
DMC_RAW:
    .byte $00                               ; undefined

DMC_START:
    .byte $00                               ; undefined

DMC_LEN:
    .byte $00                               ; undefined

;
; XREFS:
;     OnInterrupt
;
OAMDMA:
    .byte $00                               ; undefined

;
; XREFS:
;     Audio_InitPlayingState
;     SoundEffects_Init
;
SND_CHN:
    .byte $00                               ; SoundChannelsBitmask

;
; XREFS:
;     Input_HandleOnInterrupt
;
JOY1:
    .byte $00                               ; undefined1

;
; XREFS:
;     Input_HandleOnInterrupt
;
JOY2:
    .byte $00                               ; undefined1
