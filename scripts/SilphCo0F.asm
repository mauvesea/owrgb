SilphCo0F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, SilphCo0F_ScriptPointers
	ld a, [wSilphCo0FCurScript]
	jp CallFunctionInTable

SilphCo0F_ScriptPointers:
	def_script_pointers
	dw_const SilphCo0FDefaultScript,      SCRIPT_SILPHCO_0F_DEFAULT
	dw_const SilphCo0FPlayerMovingScript, SCRIPT_SILPHCO_0F_PLAYER_MOVING

SilphCo0FMovePlayerDownScript:
	ld hl, wStatusFlags5
	set BIT_SCRIPTED_MOVEMENT_STATE, [hl]
	ld a, PAD_DOWN
	ld [wSimulatedJoypadStatesEnd], a
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	xor a
	ld [wSpritePlayerStateData2MovementByte1], a
	ld [wOverrideSimulatedJoypadStatesMask], a
	ret

SilphCo0FDefaultScript:
	CheckEvent EVENT_CASTLE_REWARD
	ret z
	ld hl, .PlayerInCoordsArray
	call ArePlayerCoordsInArray
	ret nc
	ld a, PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	ld a, TEXT_SILPHCO_0F_REWARD_TEXT
	ldh [hTextID], a
	call DisplayTextID
	call SilphCo0FMovePlayerDownScript
	ld a, SCRIPT_SILPHCO_0F_PLAYER_MOVING
	ld [wRoute8GateCurScript], a
	ret

.PlayerInCoordsArray:
	dbmapcoord  6, 10
	db -1 ; end

SilphCo0FPlayerMovingScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3
	xor a
	ld [wJoyIgnore], a
	ld [wSilphCo0FCurScript], a
	ret

SilphCo0F_TextPointers:
	def_text_pointers
	dw_const SilphCo0FEmployeeFText,    TEXT_SILPHCO_0F_EMPLOYEE_F_TEXT
	dw_const SilphCo0FExplanationText,  TEXT_SILPHCO_0F_EXPLANATION_TEXT
	dw_const SilphCo0FRewardCornerText, TEXT_SILPHCO_0F_REWARD_CORNER_TEXT
	dw_const SilphCo0FScientistText,    TEXT_SILPHCO_0F_SCIENTIST_TEXT
	dw_const SilphCo0FGetRewardText,    TEXT_SILPHCO_0F_REWARD_TEXT


SilphCo0FEmployeeFText:
	text_far _SilphCo0FEmployeeFText
	text_end

SilphCo0FGetRewardText:
	text_far _SilphCo0FGetRewardText
	text_end

SilphCo0FExplanationText:
	text_far _SilphCo0FExplanationText
	text_end

SilphCo0FScientistText:
	text_far _SilphCo0FScientistText
	text_end

SilphCo0FRewardCornerNoRewardText:
	text_far _SilphCo0FRewardCornerNoRewardText
	text_end

SilphCo0FRewardCornerRewardAvailableText:
	text_far _SilphCo0FRewardCornerRewardAvailableText
	text_end

SilphCo0FRewardCornerText:
	text_asm
	CheckEvent EVENT_CASTLE_REWARD
	jr nz, .GiveReward
	ld hl, SilphCo0FRewardCornerNoRewardText
	call PrintText
	jp .done

.GiveReward
	ld hl, SilphCo0FRewardCornerRewardAvailableText
	call PrintText

	ld a, [wCastleMonCount]
	cp 7
	jr c, .loop
	SetEvent EVENT_CASTLE_COMPLETE

.loop
	call Random

	cp CHARMANDER
	jp z, .Charmander
	cp BULBASAUR
	jp z, .Bulbasaur
	cp SQUIRTLE
	jp z, .Squirtle
	cp EEVEE
	jp z, .Eevee
	cp HITMONCHAN
	jp z, .Hitmonchan
	cp HITMONLEE
	jp z, .Hitmonlee
	cp OMANYTE
	jp z, .Omanyte
	cp KABUTO
	jp z, .Kabuto
	jr nz, .loop

