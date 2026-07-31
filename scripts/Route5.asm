Route5_Script:
	jp EnableAutoTextBoxDrawing

Route5_TextPointers:
	def_text_pointers
	dw_const Route5UndergroundPathSignText, TEXT_ROUTE5_UNDERGROUND_PATH_SIGN
	dw_const Route5SignText,                TEXT_ROUTE5_SIGN

Route5UndergroundPathSignText:
	text_far _Route5UndergroundPathSignText
	text_end

Route5SignText:
	text_far _Route5SignText
	text_end
