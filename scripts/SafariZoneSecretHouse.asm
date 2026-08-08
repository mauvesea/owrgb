SafariZoneSecretHouse_Script:
	call EnableAutoTextBoxDrawing
	ld hl, SafariZoneSecretHouseTrainerHeaders
	ld de, SafariZoneSecretHouse_ScriptPointers
	ld a, [wSafariZoneSecretHouse]
	call ExecuteCurMapScriptInTable
	ld [wSafariZoneSecretHouse], a
	ret

SafariZoneSecretHouse_ScriptPointers:
	def_script_pointers
	dw_const SafariZoneSecretHouseNoopScript,       SCRIPT_SAFARIZONESECRETHOUSE_NOOP
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_SAFARIZONESECRETHOUSE_START_BATTLE
	dw_const SafariZoneSecretHouseEndBattleScript,  SCRIPT_SAFARIZONESECRETHOUSE_END_BATTLE


SafariZoneSecretHouseNoopScript:
	ret

SafariZoneSecretHouseEndBattleScript:
	call EndTrainerBattle
	ld a, [wIsInBattle]
	cp $ff
	jp z, ResetChiefScript
	ld a, TEXT_SAFARIZONESECRETHOUSE_FISHING_GURU
	ldh [hTextID], a
	call DisplayTextID
	call GBFadeOutToBlack

	; Increase Level Scaling
	ld a, [wLevelScaling]
	inc a
	ld [wLevelScaling], a

	ld a, TOGGLE_SAFARI_ZONE_CHIEF
	ld [wToggleableObjectIndex], a
	predef HideObject

	call UpdateSprites
	call Delay3
	call GBFadeInFromBlack
	ret


ResetChiefScript:
	xor a ; SCRIPT_LORELEISROOM_DEFAULT
	ld [wSafariZoneSecretHouse], a
	ret



SafariZoneSecretHouse_TextPointers:
	def_text_pointers
	dw_const SafariZoneSecretHouseChiefText, TEXT_SAFARIZONESECRETHOUSE_FISHING_GURU

SafariZoneSecretHouseTrainerHeaders:
	def_trainers
SafariZoneSecretHouseHeader0:
	trainer EVENT_CHIEF_IN_SECRET_HOUSE, 0, SafariZoneSecretHouseBeforeBattleText, SafariZoneSecretHouseiEndBattleText, SafariZoneSecretHouseAfterBattleText
	db -1 ; end

SafariZoneSecretHouseChiefText:
	text_asm
	CheckEvent EVENT_GAVE_GOLD_TEETH
	jr nz, .Battle
	ld hl, ChiefBeforeWardenText
	call PrintText
	jr z, .Done
.Battle
	ld hl, SafariZoneSecretHouseHeader0
	call TalkToTrainer
.Done
	jp TextScriptEnd

ChiefBeforeWardenText:
	text_far _ChiefBeforeWardenText
	text_end

SafariZoneSecretHouseBeforeBattleText:
	text_far _SafariZoneSecretHouseBeforeBattleText
	text_end

SafariZoneSecretHouseiEndBattleText:
	text_far _SafariZoneSecretHouseiEndBattleText
	text_end

SafariZoneSecretHouseAfterBattleText:
	text_far _SafariZoneSecretHouseAfterBattleText
	text_end

SafariZoneSecretHouseFishingGuruText:
	text_asm
	CheckEvent EVENT_GOT_HM03
	jr nz, .got_item
	ld hl, .YouHaveWonText
	call PrintText
	lb bc, FLOATIES, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, .ReceivedHM03Text
	call PrintText
	SetEvent EVENT_GOT_HM03
	jr .done
.bag_full
	ld hl, .HM03NoRoomText
	call PrintText
	jr .done
.got_item
	ld hl, .HM03ExplanationText
	call PrintText
.done
	jp TextScriptEnd

.YouHaveWonText:
	text_far _SafariZoneSecretHouseFishingGuruYouHaveWonText
	text_end

.ReceivedHM03Text:
	text_far _SafariZoneSecretHouseFishingGuruReceivedHM03Text
	sound_get_item_1
	text_end

.HM03ExplanationText:
	text_far _SafariZoneSecretHouseFishingGuruHM03ExplanationText
	text_end

.HM03NoRoomText:
	text_far _SafariZoneSecretHouseFishingGuruHM03NoRoomText
	text_end
