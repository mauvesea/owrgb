CeruleanBadgeHouse_Script:
	ld a, 1 << BIT_NO_AUTO_TEXT_BOX
	ld [wAutoTextBoxDrawingControl], a
	dec a
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ret

CeruleanBadgeHouse_TextPointers:
	def_text_pointers
	dw_const CeruleanBadgeHouseMiddleAgedManText, TEXT_CERULEANBADGEHOUSE_MIDDLE_AGED_MAN

CeruleanBadgeHouseMiddleAgedManText:
	text_asm
	ld hl, CeruleanBadgeHouseMiddleAgedManText1
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .answered_no1
	jr .answered_yes
.answered_no1
	ld hl, CeruleanBadgeHouseMiddleAgedManText2
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .answered_no2
	jr .answered_yes
.answered_no2
	ld hl, CeruleanBadgeHouseMiddleAgedManText3
	call PrintText
	jr .done
.answered_yes
	ld hl, CeruleanBadgeHouseMiddleAgedManText4
	call PrintText
.done
	jp TextScriptEnd


CeruleanBadgeHouseMiddleAgedManText1:
	text_far _CeruleanBadgeHouseMiddleAgedManText1
	text_end


CeruleanBadgeHouseMiddleAgedManText2:
	text_far _CeruleanBadgeHouseMiddleAgedManText2
	text_end


CeruleanBadgeHouseMiddleAgedManText3:
	text_far _CeruleanBadgeHouseMiddleAgedManText3
	text_end


CeruleanBadgeHouseMiddleAgedManText4:
	text_far _CeruleanBadgeHouseMiddleAgedManText4
	text_end
