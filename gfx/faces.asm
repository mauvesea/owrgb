; Entries follow constants/face_constants.asm, excluding FACE_NONE.
; Keep this table in the same bank as SetDialogueFace.
DialogueFaceGraphics:
	assert (@ - DialogueFaceGraphics) / 3 == FACE_OAK_1 - 1
	dab Oak1FaceGraphics
	assert (@ - DialogueFaceGraphics) / 3 == FACE_OAK_2 - 1
	dab Oak2FaceGraphics
	assert (@ - DialogueFaceGraphics) / 3 == FACE_BROCK - 1
	dab BrockFaceGraphics
	assert (@ - DialogueFaceGraphics) / 3 == FACE_MISTY - 1
	dab MistyFaceGraphics
	assert (@ - DialogueFaceGraphics) / 3 == FACE_SURGE - 1
	dab SurgeFaceGraphics
	assert (@ - DialogueFaceGraphics) / 3 == FACE_ERIKA - 1
	dab ErikaFaceGraphics
	assert (@ - DialogueFaceGraphics) / 3 == FACE_KOGA - 1
	dab KogaFaceGraphics
	assert (@ - DialogueFaceGraphics) / 3 == FACE_SABRINA - 1
	dab SabrinaFaceGraphics
	assert (@ - DialogueFaceGraphics) / 3 == FACE_BLAINE - 1
	dab BlaineFaceGraphics
	assert (@ - DialogueFaceGraphics) / 3 == FACE_GIOVANNI_1 - 1
	dab Giovanni1FaceGraphics
	assert (@ - DialogueFaceGraphics) / 3 == FACE_GIOVANNI_2 - 1
	dab Giovanni2FaceGraphics
	assert (@ - DialogueFaceGraphics) / 3 == FACE_RIVAL_1 - 1
	dab Rival1FaceGraphics
	assert (@ - DialogueFaceGraphics) / 3 == FACE_CHIEF - 1
	dab ChiefFaceGraphics
	assert (@ - DialogueFaceGraphics) / 3 == NUM_FACES - 1

; Each portrait is 32 x 32 pixels, stored as sixteen row-major 2bpp tiles.
Oak1FaceGraphics::
	INCBIN "gfx/faces/oak1.2bpp"
	assert @ - Oak1FaceGraphics == FACE_TILES * TILE_SIZE

Oak2FaceGraphics::
	INCBIN "gfx/faces/oak2.2bpp"
	assert @ - Oak2FaceGraphics == FACE_TILES * TILE_SIZE

BrockFaceGraphics::
	INCBIN "gfx/faces/brock.2bpp"
	assert @ - BrockFaceGraphics == FACE_TILES * TILE_SIZE

MistyFaceGraphics::
	INCBIN "gfx/faces/misty.2bpp"
	assert @ - MistyFaceGraphics == FACE_TILES * TILE_SIZE

SurgeFaceGraphics::
	INCBIN "gfx/faces/surge.2bpp"
	assert @ - SurgeFaceGraphics == FACE_TILES * TILE_SIZE

ErikaFaceGraphics::
	INCBIN "gfx/faces/erika.2bpp"
	assert @ - ErikaFaceGraphics == FACE_TILES * TILE_SIZE

KogaFaceGraphics::
	INCBIN "gfx/faces/koga.2bpp"
	assert @ - KogaFaceGraphics == FACE_TILES * TILE_SIZE

SabrinaFaceGraphics::
	INCBIN "gfx/faces/sabrina.2bpp"
	assert @ - SabrinaFaceGraphics == FACE_TILES * TILE_SIZE

BlaineFaceGraphics::
	INCBIN "gfx/faces/blaine.2bpp"
	assert @ - BlaineFaceGraphics == FACE_TILES * TILE_SIZE

Giovanni1FaceGraphics::
	INCBIN "gfx/faces/giovanni1.2bpp"
	assert @ - Giovanni1FaceGraphics == FACE_TILES * TILE_SIZE

Giovanni2FaceGraphics::
	INCBIN "gfx/faces/giovanni2.2bpp"
	assert @ - Giovanni2FaceGraphics == FACE_TILES * TILE_SIZE

Rival1FaceGraphics::
	INCBIN "gfx/faces/rival1.2bpp"
	assert @ - Rival1FaceGraphics == FACE_TILES * TILE_SIZE

ChiefFaceGraphics::
	INCBIN "gfx/faces/chief.2bpp"
	assert @ - ChiefFaceGraphics == FACE_TILES * TILE_SIZE

