CeladonChiefHouse_Script:
	call EnableAutoTextBoxDrawing
	ret

CeladonChiefHouse_TextPointers:
	def_text_pointers
	dw_const CeladonChiefHouseChiefScript,  TEXT_CELADONCHIEFHOUSE_CHIEF
	dw_const CeladonChiefHouseRocketText, TEXT_CELADONCHIEFHOUSE_ROCKET
	dw_const CeladonChiefHouseSailorScript, TEXT_CELADONCHIEFHOUSE_SAILOR


CeladonChiefHouseChiefScript:
	text_asm
	CheckEvent EVENT_BEAT_VIRIDIAN_GYM_GIOVANNI
	jr z, .GiovanniNotBeaten
	ld hl, CeladonChiefHouseChiefText2
	call PrintText
	jr .ScriptEnd
.GiovanniNotBeaten
	ld hl, CeladonChiefHouseChiefText
	call PrintText
.ScriptEnd
	jp TextScriptEnd

CeladonChiefHouseSailorScript:
	text_asm
	CheckEvent EVENT_BEAT_VIRIDIAN_GYM_GIOVANNI
	jr z, .GiovanniNotBeaten
	ld hl, CeladonChiefHouseSailorText2
	call PrintText
	jr .ScriptEnd
.GiovanniNotBeaten
	ld hl, CeladonChiefHouseSailorText
	call PrintText
.ScriptEnd
	jp TextScriptEnd

CeladonChiefHouseChiefText:
	text_far _CeladonChiefHouseChiefText
	text_end

CeladonChiefHouseChiefText2:
	text_far _CeladonChiefHouseChiefText2
	text_end

CeladonChiefHouseRocketText:
	text_far _CeladonChiefHouseRocketText
	text_end

CeladonChiefHouseSailorText:
	text_far _CeladonChiefHouseSailorText
	text_end

CeladonChiefHouseSailorText2:
	text_far _CeladonChiefHouseSailorText2
	text_end
