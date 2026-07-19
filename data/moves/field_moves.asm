FieldMoveDisplayData:
	; move id, FieldMoveNames index, leftmost tile
	; (leftmost tile = -1 + tile column in which the first
	;  letter of the move's name should be displayed)
	db DIG,        1, $0C
	db TELEPORT,   2, $0A
	db SOFTBOILED, 3, $08
	db -1 ; end
