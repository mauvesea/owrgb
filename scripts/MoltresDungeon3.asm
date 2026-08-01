MoltresDungeon3_Script:
	jp EnableAutoTextBoxDrawing

MoltresDungeon3_TextPointers:
	def_text_pointers
	dw_const MoltresDungeon3SignText,       TEXT_MOLTRESDUNGEON3_SIGN

MoltresDungeon3SignText:
	text_far _MoltresDungeon3SignText
	text_end
