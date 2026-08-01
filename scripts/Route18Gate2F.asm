Route18Gate2F_Script:
	jp DisableAutoTextBoxDrawing

Route18Gate2F_TextPointers:
	def_text_pointers
	dw_const Route18Gate2FYoungsterText,       TEXT_ROUTE18GATE2F_YOUNGSTER
	dw_const Route18Gate2FOaksAideText,        TEXT_ROUTE18GATE2F_OAKS_AIDE
	dw_const Route18Gate2FLeftBinocularsText,  TEXT_ROUTE18GATE2F_LEFT_BINOCULARS
	dw_const Route18Gate2FRightBinocularsText, TEXT_ROUTE18GATE2F_RIGHT_BINOCULARS

Route18Gate2FYoungsterText:
	text_asm
	ld a, TRADE_FOR_MARC
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd

Route18Gate2FLeftBinocularsText:
	text_asm
	ld hl, .Text
	jp GateUpstairsScript_PrintIfFacingUp

.Text:
	text_far _Route18Gate2FLeftBinocularsText
	text_end

Route18Gate2FRightBinocularsText:
	text_asm
	ld hl, .Text
	jp GateUpstairsScript_PrintIfFacingUp

.Text:
	text_far _Route18Gate2FRightBinocularsText
	text_end

Route18Gate2FOaksAideText:
	text_asm
	CheckEvent EVENT_GOT_OMAMORI
	jr nz, .got_item
	ld a, 70
	ldh [hOaksAideRequirement], a
	ld a, OMAMORI
	ldh [hOaksAideRewardItem], a
	ld [wNamedObjectIndex], a
	call GetItemName
	ld hl, wNameBuffer
	ld de, wOaksAideRewardItemName
	ld bc, ITEM_NAME_LENGTH
	call CopyData
	predef OaksAideScript
	ldh a, [hOaksAideResult]
	cp OAKS_AIDE_GOT_ITEM
	jr nz, .no_item
	SetEvent EVENT_GOT_OMAMORI
.got_item
	ld hl, .OmamoriText
	call PrintText
.no_item
	jp TextScriptEnd

.OmamoriText:
	text_far _Route18Gate2FOaksAideOmamoriText
	text_end
