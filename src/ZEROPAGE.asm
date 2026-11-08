;============================================================================
; Faxanadu (U).nes
;
; ZEROPAGE ($0000 - $00ff)
;============================================================================

    .segment "ZEROPAGE"
    .reloc


;============================================================================
; Temporary variables used throughout the game.
;
; Some of these are used for specific purposes (e.g., addresses), and some
; are more generally-used.
;
; MOD NOTES:
;     These should be safe for custom code to use outside
;     of referenced code paths.
;
; XREFS:
;     BScript_Action_FacePlayerX
;     BScript_Action_FacePlayerY
;     CurrentSprite_CheckHitPlayer
;     Player_CheckShieldHitByMagic
;     Player_DrawShield
;     Player_DrawWeapon
;     Player_HitEnemyWithMagic
;     Player_HitSpriteWithWeapon
;     SpriteBehavior_EnemyUnused18__9991
;     SpriteBehavior_EnemyUnused43
;     SpriteBehavior_Pakukame__9d78
;     SpriteBehavior_Unknown_29
;     SpriteBehavior_Zorugeriru__9df7
;     SpriteBehavior_Zorugeriru__9e13
;     SpriteUpdateHandler_Effect_EnemyDeath
;     SpriteUpdateHandler_Effect_LightningBall20
;     Sprite_CheckHitByCastMagic
;     Sprite_RunDeathDropHandler
;     Sprites_CalcYFromGravity
;     Sprites_IsSpriteOutOfWeaponRange
;     Area_ConvertPixelsToBlockPos
;     Area_HandleBreakableFloor
;     Area_LoadBlockProperties
;     Area_SetBlocks
;     Area_SetBlocks_SetAttributes
;     CastMagic_FinishHandler_HitWallEffect
;     CastMagic_FinishHandler_TilteAfterFirstHit
;     FUN_PRG15__ec58
;     Maybe_IsSpriteEntityNotOnScreen
;     Player_DrawBody
;     Player_DrawSprite
;     Player_DrawSpriteImmediately
;     Player_HandleKnockback
;     Player_LoadArmorTilesToPPU
;     Player_LoadShieldTilesToPPU
;     Player_LoadWeaponTilesToPPU
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;     Sprites_HasSpritesNotOfType
;     Sprites_LoadCommon
;     Sprites_LoadImageForCurrentSprite
;============================================================================

;
; Generic temporary variable for 1-byte values.
;
;
; XREFS:
;     BScript_Action_FacePlayerX
;     BScript_Action_FacePlayerY
;     CurrentSprite_CheckHitPlayer
;     Player_CheckShieldHitByMagic
;     Player_DrawShield
;     Player_DrawWeapon
;     Player_HitEnemyWithMagic
;     Player_HitSpriteWithWeapon
;     SpriteBehavior_EnemyUnused18__9991
;     SpriteBehavior_EnemyUnused43
;     SpriteBehavior_Pakukame__9d78
;     SpriteBehavior_Unknown_29
;     SpriteBehavior_Zorugeriru__9df7
;     SpriteBehavior_Zorugeriru__9e13
;     SpriteUpdateHandler_Effect_EnemyDeath
;     SpriteUpdateHandler_Effect_LightningBall20
;     Sprite_CheckHitByCastMagic
;     Sprite_RunDeathDropHandler
;     Sprites_CalcYFromGravity
;     Sprites_IsSpriteOutOfWeaponRange
;     Area_ConvertPixelsToBlockPos
;     Area_HandleBreakableFloor
;     Area_LoadBlockProperties
;     Area_SetBlocks
;     Area_SetBlocks_SetAttributes
;     CastMagic_FinishHandler_HitWallEffect
;     CastMagic_FinishHandler_TilteAfterFirstHit
;     FUN_PRG15__ec58
;     Maybe_IsSpriteEntityNotOnScreen
;     Player_DrawBody
;     Player_DrawSprite
;     Player_DrawSpriteImmediately
;     Player_HandleKnockback
;     Player_LoadArmorTilesToPPU
;     Player_LoadShieldTilesToPPU
;     Player_LoadWeaponTilesToPPU
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;     Sprites_HasSpritesNotOfType
;     Sprites_LoadCommon
;     Sprites_LoadImageForCurrentSprite
;
Temp_00:
    .byte $00                               ; byte


;
; Generic temporary variable for 1-byte values.
;
;
; XREFS:
;     Player_HitEnemyWithMagic
;     Sprite_CheckHitByCastMagic
;     Sprite_RunDeathDropHandler
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;
Temp_01:
    .byte $00                               ; byte


;
; Temporary variable used for address reads.
;
;
; XREFS:
;     BScript_Op_AddToSpriteData
;     Player_ApplyDamage
;     Player_DrawWeapon
;     Player_HitEnemyWithMagic
;     Sprite_GetBounds
;     Area_LoadScrollData
;     Area_SetBlocks_SetAttributes
;     Area_SetStateFromDoorDestination
;     CurrentSprite_LoadTilesInfo
;     Game_LoadAreaTable
;     IScripts_DrawPortraitTileToPPU
;     IScripts_LoadPortraitTilesAddress
;     LAB_PRG15__e852 [$PRG15::e852]
;     LAB_PRG15__ea13 [$PRG15::ea13]
;     Player_CheckSwitchScreen
;     Player_CheckSwitchScreen_SwitchAreaHoriz
;     Player_LoadArmorTile
;     Player_LoadShieldTile
;     Player_LoadWeaponTile
;     Screen_LoadAllScreenInfo
;     Sprite_Draw
;     Sprite_DrawPortraitPartAppearance
;     Sprite_Draw_FlippedHoriz
;     Sprite_SetAppearanceAddrFromOffset
;     Sprite_SetPlayerAppearanceAddr
;     Sprites_LoadCommon
;
Temp_Addr_L:
    .byte $00                               ; byte

;
; XREFS:
;     BScript_Op_AddToSpriteData
;     Player_ApplyDamage
;     Player_DrawWeapon
;     Sprite_GetBounds
;     Area_LoadScrollData
;     Area_SetBlocks_SetAttributes
;     Area_SetStateFromDoorDestination
;     CurrentSprite_LoadTilesInfo
;     Game_LoadAreaTable
;     IScripts_LoadPortraitTilesAddress
;     Player_CheckSwitchScreen
;     Player_CheckSwitchScreen_SwitchAreaHoriz
;     Player_LoadArmorTile
;     Player_LoadShieldTile
;     Player_LoadWeaponTile
;     Screen_LoadAllScreenInfo
;     Sprite_DrawPortraitPartAppearance
;     Sprite_SetAppearanceAddrFromOffset
;     Sprite_SetPlayerAppearanceAddr
;     Sprites_LoadCommon
;
Temp_Addr_U:
    .byte $00                               ; byte

;
; XREFS:
;     Player_ApplyDamage
;     Player_CalcValueAndFFForNeg
;     Player_DrawWeapon
;     FUN_PRG15__ec58
;     IScripts_DrawPortraitTileToPPU
;     Player_LoadWeaponTile
;     Sprite_Draw_FlippedHoriz
;
Temp_04:
    .byte $00                               ; byte

;
; XREFS:
;     Player_ApplyDamage
;     Player_CalcValueAndFFForNeg
;     Player_DrawWeapon
;     FUN_PRG15__ec58
;     IScripts_DrawPortraitTileToPPU
;     Player_LoadWeaponTile
;     Sprite_Draw_FlippedHoriz
;
Temp_05:
    .byte $00                               ; byte

;
; XREFS:
;     Area_SetBlocks_SetAttributes
;     PPUBuffer_DrawCommand_RemoveVerticalLines
;     PPUBuffer_DrawCommand_RotateTilesRight1Pixel
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;     Screen_RunWriteScrollDataHandler
;
Temp_06:
    .byte $00                               ; byte


;
; Temporary variable used only for vertical line removal.
;
; This is used by
; PPUBuffer_DrawCommand_RemoveVerticalLines,
; which is used during the player death animation.
;
; Outside of that, it's unused by Faxanadu.
;
;
; XREFS:
;     PPUBuffer_DrawCommand_RemoveVerticalLines
;
Temp_07:
    .byte $00                               ; byte

;
; XREFS:
;     Area_LoadBlocks
;     Area_LoadNextCompressedScreenBit
;     Area_LoadTiles
;     PPUBuffer_DrawCommand_RemoveVerticalLines
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;     Screen_LoadSpritePalette
;     Screen_LoadUIPalette
;     Screen_SetFadeOutPalette
;     Screen_SetPaletteData
;
Temp_08:
    .byte $00                               ; byte

;
; XREFS:
;     Area_LoadBlocks
;     Area_LoadTiles
;     Palette_IndexToROMOffset16
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;     Screen_LoadSpritePalette
;     Screen_LoadUIPalette
;     Screen_SetFadeOutPalette
;
Temp_09:
    .byte $00                               ; byte


;============================================================================
; Saved flags for PPUCTRL.
;
; These are set here so that the intended flags can be applied whenever
; necessary.
;
; XREFS:
;     Game_InitScreenAndMusic
;     PPUBuffer_Draw
;     PPU_HandleOnInterrupt
;     PPU_InitVBlank
;     PPU_SetVRAMIncrementAdd1Across
;     Screen_WriteBlockTilesColumnToPPU
;     Screen_WriteBlockTilesRowToPPU
;============================================================================

;
; XREFS:
;     Game_InitScreenAndMusic
;     PPUBuffer_Draw
;     PPU_HandleOnInterrupt
;     PPU_InitVBlank
;     PPU_SetVRAMIncrementAdd1Across
;     Screen_WriteBlockTilesColumnToPPU
;     Screen_WriteBlockTilesRowToPPU
;
PPU_ControlFlags:
    .byte $00                               ; PPUCtrlFlags


;============================================================================
; The color mode of the screen.
;
; 0 = Color
; 1 = Grayscale
;
; XREFS:
;     Player_HitEnemyWithMagic
;     Player_HitSpriteWithWeapon
;     SpriteBehavior_FlashScreenHitPlayer
;     Game_InitScreenAndMusic
;     PPU_HandleOnInterrupt
;     Screen_ClearSprites
;============================================================================

;
; XREFS:
;     Player_HitEnemyWithMagic
;     Player_HitSpriteWithWeapon
;     SpriteBehavior_FlashScreenHitPlayer
;     Game_InitScreenAndMusic
;     PPU_HandleOnInterrupt
;     Screen_ClearSprites
;
PPU_Mask:
    .byte $00                               ; PPUMaskFlags


;============================================================================
; X delta in pixels used during scrolling.
;
; This controls the PPU scroll overlay when switching
; between screens 0 and 1.
;
; XREFS:
;     Area_LoadScrollData
;     Area_ScrollScreenRight
;     Game_InitScreenAndMusic
;     Game_InitStateForSpawn
;     PPU_HandleOnInterrupt
;     Screen_HandleScrollLeft
;     Screen_HandleScrollRight
;     Screen_UpdateForScroll
;     Sprite_Draw
;============================================================================

;
; XREFS:
;     Area_LoadScrollData
;     Area_ScrollScreenRight
;     Game_InitScreenAndMusic
;     Game_InitStateForSpawn
;     PPU_HandleOnInterrupt
;     Screen_HandleScrollLeft
;     Screen_HandleScrollRight
;     Screen_UpdateForScroll
;     Sprite_Draw
;
PPU_ScrollX:
    .byte $00                               ; byte


;============================================================================
; X delta in screens used during scrolling.
;
; This is used to swap between the PPU scroll screens.
; The even/odd flag will be used to dictate the current
; screen.
;
; XREFS:
;     TextBox_FillBackground
;     Area_LoadScrollData
;     Area_ScrollScreenRight
;     Area_SetBlocks_SetAttributes
;     Area_SetPPUAddrForBlockIndex
;     Game_InitScreenAndMusic
;     Game_InitStateForSpawn
;     PPU_HandleOnInterrupt
;     PPU_SetAddrForTextBoxPos
;     Screen_HandleScrollLeft
;     Screen_HandleScrollRight
;============================================================================

;
; XREFS:
;     TextBox_FillBackground
;     Area_LoadScrollData
;     Area_ScrollScreenRight
;     Area_SetBlocks_SetAttributes
;     Area_SetPPUAddrForBlockIndex
;     Game_InitScreenAndMusic
;     Game_InitStateForSpawn
;     PPU_HandleOnInterrupt
;     PPU_SetAddrForTextBoxPos
;     Screen_HandleScrollLeft
;     Screen_HandleScrollRight
;
PPU_ScrollScreen:
    .byte $00                               ; byte


;============================================================================
; The ready state for the screen.
;
; This has two states:
;
;     0 = Ready
;     1 = Not Ready (Game not yet playable)
;
; NOTE:
;     Some code checks against alternative states: 1 and 5.
;
;     These do not seem to be used, and appear to be
;     remnants of an older design.
;
; XREFS:
;     Game_DrawScreenInFrozenState
;     Game_InitStateForSpawn
;     Player_DrawBody
;     Player_HandleDeath
;     Screen_SetupSprites
;============================================================================

;
; XREFS:
;     Game_DrawScreenInFrozenState
;     Game_InitStateForSpawn
;     Player_DrawBody
;     Player_HandleDeath
;     Screen_SetupSprites
;
Screen_ReadyState:
    .byte $00                               ; ScreenReadyState


;============================================================================
; MOD NOTES: 1 unused byte of RAM.
;============================================================================
    .byte $00                               ; undefined


;============================================================================
; A latch managing interrupt handling logic.
;
; This is set to 1 when interrupt handlers have been run.
; That includes:
;
; * PPU handling
; * OAM reset
; * Audio/sound playback
; * Input handling.
; * Advancing InterruptCounter
;
; If already 1, PRG15:c999 won't run handlers again.
;
; Callers can set to 0 to request running interrupt handlers.
;
; XREFS:
;     Game_InitScreenAndMusic
;     OnInterrupt
;     WaitForNextFrame
;============================================================================

;
; XREFS:
;     Game_InitScreenAndMusic
;     OnInterrupt
;     WaitForNextFrame
;
Game_InterruptsHandledLatch:
    .byte $00                               ; bool


