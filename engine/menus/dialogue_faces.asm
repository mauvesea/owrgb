; Portraits occupy the first four columns of the dialogue interior (1,13).
; Text retains its usual vertical spacing, starting at (6,14).
SetDialogueFace::
; E = face ID (Bankswitch uses A).
	ld a, e
	cp $ff ; keepface
	jr z, .keep
	cp NUM_FACES
	ret nc
	and a
	jr nz, .checkRetained
	ld [wKeepDialogueFace], a
.checkRetained
	ld a, [wKeepDialogueFace]
	and a
	jr z, .set
	ld a, [wDialogueFace]
	cp e
	jp z, ClearDialogueText
.set
	ld a, e
	ld [wDialogueFace], a
	push af
	hlcoord 1, 13
	lb bc, 4, 18
	call ClearScreenArea
	pop af
	and a
	jr z, .restoreFont
	dec a
	ld hl, DialogueFaceGraphics
	ld b, 0
	ld c, a
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld b, [hl]
	ld c, FACE_TILES
	ld hl, vFont tile (FACE_TILE - $80)
	call CopyVideoData
	call DrawDialogueFace
; Flush the complete portrait before the first letter, even with text delay off.
	jp Delay3
.restoreFont
	call RestoreDialogueMapPalette
	ld a, [wDynamicDialogue]
	and a
	ret nz
	ld de, FontGraphics + (FACE_TILE - $80) * TILE_1BPP_SIZE
	ld hl, vFont tile (FACE_TILE - $80)
	lb bc, BANK(FontGraphics), FACE_TILES
	jp CopyVideoDataDouble

.keep
; With no portrait there is nothing to retain.
	ld a, [wDialogueFace]
	ld [wKeepDialogueFace], a
	ret

; Carry means the existing textbox is retained; never clear its portrait tiles.
ContinueDialogueFace::
	ld a, [wKeepDialogueFace]
	and a
	ret z
	call ClearDialogueText
	scf
	ret

PrepareDialogueTextBox::
	call ContinueDialogueFace
	ret c
	ld a, MESSAGE_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	jp DrawDialogueFace

DrawDialogueFace::
	ld a, [wDialogueFace]
	and a
	ret z
; Finish palette and attribute updates before exposing portrait tiles to VBlank.
	ld b, SET_PAL_DIALOGUE_FACE
	call RunDialoguePaletteCommand
	hlcoord 1, 13
	ld a, FACE_TILE
	ld b, FACE_HEIGHT
.row
	ld c, FACE_WIDTH
.tile
	ld [hli], a
	inc a
	dec c
	jr nz, .tile
	ld de, SCREEN_WIDTH - FACE_WIDTH
	add hl, de
	dec b
	jr nz, .row
	ret

ClearDialogueText::
	hlcoord 1, 13
	call OffsetDialogueText
	ld c, 18
	ld a, [wDialogueFace]
	and a
	jr z, .clear
	ld c, 18 - FACE_TEXT_OFFSET
.clear
	ld b, 4
	jp ClearScreenArea

; Scroll only the text columns, leaving the portrait and gutter untouched.
ScrollDialogueText::
	hlcoord 1, 14
	call OffsetDialogueText
	ld d, h
	ld e, l
	ld bc, -SCREEN_WIDTH
	add hl, bc
	ld b, 3
.row
	ld c, 18
	ld a, [wDialogueFace]
	and a
	jr z, .copy
	ld c, 18 - FACE_TEXT_OFFSET
.copy
	push bc
	push hl
	push de
.tile
	ld a, [de]
	ld [hli], a
	inc de
	dec c
	jr nz, .tile
	pop de
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	push hl
	ld h, d
	ld l, e
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	pop bc
	dec b
	jr nz, .row
	hlcoord 1, 16
	call OffsetDialogueText
	ld c, 18
	ld a, [wDialogueFace]
	and a
	jr z, .clear
	ld c, 18 - FACE_TEXT_OFFSET
.clear
	ld b, 1
	call ClearScreenArea
	ld c, 5
	jp DelayFrames

; Only the SGB has screen-region palettes; leave DMG/CGB behavior unchanged.
RunDialoguePaletteCommand:
	ld a, [wOnCGB]
	and a
	ret nz
	jp RunPaletteCommand

RestoreDialogueMapPalette:
	ld a, [wOnSGB]
	and a
	ret z
	ld a, [wOnCGB]
	and a
	ret nz
; The cleared tilemap must reach the screen before its colors change.
	call Delay3
	ld b, SET_PAL_OVERWORLD
	jp RunPaletteCommand

PrepareDialogueFaceClose::
	ld a, [wKeepDialogueFace]
	and a
	jr z, .close
	scf
	ret
.close
	call CloseDialogueFace
	and a ; carry clear: proceed with normal textbox dismissal
	ret

CloseDialogueFace:
	call ResetDynamicDialogue
	ld a, [wDialogueFace]
	ld e, a
	xor a
	ld [wDialogueFace], a
	ld a, e
	and a
	ret z
	ld a, [wOnSGB]
	and a
	ret z
	ld a, [wOnCGB]
	and a
	ret nz
	hlcoord 1, 13
	lb bc, 4, 18
	call ClearScreenArea
; Keep the window visible until the portrait/text are blank and the map's
; palette and whole-screen attributes have been restored.
	jp RestoreDialogueMapPalette
