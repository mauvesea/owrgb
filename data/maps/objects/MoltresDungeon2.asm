	object_const_def
	const_export MOLTRESDUNGEON2_MOLTRES
	const_export MOLTRESDUNGEON2_TM_FIREBLAST

MoltresDungeon2_Object:
	db $3 ; border block

	def_warp_events
	warp_event 28,  0, MOLTRES_DUNGEON_1, 1
	warp_event 10, 10, MOLTRES_DUNGEON_1, 2
	warp_event 10, 27, MOLTRES_DUNGEON_1, 3
	warp_event  0,  0, MOLTRES_DUNGEON_3, 1
	warp_event  2, 27, MOLTRES_DUNGEON_3, 2
	warp_event 26, 25, MOLTRES_DUNGEON_3, 3

	def_bg_events

	def_object_events
	object_event 20, 14, SPRITE_BIRD, STAY, DOWN, TEXT_MOLTRESDUNGEON2_MOLTRES, MOLTRES, 10
	object_event 24, 23, SPRITE_POKE_BALL, STAY, NONE, TEXT_MOLTRESDUNGEON2_TM_FIRE_BLAST, TM_FIRE_BLAST

	def_warps_to MOLTRES_DUNGEON_2