;============================================================================
; The previous PRG ROM bank saved before switching to a new bank.
;
; This allows for pushing to a new bank and then popping
; back to this bank.
;
; XREFS:
;     Game_InitMMCAndBank
;     MMC1_RestorePrevROMBank
;     MMC1_SaveROMBankAndUpdateTo
;============================================================================

;
; XREFS:
;     Game_InitMMCAndBank
;     MMC1_RestorePrevROMBank
;     MMC1_SaveROMBankAndUpdateTo
;
SavedPRGBank:
    .byte $00                               ; ROMBank


;============================================================================
; State used to help synchronize MMC1 operations.
;
;   0 = Idle
;   1 = Writing to MMC1 (switching banks).
; > 1 = MMC1 is re-initializing.
;
; XREFS:
;     Game_InitMMCAndBank
;     MMC1_EnsurePRG
;     MMC1_UpdateROMBank
;============================================================================

;
; XREFS:
;     Game_InitMMCAndBank
;     MMC1_EnsurePRG
;     MMC1_UpdateROMBank
;
MMC1_ShiftSync:
    .byte $00                               ; byte


;============================================================================
; Whether to process standard behavior on interrupts.
;
; If 1, then the interrupt handler will manage game
; state, audio, and read button inputs.
;
; If 0, this will all be paused.
;
; XREFS:
;     Game_InitScreenAndMusic
;     OnInterrupt
;     PPU_WaitUntilFlushed
;     Screen_ResetForGamePlay
;     Screen_ResetForNonGame
;============================================================================

;
; XREFS:
;     Game_InitScreenAndMusic
;     OnInterrupt
;     PPU_WaitUntilFlushed
;     Screen_ResetForGamePlay
;     Screen_ResetForNonGame
;
Game_InterruptHandlersEnabled:
    .byte $00                               ; bool


;============================================================================
; Counter tracking state for temporary pausing of interrupt handlers.
;
; When interrupt handlers are paused (by setting
; Game_InterruptHandlersEnabled to 0), this will be
; incremented up to a value of 2.
;
; PPU_WaitUntilFlushed will wait for this to hit 2
; before returning, ensuring there's time for the PPU to
; flush before returning to the caller.
;
; XREFS:
;     OnInterrupt
;     PPU_WaitUntilFlushed
;============================================================================

;
; XREFS:
;     OnInterrupt
;     PPU_WaitUntilFlushed
;
PauseInterruptCounter:
    .byte $00                               ; byte


;============================================================================
; MOD NOTES: 1 unused byte of RAM.
;============================================================================
    .byte $00                               ; byte


;============================================================================
; Controller port and button state management.
;
; XREFS:
;     PasswordScreen_GetDPadBits
;     Maybe_Player_CalcAnimFrame
;     Player_CastMagic
;     EndGame_MovePlayerTowardKing
;     GameLoop_CheckUseCurrentItem
;     Game_UpdatePlayerOnScroll
;     GetRandom
;     Input_HandleOnInterrupt
;     Player_CheckHandleJump
;     Player_CheckHandleVertMovement
;     Player_CheckPushingBlock
;     Player_GetBodySpriteFrameOffset
;     Player_HandleVertLadderOrJump
;     Player_UpdateAcceleration
;============================================================================

;
; Buttons last pressed by the player in controller port 1.
;
; Bit 0: Right
; Bit 1: Left
; Bit 2: Down
; Bit 3: Up
; Bit 4: Start
; Bit 5: Select
; Bit 6: B
; Bit 7: A
;
;
; XREFS:
;     PasswordScreen_GetDPadBits
;     Maybe_Player_CalcAnimFrame
;     Player_CastMagic
;     EndGame_MovePlayerTowardKing
;     GameLoop_CheckUseCurrentItem
;     Game_UpdatePlayerOnScroll
;     GetRandom
;     Input_HandleOnInterrupt
;     Player_CheckHandleJump
;     Player_CheckHandleVertMovement
;     Player_CheckPushingBlock
;     Player_GetBodySpriteFrameOffset
;     Player_HandleVertLadderOrJump
;     Player_UpdateAcceleration
;
Joy1_ButtonMask:
    .byte $00                               ; ButtonBitmask


;
; Buttons last pressed by the player in controller port 2.
;
; Bit 0: Right
; Bit 1: Left
; Bit 2: Down
; Bit 3: Up
; Bit 4: Start
; Bit 5: Select
; Bit 6: B
; Bit 7: A
;
;
; XREFS:
;     Debug_ChooseArea
;     Input_HandleOnInterrupt
;
Joy2_ButtonMask:
    .byte $00                               ; ButtonBitmask


;
; Buttons previously pressed before the latest button presses.
;
; This is used to restore any movement or actions invoked
; before a screen scroll or similar.
;
; Bit 0: Right
; Bit 1: Left
; Bit 2: Down
; Bit 3: Up
; Bit 4: Start
; Bit 5: Select
; Bit 6: B
; Bit 7: A
;
;
; XREFS:
;     Game_UpdatePlayerOnScroll
;     Input_HandleOnInterrupt
;
Joy1_PrevButtonMask:
    .byte $00                               ; ButtonBitmask


;
; Button bits changed since the last interrupt.
;
; Bit 0: Right
; Bit 1: Left
; Bit 2: Down
; Bit 3: Up
; Bit 4: Start
; Bit 5: Select
; Bit 6: B
; Bit 7: A
;
;
; XREFS:
;     IScriptAction_AddInventoryItem
;     IScriptAction_ShowBuySellMenu
;     IScriptAction_ShowPassword
;     IScripts_WaitForMenuInput
;     Menu_UpdateAndDraw
;     PasswordScreen_DrawAndHandleInputLoop
;     PasswordScreen_GetDPadBits
;     PasswordScreen_HandleWrongPasswordAndWaitForInput
;     PlayerMenu_HandleInventoryMenuInput
;     PlayerMenu_Show
;     PlayerMenu_ShowStatusMenu
;     PlayerMenu_ShowSubmenu
;     StartScreen_CheckHandleInput
;     TextBox_CheckForDismiss
;     TextBox_CheckShouldContinue
;     TextBox_CheckShouldContinueOrDismissMessage
;     TextBox_CheckShouldContinueOrDismissQuestion
;     TextBox_DismissIfBElseContinue
;     Player_CastMagic
;     Player_CheckHandlePressUpOnNPC
;     Area_CheckClimbAdjacentImpassable
;     EndGame_MovePlayerTowardKing
;     GameLoop_CheckPauseGame
;     GameLoop_CheckShowPlayerMenu
;     GameLoop_CheckUseCurrentItem
;     Game_ShowStartScreen
;     Input_HandleOnInterrupt
;     Player_CheckHandleAttack
;     Player_CheckHandleEnterDoor
;     Player_UpdateClimbOrJump
;
Joy1_ChangedButtonMask:
    .byte $00                               ; ButtonBitmask


;============================================================================
; Additional interrupt handling state.
;
; XREFS:
;     IScripts_PlayFillingSound
;     IScripts_PlayGoldChangeSound
;     IScripts_UpdatePortraitAnimation
;     PasswordScreen_DrawPasswordFieldCursor
;     PasswordScreen_WriteWrongPassword
;     SplashAnimation_RunOutro
;     SplashAnimation_UpdateOutro
;     TextBox_DrawDownArrowTerminatorSymbol
;     TextBox_DrawQuestionMarkTerminatorSymbol
;     TextBox_DrawUpArrowTerminatorSymbol
;     SpriteBehavior_Something_850d
;     Area_ScrollTo
;     CastMagic_FinishHandler_Death
;     CastMagic_FinishHandler_Deluge
;     CastMagic_FinishHandler_Fire
;     CastMagic_FinishHandler_Thunder
;     CastMagic_FinishHandler_Tilte
;     Game_DecGloveDuration
;     Game_DecHourGlassDuration
;     Game_DecOintmentDuration
;     Game_DecWingBootsDuration
;     Game_WaitForOAMReset
;     OnInterrupt
;     Player_CheckOnBreakableBlock
;     Player_DrawDeathAnimation
;     WaitForInterrupt
;============================================================================

;
; A running counter tracking the number of interrupt handlers
; run.
;
;
; XREFS:
;     IScripts_PlayFillingSound
;     IScripts_PlayGoldChangeSound
;     IScripts_UpdatePortraitAnimation
;     PasswordScreen_DrawPasswordFieldCursor
;     PasswordScreen_WriteWrongPassword
;     SplashAnimation_RunOutro
;     SplashAnimation_UpdateOutro
;     TextBox_DrawDownArrowTerminatorSymbol
;     TextBox_DrawQuestionMarkTerminatorSymbol
;     TextBox_DrawUpArrowTerminatorSymbol
;     SpriteBehavior_Something_850d
;     Area_ScrollTo
;     CastMagic_FinishHandler_Death
;     CastMagic_FinishHandler_Deluge
;     CastMagic_FinishHandler_Fire
;     CastMagic_FinishHandler_Thunder
;     CastMagic_FinishHandler_Tilte
;     Game_DecGloveDuration
;     Game_DecHourGlassDuration
;     Game_DecOintmentDuration
;     Game_DecWingBootsDuration
;     Game_WaitForOAMReset
;     OnInterrupt
;     Player_CheckOnBreakableBlock
;     Player_DrawDeathAnimation
;     WaitForInterrupt
;
InterruptCounter:
    .byte $00                               ; byte


;
; Whether the OAM needs to be reset at the next
; interrupt handler.
;
;
; XREFS:
;     Game_WaitForOAMReset
;     OnInterrupt
;
Game_NeedOAMReset:
    .byte $00                               ; bool

;
; XREFS:
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;     Sprites_Reset
;
Sprites_StartSlotRange:
    .byte $00                               ; byte


;============================================================================
; State for animating the fog in the area of Mist.
;
; XREFS:
;     Fog_OnTick
;     Fog_UpdateTiles
;============================================================================

;
; Tile offset for a fog tile to animate in Mist.
;
;
; XREFS:
;     Fog_OnTick
;     Fog_UpdateTiles
;
Fog_TileIndex:
    .byte $00                               ; byte


;
; State index used to determine when to animate fog tiles
; and when to compute new starting tile indexes.
;
;
; XREFS:
;     Fog_OnTick
;     Fog_UpdateTiles
;
Fog_StateIndex:
    .byte $00                               ; byte


;============================================================================
; PPU ring buffer state.
;
; This is used to schedule draws, utilizing a ring buffer.
; Contents may either be a length count and data up to that
; length to draw, or one or more draw commands up with
; arguments.
;
; See PPUBuffer_Draw.
;
; XREFS:
;     Game_InitStateForSpawn
;     PPUBuffer_Clear
;     PPUBuffer_Draw
;     PPUBuffer_DrawAll
;     PPUBuffer_DrawCommand_RemoveVerticalLines
;     PPUBuffer_DrawCommand_RotateTilesRight1Pixel
;     PPUBuffer_HasCapacity
;     PPUBuffer_WaitUntilClear
;     PPU_WaitUntilFlushed
;============================================================================

;
; Current offset within the buffer to begin adding to or
; drawing from.
;
;
; XREFS:
;     Game_InitStateForSpawn
;     PPUBuffer_Clear
;     PPUBuffer_Draw
;     PPUBuffer_DrawAll
;     PPUBuffer_DrawCommand_RemoveVerticalLines
;     PPUBuffer_DrawCommand_RotateTilesRight1Pixel
;     PPUBuffer_HasCapacity
;     PPUBuffer_WaitUntilClear
;     PPU_WaitUntilFlushed
;
PPUBuffer_ReadOffset:
    .byte $00                               ; byte


;
; Current upper bounds of the ring buffer.
;
; This may wrap from 0xFF -> 0.
;
; Drawing occurs until the offset meets the upper bounds.
;
;
; XREFS:
;     DEADCODE_FUN_PRG12__9041
;     IScriptAction_AddInventoryItem_ClearTextBox
;     PasswordScreen_DrawMessage
;     PasswordScreen_WriteCharTile
;     TextBox_Close
;     TextBox_DrawItemImage
;     TextBox_FillBackground
;     TextBox_Open
;     UI_DrawString
;     Area_SetBlocks_SetAttributes
;     Area_SetBlocks_WriteBlockDataColumn1
;     Area_SetBlocks_WriteBlockDataColumn2
;     Fog_UpdateTiles
;     Game_InitStateForSpawn
;     IScripts_DrawPortraitTileToPPU
;     PPUBuffer_Clear
;     PPUBuffer_Draw
;     PPUBuffer_DrawAll
;     PPUBuffer_HasCapacity
;     PPUBuffer_QueueCommandOrLength
;     PPUBuffer_WaitUntilClear
;     PPUBuffer_WritePalette
;     PPUBuffer_WriteValueMany
;     PPU_WaitUntilFlushed
;     Player_DrawDeathAnimation
;     Player_LoadWeaponTile
;     Sprites_LoadImageForCurrentSprite
;     TextBox_FillPlaceholderTextAtLineWithStartChar
;     TextBox_LoadItemSourceTiles
;     TextBox_WriteChar
;     UI_ClearSelectedItemPic
;     UI_DrawDigitsZeroPadded
;
PPUBuffer_WriteOffset:
    .byte $00                               ; byte


;
; Temporary state used when drawing from the PPU buffer.
;
; MOD NOTES:
;     This is clobbered by PPUBuffer_Draw, but is
;     otherwise unused and can be reused in self-contained code.
;
;
; XREFS:
;     PPUBuffer_Draw
;
PPUBuffer_Temp_PendingEntryCount:
    .byte $00                               ; byte


;
; Temporary state used when drawing from the PPU buffer.
;
; MOD NOTES:
;     This is clobbered by PPUBuffer_Draw, but is
;     otherwise unused and can be reused in self-contained code.
;
;
; XREFS:
;     PPUBuffer_Draw
;
PPUBuffer_Temp_TotalByteLength:
    .byte $00                               ; byte


;============================================================================
; Temporary value used when populating the PPU nametable.
;
; MOD NOTES:
;     This is clobbered by
;     PPU_InitAttributeAndNameTables,
;     but is otherwise unused and can be reused in
;     self-contained code.
;
; XREFS:
;     PPU_InitAttributeAndNameTables
;============================================================================

;
; XREFS:
;     PPU_InitAttributeAndNameTables
;
Temp_PPU_NameTableValue:
    .byte $00                               ; byte


