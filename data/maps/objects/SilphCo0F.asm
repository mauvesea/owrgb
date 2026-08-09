	object_const_def
	const_export SILPHCO_0F_RECEPTIONIST
	const_export SILPHCO_0F_SILPHWORKERF
	const_export SILPHCO_0F_SILPHWORKERM
	const_export SILPHCO_0F_SCIENTIST

SilphCo0F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 11, 13, SILPH_CO_1F, 5

	def_bg_events

	def_object_events
	object_event  7, 10, SPRITE_SILPH_WORKER_F, STAY, LEFT, TEXT_SILPHCO_0F_EMPLOYEE_F_TEXT
	object_event  3, 12, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, TEXT_SILPHCO_0F_EXPLANATION_TEXT
	object_event  2, 12, SPRITE_SILPH_WORKER_M, STAY, DOWN, TEXT_SILPHCO_0F_REWARD_CORNER_TEXT
	object_event  9, 14, SPRITE_SCIENTIST, STAY, NONE, TEXT_SILPHCO_0F_SCIENTIST_TEXT

	def_warps_to SILPHCO_0F
