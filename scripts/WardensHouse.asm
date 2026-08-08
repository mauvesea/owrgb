WardensHouse_Script:
	jp EnableAutoTextBoxDrawing

WardensHouse_TextPointers:
	def_text_pointers
	dw_const WardensHouseWardenText,  TEXT_WARDENSHOUSE_WARDEN
	dw_const PickUpItemText,          TEXT_WARDENSHOUSE_RARE_CANDY
	dw_const BoulderText,             TEXT_WARDENSHOUSE_BOULDER
	dw_const WardensHouseDisplayText, TEXT_WARDENSHOUSE_DISPLAY_LEFT
	dw_const WardensHouseDisplayText, TEXT_WARDENSHOUSE_DISPLAY_RIGHT

WardensHouseWardenText:
	text_asm
	CheckEvent EVENT_GOT_HM04
	jr nz, .got_item

	CheckEvent EVENT_GAVE_GOLD_TEETH
	jr nz, .AcceptedMission

	ld hl, SafariWardenTextIntro
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .refused

	SetEvent EVENT_GAVE_GOLD_TEETH
	ld hl, SafariWardenTextAccepted
	call PrintText
	jr .done

.refused
	ld hl, SafariWardenTextRefused
	call PrintText
	jr .done

.AcceptedMission

	CheckEvent EVENT_CHIEF_IN_SECRET_HOUSE
	jr nz, .defeatedChief

	ld hl, SafariWardenTextCountingOnYou
	call PrintText
	jr .done

.defeatedChief
	ld hl, SafariWardenTextThanks
	call PrintText
	lb bc, CROWBAR, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, ReceivedHM04Text
	call PrintText
	SetEvent EVENT_GOT_HM04
	jr .done
.got_item
	ld hl, HM04ExplanationText
	call PrintText
	jr .done
.bag_full
	ld hl, HM04NoRoomText
	call PrintText
.done
	jp TextScriptEnd

SafariWardenTextIntro:
	text_far _SafariWardenTextIntro
	text_end

SafariWardenTextAccepted:
	text_far _SafariWardenTextAccepted
	text_end

SafariWardenTextRefused:
	text_far _SafariWardenTextRefused
	text_end

SafariWardenTextCountingOnYou:
	text_far _SafariWardenTextCountingOnYou
	text_end

SafariWardenTextThanks:
	text_far _SafariWardenTextThanks
	text_end


ReceivedHM04Text:
	text_far _WardensHouseWardenReceivedHM04Text
	sound_get_item_1
	text_end

HM04ExplanationText:
	text_far _WardensHouseWardenHM04ExplanationText
	text_end

HM04NoRoomText:
	text_far _WardensHouseWardenHM04NoRoomText
	text_end

WardensHouseDisplayText:
	text_asm
	ldh a, [hTextID]
	cp TEXT_WARDENSHOUSE_DISPLAY_LEFT
	ld hl, .MerchandiseText
	jr nz, .print_text
	ld hl, .PhotosAndFossilsText
.print_text
	call PrintText
	jp TextScriptEnd

.PhotosAndFossilsText:
	text_far _WardensHouseDisplayPhotosAndFossilsText
	text_end

.MerchandiseText:
	text_far _WardensHouseDisplayMerchandiseText
	text_end
