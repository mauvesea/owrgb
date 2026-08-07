SilphCo1F_Script:
	call EnableAutoTextBoxDrawing
	CheckEvent EVENT_BEAT_SILPH_CO_GIOVANNI
	ret z
	CheckAndSetEvent EVENT_SILPH_CO_RECEPTIONIST_AT_DESK
	ret nz
	ld a, TOGGLE_SILPH_CO_1F_RECEPTIONIST
	ld [wToggleableObjectIndex], a
	predef ShowObject
	ld a, TOGGLE_SILPH_CO_1F_RECEPTIONIST2
	ld [wToggleableObjectIndex], a
	predef_jump ShowObject

SilphCo1F_TextPointers:
	def_text_pointers
	dw_const SilphCo1FLinkReceptionistText, TEXT_SILPHCO1F_LINK_RECEPTIONIST
	dw_const SilphCoClerkText,          TEXT_SILPHCO1F_LINK_RECEPTIONIST2
	dw_const SilphCo1FMorimotoText, TEXT_SILPHCO1F_MORIMOTO

SilphCo1FLinkReceptionistText:
	text_far _SilphCo1FLinkReceptionistText
	text_end

SilphCo1FMorimotoText:
	text_asm
	CheckEvent EVENT_BEAT_SILPH_CO_GIOVANNI
	jr nz, .DefeatedGiovanni
	ld hl, SilphCo1FMorimotoText1
	call PrintText
	jr .Finish
.DefeatedGiovanni
	ld hl, SilphCo1FMorimotoText2
	call PrintText
.Finish
	call GBFadeOutToBlack

	SetEvent EVENT_MORIMOTO_FOUND

	ld a, TOGGLE_SILPH_CO_1F_MORIMOTO
	ld [wToggleableObjectIndex], a
	predef HideObject

	ld a, TOGGLE_GF_ROOM_MORIMOTO
	ld [wToggleableObjectIndex], a
	predef ShowObject

	call UpdateSprites
	call Delay3
	call GBFadeInFromBlack

	jp TextScriptEnd

SilphCo1FMorimotoText1:
	text_far _SilphCo1FMorimotoText1
	text_end

SilphCo1FMorimotoText2:
	text_far _SilphCo1FMorimotoText2
	text_end
