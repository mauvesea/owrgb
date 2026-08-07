SafariZoneCenterRestHouse_Script:
	jp EnableAutoTextBoxDrawing

SafariZoneCenterRestHouse_TextPointers:
	def_text_pointers
	dw_const SafariZoneCenterRestHouseGirlText,      TEXT_SAFARIZONECENTERRESTHOUSE_GIRL
	dw_const SafariZoneCenterRestHouseScientistText, TEXT_SAFARIZONECENTERRESTHOUSE_SCIENTIST

SafariZoneCenterRestHouseGirlText:
	text_asm
	ld hl, SafariZoneCenterRestHouseGirlText1
	call PrintText

	call GBFadeOutToBlack

	SetEvent EVENT_NISHIDA_FOUND

	ld a, TOGGLE_SAFARI_ZONE_CENTER_REST_HOUSE_NISHIDA
	ld [wToggleableObjectIndex], a
	predef HideObject

	ld a, TOGGLE_GF_ROOM_NISHIDA
	ld [wToggleableObjectIndex], a
	predef ShowObject

	call UpdateSprites
	call Delay3
	call GBFadeInFromBlack

	jp TextScriptEnd

SafariZoneCenterRestHouseGirlText1:
	text_far _SafariZoneCenterRestHouseGirlText
	text_end

SafariZoneCenterRestHouseScientistText:
	text_far _SafariZoneCenterRestHouseScientistText
	text_end
