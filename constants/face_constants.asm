; Dialogue portraits. Zero also means no active portrait after RAM initialization.
	const_def
	const FACE_NONE
	const FACE_OAK_1
	const FACE_OAK_2
	const FACE_BROCK
	const FACE_MISTY
	const FACE_SURGE
	const FACE_ERIKA
	const FACE_KOGA
	const FACE_SABRINA
	const FACE_BLAINE
	const FACE_GIOVANNI_1
	const FACE_GIOVANNI_2
	const FACE_RIVAL_1
	const FACE_CHIEF
DEF NUM_FACES EQU const_value

DEF FACE_TILE EQU $c0
DEF FACE_WIDTH EQU 4
DEF FACE_HEIGHT EQU 4
DEF FACE_TILES EQU FACE_WIDTH * FACE_HEIGHT
DEF FACE_TEXT_OFFSET EQU FACE_WIDTH + 1

; Portrait patterns must not overlap the dynamic dialogue glyph cache.
ASSERT FACE_TILE >= DIALOGUE_TILE_END
