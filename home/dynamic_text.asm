; A = source glyph, HL = tilemap destination. Preserve all registers and flags.
PutTextGlyph::
	push af
	ld a, [wDynamicDialogue]
	and a
	jr nz, .dynamic
	pop af
	ld [hl], a
	ret
.dynamic
	pop af
	push af
	push bc
	push de
	push hl
	ld c, a
	ld d, h
	ld e, l
	homecall PutDialogueGlyph
	pop hl
	pop de
	pop bc
	pop af
	ret
