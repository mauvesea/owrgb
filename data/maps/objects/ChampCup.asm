	object_const_def
	const_export CHAMP_CUP_BROCK
	const_export CHAMP_CUP_MISTY
	const_export CHAMP_CUP_SURGE
	const_export CHAMP_CUP_ERIKA
	const_export CHAMP_CUP_KOGA
	const_export CHAMP_CUP_SABRINA
	const_export CHAMP_CUP_BLAINE
	const_export CHAMP_CUP_JUNIOR

ChampCup_Object:
	db $0 ; border block

	def_warp_events
	warp_event  9, 14, SILPHCO_0F, 2

	def_bg_events

	def_object_events
	object_event 11, 12, SPRITE_BROCK, STAY, NONE, TEXT_CHAMPCUP_BROCK, OPP_BROCK, 5
	object_event  1, 14, SPRITE_MISTY, STAY, NONE, TEXT_CHAMPCUP_MISTY, OPP_MISTY, 5
	object_event 16,  6, SPRITE_SURGE, STAY, NONE, TEXT_CHAMPCUP_SURGE, OPP_LT_SURGE, 5
	object_event 15, 13, SPRITE_ERIKA, STAY, NONE, TEXT_CHAMPCUP_ERIKA, OPP_ERIKA, 5
	object_event  1,  5, SPRITE_KOGA_GYM, STAY, NONE, TEXT_CHAMPCUP_KOGA, OPP_KOGA, 5
	object_event 13,  9, SPRITE_SABRINA, STAY, NONE, TEXT_CHAMPCUP_SABRINA, OPP_SABRINA, 5
	object_event  4, 11, SPRITE_BLAINE, STAY, NONE, TEXT_CHAMPCUP_BLAINE, OPP_BLAINE, 5
	object_event  9,  3, SPRITE_JUNIOR, STAY, DOWN, TEXT_CHAMPCUP_JUNIOR, OPP_JUNIOR, 1


	def_warps_to CHAMP_CUP
