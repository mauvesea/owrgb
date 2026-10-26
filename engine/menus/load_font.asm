LoadFontTilePatterns_::
; Keep decoded tile IDs off-screen until their static glyphs are restored.
	ldh a, [hAutoBGTransferEnabled]
	push af
	xor a
	ldh [hAutoBGTransferEnabled], a
	call EndDynamicDialogue
	ldh a, [rLCDC]
	bit B_LCDC_ENABLE, a
	jr nz, .on
; off
	ld hl, FontGraphics
	ld de, vFont
	ld bc, FontGraphicsEnd - FontGraphics
	ld a, BANK(FontGraphics)
	call FarCopyDataDouble ; if LCD is off, transfer all at once
	jr .done
.on
	ld de, FontGraphics
	ld hl, vFont
	lb bc, BANK(FontGraphics), (FontGraphicsEnd - FontGraphics) / TILE_1BPP_SIZE
	call CopyVideoDataDouble ; if LCD is on, transfer during V-blank
.done
	pop af
	ldh [hAutoBGTransferEnabled], a
	ret

LoadTextBoxTilePatterns_::
	ldh a, [rLCDC]
	bit B_LCDC_ENABLE, a
	jr nz, .on
; off
	ld hl, TextBoxGraphics
	ld de, vChars2 tile $79
	ld bc, TextBoxGraphicsEnd - TextBoxGraphics
	ld a, BANK(TextBoxGraphics)
	jp FarCopyData2 ; if LCD is off, transfer all at once
.on
	ld de, TextBoxGraphics
	ld hl, vChars2 tile $79
	lb bc, BANK(TextBoxGraphics), (TextBoxGraphicsEnd - TextBoxGraphics) / TILE_SIZE
	jp CopyVideoData ; if LCD is on, transfer during V-blank

LoadHpBarAndStatusTilePatterns_::
	ldh a, [rLCDC]
	bit B_LCDC_ENABLE, a
	jr nz, .on
; off
	ld hl, HpBarAndStatusGraphics
	ld de, vChars2 tile $62
	ld bc, HpBarAndStatusGraphicsEnd - HpBarAndStatusGraphics
	ld a, BANK(HpBarAndStatusGraphics)
	jp FarCopyData2 ; if LCD is off, transfer all at once
.on
	ld de, HpBarAndStatusGraphics
	ld hl, vChars2 tile $62
	lb bc, BANK(HpBarAndStatusGraphics), (HpBarAndStatusGraphicsEnd - HpBarAndStatusGraphics) / TILE_SIZE
	jp CopyVideoData ; if LCD is on, transfer during V-blank
