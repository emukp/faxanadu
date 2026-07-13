;============================================================================
; Faxanadu (U).nes
;
; PPU ($2000 - $2007)
;============================================================================

    .segment "PPU"
    .reloc

;
; XREFS:
;     Game_Init
;     PPUBuffer_Draw
;     PPU_HandleOnInterrupt
;     PPU_InitVBlank
;     PPU_SetVRAMIncrementAdd1Across
;     Screen_WriteBlockTilesColumnToPPU
;     Screen_WriteBlockTilesRowToPPU
;
PPUCTRL:
    .byte $00                               ; PPUCtrlFlags

;
; XREFS:
;     Game_Init
;     OnInterrupt
;     PPU_HandleOnInterrupt
;
PPUMASK:
    .byte $00                               ; PPUMaskFlags

;
; XREFS:
;     DEADCODE_FUN_PRG15_MIRROR__cb0c
;     Game_Init
;     PPU_HandleOnInterrupt
;
PPUSTATUS:
    .byte $00                               ; PPUStatusFlags

;
; XREFS:
;     OnInterrupt
;
OAMADDR:
    .byte $00                               ; byte

OAMDATA:
    .byte $00                               ; byte

;
; XREFS:
;     PPU_HandleOnInterrupt
;
PPUSCROLL:
    .byte $00                               ; byte

;
; XREFS:
;     PasswordScreen_Show
;     StartScreen_Draw
;     Area_LoadTiles
;     PPUBuffer_Draw
;     PPUBuffer_DrawCommand_RemoveVerticalLines
;     PPUBuffer_DrawCommand_RotateTilesRight1Pixel
;     PPUBuffer_DrawCommand_WritePalette
;     PPU_ClearAllTilemaps
;     PPU_LoadGlyphsForStrings
;     PPU_SetAddr
;     PPU_WriteTilesFromCHRRAM
;     Screen_WriteBlockAttrsColumnToPPU
;     Screen_WriteBlockAttrsRowToPPU
;     Screen_WriteBlockTilesColumnToPPU
;     Screen_WriteBlockTilesRowToPPU
;     Sprites_LoadCommon
;     UI_DrawHUDSprites
;     UI_DrawSelectedItem
;     UI_SetHUDPPUAttributes
;
PPUADDR:
    .byte $00                               ; byte

;
; XREFS:
;     PasswordScreen_Show
;     StartScreen_Draw
;     UI_DrawText
;     Area_LoadTiles
;     PPUBuffer_Draw
;     PPUBuffer_DrawCommand_RemoveVerticalLines
;     PPUBuffer_DrawCommand_RotateTilesRight1Pixel
;     PPUBuffer_DrawCommand_WritePalette
;     PPU_FillData
;     PPU_WriteGlyphTile
;     PPU_WriteRowsWithInitial
;     PPU_WriteTilesFromCHRRAM
;     Screen_WriteBlockAttrsColumnToPPU
;     Screen_WriteBlockAttrsRowToPPU
;     Screen_WriteBlockTilesColumnToPPU
;     Screen_WriteBlockTilesRowToPPU
;     Sprites_LoadCommon
;     UI_DrawHUDSprites
;     UI_DrawSelectedItem
;     UI_SetHUDPPUAttributes
;
PPUDATA:
    .byte $00                               ; byte
