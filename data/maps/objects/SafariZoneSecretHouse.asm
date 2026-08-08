	object_const_def
	const_export SAFARIZONESECRETHOUSE_FISHING_GURU

SafariZoneSecretHouse_Object:
	db $17 ; border block

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_WEST, 7
	warp_event  3,  7, SAFARI_ZONE_WEST, 7

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_SCIENTIST, STAY, LEFT, TEXT_SAFARIZONESECRETHOUSE_FISHING_GURU, OPP_CHIEF, 1

	def_warps_to SAFARI_ZONE_SECRET_HOUSE