;============================================================================
; The current area the player is in.
;
; $00 = Eolis
; $01 = Apolune
; $02 = Forepaw
; $03 = Mascon
; $04 = Victim
; $05 = Conflate
; $06 = Daybreak
; $07 = Evil Fortress
;
; XREFS:
;     PlayerMenu_HandleInventoryMenuInput
;     SpriteBehavior_EnemyUnused18__9991
;     Area_SetStateFromDoorDestination
;     FUN_PRG15__daf6
;     Fog_OnTick
;     GameLoop_CheckShowPlayerMenu
;     Game_EnterAreaHandler
;     Game_EnterBuilding
;     Game_ExitBuilding
;     Game_InitStateForStartScreen
;     Game_LoadAreaTable
;     Game_LoadCurrentArea
;     Game_LoadFirstLevel
;     Game_SetupAndLoadOutsideArea
;     Game_SpawnInTemple
;     Player_CheckSwitchScreen
;     Player_CheckSwitchScreen_SwitchAreaHoriz
;     Player_EnterDoorToInside
;     Player_SetWeapon
;     Player_UseMattock
;     Screen_LoadAllScreenInfo
;============================================================================

;
; XREFS:
;     PlayerMenu_HandleInventoryMenuInput
;     SpriteBehavior_EnemyUnused18__9991
;     Area_SetStateFromDoorDestination
;     FUN_PRG15__daf6
;     Fog_OnTick
;     GameLoop_CheckShowPlayerMenu
;     Game_EnterAreaHandler
;     Game_EnterBuilding
;     Game_ExitBuilding
;     Game_InitStateForStartScreen
;     Game_LoadAreaTable
;     Game_LoadCurrentArea
;     Game_LoadFirstLevel
;     Game_SetupAndLoadOutsideArea
;     Game_SpawnInTemple
;     Player_CheckSwitchScreen
;     Player_CheckSwitchScreen_SwitchAreaHoriz
;     Player_EnterDoorToInside
;     Player_SetWeapon
;     Player_UseMattock
;     Screen_LoadAllScreenInfo
;
Area_CurrentArea:
    .byte $00                               ; Area


;============================================================================
; The next sprite slot.
;
; This will alternate between putting sprites in ranges 0-31
; and 32-63.
;
; If either range is filled with sprites, Sprites_SlotsFull
; will be set to 1. No new sprite slots will be allocated.
; This takes place in Sprites_IncNextSpriteSlot.
;
; XREFS:
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;     Sprites_IncNextSpriteSlot
;     Sprites_Reset
;============================================================================

;
; XREFS:
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;     Sprites_IncNextSpriteSlot
;     Sprites_Reset
;
Sprites_SpriteSlot:
    .byte $00                               ; byte


;============================================================================
; Current sprite state.
;
; XREFS:
;     SUB_PRG14__ba48 [$PRG14::ba48]
;     Something_SetDAT26 [$PRG14::8c7f]
;     SpriteUpdateHandler_Invisible
;     CastMagic_CalculateVisibility
;     Sprite_Draw_Finish
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;============================================================================

;
; Visibility state for the current sprite being processed.
;
; This tracks whether the current sprite is:
;
; $00 = Fully visible by foreground elements
; $01 = Obscured only on the trailing side of the sprite.
; $02 = Obscured only on the leading side of the sprite.
; $03 = Fully obscured
;
; The trailing and leading sides have to do with the direction
; the sprite is facing.
;
;
; XREFS:
;     SUB_PRG14__ba48 [$PRG14::ba48]
;     Something_SetDAT26 [$PRG14::8c7f]
;     SpriteUpdateHandler_Invisible
;     CastMagic_CalculateVisibility
;     Sprite_Draw_Finish
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;
MovingSpriteVisibility:
    .byte $00                               ; MovingSpriteVisibility


;
; An argument to Sprite_EnterNextAppearancePhase.
;
; This specifies the X position of the sprite.
;
;
; XREFS:
;     IScripts_SetPortraitSpriteXY
;     CurrentSprite_UpdateState
;     Player_CalculateVisibility
;     Player_DrawShield
;     Player_DrawWeapon
;     SpriteUpdateHandler_Effect_LightningBall20
;     SpriteUpdateHandler_Enemy_Unused_SnakeRoundPart
;     CastMagic_FinishHandler_TilteAfterFirstHit
;     CastMagic_RunUpdateSpellHandler
;     FUN_PRG15__ec58
;     Player_DrawBody
;     Sprite_Draw
;     UI_DrawPromptInputSymbol
;
Arg_DrawSprite_PosX:
    .byte $00                               ; byte


;
; An argument to Sprite_EnterNextAppearancePhase.
;
; This specifies the Y position of the sprite.
;
;
; XREFS:
;     IScripts_SetPortraitSpriteXY
;     CurrentSprite_UpdateState
;     Player_CalculateVisibility
;     Player_DrawShield
;     Player_DrawWeapon
;     SpriteUpdateHandler_Effect_EnemyDeath
;     SpriteUpdateHandler_Effect_LightningBall20
;     SpriteUpdateHandler_Enemy_Unused_SnakeRoundPart
;     CastMagic_FinishHandler_HitWallEffect
;     CastMagic_FinishHandler_TilteAfterFirstHit
;     CastMagic_RunUpdateSpellHandler
;     FUN_PRG15__ec58
;     Player_DrawBody
;     Sprite_Draw
;     UI_DrawPromptInputSymbol
;
Arg_DrawSprite_PosY:
    .byte $00                               ; byte


;============================================================================
; The current sprite's flip mask.
;
; This indicates if the sprite is flipped horizontally,
; utilizing only the Facing bit of a sprite or player's flags.
;
; The following values are allowed:
;
; $00 = Facing right (default)
; $40 = Facing left (flipped)
;
; XREFS:
;     CurrentSprite_UpdateFlipMask
;     Maybe_Player_CalcAnimFrame
;     Player_DrawShield
;     Player_DrawWeapon
;     SpriteUpdateHandler_Bread
;     SpriteUpdateHandler_Coin
;     SpriteUpdateHandler_Effect_EnemyDeath
;     SpriteUpdateHandler_Effect_Fountain
;     SpriteUpdateHandler_Effect_LightningBall20
;     SpriteUpdateHandler_Enemy_Lamprey
;     SpriteUpdateHandler_Item_Special
;     SpriteUpdateHandler_Item_Standard
;     SpriteUpdateHandler_Magic_81
;     SpriteUpdateHandler_Magic_83
;     SpriteUpdateHandler_NPC_ArmorSalesman
;     SpriteUpdateHandler_NPC_Doctor
;     SpriteUpdateHandler_NPC_KeySalesman_Others
;     SpriteUpdateHandler_NPC_King
;     CastMagic_FinishHandler_HitWallEffect
;     CastMagic_FinishHandler_TilteAfterFirstHit
;     CastMagic_UpdateSpriteDirection
;     IScripts_DrawPortraitAnimationFrame
;     Player_GetBodySpriteFrameOffset
;     Player_SetFacingLeft
;     Sprite_Draw
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;     UI_DrawPromptInputSymbol
;============================================================================

;
; XREFS:
;     CurrentSprite_UpdateFlipMask
;     Maybe_Player_CalcAnimFrame
;     Player_DrawShield
;     Player_DrawWeapon
;     SpriteUpdateHandler_Bread
;     SpriteUpdateHandler_Coin
;     SpriteUpdateHandler_Effect_EnemyDeath
;     SpriteUpdateHandler_Effect_Fountain
;     SpriteUpdateHandler_Effect_LightningBall20
;     SpriteUpdateHandler_Enemy_Lamprey
;     SpriteUpdateHandler_Item_Special
;     SpriteUpdateHandler_Item_Standard
;     SpriteUpdateHandler_Magic_81
;     SpriteUpdateHandler_Magic_83
;     SpriteUpdateHandler_NPC_ArmorSalesman
;     SpriteUpdateHandler_NPC_Doctor
;     SpriteUpdateHandler_NPC_KeySalesman_Others
;     SpriteUpdateHandler_NPC_King
;     CastMagic_FinishHandler_HitWallEffect
;     CastMagic_FinishHandler_TilteAfterFirstHit
;     CastMagic_UpdateSpriteDirection
;     IScripts_DrawPortraitAnimationFrame
;     Player_GetBodySpriteFrameOffset
;     Player_SetFacingLeft
;     Sprite_Draw
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;     UI_DrawPromptInputSymbol
;
CurrentSprite_FlipMask:
    .byte $00                               ; byte


;
; UNUSED: Y scroll position for a sprite.
;
; This is written to but never read from.
;
;
; XREFS:
;     CurrentSprite_UpdateState
;     CastMagic_RunUpdateSpellHandler
;     Player_DrawBody
;
Unused_Sprite_ScrollPosY:
    .byte $00                               ; byte


;
; UNUSED: X scroll position for a sprite.
;
; This is written to but never read from.
;
;
; XREFS:
;     CurrentSprite_UpdateState
;     CastMagic_RunUpdateSpellHandler
;     Player_DrawBody
;
Unused_Sprite_ScrollPosX:
    .byte $00                               ; byte


;============================================================================
; MOD NOTES: 7 unused bytes of RAM.
;============================================================================
    .byte $00,$00,$00,$00,$00,$00,$00       ; undefined

;
; XREFS:
;     CurrentSprite_UpdateState
;     Player_DrawShield
;     Player_DrawWeapon
;     SpriteUpdateHandler_Bread
;     SpriteUpdateHandler_Effect_BossDeath
;     SpriteUpdateHandler_Effect_EnemyDeath
;     SpriteUpdateHandler_Effect_LightningBall20
;     SpriteUpdateHandler_Enemy_Unused_SnakeRoundPart
;     SpriteUpdateHandler_Invisible
;     IScripts_DrawPortraitAnimationFrame
;     Sprite_Draw_Finish
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;     Sprites_Reset
;
Sprites_PPUOffset:
    .byte $00                               ; byte


;============================================================================
; UNUSED: The following 5 bytes are either unused or only
;         written to, never read from.
;
;         All but $0036 are unsafe to use.
;
; XREFS:
;     Sprites_Reset
;============================================================================

;
; XREFS:
;     Sprites_Reset
;
Sprites_Unused_0034:
    .byte $00                               ; byte

;
; XREFS:
;     Sprites_Reset
;
Sprites_Unused_0035:
    .byte $00,$00                           ; byte

;
; XREFS:
;     Sprites_Reset
;
Sprites_Unused_0037:
    .byte $00                               ; byte

;
; XREFS:
;     Sprites_Reset
;
Sprites_Unused_0038:
    .byte $00                               ; byte


;============================================================================
; Whether sprites can currently be added.
;
; This is 0 when there's room for sprites, and 1 when the slots
; are full.
;
; XREFS:
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;     Sprites_IncNextSpriteSlot
;     Sprites_Reset
;============================================================================

;
; XREFS:
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;     Sprites_IncNextSpriteSlot
;     Sprites_Reset
;
Sprites_SlotsFull:
    .byte $00                               ; bool


;
; Temporary variable for the lower byte of a sprite's
; image data.
;
;
; XREFS:
;     Sprite_Draw
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;
Sprite_TileInfo_ReadAddr_L:
    .byte $00                               ; byte


;
; Temporary variable for the upper byte of a sprite's
; image data.
;
;
; XREFS:
;     Sprite_Draw
;
Sprite_TileInfo_ReadAddr_U:
    .byte $00                               ; byte


;
; Temporary variable for the normalized X position of a sprite.
;
;
; XREFS:
;     Sprite_Draw
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;
Temp_Sprites_NormXPos:
    .byte $00                               ; byte


;
; Temporary variable for the normalized Y position of a sprite.
;
;
; XREFS:
;     Sprite_Draw
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;
Temp_Sprites_NormYPos:
    .byte $00                               ; byte

;
; XREFS:
;     Sprite_Draw
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;
Sprite_TileInfo_OffsetX:
    .byte $00                               ; byte

;
; XREFS:
;     Sprite_Draw
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;
Sprite_TileInfo_OffsetY:
    .byte $00                               ; byte


;
; Temporary variable for the number of sprite tile columns
; remaining to draw.
;
;
; XREFS:
;     Sprite_Draw
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;
Temp_Sprites_ColsRemaining:
    .byte $00                               ; byte


;
; Temporary variable for the number of sprite tile rows
; remaining to draw.
;
;
; XREFS:
;     Sprite_Draw
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;
Temp_Sprites_RowsRemaining:
    .byte $00                               ; byte


;
; Temporary variable for the current X tile offset to draw for
; the sprite.
;
;
; XREFS:
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;
Temp_Sprites_TileXOffset:
    .byte $00                               ; byte


;
; Temporary variable for the current Y tile offset to draw for
; the sprite.
;
;
; XREFS:
;     Sprite_Draw_FlippedHoriz
;     Sprite_Draw_Standard
;
Temp_Sprites_TileYOffset:
    .byte $00                               ; byte


;
; A counter that increments or decrements when scrolling
; vertically.
;
; When scrolling from top to bottom, this will count up
; from 0 to 0xCF.
;
; When scrolling from bottom to top, this will count down
; from 0xCF to 0.
;
;
; XREFS:
;     Screen_HandleScrollDown
;     Screen_HandleScrollUp
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksDown
;     Screen_LoadDataUp
;
Screen_ScrollVertLoadCounter:
    .byte $00                               ; byte


;
; A counter that increments or decrements when scrolling
; horizontally.
;
; When scrolling from left to right, this will count up
; from 0x01 to 0xF9.
;
; When scrolling from right to left, this will count down
; from 0xFF to 0 and wrapping to 0xFE.
;
;
; XREFS:
;     Area_LoadScrollData
;     Screen_HandleScrollLeft
;     Screen_HandleScrollRight
;     Screen_LoadBlocksHoriz
;     Screen_LoadDataLeft
;     Screen_LoadDataRight
;
Screen_ScrollHorizLoadCounter:
    .byte $00                               ; byte

;
; XREFS:
;     Screen_LoadBlocksHoriz
;
Screen_ScrollHorizLoadOffset:
    .byte $00                               ; byte

;
; XREFS:
;     Area_ScrollScreenRight
;     Screen_LoadBlocksHoriz
;
Screen_Maybe_ScrollHorizDirection:
    .byte $00                               ; byte

