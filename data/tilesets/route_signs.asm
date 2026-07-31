RouteSigns::
	ld a, [wCurMap]
	sub ROUTE_1
	cp 25
	ret nc ; Not a route map

	; A = route index (0-24)
	add a ; ×2 (word-sized pointers)

	ld e, a
	ld d, 0
	ld hl, RouteSignsPointers
	add hl, de

	; Load pointer into DE
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a

	; Is LCD enabled?
	ldh a, [rLCDC]
	bit B_LCDC_ENABLE, a
	jr nz, .lcdOn

	; LCD off: use FarCopyData2
	ld h, d
	ld l, e
	ld de, vChars2 tile $66
	ld bc, 2 tiles
	ld a, BANK(RouteSignsGFX)
	jp FarCopyData2

.lcdOn
	; LCD on: use CopyVideoData
	ld h, d
	ld l, e
	ld d, h
	ld e, l
	ld hl, vChars2 tile $66
	lb bc, BANK(RouteSignsGFX), 2
	jp CopyVideoData


RouteSignsPointers:
	dw RouteSignsGFX tile 0
	dw RouteSignsGFX tile 2
	dw RouteSignsGFX tile 4
	dw RouteSignsGFX tile 6
	dw RouteSignsGFX tile 8
	dw RouteSignsGFX tile 10
	dw RouteSignsGFX tile 12
	dw RouteSignsGFX tile 14
	dw RouteSignsGFX tile 16
	dw RouteSignsGFX tile 18
	dw RouteSignsGFX tile 20
	dw RouteSignsGFX tile 22
	dw RouteSignsGFX tile 24
	dw RouteSignsGFX tile 26
	dw RouteSignsGFX tile 28
	dw RouteSignsGFX tile 30
	dw RouteSignsGFX tile 32
	dw RouteSignsGFX tile 34
	dw RouteSignsGFX tile 36
	dw RouteSignsGFX tile 38
	dw RouteSignsGFX tile 40
	dw RouteSignsGFX tile 42
	dw RouteSignsGFX tile 44
	dw RouteSignsGFX tile 46
	dw RouteSignsGFX tile 48

RouteSignsGFX:
	INCBIN "gfx/overworld/route_signs.2bpp"
