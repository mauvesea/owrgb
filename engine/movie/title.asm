CopyDebugName:
	ld bc, NAME_LENGTH
	jp CopyData

PrepareTitleScreen::
	; These debug names are already copied later in PrepareOakSpeech.
	; Removing the unused copies below has no apparent impact.
	; CopyDebugName can also be safely deleted afterwards.
	ld hl, DebugNewGamePlayerName
	ld de, wPlayerName
	call CopyDebugName
	ld hl, DebugNewGameRivalName
	ld de, wRivalName
	call CopyDebugName
	ld hl, DebugNewGameJuniorName
	ld de, wJuniorName
	call CopyDebugName
	xor a
	ldh [hWY], a
	ld [wLetterPrintingDelayFlags], a
	ld hl, wStatusFlags6
	ld [hli], a
	ASSERT wStatusFlags6 + 1 == wStatusFlags7
	ld [hli], a
	ASSERT wStatusFlags7 + 1 == wElite4Flags
	ld [hl], a
	ld a, BANK(Music_TitleScreen)
	ld [wAudioROMBank], a
	ld [wAudioSavedROMBank], a

DisplayTitleScreen:
	call GBPalWhiteOut
	ld a, $1
	ldh [hAutoBGTransferEnabled], a
	xor a
	ldh [hTileAnimations], a
	ldh [hSCX], a
	xor a
	ldh [hSCY], a
	ld a, $90
	ldh [hWY], a

	call ClearScreen
	call DisableLCD

	ld hl, TitleTiles
	ld de, vTileset
	ld bc, 128 tiles
	ld a, BANK(TitleTiles)
	call FarCopyData2          ; first chunk
	ld hl, TitleTiles tile 128
	ld de, vTitleLogo
	ld bc, 124 tiles
	ld a, BANK(TitleTiles)
	call FarCopyData2          ; second chunk

	call ClearBothBGMaps

	ld hl, TitleTiles_Tilemap
	ld de, vBGMap0
	ld b, SCREEN_HEIGHT
.copyRow
	push bc

	ld c, SCREEN_WIDTH
.copyTile
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .copyTile

	ld a, e
	add 12
	ld e, a
	jr nc, .noCarry
	inc d
.noCarry

	pop bc
	dec b
	jr nz, .copyRow

	call EnableLCD

	ld b, SET_PAL_TITLE_SCREEN
	call RunPaletteCommand
	call GBPalNormal

	ld a, MUSIC_TITLE_SCREEN
	ld [wNewSoundID], a
	call PlaySound

.waitForInput
	ld c, 200
	call CheckForUserInterruption
	jr c, .finished

	jr .waitForInput

.finished
	ld a, NIDORINO
	call PlayCry
	call WaitForSoundToFinish
	call GBPalWhiteOutWithDelay3
	call ClearSprites
	xor a
	ldh [hWY], a
	inc a
	ldh [hAutoBGTransferEnabled], a
	call ClearScreen
	ld a, HIGH(vBGMap0)
	call TitleScreenCopyTileMapToVRAM
	ld a, HIGH(vBGMap1)
	call TitleScreenCopyTileMapToVRAM
	call Delay3
	call LoadGBPal
	ldh a, [hJoyHeld]
	ld b, a
	and PAD_UP | PAD_SELECT | PAD_B
	cp PAD_UP | PAD_SELECT | PAD_B
	jp z, .doClearSaveDialogue
IF DEF(_DEBUG)
	ld a, b
	bit B_PAD_SELECT, a
	jp nz, DebugMenu
ENDC
	jp MainMenu

.doClearSaveDialogue
	farjp DoClearSaveDialogue

TitleScreenScrollInMon:
	ld d, 0 ; scroll in
	farcall TitleScroll
	xor a
	ldh [hWY], a
	ret

ScrollTitleScreenGameVersion:
.wait
	ldh a, [rLY]
	cp l
	jr nz, .wait

	ld a, h
	ldh [rSCX], a

.wait2
	ldh a, [rLY]
	cp h
	jr z, .wait2
	ret

DrawPlayerCharacter:
	ld hl, PlayerCharacterTitleGraphics
	ld de, vSprites
	ld bc, PlayerCharacterTitleGraphicsEnd - PlayerCharacterTitleGraphics
	ld a, BANK(PlayerCharacterTitleGraphics)
	call FarCopyData2
	call ClearSprites
	xor a
	ld [wPlayerCharacterOAMTile], a
	ld hl, wShadowOAM
	lb de, $60, $5a
	ld b, 7
.loop
	push de
	ld c, 5
.innerLoop
	ld a, d
	ld [hli], a ; Y
	ld a, e
	ld [hli], a ; X
	add 8
	ld e, a
	ld a, [wPlayerCharacterOAMTile]
	ld [hli], a ; tile
	inc a
	ld [wPlayerCharacterOAMTile], a
	inc hl
	dec c
	jr nz, .innerLoop
	pop de
	ld a, 8
	add d
	ld d, a
	dec b
	jr nz, .loop
	ret

ClearBothBGMaps:
	ld hl, vBGMap0
	ld bc, 2 * TILEMAP_AREA
	ld a, ' '
	jp FillMemory

LoadTitleMonSprite:
	ld [wCurPartySpecies], a
	ld [wCurSpecies], a
	hlcoord 5, 10
	call GetMonHeader
	jp LoadFrontSpriteByMonIndex

TitleScreenCopyTileMapToVRAM:
	ldh [hAutoBGTransferDest + 1], a
	jp Delay3

LoadCopyrightAndTextBoxTiles:
	xor a
	ldh [hWY], a
	call ClearScreen
	call LoadTextBoxTilePatterns

LoadCopyrightTiles:
	ld de, NintendoCopyrightLogoGraphics
	ld hl, vChars2 tile $60
	lb bc, BANK(NintendoCopyrightLogoGraphics), (GameFreakLogoGraphicsEnd - NintendoCopyrightLogoGraphics) / TILE_SIZE
	call CopyVideoData
	hlcoord 2, 7
	ld de, CopyrightTextString
	jp PlaceString

CopyrightTextString:
	db   $60,$61,$62,$61,$63,$61,$64,$7F,$65,$66,$67,$68,$69,$6A             ; ©'95.'96.'98 Nintendo
	next $60,$61,$62,$61,$63,$61,$64,$7F,$6B,$6C,$6D,$6E,$6F,$70,$71,$72     ; ©'95.'96.'98 Creatures inc.
	next $60,$61,$62,$61,$63,$61,$64,$7F,$73,$74,$75,$76,$77,$78,$79,$7A,$7B ; ©'95.'96.'98 GAME FREAK inc.
	db   "@"

INCLUDE "data/pokemon/title_mons.asm"

; prints version text (red, blue)
PrintGameVersionOnTitleScreen:
	hlcoord 7, 8
	ld de, VersionOnTitleScreenText
	jp PlaceString

; these point to special tiles specifically loaded for that purpose and are not usual text
VersionOnTitleScreenText:
	db $60,$61,$62,$63,$64,$65,$7F,$7F,"@" ; "Red Version"

DebugNewGamePlayerName:
	db "NINTEN@"

DebugNewGameRivalName:
	db "SONY@"

DebugNewGameJuniorName:
	db "SEGA@"

TitleTiles_Tilemap:
	INCBIN "gfx/title/title_tiles.tilemap"
