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

.Normal:   db "<BOLD_N><BOLD_O><BOLD_R><BOLD_M><BOLD_A><BOLD_L>@"
.Fighting: db "<BOLD_F><BOLD_I><BOLD_G><BOLD_H><BOLD_T><BOLD_I><BOLD_N><BOLD_G>@"
.Flying:   db "<BOLD_F><BOLD_L><BOLD_Y><BOLD_I><BOLD_N><BOLD_G>@"
.Poison:   db "<BOLD_P><BOLD_O><BOLD_I><BOLD_S><BOLD_O><BOLD_N>@"
.Fire:     db "<BOLD_F><BOLD_I><BOLD_R><BOLD_E>@"
.Water:    db "<BOLD_W><BOLD_A><BOLD_T><BOLD_E><BOLD_R>@"
.Grass:    db "<BOLD_G><BOLD_R><BOLD_A><BOLD_S><BOLD_S>@"
.Electric: db "<BOLD_E><BOLD_L><BOLD_E><BOLD_C><BOLD_T><BOLD_R><BOLD_I><BOLD_C>@"
.Psychic:  db "<BOLD_P><BOLD_S><BOLD_Y><BOLD_C><BOLD_H><BOLD_I><BOLD_C>@"
.Ice:      db "<BOLD_I><BOLD_C><BOLD_E>@"
.Ground:   db "<BOLD_G><BOLD_R><BOLD_O><BOLD_U><BOLD_N><BOLD_D>@"
.Rock:     db "<BOLD_R><BOLD_O><BOLD_C><BOLD_K>@"
.Bird:     db "<BOLD_B><BOLD_I><BOLD_R><BOLD_D>@"
.Bug:      db "<BOLD_B><BOLD_U><BOLD_G>@"
.Ghost:    db "<BOLD_G><BOLD_H><BOLD_O><BOLD_S><BOLD_T>@"
.Dragon:   db "<BOLD_D><BOLD_R><BOLD_A><BOLD_G><BOLD_O><BOLD_N>@"
