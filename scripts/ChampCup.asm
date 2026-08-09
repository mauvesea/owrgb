ChampCup_Script:
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_1, [hl]
	res BIT_CUR_MAP_LOADED_1, [hl]
	call nz, ChampCupDoorTile

	call EnableAutoTextBoxDrawing
	ld hl, ChampCupTrainerHeaders
	ld de, ChampCup_ScriptPointers
	ld a, [wChampCupCurScript]
	call ExecuteCurMapScriptInTable
	ld [wChampCupCurScript], a

	ret

ChampCupDoorTile:
	CheckEvent EVENT_BEAT_CHAMP_CUP_BROCK
	jr z, .LockedDoors
	CheckEvent EVENT_BEAT_CHAMP_CUP_MISTY
	jr z, .LockedDoors
	CheckEvent EVENT_BEAT_CHAMP_CUP_SURGE
	jr z, .LockedDoors
	CheckEvent EVENT_BEAT_CHAMP_CUP_ERIKA
	jr z, .LockedDoors
	CheckEvent EVENT_BEAT_CHAMP_CUP_KOGA
	jr z, .LockedDoors
	CheckEvent EVENT_BEAT_CHAMP_CUP_SABRINA
	jr z, .LockedDoors
	CheckEvent EVENT_BEAT_CHAMP_CUP_BLAINE
	jr z, .LockedDoors
.doorsOpen
	ld a, SFX_GO_INSIDE
	call PlaySound
	ld a, $6 ; clear floor tile ID
	jr .replaceTile
.LockedDoors
	ld a, $7 ; door tile ID
.replaceTile
	ld [wNewTileBlockID], a
	lb bc, 3, 4
	predef_jump ReplaceTileBlock

ChampCupResetScripts:
	xor a
	ld [wJoyIgnore], a
	ld [wChampCupCurScript], a
	ld [wCurMapScript], a
	ret

ChampCup_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_CHAMPCUP_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_CHAMPCUP_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_CHAMPCUP_END_BATTLE
	dw_const ChampCupJuniorAfterBattleScript,       SCRIPT_CHAMPCUP_JUNIOR_AFTER_BATTLE

ChampCupJuniorAfterBattleScript:
	ld a, [wIsInBattle]
	cp $ff ; did we lose?
	jp z, ChampCupResetScripts
	ld a, PAD_CTRL_PAD
	ld [wJoyIgnore], a

	ld a, TEXT_CHAMPCUP_AFTERBATTLE_TEXT
	ldh [hTextID], a
	call DisplayTextID

	xor a
	ld [wChampCupCurScript], a

	ld b, 5
.delayLoop
	ld c, 300 / 5
	call DelayFrames
	dec b

	ResetEvent EVENT_BEAT_CHAMP_CUP_BROCK
	ResetEvent EVENT_BEAT_CHAMP_CUP_MISTY
	ResetEvent EVENT_BEAT_CHAMP_CUP_SURGE
	ResetEvent EVENT_BEAT_CHAMP_CUP_ERIKA
	ResetEvent EVENT_BEAT_CHAMP_CUP_KOGA
	ResetEvent EVENT_BEAT_CHAMP_CUP_SABRINA
	ResetEvent EVENT_BEAT_CHAMP_CUP_BLAINE
	SetEvent EVENT_CASTLE_REWARD
	SetEvent EVENT_BEAT_JUNIOR

	ld a, PALLET_TOWN
	ldh [hWarpDestinationMap], a
	ld a, 3
	ld [wDestinationWarpID], a
	ld a, PALLET_TOWN
	ld [wLastMap], a
	ld [wLastBlackoutMap], a
	ld hl, wMovementFlags
	set 2, [hl]
	ld hl, wStatusFlags3
	set BIT_WARP_FROM_CUR_SCRIPT, [hl]
	xor a
	ld [wCurMapScript], a
	ld a, PLAYER_DIR_DOWN
	ld [wPlayerMovingDirection], a
	ld a, SPRITE_FACING_DOWN
	ld [wSpritePlayerStateData1FacingDirection], a
	ret

ChampCup_TextPointers:
	def_text_pointers
	dw_const ChampCupBrockText,       TEXT_CHAMPCUP_BROCK
	dw_const ChampCupMistyText,       TEXT_CHAMPCUP_MISTY
	dw_const ChampCupSurgeText,       TEXT_CHAMPCUP_SURGE
	dw_const ChampCupErikaText,       TEXT_CHAMPCUP_ERIKA
	dw_const ChampCupKogaText,        TEXT_CHAMPCUP_KOGA
	dw_const ChampCupSabrinaText,     TEXT_CHAMPCUP_SABRINA
	dw_const ChampCupBlaineText,      TEXT_CHAMPCUP_BLAINE
	dw_const ChampCupJuniorText,      TEXT_CHAMPCUP_JUNIOR
	dw_const ChampCup_Junior_AfterBattleText, TEXT_CHAMPCUP_AFTERBATTLE_TEXT

ChampCupTrainerHeaders:
	def_trainers 3
ChampCup_Brock_TrainerHeader:
	trainer EVENT_BEAT_CHAMP_CUP_BROCK, 0, ChampCup_Brock_BattleText, ChampCup_Brock_EndBattleText, ChampCup_Brock_AfterBattleText
ChampCup_Misty_TrainerHeader:
	trainer EVENT_BEAT_CHAMP_CUP_MISTY, 0, ChampCup_Misty_BattleText, ChampCup_Misty_EndBattleText, ChampCup_Misty_AfterBattleText
