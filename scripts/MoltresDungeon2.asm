MoltresDungeon2_Script:
	call EnableAutoTextBoxDrawing
	ld hl, MoltresDungeon2TrainerHeaders
	ld de, MoltresDungeon2_ScriptPointers
	ld a, [wMoltresDungeon2CurScript]
	call ExecuteCurMapScriptInTable
	ld [wMoltresDungeon2CurScript], a
	ret


MoltresDungeon2_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_MOLTRESDUNGEON2_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_MOLTRESDUNGEON2_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_MOLTRESDUNGEON2_END_BATTLE

MoltresDungeon2_TextPointers:
	def_text_pointers
	dw_const MoltresDungeonMoltresText, TEXT_MOLTRESDUNGEON2_MOLTRES
;	dw_const PickUpItemText,            TEXT_MOLTRESDUNGEON2_RARE_CANDY
;	dw_const PickUpItemText,            TEXT_MOLTRESDUNGEON2_TM_FIRE_BLAST

MoltresDungeon2TrainerHeaders:
	def_trainers
MoltresDungeonTrainerHeader:
	trainer EVENT_BEAT_MOLTRES_DUNGEON, 0, MoltresDungeon2MoltresBattleText, MoltresDungeon2MoltresBattleText, MoltresDungeon2MoltresBattleText
	db -1 ; end

MoltresDungeon2InitBattleScript:
	call TalkToTrainer
	ld a, [wCurMapScript]
	ld [wMoltresDungeon2CurScript], a
	jp TextScriptEnd

MoltresDungeonMoltresText:
	text_asm
	ld hl, MoltresDungeonTrainerHeader
	jr MoltresDungeon2InitBattleScript

MoltresDungeon2MoltresBattleText:
	text_far _VictoryRoad2FMoltresBattleText
	text_asm
	ld a, MOLTRES
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