;
; XREFS:
;     Screen_LoadBlockDataVert
;
Temp_Blocks_0048:
    .byte $00                               ; byte

;
; XREFS:
;     Screen_LoadBlockDataVert
;
Unused_Blocks_0049:
    .byte $00                               ; byte


;
; UNUSED: The next 2 bytes are unused by Faxanadu.
;
    .byte $00,$00                           ; byte


;============================================================================
; PPU tilemap and attribute addresses used during screen scroll.
;
; XREFS:
;     Screen_LoadBlocksHoriz
;     Screen_WriteBlockTilesColumnToPPU
;============================================================================

;
; PPU tilemap address used when scrolling horizontally.
;
;
; XREFS:
;     Screen_LoadBlocksHoriz
;     Screen_WriteBlockTilesColumnToPPU
;
Screen_ScrollHorizBlocks_PPUTileMapAddr_L:
    .byte $00                               ; byte

;
; XREFS:
;     Screen_LoadBlocksHoriz
;     Screen_WriteBlockTilesColumnToPPU
;
Screen_ScrollHorizBlocks_PPUTileMapAddr_U:
    .byte $00                               ; byte


;
; PPU tilemap address used when scrolling vertically.
;
;
; XREFS:
;     Screen_LoadBlockDataVert
;     Screen_WriteBlockTilesRowToPPU
;
Screen_ScrollVertBlocks_PPUTileMapAddr_L:
    .byte $00                               ; byte

;
; XREFS:
;     Screen_LoadBlockDataVert
;     Screen_WriteBlockTilesRowToPPU
;
Screen_ScrollVertBlocks_PPUTileMapAddr_U:
    .byte $00                               ; byte


;
; PPU attribute address used when scrolling horizontally.
;
;
; XREFS:
;     Screen_LoadBlocksHoriz
;     Screen_WriteBlockAttrsColumnToPPU
;
Screen_ScrollHorizBlocks_PPUAttrAddr_L:
    .byte $00                               ; byte

;
; XREFS:
;     Screen_LoadBlocksHoriz
;     Screen_WriteBlockAttrsColumnToPPU
;
Screen_ScrollHorizBlocks_PPUAttrAddr_U:
    .byte $00                               ; byte


;
; PPU attribute address used when scrolling vertically.
;
;
; XREFS:
;     Screen_LoadBlockDataVert
;     Screen_WriteBlockAttrsRowToPPU
;
Screen_ScrollVertBlocks_PPUAttrAddr_L:
    .byte $00                               ; byte

;
; XREFS:
;     Screen_LoadBlockDataVert
;     Screen_WriteBlockAttrsRowToPPU
;
Screen_ScrollVertBlocks_PPUAttrAddr_U:
    .byte $00                               ; byte


;============================================================================
; The screen scrolling direction.
;
; 0 = Left
; 1 = Right
; 2 = Up
; 3 = Down
;
; XREFS:
;     Area_LoadScrollData
;     Area_ScrollScreenRight
;     GameLoop_UpdatePlayer
;     Game_MainLoop
;     Game_MovePlayerOnScroll
;     Player_CheckHandleJump
;     Screen_HandleScroll
;     Screen_StopScrollAndLoadBlockProperties
;     Screen_UpdateForScroll
;============================================================================

;
; XREFS:
;     Area_LoadScrollData
;     Area_ScrollScreenRight
;     GameLoop_UpdatePlayer
;     Game_MainLoop
;     Game_MovePlayerOnScroll
;     Player_CheckHandleJump
;     Screen_HandleScroll
;     Screen_StopScrollAndLoadBlockProperties
;     Screen_UpdateForScroll
;
Screen_ScrollDirection:
    .byte $00                               ; Direction


;============================================================================
; MOD NOTES: 2 unused bytes of RAM.
;============================================================================
    .byte $00,$00                           ; undefined


;
; The following are pending a deep-dive. A lot of these
; variables depend on each other.
;
;
; XREFS:
;     Area_ScrollScreenRight
;     Game_InitScreenAndMusic
;     Screen_HandleScrollDown
;     Screen_HandleScrollUp
;     Screen_UpdateForScroll
;
PPU_ScrollY:
    .byte $00                               ; byte

;
; XREFS:
;     Player_DrawBody
;     Player_SetInitialState
;     Screen_HandleScrollDown
;     Screen_HandleScrollUp
;     Screen_LoadBlockDataVert
;     Screen_SetupNew
;
PPU_ScrollScreenVert:
    .byte $00                               ; byte

;
; XREFS:
;     Area_LoadScrollData
;     Player_DrawBody
;     Player_SetInitialState
;     Screen_HandleScrollLeft
;     Screen_HandleScrollRight
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;     Screen_SetupNew
;
PPU_ScrollScreenHoriz:
    .byte $00                               ; byte


;============================================================================
; Default mode for the initial sprite when resetting sprite slots.
;
; This supports the following values:
;
; 0xFF = Don't add a default sprite 0.
; 0x00 = Add a default sprite 0 at X=8, Y=23 (used in game)
; 0x01 = Add a default sprite 0 at X=0, Y=72 (not used)
;
; XREFS:
;     PPU_HandleOnInterrupt
;     Screen_ResetSpritesForGamePlay
;     Screen_ResetSpritesForNonGame
;     Sprites_Reset
;============================================================================

;
; XREFS:
;     PPU_HandleOnInterrupt
;     Screen_ResetSpritesForGamePlay
;     Screen_ResetSpritesForNonGame
;     Sprites_Reset
;
Sprites_Sprite0Mode:
    .byte $00                               ; Sprite0Mode


;============================================================================
; Whether to force lower pattern tables when updating the PPU.
;
; XREFS:
;     Game_InitScreenAndMusic
;     PPU_HandleOnInterrupt
;     PPU_WaitUntilFlushed
;     Screen_ResetSpritesForGamePlay
;============================================================================

;
; XREFS:
;     Game_InitScreenAndMusic
;     PPU_HandleOnInterrupt
;     PPU_WaitUntilFlushed
;     Screen_ResetSpritesForGamePlay
;
PPU_ForceLowerPatternTables:
    .byte $00                               ; bool


;============================================================================
; Screen block loading state.
;
; XREFS:
;     Area_LoadBlocks
;============================================================================

;
; Temporary variable used while loading blocks.
;
;
; XREFS:
;     Area_LoadBlocks
;
Temp_LoadedBlockValue:
    .byte $00                               ; byte


;
; Temporary variable used to store the loaded blocks count.
;
;
; XREFS:
;     Area_LoadBlocks
;
Temp_LoadedBlocksCount:
    .byte $00                               ; byte


;
; Current byte offset into the compressed screen data.
;
;
; XREFS:
;     Area_LoadBlocks
;     Area_LoadNextCompressedScreenBit
;
LoadCompressedScreenData_ByteOffset:
    .byte $00                               ; byte


;
; Current bit offset into the current compressed screen byte.
;
;
; XREFS:
;     Area_LoadBlocks
;     Area_LoadNextCompressedScreenBit
;
LoadCompressedScreenData_BitOffset:
    .byte $00                               ; byte


;
; Current compressed screen byte being loaded from.
;
;
; XREFS:
;     Area_LoadNextCompressedScreenBit
;
LoadCompressedScreenData_CurByte:
    .byte $00                               ; byte


;============================================================================
; Player/equipment sprite addresses.
;
; This is used to store the address of each piece of
; equipment the player is wearing. That includes the
; player body/armor, the shield, and the weapon.
;
; XREFS:
;     Player_LoadArmorSpriteTilesAddr
;     Player_LoadShieldSpriteTileAddrs
;     Player_LoadWeaponSpriteTileAddrs
;     Player_LoadWeaponTile
;============================================================================

;
; XREFS:
;     Player_LoadArmorSpriteTilesAddr
;     Player_LoadShieldSpriteTileAddrs
;     Player_LoadWeaponSpriteTileAddrs
;     Player_LoadWeaponTile
;
Player_SpriteTileReadAddr_L:
    .byte $00                               ; byte

;
; XREFS:
;     Player_LoadArmorSpriteTilesAddr
;     Player_LoadShieldSpriteTileAddrs
;     Player_LoadWeaponSpriteTileAddrs
;
Player_SpriteTileReadAddr_U:
    .byte $00                               ; byte


;============================================================================
; Area/screen information.
;
; XREFS:
;     Area_LoadScrollData
;     Debug_ChooseArea
;     EndGame_MoveToKingsRoom
;     GameLoop_CheckShowPlayerMenu
;     Game_DropLadderToMascon
;     Game_EnterAreaHandler
;     Game_EnterBuilding
;     Game_LoadCurrentArea
;     Game_LoadFirstLevel
;     Game_SpawnInTemple
;     Player_CheckHandleClimbUp
;     Player_CheckSwitchScreen_SwitchAreaHoriz
;     Player_HandleVertLadderOrJump
;     Player_MoveDownScreen
;     Player_TryMoveLeft
;     Player_TryMoveRight
;     Player_UpdateClimbOrJump
;     Screen_LoadAllScreenInfo
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;     Screen_SetupNew
;============================================================================

;
; The (outside) area the player is in.
;
; This is used to reference screens and other information,
; and to restore the appropriate area when exiting a
; building.
;
;
; XREFS:
;     Area_LoadScrollData
;     Debug_ChooseArea
;     EndGame_MoveToKingsRoom
;     GameLoop_CheckShowPlayerMenu
;     Game_DropLadderToMascon
;     Game_EnterAreaHandler
;     Game_EnterBuilding
;     Game_LoadCurrentArea
;     Game_LoadFirstLevel
;     Game_SpawnInTemple
;     Player_CheckHandleClimbUp
;     Player_CheckSwitchScreen_SwitchAreaHoriz
;     Player_HandleVertLadderOrJump
;     Player_MoveDownScreen
;     Player_TryMoveLeft
;     Player_TryMoveRight
;     Player_UpdateClimbOrJump
;     Screen_LoadAllScreenInfo
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;     Screen_SetupNew
;
Area_CurrentScreen:
    .byte $00                               ; byte


;
; The index of the screen being loaded.
;
;
; XREFS:
;     EndGame_MoveToKingsRoom
;     Game_EnterAreaHandler
;     Game_ExitBuilding
;     Game_LoadCurrentArea
;     Game_LoadFirstLevel
;     Game_SpawnInTemple
;     Player_CheckSwitchScreen_SwitchAreaHoriz
;     Player_EnterDoorToInside
;     Player_EnterDoorToOutside
;     Screen_SetupNew
;
Area_LoadingScreenIndex:
    .byte $00                               ; byte


;
; TODO: The pallete for the current screen?
;
; Seems there's more to it than this. It might double as
; a building type in places. (Seems this is the case.)
;
;
; XREFS:
;     EndGame_MoveToKingsRoom
;     Game_ExitBuilding
;     Game_LoadCurrentArea
;     Game_LoadFirstLevel
;     Game_SpawnInTemple
;     Player_CheckHandleEnterDoor
;     Player_CheckSwitchScreen_SwitchAreaHoriz
;     Player_EnterDoorToInside
;     Screen_SetupNew
;
Screen_DestPaletteOrIndex:
    .byte $00                               ; Palette


;
; Screen to the left of the currently-visible screen.
;
;
; XREFS:
;     Area_LoadScrollData
;     Player_TryMoveLeft
;
Area_ScreenToTheLeft:
    .byte $00                               ; byte


;
; Screen to the right of the currently-visible screen.
;
;
; XREFS:
;     Area_LoadScrollData
;     Player_TryMoveRight
;
Area_ScreenToTheRight:
    .byte $00                               ; byte


;
; Screen above the currently-visible screen.
;
;
; XREFS:
;     Area_LoadScrollData
;     Player_CheckHandleClimbUp
;     Player_UpdateClimbOrJump
;
Area_ScreenAbove:
    .byte $00                               ; byte


;
; Screen below the currently-visible screen.
;
;
; XREFS:
;     Area_LoadScrollData
;     Player_HandleVertLadderOrJump
;     Player_MoveDownScreen
;
Area_ScreenBelow:
    .byte $00                               ; byte


;
; Temporary variable used to store a block position.
;
;
; XREFS:
;     Area_SetStateFromDoorDestination
;
Temp_BlockPos:
    .byte $00                               ; byte


;
; Temporary variable used to store a block position.
;
;
; XREFS:
;     Player_CheckHandleEnterDoor
;
Temp_BlockPos2:
    .byte $00                               ; byte


;
; Starting position for a player when changing screens.
;
; This is in $YX position:
;
; Upper nibble = Y position
; Lower nibble = X position / 16
;
;
; XREFS:
;     EndGame_MoveToKingsRoom
;     Game_ExitBuilding
;     Game_LoadFirstLevel
;     Game_SpawnInTemple
;     Player_CheckSwitchScreen_SwitchAreaHoriz
;     Player_EnterDoorToInside
;     Screen_SetupNew
;
Screen_StartPosYX:
    .byte $00                               ; byte

;
; XREFS:
;     Area_ScrollScreenRight
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;
MaybeUnused_006d:
    .byte $00                               ; byte


;
; The current operational mode during the scrolling process.
;
; This is managed when scrolling the screen horizontally or
; vertically. It has the following supported values:
;
; 0x00: Load blocks from the area blocks data.
;
; 0x01: Draw blocks to the screen.
;
;
; XREFS:
;     Screen_LoadAttrsHoriz
;     Screen_LoadAttrsVert
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksDown
;     Screen_LoadBlocksHoriz
;     Screen_LoadDataLeft
;     Screen_LoadDataRight
;     Screen_LoadDataUp
;
Screen_ScrollLoadMode:
    .byte $00                               ; ScreenScrollLoadMode

;
; XREFS:
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;
CurrentArea_BlockData1CurAddr:
    .byte $00                               ; byte

;
; XREFS:
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;
CurrentArea_BlockData2CurAddr:
    .byte $00                               ; byte

;
; XREFS:
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;
CurrentArea_BlockData3CurAddr:
    .byte $00                               ; byte

;
; XREFS:
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;
CurrentArea_BlockData4CurAddr:
    .byte $00                               ; byte


