; Dialogue uses a two-tile border indicator; menu list arrows stay single-tile.
HandleDialogueArrowBlinkTiming::
	ld a, [wPokedexTextArrow]
	and a
	jr z, .dialogue
	hlcoord 18, 16
	jp HandleDownArrowBlinkTiming
.dialogue
	hlcoord 9, 17
	ld a, [hl]
	ld b, a
	ld a, "<D_ARROW1>"
	cp b
	jr nz, .downArrowOff
.downArrowOn
	ldh a, [hDownArrowBlinkCount1]
	dec a
	ldh [hDownArrowBlinkCount1], a
	ret nz
	ldh a, [hDownArrowBlinkCount2]
	dec a
	ldh [hDownArrowBlinkCount2], a
	ret nz
	call HideDialogueArrow
	ld a, $ff
	ldh [hDownArrowBlinkCount1], a
	ld a, $06
	ldh [hDownArrowBlinkCount2], a
	ret
.downArrowOff
	ldh a, [hDownArrowBlinkCount1]
	and a
	ret z
	dec a
	ldh [hDownArrowBlinkCount1], a
	ret nz
	dec a
	ldh [hDownArrowBlinkCount1], a
	ldh a, [hDownArrowBlinkCount2]
	dec a
	ldh [hDownArrowBlinkCount2], a
	ret nz
	ld a, $06
	ldh [hDownArrowBlinkCount2], a
	jp ShowDialogueArrow


; Two-tile continuation indicator centered on the bottom border.
ShowDialogueArrow_::
	ld a, [wPokedexTextArrow]
	and a
	jr z, .dialogue
	ld a, '▼'
	ldcoord_a 18, 16
	ret
.dialogue
	ld a, "<D_ARROW1>"
	ldcoord_a 9, 17
	ld a, "<D_ARROW2>"
	ldcoord_a 10, 17
	ret

HideDialogueArrow_::
	ld a, [wPokedexTextArrow]
	and a
	jr z, .dialogue
	ld a, ' '
	ldcoord_a 18, 16
	ret
.dialogue
; Match the adjacent lower border.
	ld a, [wTileMap + 17 * SCREEN_WIDTH + 8]
	ldcoord_a 9, 17
	ldcoord_a 10, 17
	ret
