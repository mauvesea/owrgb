; Dialogue portraits. Zero also means no active portrait after RAM initialization.
	const_def
	const FACE_NONE
	const FACE_MISTY
DEF NUM_FACES EQU const_value

DEF FACE_TILE EQU $c0
DEF FACE_WIDTH EQU 4
DEF FACE_HEIGHT EQU 4
DEF FACE_TILES EQU FACE_WIDTH * FACE_HEIGHT
DEF FACE_TEXT_OFFSET EQU FACE_WIDTH + 1