;============================================================================
; A table marking screen scroll handlers to run.
;
; This applies to the current screen scroll process. At the
; start of screen scroll, all will be set to 0. Once a phase
; has been completed that requires a handler to be run, the
; associated handler's entry will be set to 1.
;
; XREFS:
;     Area_ScrollScreenRight
;     Screen_LoadBlockDataVert
;     Screen_RunWriteScrollDataHandler
;============================================================================

;
; XREFS:
;     Area_ScrollScreenRight
;     Screen_LoadBlockDataVert
;     Screen_RunWriteScrollDataHandler
;
Screen_ScrollHandlersPending:
    .byte $00                               ; [0]:
                                            ; Screen_WriteBlockTilesRowToPPU

;
; XREFS:
;     Area_ScrollScreenRight
;     Screen_LoadBlocksHoriz
;
Screen_ScrollHorizBlocksLoaded:
    .byte $00                               ; [1]:
                                            ; Screen_WriteBlockTilesColumnToPPU

;
; XREFS:
;     Area_ScrollScreenRight
;     Screen_LoadBlockDataVert
;
Screen_MaybeUnused_0075:
    .byte $00                               ; [2]:
                                            ; Screen_WriteBlockAttrsRowToPPU

;
; XREFS:
;     Area_ScrollScreenRight
;     Screen_LoadBlocksHoriz
;
Screen_ScrollHorizAttrsLoaded:
    .byte $00                               ; [3]:
                                            ; Screen_WriteBlockAttrsColumnToPPU

;
; XREFS:
;     Area_ScrollScreenRight
;     Screen_RunWriteScrollDataHandler
;
Screen_NextScrollDataHandlerIndex:
    .byte $00                               ; byte

    .byte $00,$00                           ; undefined

;
; XREFS:
;     Area_LoadBlocks
;     Game_LoadAreaTable
;
Area_ScreenBlocksOffset:
    .byte $00                               ; byte

;
; XREFS:
;     Game_LoadAreaTable
;
Area_ScreenBlocksOffset_U:
    .byte $00                               ; byte

;
; XREFS:
;     Game_LoadAreaTable
;
CurrentArea_TableAddr:
    .byte $00                               ; byte

;
; XREFS:
;     Game_LoadAreaTable
;
CurrentArea_TableAddr_U:
    .byte $00                               ; byte

;
; XREFS:
;     Area_SetBlocks_SetAttributes
;     Game_LoadAreaTable
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;     TextBox_GetBackingAttributeData
;
CurrentArea_BlockAttributesAddr:
    .byte $00,$00                           ; byte

;
; XREFS:
;     Area_SetBlocks_WriteBlockDataColumn1
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;
CurrentArea_BlockData1StartAddr:
    .byte $00,$00                           ; byte

;
; XREFS:
;     Area_SetBlocks_WriteBlockDataColumn1
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;
CurrentArea_BlockData2StartAddr:
    .byte $00,$00                           ; byte

;
; XREFS:
;     Area_SetBlocks_WriteBlockDataColumn2
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;
CurrentArea_BlockData3StartAddr:
    .byte $00,$00                           ; byte

;
; XREFS:
;     Area_SetBlocks_WriteBlockDataColumn2
;     Screen_LoadBlockDataVert
;     Screen_LoadBlocksHoriz
;
CurrentArea_BlockData4StartAddr:
    .byte $00,$00                           ; byte

;
; XREFS:
;     Area_LoadBlockProperties
;     Game_LoadAreaTable
;
CurrentArea_BlockPropertiesAddr:
    .byte $00                               ; byte

;
; XREFS:
;     Game_LoadAreaTable
;
CurrentArea_BlockPropertiesAddr_U:
    .byte $00                               ; byte

;
; XREFS:
;     Area_LoadScrollData
;     Game_LoadAreaTable
;
CurrentArea_ScrollingDataAddr:
    .byte $00                               ; byte

;
; XREFS:
;     Area_LoadScrollData
;     Game_LoadAreaTable
;
ScrollingData_U:
    .byte $00                               ; byte


;
; Current area's ROM bank.
;
;
; XREFS:
;     Area_LoadScrollData
;     Game_EnterAreaHandler
;     Game_EnterBuilding
;     Game_ExitBuilding
;     Game_LoadCurrentArea
;     Game_LoadFirstLevel
;
CurrentArea_ROMBank:
    .byte $00                               ; ROMBank

;
; XREFS:
;     Area_SetStateFromDoorDestination
;     Game_LoadAreaTable
;
CurrentArea_DoorLocationsAddr:
    .byte $00                               ; byte

;
; XREFS:
;     Area_SetStateFromDoorDestination
;     Game_LoadAreaTable
;
CurrentArea_DoorLocationsAddr_U:
    .byte $00                               ; byte

;
; XREFS:
;     Game_LoadAreaTable
;
CurrentArea_DoorDestinationsAddr:
    .byte $00                               ; byte

;
; XREFS:
;     Game_LoadAreaTable
;
CurrentArea_DoorDestinationsAddr_U:
    .byte $00                               ; byte


;============================================================================
; Upper and lower bytes of a PPU address for player sprite rendering.
;
; This is used during sprite loading and drawing. These form
; the address in the PPU where the player body, armor,
; shield, or weapon tiles will be loaded.
;
; XREFS:
;     Player_LoadArmorTilesToPPU
;     Player_LoadShieldTilesToPPU
;     Player_LoadWeaponTile
;     Player_LoadWeaponTilesToPPU
;============================================================================

;
; XREFS:
;     Player_LoadArmorTilesToPPU
;     Player_LoadShieldTilesToPPU
;     Player_LoadWeaponTile
;     Player_LoadWeaponTilesToPPU
;
Player_SpriteSegmentPPUAddr_L:
    .byte $00                               ; byte

;
; XREFS:
;     Player_LoadArmorTilesToPPU
;     Player_LoadShieldTilesToPPU
;     Player_LoadWeaponTile
;     Player_LoadWeaponTilesToPPU
;
Player_SpriteSegmentPPUAddr_U:
    .byte $00                               ; byte

;
; XREFS:
;     Area_LoadTiles
;
Area_TilesReadAddress:
    .word $0000                             ; ushort

;
; XREFS:
;     Area_LoadTiles
;     Game_EnterAreaHandler
;     Game_EnterBuilding
;     Game_ExitBuilding
;     Game_LoadCurrentArea
;     Game_LoadFirstLevel
;
Area_TilesIndex:
    .byte $00                               ; byte


;============================================================================
; Image data addresses for the sprite being drawn.
;
; XREFS:
;     CurrentSprite_LoadTilesInfo
;     Sprites_LoadImageForCurrentSprite
;============================================================================

;
; XREFS:
;     CurrentSprite_LoadTilesInfo
;     Sprites_LoadImageForCurrentSprite
;
CurrentSprite_LoadTileAddr:
    .byte $00                               ; byte

;
; XREFS:
;     CurrentSprite_LoadTilesInfo
;     Sprites_LoadImageForCurrentSprite
;
CurrentSprite_LoadTileAddr_U:
    .byte $00                               ; byte


;============================================================================
; PPU target address to draw sprite tiles.
;
; XREFS:
;     CurrentSprite_ResetPPUTileOffset
;     Sprites_LoadImageForCurrentSprite
;============================================================================

;
; XREFS:
;     CurrentSprite_ResetPPUTileOffset
;     Sprites_LoadImageForCurrentSprite
;
CurrentSprite_TargetPPUTileAddr:
    .byte $00                               ; byte


;
; The PPU row of the next tile
;
;
; XREFS:
;     CurrentSprite_ResetPPUTileOffset
;     Sprites_LoadImageForCurrentSprite
;
CurrentSprite_TargetPPUTileAddr_U:
    .byte $00                               ; byte


;============================================================================
; PPU offset of the first tile in the sprite.
;
; This is used when loading a sprite.
;
; XREFS:
;     GameLoop_LoadSpriteImages
;     Sprites_LoadImageForCurrentSprite
;============================================================================

;
; XREFS:
;     GameLoop_LoadSpriteImages
;     Sprites_LoadImageForCurrentSprite
;
CurrentSprite_StartPPUTileOffset:
    .byte $00                               ; byte


;============================================================================
; Number of PPU tiles remaining to draw for the current sprite.
;
; XREFS:
;     CurrentSprite_LoadTilesInfo
;     Sprites_LoadImageForCurrentSprite
;============================================================================

;
; XREFS:
;     CurrentSprite_LoadTilesInfo
;     Sprites_LoadImageForCurrentSprite
;
CurrentSprite_LoadTileCount:
    .byte $00                               ; byte


;============================================================================
; MOD NOTES: 1 unused byte of RAM.
;============================================================================
UNUSED_009C:
    .byte $00                               ; undefined


;============================================================================
; Player information.
;
; XREFS:
;     Player_TryMoveLeft
;     Player_TryMoveRight
;============================================================================

;
; X position of the player (fractional points).
;
;
; XREFS:
;     Player_TryMoveLeft
;     Player_TryMoveRight
;
Player_PosX_Frac:
    .byte $00                               ; byte


;
; X position of the player (full points).
;
; MAYBE: Outside only? See Game_SpawnInTemple.
;
;
; XREFS:
;     BScript_Action_FacePlayerX
;     CurrentSprite_CheckHitPlayer
;     FUN_PRG14__9aa1
;     Maybe_Player_CalcAnimFrame
;     Player_CastMagic
;     Player_DrawShield
;     Player_DrawWeapon
;     SpriteBehavior_EnemyUnused43
;     SpriteBehavior_Ishiisu
;     SpriteBehavior_Magman
;     SpriteBehavior_Nash
;     SpriteBehavior_Zorugeriru__9e13
;     Sprite_CalcDistanceXToPlayer
;     Sprite_Maybe_AddFacingPosX
;     Area_CanMoveImmediatelyRight
;     Area_CanPlayerMoveLeft
;     Area_CanPlayerMoveRight
;     Area_CanPlayerMoveUp
;     Area_CheckClimbAdjacentImpassable
;     Area_LoadScrollData
;     Area_SetStateFromDoorDestination
;     EndGame_MovePlayerTowardKing
;     FUN_PRG15__ec58
;     Game_EnterBuilding
;     Game_MovePlayerOnScroll
;     Game_MovePlayerOnScrollLeft
;     Game_SpawnInTemple
;     Player_CheckHandleJump
;     Player_CheckHandleVertMovement
;     Player_CheckIfOnLadder
;     Player_CheckIfPassable
;     Player_CheckOnBreakableBlock
;     Player_CheckPushingBlock
;     Player_CheckSwitchScreen
;     Player_DrawBody
;     Player_IsClimbing
;     Player_SetPosAtRightEdge
;     Player_TryMoveLeft
;     Player_TryMoveRight
;     Player_UseMattock
;     Screen_SetupNew
;
Player_PosX_Block:
    .byte $00                               ; byte


;
; MAYBE: Some kind of counter used when scrolling a screen.
;
; When scrolling to the right, this increments by 2 (via a
; manual increment and by adding carry from updating the
; player position).
;
; When scrolling to the left, this decrements by 1 (via
; subtracting carry from updating player position).
;
;
; XREFS:
;     CurrentSprite_UpdateState
;     Player_DrawWeapon
;     CastMagic_RunUpdateSpellHandler
;     Game_MovePlayerOnScroll
;     Game_MovePlayerOnScrollLeft
;     Player_DrawBody
;     Player_SetInitialState
;     Player_TryMoveRight
;     Screen_SetupNew
;
Screen_Maybe_ScrollXCounter:
    .byte $00                               ; byte


;============================================================================
; A climb/fly speed modifier.
;
; This works like a gravity-like modifier applied to the
; player when climbing/flying.
;
; When flying with Wing Boots, this will act as a dampener
; when going up. When moving down a ladder, or moving down
; with Wing Boots, this will affect the climb speed.
;
; Specifically:
;
; 1. When climbing up, this does not apply.
;
; 2. When climbing down, the Y position increases if this is
;    < 63. The value is then reduced by 64.
;
; 3. When flying up, the value is reduced by 160, and if
;    that wraps around, then the Y position is reduced by 1.
;
; 4. When flying/gliding down, the Y position increases by
;    an additional 1 if this is < 127. The value is then
;    increased by 128.
;
; XREFS:
;     Player_CheckHandleClimbDown
;     Player_CheckHandleClimbUp
;     Player_HandleVertLadderOrJump
;============================================================================

;
; XREFS:
;     Player_CheckHandleClimbDown
;     Player_CheckHandleClimbUp
;     Player_HandleVertLadderOrJump
;
Player_ClimbFlySpeedModifier:
    .byte $00                               ; byte


;
; Y position of the player
;
; MAYBE: Outside only? See Game_SpawnInTemple.
;
;
; XREFS:
;     TextBox_SetCoordsForNPC
;     BScript_Action_FacePlayerY
;     CurrentSprite_CheckHitPlayer
;     Player_CastMagic
;     Player_DrawShield
;     Player_DrawWeapon
;     SpriteBehavior_EnemyUnused43
;     SpriteBehavior_Magman
;     Sprite_CalcDistanceYToPlayer
;     Area_CanMoveUp
;     Area_CanPlayerMoveAtY
;     Area_CanPlayerMoveLeft
;     Area_CanPlayerMoveUp
;     Area_CheckClimbAdjacentImpassable
;     Area_LoadScrollData
;     Area_SetStateFromDoorDestination
;     FUN_PRG15__ec58
;     Game_EnterBuilding
;     Game_SpawnInTemple
;     Player_CheckHandleClimbDown
;     Player_CheckHandleClimbUp
;     Player_CheckIfOnLadder
;     Player_CheckIfPassable
;     Player_CheckOnBreakableBlock
;     Player_CheckPushingBlock
;     Player_CheckSwitchScreen
;     Player_DrawBody
;     Player_HandleVertLadderOrJump
;     Player_MoveDownScreen
;     Player_SetPosAtBottomEdge
;     Player_UpdateClimbOrJump
;     Player_UseMattock
;     Screen_SetupNew
;
Player_PosY:
    .byte $00                               ; byte

;
; XREFS:
;     CurrentSprite_UpdateState
;     Player_DrawWeapon
;     CastMagic_RunUpdateSpellHandler
;     Player_CheckHandleClimbUp
;     Player_DrawBody
;     Player_HandleVertLadderOrJump
;     Player_MoveDownScreen
;     Player_SetInitialState
;     Player_UpdateClimbOrJump
;     Screen_SetupNew
;
Player_Something_ScrollPosY:
    .byte $00                               ; byte


