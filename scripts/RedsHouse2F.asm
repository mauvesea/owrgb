RedsHouse2F_Script:
	call RedsRoomSetTrophies
	call EnableAutoTextBoxDrawing
	ld hl, RedsHouse2F_ScriptPointers
	ld a, [wRedsHouse2FCurScript]
	jp CallFunctionInTable

RedsRoomSetTrophies:
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_1, [hl]
	res BIT_CUR_MAP_LOADED_1, [hl]
	ret z
	CheckEvent EVENT_BEAT_CHAMPION_RIVAL
	jr z, .NotChampion
	ld a, $18 ; Trophy 1 Tile ID
	ld [wNewTileBlockID], a
	lb bc, 0, 0
	predef ReplaceTileBlock
.NotChampion
	CheckEvent EVENT_BEAT_JUNIOR
	ret z
	ld a, $19 ; Trophy 1 Tile ID
	ld [wNewTileBlockID], a
	lb bc, 0, 1
	predef_jump ReplaceTileBlock

RedsHouse2F_ScriptPointers:
	def_script_pointers
	dw_const RedsHouse2FDefaultScript, SCRIPT_REDSHOUSE2F_DEFAULT
	dw_const RedsHouse2FNoopScript,    SCRIPT_REDSHOUSE2F_NOOP

RedsHouse2FDefaultScript:
	xor a
	ldh [hJoyHeld], a
	ld a, PLAYER_DIR_UP
	ld [wPlayerMovingDirection], a
	ld a, SCRIPT_REDSHOUSE2F_NOOP
	ld [wRedsHouse2FCurScript], a
	ret

RedsHouse2FNoopScript:
	ret

RedsHouse2F_TextPointers:
	def_text_pointers

	text_end ; unused
