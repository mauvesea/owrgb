BluesHouse_Script:
	call EnableAutoTextBoxDrawing
	ld hl, BluesHouse_ScriptPointers
	ld a, [wBluesHouseCurScript]
	jp CallFunctionInTable

BluesHouse_ScriptPointers:
	def_script_pointers
	dw_const BluesHouseDefaultScript, SCRIPT_BLUESHOUSE_DEFAULT
	dw_const BluesHouseNoopScript,    SCRIPT_BLUESHOUSE_NOOP

BluesHouseDefaultScript:
	SetEvent EVENT_ENTERED_BLUES_HOUSE
	ld a, SCRIPT_BLUESHOUSE_NOOP
	ld [wBluesHouseCurScript], a
	ret

BluesHouseNoopScript:
	ret

BluesHouse_TextPointers:
	def_text_pointers
	dw_const BluesHouseDaisySittingText, TEXT_BLUESHOUSE_DAISY_SITTING
	dw_const BluesHouseDaisyWalkingText, TEXT_BLUESHOUSE_DAISY_WALKING
	dw_const BluesHouseTownMapText,      TEXT_BLUESHOUSE_TOWN_MAP
	dw_const BluesHouseJuniorScriptText, TEXT_BLUESHOUSE_JUNIOR

BluesHouseJuniorScriptText:
	text_asm
	jr .BecameChampion
	CheckEvent EVENT_BEAT_JUNIOR
	jr nz, .BeatJunior
	CheckEvent EVENT_BEAT_CHAMPION_RIVAL
	jr nz, .BecameChampion
	CheckEvent EVENT_BEAT_SILPH_CO_GIOVANNI
	jr nz, .EndedRocket
	CheckEvent EVENT_GOT_POKEDEX
	jr nz, .GotDex
	CheckEvent EVENT_GOT_STARTER
	jr nz, .GotStarter
	ld hl, JuniorInitialText
	call PrintText
	jr .done
.BeatJunior
	ld hl, JuniorBeatJuniorText
	call PrintText
	jr .done
.BecameChampion
	SetEvent EVENT_CASTLE_AVAILABLE
	ld hl, JuniorBeatChampionText
	call PrintText
	jr .done
.EndedRocket
	ld hl, JuniorBeatGiovanniText
	call PrintText
	jr .done
.GotDex
	ld hl, JuniorGotDexText
	call PrintText
	jr .done
.GotStarter
	ld hl, JuniorGotStartText
	call PrintText
	jr .done
.done
	jp TextScriptEnd

JuniorBeatJuniorText:
	text_far _JuniorBeatJuniorText
	text_end

JuniorBeatChampionText:
	text_far _JuniorBeatChampionText
	text_end

JuniorBeatGiovanniText:
	text_far _JuniorBeatGiovanniText
	text_end

JuniorGotDexText:
	text_far _JuniorGotDexText
	text_end

JuniorGotStartText:
	text_far _JuniorGotStartText
	text_end

JuniorInitialText:
	text_far _JuniorInitialText
	text_end

BluesHouseDaisySittingText:
	text_asm
	CheckEvent EVENT_GOT_TOWN_MAP
	jr nz, .got_town_map
	CheckEvent EVENT_GOT_POKEDEX
	jr nz, .give_town_map
	ld hl, BluesHouseDaisyRivalAtLabText
	call PrintText
	jr .done

.give_town_map
	ld hl, BluesHouseDaisyOfferMapText
	call PrintText
	lb bc, TOWN_MAP, 1
	call GiveItem
	jr nc, .bag_full
	ld a, TOGGLE_TOWN_MAP
	ld [wToggleableObjectIndex], a
	predef HideObject
	ld hl, GotMapText
	call PrintText
	SetEvent EVENT_GOT_TOWN_MAP
	jr .done

.got_town_map
	ld hl, BluesHouseDaisyUseMapText
	call PrintText
	jr .done

.bag_full
	ld hl, BluesHouseDaisyBagFullText
	call PrintText
.done
	jp TextScriptEnd

BluesHouseDaisyRivalAtLabText:
	text_far _BluesHouseDaisyRivalAtLabText
	text_end

BluesHouseDaisyOfferMapText:
	text_far _BluesHouseDaisyOfferMapText
	text_end

GotMapText:
	text_far _GotMapText
	sound_get_key_item
	text_end

BluesHouseDaisyBagFullText:
	text_far _BluesHouseDaisyBagFullText
	text_end

BluesHouseDaisyUseMapText:
	text_far _BluesHouseDaisyUseMapText
	text_end

BluesHouseDaisyWalkingText:
	text_far _BluesHouseDaisyWalkingText
	text_end

BluesHouseTownMapText:
	text_far _BluesHouseTownMapText
	text_end
