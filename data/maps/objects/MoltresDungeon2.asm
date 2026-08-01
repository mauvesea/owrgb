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
;	bg_event  3, 13, TEXT_ROUTE7_UNDERGROUND_PATH_SIGN
;	bg_event 11,  9, TEXT_ROUTE7_SIGN

	def_object_events

	def_warps_to MOLTRES_DUNGEON_2