ChampCup_Surge_TrainerHeader:
	trainer EVENT_BEAT_CHAMP_CUP_SURGE, 0, ChampCup_Surge_BattleText, ChampCup_Surge_EndBattleText, ChampCup_Surge_AfterBattleText
ChampCup_Erika_TrainerHeader:
	trainer EVENT_BEAT_CHAMP_CUP_ERIKA, 0, ChampCup_Erika_BattleText, ChampCup_Erika_EndBattleText, ChampCup_Erika_AfterBattleText
ChampCup_Koga_TrainerHeader:
	trainer EVENT_BEAT_CHAMP_CUP_KOGA, 0, ChampCup_Koga_BattleText, ChampCup_Koga_EndBattleText, ChampCup_Koga_AfterBattleText
ChampCup_Sabrina_TrainerHeader:
	trainer EVENT_BEAT_CHAMP_CUP_SABRINA, 0, ChampCup_Sabrina_BattleText, ChampCup_Sabrina_EndBattleText, ChampCup_Sabrina_AfterBattleText
ChampCup_Blaine_TrainerHeader:
	trainer EVENT_BEAT_CHAMP_CUP_BLAINE, 0, ChampCup_Blaine_BattleText, ChampCup_Blaine_EndBattleText, ChampCup_Blaine_AfterBattleText
	db -1 ; end

ChampCupBrockText:
	text_asm
	ld hl, ChampCup_Brock_TrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

ChampCupMistyText:
	text_asm
	ld hl, ChampCup_Misty_TrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

ChampCupSurgeText:
	text_asm
	ld hl, ChampCup_Surge_TrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

ChampCupErikaText:
	text_asm
	ld hl, ChampCup_Erika_TrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

ChampCupKogaText:
	text_asm
	ld hl, ChampCup_Koga_TrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

ChampCupSabrinaText:
	text_asm
	ld hl, ChampCup_Sabrina_TrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

ChampCupBlaineText:
	text_asm
	ld hl, ChampCup_Blaine_TrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

ChampCupJuniorText:
	text_asm
	ld hl, ChampCup_Junior_BattleText
	call PrintText
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, ChampCup_Junior_EndBattleText
	ld de, ChampCup_Junior_EndBattleText
	call SaveEndBattleTextPointers

	ld a, OPP_JUNIOR
	ld [wCurOpponent], a
	ld a, 1
	ld [wTrainerNo], a
	xor a
	ldh [hJoyHeld], a
	ld a, SCRIPT_CHAMPCUP_JUNIOR_AFTER_BATTLE
	ld [wChampCupCurScript], a
	ld [wCurMapScript], a
.text_script_end
	jp TextScriptEnd


ChampCup_Brock_BattleText:
	text_far _ChampCup_Brock_BattleText
	text_end
ChampCup_Brock_EndBattleText:
	text_far _ChampCup_Brock_EndBattleText
	text_end
ChampCup_Brock_AfterBattleText:
	text_far _ChampCup_Brock_AfterBattleText
	text_end

ChampCup_Misty_BattleText:
	text_far _ChampCup_Misty_BattleText
	text_end
ChampCup_Misty_EndBattleText:
	text_far _ChampCup_Misty_EndBattleText
	text_end
ChampCup_Misty_AfterBattleText:
	text_far _ChampCup_Misty_AfterBattleText
	text_end

ChampCup_Surge_BattleText:
	text_far _ChampCup_Surge_BattleText
	text_end
ChampCup_Surge_EndBattleText:
	text_far _ChampCup_Surge_EndBattleText
	text_end
ChampCup_Surge_AfterBattleText:
	text_far _ChampCup_Surge_AfterBattleText
	text_end

ChampCup_Erika_BattleText:
	text_far _ChampCup_Erika_BattleText
	text_end
ChampCup_Erika_EndBattleText:
	text_far _ChampCup_Erika_EndBattleText
	text_end
ChampCup_Erika_AfterBattleText:
	text_far _ChampCup_Erika_AfterBattleText
	text_end

ChampCup_Koga_BattleText:
	text_far _ChampCup_Koga_BattleText
	text_end
ChampCup_Koga_EndBattleText:
	text_far _ChampCup_Koga_EndBattleText
	text_end
ChampCup_Koga_AfterBattleText:
	text_far _ChampCup_Koga_AfterBattleText
	text_end

ChampCup_Sabrina_BattleText:
	text_far _ChampCup_Sabrina_BattleText
	text_end
ChampCup_Sabrina_EndBattleText:
	text_far _ChampCup_Sabrina_EndBattleText
	text_end
ChampCup_Sabrina_AfterBattleText:
	text_far _ChampCup_Sabrina_AfterBattleText
	text_end

ChampCup_Blaine_BattleText:
	text_far _ChampCup_Blaine_BattleText
	text_end
ChampCup_Blaine_EndBattleText:
	text_far _ChampCup_Blaine_EndBattleText
	text_end
ChampCup_Blaine_AfterBattleText:
	text_far _ChampCup_Blaine_AfterBattleText
	text_end

ChampCup_Junior_BattleText:
	text_far _ChampCup_Junior_BattleText
	text_end
ChampCup_Junior_EndBattleText:
	text_far _ChampCup_Junior_EndBattleText
	text_end
ChampCup_Junior_AfterBattleText:
	text_far _ChampCup_Junior_AfterBattleText
	text_end
