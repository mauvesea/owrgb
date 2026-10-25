_Route23YouDontHaveTheBadgeYetText::
	text "You can pass here"
	line "only if you have"
	cont "the @"
	text_ram wNameBuffer
	text "!"

	para "You don't have the"
	line "@"
	text_ram wNameBuffer
	text " yet!"

	para "You have to have"
	line "it to get to"
	cont "#<BOLD_M><BOLD_O><BOLD_N> <BOLD_L><BOLD_E><BOLD_A><BOLD_G><BOLD_U><BOLD_E>!@"
	text_end

_Route23OhThatIsTheBadgeText::
	text "You can pass here"
	line "only if you have"
	cont "the @"
	text_ram wNameBuffer
	text "!"

	para "Oh! That is the"
	line "@"
	text_ram wNameBuffer
	text "!@"
	text_end

_Route23GoRightAheadText::
	text_start

	para "<BOLD_O><BOLD_K> then! Please,"
	line "go right ahead!"
	done

_Route23VictoryRoadGateSignText::
	text "<BOLD_V><BOLD_I><BOLD_C><BOLD_T><BOLD_O><BOLD_R><BOLD_Y> <BOLD_R><BOLD_O><BOLD_A><BOLD_D> <BOLD_G><BOLD_A><BOLD_T><BOLD_E>"
	line "- #<BOLD_M><BOLD_O><BOLD_N> <BOLD_L><BOLD_E><BOLD_A><BOLD_G><BOLD_U><BOLD_E>"
	done

_Route23SignText::
	text "<BOLD_R><BOLD_O><BOLD_U><BOLD_T><BOLD_E> 23"
	line "▲ #<BOLD_M><BOLD_O><BOLD_N> <BOLD_L><BOLD_E><BOLD_A><BOLD_G><BOLD_U><BOLD_E>"
	done
