	object_const_def
	const_export CELADONMANSION3F_GAME_DESIGNER
	const_export GFROOM_OBJ_MORIMOTO
	const_export GFROOM_OBJ_SUGIMORI
	const_export GFROOM_OBJ_MASUDA
	const_export GFROOM_OBJ_NISHIDA
	const_export GFROOM_OBJ_NISHINO

CeladonMansion3F_Object:
	db $f ; border block

	def_warp_events
	warp_event  6,  1, CELADON_MANSION_2F, 1
	warp_event  7,  1, CELADON_MANSION_ROOF, 1
	warp_event  2,  1, CELADON_MANSION_ROOF, 2
	warp_event  4,  1, CELADON_MANSION_2F, 4

	def_bg_events
	bg_event  0,  3, TEXT_GFROOM_DESK_MORIMOTO
	bg_event  1,  3, TEXT_GFROOM_PC_MORIMOTO

	bg_event  3,  3, TEXT_GFROOM_DESK_SUGIMORI
	bg_event  4,  3, TEXT_GFROOM_PC_SUGIMORI

	bg_event  0,  5, TEXT_GFROOM_DESK_MASUDA
	bg_event  1,  5, TEXT_GFROOM_PC_MASUDA

	bg_event  3,  5, TEXT_GFROOM_DESK_NISHIDA
	bg_event  4,  5, TEXT_GFROOM_PC_NISHIDA

	bg_event  0,  7, TEXT_GFROOM_DESK_NISHINO
	bg_event  1,  7, TEXT_GFROOM_PC_NISHINO

	bg_event  4,  9, TEXT_CELADONMANSION3F_DEV_ROOM_SIGN

	def_object_events
	object_event  2,  3, SPRITE_SILPH_WORKER_M, STAY, NONE, TEXT_CELADONMANSION3F_TAJIRI ; Tajiri
	object_event  0,  4, SPRITE_BIKE_SHOP_CLERK, STAY, UP, TEXT_CELADONMANSION3F_MORIMOTO ; Morimoto
	object_event  6,  5, SPRITE_CLERK, STAY, NONE, TEXT_CELADONMANSION3F_SUGIMORI ; Sugimori
	object_event  2, 10, SPRITE_COOLTRAINER_M, WALK, LEFT_RIGHT, TEXT_CELADONMANSION3F_MASUDA ; Masuda
	object_event  3,  6, SPRITE_GIRL, STAY, UP, TEXT_CELADONMANSION3F_NISHIDA ; Nishida
	object_event  0,  8, SPRITE_FISHER, STAY, UP, TEXT_CELADONMANSION3F_NISHINO ; Nishino

	def_warps_to CELADON_MANSION_3F
