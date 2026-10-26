; The first 54 font tiles are a cache while overworld dialogue is open.
; Source character IDs always refer to FontGraphics in ROM, including bold IDs.
InitDynamicDialogue::
	ld a, [wIsInBattle]
	and a
	ret nz
	ldh a, [hTextID]
	and a
	ret z ; start menu keeps the static font
	ld a, [wDynamicDialogue]
	and a
	ret nz
	xor a
	ld [wDialogueSavedScreens], a
	ld hl, wDialogueGlyphs
	ld bc, DIALOGUE_TILE_COUNT
	call FillMemory
	ld a, 1
	ld [wDynamicDialogue], a
	ret

; C = source glyph, DE = destination. Called through PutTextGlyph in ROM0.
PutDialogueGlyph::
	ld a, [wDynamicDialogue]
	and a
	jr z, .static
	ld a, c
	cp DIALOGUE_TILE_FIRST
	jr c, .static
; Only tilemap writes use the cache; callers can also build strings in RAM.
	ld a, d
	cp HIGH(wTileMap)
	jr c, .static
	jr nz, .checkEnd
	ld a, e
	cp LOW(wTileMap)
	jr c, .static
.checkEnd
	ld a, d
	cp HIGH(wTileMap + SCREEN_AREA)
	jr c, .dynamic
	jr nz, .static
	ld a, e
	cp LOW(wTileMap + SCREEN_AREA)
	jr c, .dynamic
.static
	ld a, c
	ld [de], a
	ret
.dynamic
	ld hl, wDialogueGlyphs
	ld b, DIALOGUE_TILE_FIRST
.findGlyph
	ld a, [hli]
	cp c
	jr z, .place
	inc b
	ld a, b
	cp DIALOGUE_TILE_END
	jr nz, .findGlyph
; Release the old character at the destination before finding an unused slot.
	ld a, ' '
	ld [de], a
	push de
	ld hl, wDialogueGlyphs
	ld b, DIALOGUE_TILE_FIRST
.findSlot
	ld a, [hl]
	and a
	jr z, .upload
	push hl
	push bc
	ld a, b
	call DialogueTileReferenced
	pop bc
	pop hl
	jr nc, .evict
	inc hl
	inc b
	ld a, b
	cp DIALOGUE_TILE_END
	jr nz, .findSlot
; More than 54 distinct visible glyphs cannot fit. Leave a blank rather than
; changing a glyph still used by the dialogue or a saved popup background.
	pop de
	ret
.evict
; Wait until old tilemap references have also left VRAM before reusing a tile.
	push hl
	push bc
	call Delay3
	pop bc
	pop hl
.upload
	ld [hl], c
	push bc
	ld a, c
	sub DIALOGUE_TILE_FIRST
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, FontGraphics
	add hl, de
	ld de, wDialogueGlyphData
	ld bc, TILE_1BPP_SIZE
	ld a, BANK(FontGraphics)
	call FarCopyData2
	pop bc
	push bc
	ld a, b
	sub DIALOGUE_TILE_FIRST
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, vFont
	add hl, de
	ld de, wDialogueGlyphData
	ld b, TILE_1BPP_SIZE
.copyRow
; Wait for HBlank/VBlank before each pair of writes. Disabling interrupts
; closes the race between checking STAT and writing VRAM; no extra letter
; delay is needed. With LCD off, STAT also permits the writes immediately.
	di
.waitVRAM
	ldh a, [rSTAT]
	and STAT_BUSY
	jr nz, .waitVRAM
	ld a, [de]
	inc de
	ld [hli], a
	ld [hli], a
	ei
	dec b
	jr nz, .copyRow
	pop bc
	pop de

.place
	ld a, b
	ld [de], a
	ret

; A = tile ID. Carry means it is still visible or held by a saved screen.
DialogueTileReferenced:
	ld d, a
	ld hl, wTileMap
	call .scan
	ret c
	ld a, [wDialogueSavedScreens]
	bit 0, a
	jr z, .buffer2
	ld hl, wTileMapBackup
	call .scan
	ret c
.buffer2
	ld a, [wDialogueSavedScreens]
	bit 1, a
	jr z, .popup
	ld hl, wTileMapBackup2
	call .scan
	ret c
.popup
	ld a, [wDialogueSavedScreens]
	bit 2, a
	jr z, .free
	ld hl, wBuffer
	ld bc, 5 * 6
	jr .loop
.free
	and a
	ret
.scan
	ld bc, SCREEN_AREA
.loop
	ld a, [hli]
	cp d
	jr z, .used
	dec bc
	ld a, b
	or c
	jr nz, .loop
	ret ; carry clear
.used
	scf
	ret

; Decode cached IDs before restoring the static font or leaving the overworld.
; Saved popup backgrounds are decoded too, so they survive later font reloads.
EndDynamicDialogue::
	ld a, [wDynamicDialogue]
	and a
	ret z
	ld hl, wTileMap
	call DecodeDialogueScreen
	ld a, [wDialogueSavedScreens]
	bit 0, a
	jr z, .buffer2
	ld hl, wTileMapBackup
	call DecodeDialogueScreen
.buffer2
	ld a, [wDialogueSavedScreens]
	bit 1, a
	jr z, .popup
	ld hl, wTileMapBackup2
	call DecodeDialogueScreen
.popup
	ld a, [wDialogueSavedScreens]
	bit 2, a
	jr z, ResetDynamicDialogue
	ld hl, wBuffer
	ld bc, 5 * 6
	call DecodeDialogueTiles
; When closing a textbox, discard the cache without changing visible tile IDs.
ResetDynamicDialogue::
	xor a
	ld [wDynamicDialogue], a
	ld [wDialogueSavedScreens], a
	ret

DecodeDialogueScreen:
	ld bc, SCREEN_AREA
DecodeDialogueTiles:
.loop
	ld a, [hl]
	sub DIALOGUE_TILE_FIRST
	jr c, .next
	cp DIALOGUE_TILE_COUNT
	jr nc, .next
	push hl
	ld l, a
	ld h, 0
	ld de, wDialogueGlyphs
	add hl, de
	ld a, [hl]
	pop hl
	ld [hl], a
.next
	inc hl
	dec bc
	ld a, b
	or c
	jr nz, .loop
	ret

SaveDialogueScreen1::
	ld a, [wDynamicDialogue]
	and a
	ret z
	ld hl, wDialogueSavedScreens
	set 0, [hl]
	ret
SaveDialogueScreen2::
	ld a, [wDynamicDialogue]
	and a
	ret z
	ld hl, wDialogueSavedScreens
	set 1, [hl]
	ret
LoadDialogueScreen1::
	ld hl, wDialogueSavedScreens
	res 0, [hl]
	ret
LoadDialogueScreen2::
	ld hl, wDialogueSavedScreens
	res 1, [hl]
	ret

SaveDialoguePopup::
	ld a, [wDynamicDialogue]
	and a
	ret z
	ld hl, wDialogueSavedScreens
	set 2, [hl]
	ret
LoadDialoguePopup::
	ld hl, wDialogueSavedScreens
	res 2, [hl]
	ret