;
; Tick counter that updates only while moving horizontally.
;
; This will update regardless of whether the player
; is moving horizontally or vertically.
;
;
; XREFS:
;     Maybe_Player_CalcAnimFrame
;     Area_ScrollTo
;     Player_CheckHandleClimbDown
;     Player_CheckHandleClimbUp
;     Player_CheckHandleJump
;     Player_GetBodySpriteFrameOffset
;     Player_HandleDeath
;
Player_MovementTick:
    .byte $00                               ; byte


;
; Current player flags.
;
; Bit 0: Jumping
; Bit 1: Holding to Climb (from jump/move)
; Bit 2: Falling off ledge/ladder
; Bit 3: Can climb
; Bit 4: Climbing
; Bit 5: Moving (actively walking or climbing)
; Bit 6: Facing right (1) or left (0)
; Bit 7: Attacking
;
;
; XREFS:
;     Maybe_Player_CalcAnimFrame
;     Player_CalculateVisibility
;     Player_CastMagic
;     Player_DrawShield
;     Player_DrawWeapon
;     Player_HitSpriteWithWeapon
;     Player_SetDamagedBySprite
;     SpriteBehavior_EnemyUnused43
;     SpriteBehavior_Ishiisu
;     SpriteBehavior_Magman
;     SpriteBehavior_Nash
;     SpriteBehavior_SirGawaineWolfman
;     EndGame_MoveToKingsRoom
;     FUN_PRG15__ec58
;     GameLoop_CheckUseCurrentItem
;     Game_BeginExitBuilding
;     Game_SpawnInTemple
;     Player_CheckHandleAttack
;     Player_CheckHandleClimbDown
;     Player_CheckHandleClimbUp
;     Player_CheckHandleJump
;     Player_CheckHandleVertMovement
;     Player_CheckIfOnLadder
;     Player_CheckOnBreakableBlock
;     Player_CheckPushingBlock
;     Player_ClearJumpingAndHoldingToClimb
;     Player_EnterDoorToInside
;     Player_GetBodySpriteFrameOffset
;     Player_GrabClimbLadderOrJump
;     Player_HandleDeath
;     Player_HandleKnockback
;     Player_HandleVertLadderOrJump
;     Player_IsClimbing
;     Player_KnockbackHoriz
;     Player_SetFacingLeft
;     Player_SetInitialState
;     Player_TryMoveLeft
;     Player_TryMoveRight
;     Player_UpdateAcceleration
;     Player_UpdateClimbOrJump
;     Player_UseMattock
;
Player_Flags:
    .byte $00                               ; PlayerFlags


;
; Player status bits.
;
; Bit 0: Is attacking
; Bit 1: In knockback
; Bit 7: Wing boots active
;
;
; XREFS:
;     Maybe_Player_CalcAnimFrame
;     Player_SetDamagedBySprite
;     SpriteBehavior_FlashScreenHitPlayer
;     Game_DecWingBootsDuration
;     Game_DrawScreenInFrozenState
;     Player_CheckHandleAttack
;     Player_CheckHandleClimbDown
;     Player_CheckHandleClimbUp
;     Player_CheckHandleJump
;     Player_CheckHandleVertMovement
;     Player_GetBodySpriteFrameOffset
;     Player_HandleDeath
;     Player_HandleIFrames
;     Player_HandleVertLadderOrJump
;     Player_SetInitialState
;     Player_UpdateAcceleration
;
Player_StatusFlag:
    .byte $00                               ; PlayerStatusFlags


;============================================================================
; An index into the player's jump curve table.
;
; When a jump starts, this will be set to 1. It will
; increase as the player's jump continues to rise. Once
; it hits its midpoint (0x10), the player will begin to
; fall.
;
; If, while moving in an upward direction, the player hits
; an obstacle, this will be reset to the midpoint of 0x10.
;
; This can go as high as 0x1F, which is the end of the
; curve.
;
; See PLAYER_JUMP_CURVE for details.
;
; XREFS:
;     Player_HandleVertLadderOrJump
;     Player_UpdateClimbOrJump
;============================================================================

;
; XREFS:
;     Player_HandleVertLadderOrJump
;     Player_UpdateClimbOrJump
;
Player_JumpCurveIndex:
    .byte $00                               ; byte

;
; XREFS:
;     Player_DrawWeapon
;     Player_LoadArmorTilesToPPU
;
Player_ArmorLookupIndex:
    .byte $00                               ; byte

;
; XREFS:
;     Player_DrawSprite
;     Player_DrawSpriteImmediately
;     Player_LoadArmorTilesToPPU
;     Player_LoadShieldTilesToPPU
;     Player_LoadWeaponTile
;     Player_LoadWeaponTilesToPPU
;     Player_SetInitialState
;
Player_DrawTileReadOffset:
    .byte $00                               ; byte


;
; Player's walk/run aceleration.
;
; Seems to start around 0xC0, end around 0x180.
;
;
; XREFS:
;     Player_SetInitialState
;     Player_SetStandardAcceleration
;     Player_TryMoveLeft
;     Player_TryMoveRight
;     Player_UpdateAcceleration
;     Player_UpdatePosFromKnockback
;
Player_MoveAcceleration:
    .byte $00                               ; byte

;
; XREFS:
;     Player_SetStandardAcceleration
;     Player_TryMoveLeft
;     Player_TryMoveRight
;     Player_UpdateAcceleration
;     Player_UpdatePosFromKnockback
;
Player_MoveAcceleration_U:
    .byte $00                               ; byte

;
; XREFS:
;     Player_SetInitialState
;
Player_Unused_00ab:
    .byte $00                               ; byte


;
; Time spent in the current attack phase.
;
;
; XREFS:
;     Player_CheckHandleAttack
;
Player_AttackPhaseTimer:
    .byte $00                               ; byte


;
; Remaining time of invincibility after player was hit by enemy.
;
;
; XREFS:
;     Player_HandleTouchEnemy
;     Player_HandleTouchEnemyMagic
;     Player_SetDamagedBySprite
;     SpriteBehavior_FlashScreenHitPlayer
;     Player_HandleDeath
;     Player_HandleIFrames
;     Player_SetInitialState
;
Player_InvincibilityPhase:
    .byte $00                               ; byte


;
; Current attack phase of the player.
;
;
; XREFS:
;     Maybe_Player_CalcAnimFrame
;     Player_HitSpriteWithWeapon
;     FUN_PRG15__ec58
;     Player_CheckHandleAttack
;     Player_GetBodySpriteFrameOffset
;
Player_AttackPhaseAnimFrame:
    .byte $00                               ; byte


;============================================================================
; MOD NOTES: 2 unused bytes of RAM.
;============================================================================
    .byte $00,$00                           ; undefined


;============================================================================
; Amount of ticks the player can climb left/right before falling off.
;
; XREFS:
;     Player_GrabClimbLadderOrJump
;     Player_HandleVertLadderOrJump
;============================================================================

;
; XREFS:
;     Player_GrabClimbLadderOrJump
;     Player_HandleVertLadderOrJump
;
Player_ClimbLadderHangTime:
    .byte $00                               ; byte


;
; Player X position managed during screen scroll.
;
;
; XREFS:
;     Area_LoadScrollData
;     Game_MovePlayerOnScroll
;     Game_MovePlayerOnScrollLeft
;     Player_DrawBody
;
Maybe_PlayerX_ForScroll:
    .byte $00                               ; byte


;
; Player Y position managed during screen scroll.
;
;
; XREFS:
;     Area_LoadScrollData
;     Game_MovePlayerOnScroll
;     Player_DrawBody
;
Maybe_PlayerY_ForScroll:
    .byte $00                               ; byte


;
; Counter incrementing while the screen scrolls.
;
; This is used to update the player position at different
; points during a screen scroll.
;
;
; XREFS:
;     Area_LoadScrollData
;     Game_MovePlayerOnScroll
;     Game_MovePlayerOnScrollLeft
;     Game_UpdatePlayerOnScroll
;     Player_TryMoveLeft
;     Player_TryMoveRight
;
Screen_ScrollPlayerTransitionCounter:
    .byte $00                               ; byte


;============================================================================
; Arguments and results for block-related lookups.
;
; XREFS:
;     CastMagic_CheckDirection_Left
;     CastMagic_CheckDirection_Right
;     CurrentSprite_CalculateVisibility
;     CurrentSprite_CanMoveInDirection
;     FUN_PRG14__86bd
;     Player_CalculateVisibility
;     SpriteBehavior_NecronAides
;     Sprites_CheckPlacementInvalidAtY
;     Sprites_MoveRight
;     Area_CanMoveImmediatelyRight
;     Area_CanPlayerMoveLeft
;     Area_CanPlayerMoveRight
;     Area_CheckClimbAdjacentImpassable
;     Area_ConvertPixelsToBlockPos
;     Area_SetStateFromDoorDestination
;     CastMagic_CalculateVisibility
;     Player_CheckIfOnLadder
;     Player_CheckOnBreakableBlock
;     Player_CheckPushingBlock
;     Player_CheckSwitchScreen
;     Player_UseMattock
;============================================================================

;
; X coordinates of an object (see
; Area_ConvertPixelsToBlockPos).
;
;
; XREFS:
;     CastMagic_CheckDirection_Left
;     CastMagic_CheckDirection_Right
;     CurrentSprite_CalculateVisibility
;     CurrentSprite_CanMoveInDirection
;     FUN_PRG14__86bd
;     Player_CalculateVisibility
;     SpriteBehavior_NecronAides
;     Sprites_CheckPlacementInvalidAtY
;     Sprites_MoveRight
;     Area_CanMoveImmediatelyRight
;     Area_CanPlayerMoveLeft
;     Area_CanPlayerMoveRight
;     Area_CheckClimbAdjacentImpassable
;     Area_ConvertPixelsToBlockPos
;     Area_SetStateFromDoorDestination
;     CastMagic_CalculateVisibility
;     Player_CheckIfOnLadder
;     Player_CheckOnBreakableBlock
;     Player_CheckPushingBlock
;     Player_CheckSwitchScreen
;     Player_UseMattock
;
Arg_PixelPosX:
    .byte $00                               ; byte


;
; Y coordinates of an object (see
; Area_ConvertPixelsToBlockPos).
;
;
; XREFS:
;     CastMagic_CheckDirection_CheckImpassable
;     CurrentSprite_CalculateVisibility
;     CurrentSprite_CanMoveInDirection
;     Player_CalculateVisibility
;     SpriteBehavior_NecronAides
;     Sprites_CheckPlacementInvalidAtY
;     Sprites_MoveRight__86c6
;     Area_CanPlayerMoveAtY
;     Area_CanPlayerMoveUp
;     Area_CheckClimbAdjacentImpassable
;     Area_ConvertPixelsToBlockPos
;     Area_SetStateFromDoorDestination
;     CastMagic_CalculateVisibility
;     Player_CheckIfOnLadder
;     Player_CheckIfPassable
;     Player_CheckOnBreakableBlock
;     Player_CheckPushingBlock
;     Player_CheckSwitchScreen
;     Player_UseMattock
;
Arg_PixelPosY:
    .byte $00                               ; byte


;
; Result from a block-related computation.
;
; This is used for many different types of operations.
;
;
; XREFS:
;     CastMagic_CheckDirection
;     CastMagic_CheckDirection_CheckImpassable
;     CastMagic_SetShouldDisperse
;     CastMagic_UpdateDeluge
;     CastMagic_UpdateFire
;     CurrentSprite_CanMoveInDirection
;     CurrentSprite_HandleFall
;     MoveSpriteHorizIfPossible
;     MoveSpriteVerticalIfPossible
;     Sprites_MoveRight__86c6
;     Sprites_SetBlockIsMovingResult
;     Sprites_SetCurrentSpriteCanMove
;     Area_CanMoveImmediatelyRight
;     Area_CanMoveUp
;     Area_CanPlayerMoveAtY
;     Area_CanPlayerMoveLeft
;     Area_CanPlayerMoveUp
;     Area_CheckClimbAdjacentImpassable
;     Area_HandleBreakableFloor
;     Area_IsBlockClimbable
;     Area_SetStateFromDoorDestination
;     Area_StoreBlockIsAir
;     Player_CheckHandleEnterDoor
;     Player_CheckIfOnLadder
;     Player_CheckIfPassable
;     Player_CheckOnBreakableBlock
;     Player_HandleVertLadderOrJump
;
Blocks_Result:
    .byte $00                               ; byte


;============================================================================
; Sprite management.
;
; XREFS:
;     CurrentSprite_CalculateVisibility
;     Player_CalculateVisibility
;     CastMagic_CalculateVisibility
;============================================================================

;
; Visibility status of the currently-moving sprite.
;
; 0 = Fully visible
; 1 = Trailing side of sprite obscured
; 2 = Leading side of sprite obscured
; 3 = Sprite fully obscured
;
;
; XREFS:
;     CurrentSprite_CalculateVisibility
;     Player_CalculateVisibility
;     CastMagic_CalculateVisibility
;
Temp_MovingSpriteVisibility:
    .byte $00                               ; MovingSpriteVisibility

;
; XREFS:
;     CurrentSprite_CanMoveInDirection
;     Sprites_MoveRight__86c6
;
Temp_HitBoxValue:
    .byte $00                               ; byte


