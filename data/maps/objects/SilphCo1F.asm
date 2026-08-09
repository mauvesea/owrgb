	object_const_def
	const_export SILPHCO1F_LINK_RECEPTIONIST
	const_export SILPHCO1F_LINK_RECEPTIONIST2
	const_export SILPHCO1F_MORIMOTO

SilphCo1F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 10, 17, LAST_MAP, 6
	warp_event 11, 17, LAST_MAP, 6
	warp_event 26,  0, SILPH_CO_2F, 1
	warp_event 20,  0, SILPH_CO_ELEVATOR, 1
	warp_event 16, 10, SILPHCO_0F, 1

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, TEXT_SILPHCO1F_LINK_RECEPTIONIST
	object_event  3,  2, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, TEXT_SILPHCO1F_LINK_RECEPTIONIST2
	object_event  7, 10, SPRITE_BIKE_SHOP_CLERK, STAY, NONE, TEXT_SILPHCO1F_MORIMOTO

	def_warps_to SILPH_CO_1F
