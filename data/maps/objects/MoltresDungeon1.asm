MoltresDungeon1_Object:
	db $3 ; border block

	def_warp_events
	warp_event 18,  0, MOLTRES_DUNGEON_2, 1
	warp_event  0, 10, MOLTRES_DUNGEON_2, 2
	warp_event  0, 26, MOLTRES_DUNGEON_2, 3
	warp_event 16, 27, ROUTE_16, 10
	warp_event 17, 27, ROUTE_16, 10


	def_bg_events
;	bg_event  3, 13, TEXT_ROUTE7_UNDERGROUND_PATH_SIGN
;	bg_event 11,  9, TEXT_ROUTE7_SIGN

	def_object_events

	def_warps_to MOLTRES_DUNGEON_1