;
; X coordinates of the current 8 active sprites.
;
;
; XREFS:
;     BScript_Action_CastMagic
;     BScript_Action_FacePlayerX
;     CastMagic_HitHandler_Deluge
;     CurrentSprite_CalculateVisibility
;     CurrentSprite_UpdateState
;     FUN_PRG14__844b
;     FUN_PRG14__9917
;     FUN_PRG14__9aa1
;     FUN_PRG14__a1cc
;     Maybe_SpriteBody__99f3
;     MoveSpriteHorizIfPossible
;     SpriteBehavior_BossDeath
;     SpriteBehavior_EnemyUnused18__9991
;     SpriteBehavior_EnemyUnused43
;     SpriteBehavior_ExecutionHood__a0ad
;     SpriteBehavior_Ishiisu
;     SpriteBehavior_KingGrieve_9f65
;     SpriteBehavior_Magman
;     SpriteBehavior_Nash
;     SpriteBehavior_Pakukame
;     SpriteBehavior_Ripasheiku_CastMagicOrUpdatePos
;     SpriteBehavior_ShadowEura__a077
;     SpriteBehavior_ShadowEura__a12d
;     SpriteBehavior_Something_850d
;     SpriteBehavior_Zorugeriru__9e13
;     SpriteUpdateHandler_Effect_LightningBall20
;     Sprite_AddPosX
;     Sprite_CalcDistanceXToPlayer
;     Sprite_CastMagic
;     Sprite_CheckHitByCastMagic
;     Sprite_Maybe_AddFacingPosX
;     Sprite_Maybe_TurnAroundIfAtScreenEdgeHoriz
;     Sprite_RunDeathDropHandler
;     Sprite_SubtractPosX
;     Sprites_CheckPlacementInvalidAtY
;
CurrentSprites_XPos_Full:
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
CurrentSprites_XPos_Full_7_:
    .byte $00                               ; [7]:


;
; Y coordinates of the current 8 active sprites.
;
;
; XREFS:
;     BScript_Action_CastMagic
;     BScript_Action_FacePlayerY
;     CurrentSprite_CalculateVisibility
;     CurrentSprite_HandleFall
;     CurrentSprite_UpdateState
;     DEADCODE_Sprites_CanMoveDownBelowHitbox
;     FUN_PRG14__9917
;     FUN_PRG14__9ac6
;     FUN_PRG14__a0a0
;     FUN_PRG14__a1cc
;     MoveSpriteVerticalIfPossible
;     SpriteBehavior_BossDeath
;     SpriteBehavior_EnemyUnused18__9991
;     SpriteBehavior_EnemyUnused43
;     SpriteBehavior_ExecutionHood__a093
;     SpriteBehavior_Garbled3
;     SpriteBehavior_GiantBees
;     SpriteBehavior_KingGrieve_9f65
;     SpriteBehavior_KingGrieve_MoveDown
;     SpriteBehavior_Magman
;     SpriteBehavior_Pakukame
;     SpriteBehavior_Ripasheiku
;     SpriteBehavior_Ripasheiku_CastMagicOrUpdatePos
;     SpriteBehavior_ShadowEura__a077
;     SpriteBehavior_ShadowEura__a12d
;     SpriteBehavior_Zorugeriru__9e13
;     SpriteUpdateHandler_Effect_EnemyDeath
;     SpriteUpdateHandler_Effect_LightningBall20
;     Sprite_CalcDistanceYToPlayer
;     Sprite_CalculateNewVertPos
;     Sprite_CapToBlockOppositeFalling
;     Sprite_CastMagic
;     Sprite_CheckHitByCastMagic
;     Sprite_RunDeathDropHandler
;     Sprites_CanMoveDownByHitbox
;
CurrentSprites_YPos:
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
;     Sprites_PopulateNextAvailableSprite
;
CurrentSprites_YPos_7_:
    .byte $00                               ; [7]:


;
; An address used to read sprite-related information.
;
; This is used for two purposes:
;
; 1. To store the address of the per-screen sprite
;    information while loading sprites onto the screen.
;
; 2. To store the address of a sprite entity's behavior
;    state when processing a sprite.
;
;
; XREFS:
;     BScript_Op_AddToSpriteData
;     BScript_Op_CheckDistanceToPlayer
;     BScript_Op_GoTo
;     BScript_Op_RunAction
;     BScript_Op_SetPhase
;     BScript_Op_SwitchBehavior
;     BScripts_LoadNextOp
;     SpriteBehavior_Hop
;     SpriteBehavior_MoveTowardPlayer
;     SpriteBehavior_MoveVertically
;     SpriteBehavior_SomethingEyeball_17
;     SpriteBehavior_SomethingZoradohna_18
;     SpriteBehavior_WalkForward
;     SpriteBehavior__a8d7
;     SpriteOp_CheckDistanceToPlayer_X
;     SpriteOp_CheckDistanceToPlayer_Y
;     Sprites_IncrementScriptAddr
;     Sprites_MaybeDisableAndGoTo
;     Sprites_UpdateBehavior
;     Screen_LoadAllScreenInfo
;     Screen_LoadSpriteInfo
;
Sprites_ReadInfoAddr:
    .byte $00                               ; byte

;
; XREFS:
;     BScript_Op_GoTo
;     SpriteOp_CheckDistanceToPlayer_X
;     SpriteOp_CheckDistanceToPlayer_Y
;     Sprites_IncrementScriptAddr
;     Sprites_MaybeDisableAndGoTo
;     Sprites_UpdateBehavior
;     Screen_LoadAllScreenInfo
;     Screen_LoadSpriteInfo
;
Sprites_ReadInfoAddr_U:
    .byte $00                               ; byte

;
; XREFS:
;     Screen_LoadAllScreenInfo
;     Screen_LoadSpecialEventID
;     Sprites_LoadSpriteValue
;
Screen_ExtraInfoAddr:
    .byte $00                               ; byte

;
; XREFS:
;     Screen_LoadAllScreenInfo
;     Sprites_LoadSpriteValue
;
Screen_ExtraInfoAddr_U:
    .byte $00                               ; byte

;
; XREFS:
;     Player_DrawWeapon
;     Sprites_IsSpriteOutOfWeaponRange
;
PlayerPosXPlus10:
    .byte $00                               ; byte

;
; XREFS:
;     Player_DrawWeapon
;
Maybe_Something_WeaponPosX:
    .byte $00                               ; byte

;
; XREFS:
;     Player_DrawWeapon
;     Sprites_IsSpriteOutOfWeaponRange
;
Maybe_Something_WeaponPosY:
    .byte $00                               ; byte

;
; XREFS:
;     Player_DrawWeapon
;
DrawWeapon_Unused_00D1:
    .byte $00                               ; byte


;============================================================================
; Range of the currently-selected weapon
;
; XREFS:
;     Player_DrawWeapon
;     Sprites_IsSpriteOutOfWeaponRange
;============================================================================

;
; XREFS:
;     Player_DrawWeapon
;     Sprites_IsSpriteOutOfWeaponRange
;
Maybe_WeaponRange_X:
    .byte $00                               ; byte

;
; XREFS:
;     Player_DrawWeapon
;     Sprites_IsSpriteOutOfWeaponRange
;
Maybe_WeaponRange_Y:
    .byte $00                               ; byte


;============================================================================
; State for the blocked path to Mascon.
;
; This is normally completed by opening all fountains
; and clearing the final block, dropping down a ladder
; to Mascon.
;
; XREFS:
;     Game_DropLadderToMascon
;     Player_CheckPushingBlock
;     ScreenEvents_HandlePathToMasconEvent
;============================================================================

;
; Whether the path to Mascon is currently being opened.
;
; This is set when opening the path. It's never read or
; otherwise used.
;
;
; XREFS:
;     Game_DropLadderToMascon
;     Player_CheckPushingBlock
;     ScreenEvents_HandlePathToMasconEvent
;
PathToMascon_Opening:
    .byte $00                               ; bool


;
; The position of the fountain covering block before Mascon.
;
; This is in $YX byte form.
;
;
; XREFS:
;     Game_OpenPathToMascon
;     Player_CheckPushingBlock
;     ScreenEvents_HandlePathToMasconEvent
;
PathToMascon_FountainCoverPos:
    .byte $00                               ; byte

    .byte $00                               ; Unused


;============================================================================
; Counts for how long the player pushed against the block before Mascon
;
; XREFS:
;     Player_CheckPushingBlock
;============================================================================

;
; XREFS:
;     Player_CheckPushingBlock
;
BlockPushCounter:
    .byte $00                               ; byte


;============================================================================
; State for animating the ladder on the path to Mascon.
;
; XREFS:
;     Game_DropLadderToMascon
;     Game_OpenPathToMascon
;============================================================================

;
; The current block position for the ladder on the path to
; Mascon.
;
;
; XREFS:
;     Game_DropLadderToMascon
;     Game_OpenPathToMascon
;
PathToMascon_LadderPos:
    .byte $00                               ; byte


;
; The number of ladder blocks remaining to place when dropping
; down the ladder to Mascon.
;
;
; XREFS:
;     Game_DropLadderToMascon
;     Game_OpenPathToMascon
;
PathToMascon_LadderBlocksRemaining:
    .byte $00                               ; byte


;============================================================================
; An offset into Bank 14 used to generate a random value.
;
; This is used by GetRandom to help generate
; pseudo-random values based on the first 256 bytes of bank 14
; XOR'd with the controller 1 bitmask.
;
; XREFS:
;     GetRandom
;============================================================================

;
; XREFS:
;     GetRandom
;
Random_Offset:
    .byte $00                               ; byte


;============================================================================
; IScript and cross-bank call invocation.
;
; XREFS:
;     IScripts_Begin
;     IScripts_JumpToNextAddr
;     IScripts_LoadByte
;     SplashAnimation_DrawScenery
;     StartScreen_Draw
;     PPU_WriteTilesFromCHRRAM
;     UI_DrawHUDSprites
;============================================================================

;
; The address of either the IScript being executed or CHR
; data being loaded/drawn.
;
;
; XREFS:
;     IScripts_Begin
;     IScripts_JumpToNextAddr
;     IScripts_LoadByte
;     SplashAnimation_DrawScenery
;     StartScreen_Draw
;     PPU_WriteTilesFromCHRRAM
;     UI_DrawHUDSprites
;
IScriptOrCHRAddr:
    .byte $00                               ; byte

;
; XREFS:
;     IScripts_Begin
;     IScripts_JumpToNextAddr
;     IScripts_LoadByte
;     SplashAnimation_DrawScenery
;     StartScreen_Draw
;     PPU_WriteTilesFromCHRRAM
;     UI_DrawHUDSprites
;
IScriptOrCHRAddr_U:
    .byte $00                               ; byte


;
; The current offset into the IScript being executed.
;
;
; XREFS:
;     IScripts_Begin
;     IScripts_JumpToNextAddr
;     IScripts_LoadByte
;
IScriptOffset:
    .byte $00                               ; byte


;
; Contents of the "A" register saved before performing a
; banked call for an IScript or other operation.
;
;
; XREFS:
;     MMC1_LoadBankAndJump
;
BankedCallSetup_SavedA:
    .byte $00                               ; byte


;
; Contents of the "X" register saved before performing a
; banked call for an IScript or other operation.
;
;
; XREFS:
;     MMC1_LoadBankAndJump
;
BankedCallSetup_SavedX:
    .byte $00                               ; byte


;
; Contents of the "Y" register saved before performing a
; banked call for an IScript or other operation.
;
;
; XREFS:
;     MMC1_LoadBankAndJump
;
BankedCallSetup_SavedY:
    .byte $00                               ; byte


;============================================================================
; MOD NOTES: 7 unused bytes of RAM.
;============================================================================
    .byte $00,$00,$00,$00,$00,$00,$00       ; undefined


;============================================================================
; PPU drawing-related state.
;
; XREFS:
;     PasswordScreen_DrawMessage
;     PasswordScreen_WriteCharTile
;     SplashAnimation_DrawScenery
;     StartScreen_Draw
;     TextBox_DrawItemImage
;     TextBox_FillBackground
;     Area_SetBlocks
;     Area_SetBlocks_SetAttributes
;     Area_SetPPUAddrForBlockIndex
;     IScripts_DrawPortraitTileToPPU
;     IScripts_LoadPortraitTiles
;     PPUBuffer_QueueCommandOrLength
;     PPU_IncrementAddrBy
;     PPU_SetAddrForTextBoxPos
;     PPU_WriteTilesFromCHRRAM
;     Player_LoadWeaponTile
;     Player_SetItem
;     Sprites_LoadImageForCurrentSprite
;     TextBox_ClearTextTiles
;     TextBox_ShowMessage_Fill4Lines
;     TextBox_WriteChar
;     UI_ClearSelectedItemPic
;     UI_DrawGoldValue
;     UI_DrawHUDSprites
;     UI_DrawPlayerExperience
;     UI_DrawTimeValue
;     UI_SetHUDBarValue
;============================================================================

;
; The target address in the PPU being drawn to.
;
;
; XREFS:
;     PasswordScreen_DrawMessage
;     PasswordScreen_WriteCharTile
;     SplashAnimation_DrawScenery
;     StartScreen_Draw
;     TextBox_DrawItemImage
;     TextBox_FillBackground
;     Area_SetBlocks
;     Area_SetBlocks_SetAttributes
;     Area_SetPPUAddrForBlockIndex
;     IScripts_DrawPortraitTileToPPU
;     IScripts_LoadPortraitTiles
;     PPUBuffer_QueueCommandOrLength
;     PPU_IncrementAddrBy
;     PPU_SetAddrForTextBoxPos
;     PPU_WriteTilesFromCHRRAM
;     Player_LoadWeaponTile
;     Player_SetItem
;     Sprites_LoadImageForCurrentSprite
;     TextBox_ClearTextTiles
;     TextBox_ShowMessage_Fill4Lines
;     TextBox_WriteChar
;     UI_ClearSelectedItemPic
;     UI_DrawGoldValue
;     UI_DrawHUDSprites
;     UI_DrawPlayerExperience
;     UI_DrawTimeValue
;     UI_SetHUDBarValue
;
PPU_TargetAddr:
    .byte $00                               ; byte

;
; XREFS:
;     PasswordScreen_DrawMessage
;     PasswordScreen_WriteCharTile
;     SplashAnimation_DrawScenery
;     StartScreen_Draw
;     TextBox_DrawItemImage
;     TextBox_FillBackground
;     Area_SetBlocks
;     Area_SetBlocks_SetAttributes
;     Area_SetPPUAddrForBlockIndex
;     IScripts_DrawPortraitTileToPPU
;     IScripts_LoadPortraitTiles
;     PPUBuffer_QueueCommandOrLength
;     PPU_IncrementAddrBy
;     PPU_SetAddrForTextBoxPos
;     PPU_WriteTilesFromCHRRAM
;     Player_LoadWeaponTile
;     Player_SetItem
;     Sprites_LoadImageForCurrentSprite
;     TextBox_ClearTextTiles
;     TextBox_ShowMessage_Fill4Lines
;     TextBox_WriteChar
;     UI_ClearSelectedItemPic
;     UI_DrawGoldValue
;     UI_DrawHUDSprites
;     UI_DrawPlayerExperience
;     UI_DrawTimeValue
;     UI_SetHUDBarValue
;
PPU_TargetAddr_U:
    .byte $00                               ; byte


