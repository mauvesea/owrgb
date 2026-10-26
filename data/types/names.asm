TypeNames:
	table_width 2

	dw .Normal
	dw .Fighting
	dw .Flying
	dw .Poison
	dw .Ground
	dw .Rock
	dw .Bird
	dw .Bug
	dw .Ghost

REPT UNUSED_TYPES_END - UNUSED_TYPES
	dw .Normal
ENDR

	dw .Fire
	dw .Water
	dw .Grass
	dw .Electric
	dw .Psychic
	dw .Ice
	dw .Dragon

	assert_table_length NUM_TYPES

.Normal:   db_text "<b>NORMAL</b>@"
.Fighting: db_text "<b>FIGHTING</b>@"
.Flying:   db_text "<b>FLYING</b>@"
.Poison:   db_text "<b>POISON</b>@"
.Fire:     db_text "<b>FIRE</b>@"
.Water:    db_text "<b>WATER</b>@"
.Grass:    db_text "<b>GRASS</b>@"
.Electric: db_text "<b>ELECTRIC</b>@"
.Psychic:  db_text "<b>PSYCHIC</b>@"
.Ice:      db_text "<b>ICE</b>@"
.Ground:   db_text "<b>GROUND</b>@"
.Rock:     db_text "<b>ROCK</b>@"
.Bird:     db_text "<b>BIRD</b>@"
.Bug:      db_text "<b>BUG</b>@"
.Ghost:    db_text "<b>GHOST</b>@"
.Dragon:   db_text "<b>DRAGON</b>@"
