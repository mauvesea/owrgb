MoltresDungeon3_Object:
	db $3 ; border block

	def_warp_events
	warp_event  0,  0, MOLTRES_DUNGEON_2, 4
	warp_event  2, 26, MOLTRES_DUNGEON_2, 5
	warp_event 24, 24, MOLTRES_DUNGEON_2, 6

	def_bg_events
;	bg_event  3, 13, TEXT_ROUTE7_UNDERGROUND_PATH_SIGN
;	bg_event 11,  9, TEXT_ROUTE7_SIGN

	def_object_events

	def_warps_to MOLTRES_DUNGEON_3