;
; Tile X position where text or images will be drawn in a
; textbox.
;
;
; XREFS:
;     DEADCODE_FUN_PRG12__9041
;     IScriptAction_AddInventoryItem
;     IScriptAction_AddInventoryItem_ClearTextBox
;     IScripts_PositionAndFillPlaceholderText
;     PlayerMenu_DrawInventoryItems
;     PlayerMenu_DrawStringLines
;     PlayerMenu_ShowStatusMenu
;     PlayerMenu_ShowSubmenu
;     Shop_Draw
;     SplashAnimation_FuncAA94
;     TextBox_Close
;     TextBox_FillBackground
;     TextBox_GetNextAttributeDataOffset
;     TextBox_Open
;     TextBox_SetNextAttributeData
;     PPU_SetAddrForTextBoxPos
;     TextBox_GetBackingAttributeData
;     TextBox_ShowMessage_Fill4Lines
;     Textbox_Maybe_GetAreaBehindTextbox
;
TextBox_ContentsX:
    .byte $00                               ; byte


;
; Tile Y position where text or images will be drawn in a
; textbox.
;
;
; XREFS:
;     IScriptAction_AddInventoryItem
;     IScriptAction_AddInventoryItem_ClearTextBox
;     IScripts_PositionAndFillPlaceholderText
;     PlayerMenu_DrawInventoryItems
;     PlayerMenu_DrawStringLines
;     PlayerMenu_ShowStatusMenu
;     PlayerMenu_ShowSubmenu
;     Shop_Draw
;     SplashAnimation_FuncAA94
;     TextBox_Close
;     TextBox_FillBackground
;     TextBox_GetNextAttributeDataOffset
;     TextBox_Open
;     TextBox_SetNextAttributeData
;     PPU_SetAddrForTextBoxPos
;     TextBox_GetBackingAttributeData
;     TextBox_ShowMessage_Fill4Lines
;     Textbox_Maybe_GetAreaBehindTextbox
;
TextBox_ContentsY:
    .byte $00                               ; byte


;============================================================================
; Additional temporary variables.
;
; XREFS:
;     IScriptAction_OpenShop
;     IScriptAction_ShowSellMenu
;     IScriptAction_SpendGold
;     IScripts_CheckEnoughMoney
;     IScripts_ProgressivelyAddGold
;     IScripts_ProgressivelySubtractGold
;     IScripts_SellMenu_Something8704
;     Menu_UpdateAndDraw
;     PasswordScreen_DrawMessage
;     PasswordScreen_Show
;     Password_DecodeValue
;     Password_EncodeValue
;     PlayerMenu_Show
;     PlayerMenu_ShowInventoryMenu
;     PlayerMenu_ShowStatusMenu
;     PlayerMenu_ShowSubmenu
;     Player_AddToInventory
;     Player_LacksItem
;     Player_RemoveItem
;     Shop_Draw
;     Shop_GetPlayerHasSelectedItem
;     Shop_Populate
;     SpashAnimation_SomethingOutro_aa20
;     SpashAnimation_SomethingOutro_aa46
;     SplashAnimation_A90F
;     SplashAnimation_DrawScenery
;     SplashAnimation_FuncAA94
;     SplashAnimation_Maybe_NextAnimState1
;     SplashAnimation_Maybe_NextAnimState2
;     StartScreen_Draw
;     TextBox_DrawItemImage
;     TextBox_DrawItemName
;     TextBox_FillBackground
;     TextBox_SetNextAttributeData
;     UI_DrawString
;     UI_DrawText
;     Player_AddExperienceFromSprite
;     MMC1_LoadBankAndJump
;     Messages_Load
;     PPUBuffer_WriteFromTemp
;     PPU_LoadGlyphsForStrings
;     PPU_WriteGlyphTile
;     PPU_WriteTilesFromCHRRAM
;     Player_Add100XP
;     Player_AddGold
;     Player_SubtractGold
;     Player_UpdateExperience
;     TextBox_DisplayMessage
;     TextBox_GetBackingAttributeData
;     TextBox_ShowMessage_HandleSpaceOrEndOfLine
;     TextBox_ShowMessage_LoadMessage
;     TextBox_ShowMessage_Pause
;     TextBox_WriteChar
;     Textbox_Maybe_GetAreaBehindTextbox
;     UI_DrawDigitsZeroPadded
;     UI_DrawGoldValue
;     UI_DrawPlayerExperience
;     UI_DrawSelectedItem
;     UI_DrawTimeValue
;     UI_GetValueForDigit
;     UI_Maybe_GetItemSpritePPUTileAddr
;     UI_SetHUDBarValue
;============================================================================

;
; Temporary variable most often used for 24-bit values.
;
; This is not exclusive to 24-bit values. In some places, this
; is used for 16-bit values. In others, 8-bit values.
;
;
; XREFS:
;     IScriptAction_OpenShop
;     IScriptAction_ShowSellMenu
;     IScriptAction_SpendGold
;     IScripts_CheckEnoughMoney
;     IScripts_ProgressivelyAddGold
;     IScripts_ProgressivelySubtractGold
;     IScripts_SellMenu_Something8704
;     Menu_UpdateAndDraw
;     PasswordScreen_DrawMessage
;     PasswordScreen_Show
;     Password_DecodeValue
;     Password_EncodeValue
;     PlayerMenu_Show
;     PlayerMenu_ShowInventoryMenu
;     PlayerMenu_ShowStatusMenu
;     PlayerMenu_ShowSubmenu
;     Player_AddToInventory
;     Player_LacksItem
;     Player_RemoveItem
;     Shop_Draw
;     Shop_GetPlayerHasSelectedItem
;     Shop_Populate
;     SpashAnimation_SomethingOutro_aa20
;     SpashAnimation_SomethingOutro_aa46
;     SplashAnimation_A90F
;     SplashAnimation_DrawScenery
;     SplashAnimation_FuncAA94
;     SplashAnimation_Maybe_NextAnimState1
;     SplashAnimation_Maybe_NextAnimState2
;     StartScreen_Draw
;     TextBox_DrawItemImage
;     TextBox_DrawItemName
;     TextBox_FillBackground
;     TextBox_SetNextAttributeData
;     UI_DrawString
;     UI_DrawText
;     Player_AddExperienceFromSprite
;     MMC1_LoadBankAndJump
;     Messages_Load
;     PPUBuffer_WriteFromTemp
;     PPU_LoadGlyphsForStrings
;     PPU_WriteGlyphTile
;     PPU_WriteTilesFromCHRRAM
;     Player_Add100XP
;     Player_AddGold
;     Player_SubtractGold
;     Player_UpdateExperience
;     TextBox_DisplayMessage
;     TextBox_GetBackingAttributeData
;     TextBox_ShowMessage_HandleSpaceOrEndOfLine
;     TextBox_ShowMessage_LoadMessage
;     TextBox_ShowMessage_Pause
;     TextBox_WriteChar
;     Textbox_Maybe_GetAreaBehindTextbox
;     UI_DrawDigitsZeroPadded
;     UI_DrawGoldValue
;     UI_DrawPlayerExperience
;     UI_DrawSelectedItem
;     UI_DrawTimeValue
;     UI_GetValueForDigit
;     UI_Maybe_GetItemSpritePPUTileAddr
;     UI_SetHUDBarValue
;
Temp_Int24:
    .byte $00                               ; byte

;
; XREFS:
;     IScriptAction_OpenShop
;     IScriptAction_ShowSellMenu
;     IScriptAction_SpendGold
;     IScripts_CheckEnoughMoney
;     IScripts_ProgressivelyAddGold
;     IScripts_ProgressivelySubtractGold
;     PasswordScreen_DrawMessage
;     PasswordScreen_Show
;     Password_EncodeValue
;     PlayerMenu_Show
;     PlayerMenu_ShowInventoryMenu
;     PlayerMenu_ShowStatusMenu
;     PlayerMenu_ShowSubmenu
;     Player_AddToInventory
;     Player_LacksItem
;     Player_RemoveItem
;     Shop_Draw
;     Shop_GetPlayerHasSelectedItem
;     SpashAnimation_SomethingOutro_aa20
;     SpashAnimation_SomethingOutro_aa46
;     SplashAnimation_DrawScenery
;     SplashAnimation_FuncAA94
;     SplashAnimation_Maybe_NextAnimState1
;     SplashAnimation_Maybe_NextAnimState2
;     StartScreen_Draw
;     TextBox_DrawItemName
;     TextBox_GetNextAttributeDataOffset
;     TextBox_SetNextAttributeData
;     Player_AddExperienceFromSprite
;     MMC1_LoadBankAndJump
;     Messages_Load
;     PPU_LoadGlyphsForStrings
;     Player_Add100XP
;     Player_AddGold
;     Player_SubtractGold
;     Player_UpdateExperience
;     TextBox_ShowMessage_HandleSpaceOrEndOfLine
;     TextBox_ShowMessage_LoadMessage
;     TextBox_ShowMessage_Pause
;     TextBox_WriteChar
;     Textbox_Maybe_GetAreaBehindTextbox
;     UI_DrawGoldValue
;     UI_DrawPlayerExperience
;     UI_DrawTimeValue
;     UI_GetValueForDigit
;     UI_Maybe_GetItemSpritePPUTileAddr
;
Temp_Int24_M:
    .byte $00                               ; byte

;
; XREFS:
;     IScriptAction_ShowSellMenu
;     Password_DecodeValueList
;     Password_EncodeGameState
;     Password_EncodeValueList
;     Password_Load
;     PlayerMenu_ShowStatusMenu
;     Player_AddToInventory
;     Player_RemoveItem
;     Shop_Draw
;     SplashAnimation_FuncAA94
;     StartScreen_Draw
;     UI_DrawString
;     MMC1_LoadBankAndJump
;     TextBox_LoadItemSourceTiles
;     UI_DrawGoldValue
;     UI_DrawPlayerExperience
;     UI_DrawTimeValue
;     UI_GetValueForDigit
;     UI_SetHUDBarValue
;
Temp_Int24_U:
    .byte $00                               ; byte

;
; XREFS:
;     IScriptAction_ShowSellMenu
;     Password_EncodeGameState
;     Password_Load
;     Player_RemoveItem
;     MMC1_LoadBankAndJump
;     TextBox_LoadItemSourceTiles
;     UI_SetHUDBarValue
;
Temp_0xEF:
    .byte $00                               ; byte


;============================================================================
; MOD NOTES: 2 unused bytes of RAM.
;============================================================================
    .byte $00,$00                           ; undefined


;============================================================================
; Current msuic script address for all 4 channels.
;
; XREFS:
;     MScript_Op_BeginLoop
;     MScript_Op_End
;     MScript_Op_EndLoop
;     MScript_Op_JumpSubroutine
;     MScript_Op_NextLoopIfNCompleted
;     MScript_Op_RestartChannel
;     MScript_Op_RestoreAddr
;     MScript_Op_Return
;     MScript_Op_SaveAddr_Store
;============================================================================

;
; XREFS:
;     MScript_Op_BeginLoop
;     MScript_Op_End
;     MScript_Op_EndLoop
;     MScript_Op_JumpSubroutine
;     MScript_Op_NextLoopIfNCompleted
;     MScript_Op_RestartChannel
;     MScript_Op_RestoreAddr
;     MScript_Op_Return
;     MScript_Op_SaveAddr_Store
;
Music_CurrentScriptAddrs:
    .word $0000                             ; [0]:
    .word $0000                             ; [1]:
    .word $0000                             ; [2]:

;
; XREFS:
;     Music_Load
;
Music_CurrentScriptAddrs_3_:
    .word $0000                             ; [3]:


;============================================================================
; The ID of the current music.
;
; If bit 7 (MSB) is set, then the music is currently
; playing.
;
; XREFS:
;     SplashAnimation_RunIntro
;     SplashAnimation_RunOutro
;     StartScreen_Draw
;     SpriteBehavior_ShadowEura
;     Area_ScrollTo
;     Game_EnterAreaHandler
;     Game_EnterBuilding
;     Game_ExitBuilding
;     Game_LoadCurrentArea
;     Game_LoadFirstLevel
;     Game_ShowStartScreen
;     Player_CheckHandleEnterDoor
;     Player_HandleDeath
;     Player_UseHourGlass
;     ScreenEvents_HandleBoss
;     ScreenEvents_HandleFinalBossKilled
;     Audio_InitPlayingState
;     Audio_ResetIfNothingSet
;     MScript_Op_RestartChannel
;     Music_HandleOnInterrupt
;     Music_Load
;     Music_PlayNext
;============================================================================

;
; XREFS:
;     SplashAnimation_RunIntro
;     SplashAnimation_RunOutro
;     StartScreen_Draw
;     SpriteBehavior_ShadowEura
;     Area_ScrollTo
;     Game_EnterAreaHandler
;     Game_EnterBuilding
;     Game_ExitBuilding
;     Game_LoadCurrentArea
;     Game_LoadFirstLevel
;     Game_ShowStartScreen
;     Player_CheckHandleEnterDoor
;     Player_HandleDeath
;     Player_UseHourGlass
;     ScreenEvents_HandleBoss
;     ScreenEvents_HandleFinalBossKilled
;     Audio_InitPlayingState
;     Audio_ResetIfNothingSet
;     MScript_Op_RestartChannel
;     Music_HandleOnInterrupt
;     Music_Load
;     Music_PlayNext
;
Music_Current:
    .byte $00                               ; Music


;============================================================================
; The ID of the current sound effect.
;
; If bit 7 (MSB) is set, then the sound effect is currently
; playing.
;
; XREFS:
;     SoundEffect_SetCurrent
;     Audio_InitPlayingState
;     SoundEffects_HandleOnInterrupt
;============================================================================

;
; XREFS:
;     SoundEffect_SetCurrent
;     Audio_InitPlayingState
;     SoundEffects_HandleOnInterrupt
;
SoundEffect_Current:
    .byte $00                               ; byte


;============================================================================
; MOD NOTES: 4 unused bytes of RAM.
;============================================================================
    .byte $00,$00,$00                       ; undefined

irq:
    .byte $00                               ; undefined
