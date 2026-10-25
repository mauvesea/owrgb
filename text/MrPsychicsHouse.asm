_MrPsychicsHouseMrPsychicYouWantedThisText::
	text "...Wait! Don't"
	line "say a word!"

	para "You wanted this!"
	prompt

_MrPsychicsHouseMrPsychicReceivedTM29Text::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_MrPsychicsHouseMrPsychicTM29ExplanationText::
	text "<BOLD_T><BOLD_M>29 is <BOLD_P><BOLD_S><BOLD_Y><BOLD_C><BOLD_H><BOLD_I><BOLD_C>!"

	para "It can lower the"
	line "target's <BOLD_S><BOLD_P><BOLD_E><BOLD_C><BOLD_I><BOLD_A><BOLD_L>"
	cont "abilities."
	done

_MrPsychicsHouseMrPsychicTM29NoRoomText::
	text "Where do you plan"
	line "to put this?"
	done