.Charmander
	ld [wCastleMonTemp], a

	CheckEvent EVENT_CASTLE_COMPLETE
	jp nz, .found

	CheckEvent EVENT_CASTLE_CHARMANDER
	jp nz, .loop

	ld a, [wPlayerStarter]
	cp CHARMANDER
	jp z, .loop

	ld a, [wCastleMonCount]
	inc a
	ld [wCastleMonCount], a
	SetEvent EVENT_CASTLE_CHARMANDER
	jp .found

.Bulbasaur
	ld [wCastleMonTemp], a

	CheckEvent EVENT_CASTLE_COMPLETE
	jp nz, .found

	CheckEvent EVENT_CASTLE_BULBASAUR
	jp nz, .loop

	ld a, [wPlayerStarter]
	cp BULBASAUR
	jp z, .loop

	ld a, [wCastleMonCount]
	inc a
	ld [wCastleMonCount], a
	SetEvent EVENT_CASTLE_BULBASAUR
	jp .found

.Squirtle
	ld [wCastleMonTemp], a

	CheckEvent EVENT_CASTLE_COMPLETE
	jp nz, .found

	CheckEvent EVENT_CASTLE_SQUIRTLE
	jp nz, .loop

	ld a, [wPlayerStarter]
	cp SQUIRTLE
	jp z, .loop

	ld a, [wCastleMonCount]
	inc a
	ld [wCastleMonCount], a
	SetEvent EVENT_CASTLE_SQUIRTLE
	jp .found

.Eevee
	ld [wCastleMonTemp], a

	CheckEvent EVENT_CASTLE_COMPLETE
	jp nz, .found

	CheckEvent EVENT_CASTLE_EEVEE
	jp nz, .loop

	ld a, [wCastleMonCount]
	inc a
	ld [wCastleMonCount], a
	SetEvent EVENT_CASTLE_EEVEE
	jp .found

.Kabuto
	ld [wCastleMonTemp], a

	CheckEvent EVENT_CASTLE_COMPLETE
	jp nz, .found

	CheckEvent EVENT_CASTLE_KABUTO
	jp nz, .loop

	ld a, [wCastleMonCount]
	inc a
	ld [wCastleMonCount], a

	CheckEvent EVENT_GOT_DOME_FOSSIL
	jp nz, .loop

	SetEvent EVENT_CASTLE_KABUTO
	jp .found

.Omanyte
	ld [wCastleMonTemp], a

	CheckEvent EVENT_CASTLE_COMPLETE
	jp nz, .found

	CheckEvent EVENT_CASTLE_OMANYTE
	jp nz, .loop

	ld a, [wCastleMonCount]
	inc a
	ld [wCastleMonCount], a

	CheckEvent EVENT_GOT_HELIX_FOSSIL
	jp nz, .loop

	SetEvent EVENT_CASTLE_OMANYTE
	jp .found

.Hitmonlee
	ld [wCastleMonTemp], a

	CheckEvent EVENT_CASTLE_COMPLETE
	jp nz, .found

	CheckEvent EVENT_CASTLE_HITMONLEE
	jp nz, .loop
	ld a, [wCastleMonCount]
	inc a
	ld [wCastleMonCount], a

	CheckEvent EVENT_GOT_HITMONLEE
	jp nz, .loop

	SetEvent EVENT_CASTLE_HITMONLEE
	jp .found

.Hitmonchan
	ld [wCastleMonTemp], a

	CheckEvent EVENT_CASTLE_COMPLETE
	jp nz, .found

	CheckEvent EVENT_CASTLE_HITMONCHAN
	jp nz, .loop

	ld a, [wCastleMonCount]
	inc a
	ld [wCastleMonCount], a

	CheckEvent EVENT_GOT_HITMONCHAN
	jp nz, .loop

	SetEvent EVENT_CASTLE_HITMONCHAN
	jp .found

.found
	ld a, [wCastleMonTemp]
	ld b, a
	ld c, 5
	call GivePokemon
	ResetEvent EVENT_CASTLE_REWARD
.done
	jp TextScriptEnd
