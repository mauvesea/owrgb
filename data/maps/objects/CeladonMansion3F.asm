	object_const_def
;	const_export CELADONMANSION3F_PROGRAMMER
;	const_export CELADONMANSION3F_GRAPHIC_ARTIST
;	const_export CELADONMANSION3F_WRITER
	const_export CELADONMANSION3F_GAME_DESIGNER

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
;	object_event  0,  0, SPRITE_BIKE_SHOP_CLERK, STAY, UP, TEXT_CELADONMANSION3F_PROGRAMMER ; Morimoto
;	object_event  0,  0, SPRITE_CLERK, STAY, UP, TEXT_CELADONMANSION3F_GRAPHIC_ARTIST ; Sugimori
;	object_event  0,  0, SPRITE_SUPER_NERD, STAY, UP, TEXT_CELADONMANSION3F_WRITER
	object_event  2,  3, SPRITE_SILPH_WORKER_M, STAY, NONE, TEXT_CELADONMANSION3F_TAJIRI ; Tajiri

	def_warps_to CELADON_MANSION_3F
