_Route1Youngster1MartSampleText::
	text "Hi! I work at a"
	line "#<BOLD_M><BOLD_O><BOLD_N> <BOLD_M><BOLD_A><BOLD_R><BOLD_T>."

	para "It's a convenient"
	line "shop, so please"
	cont "visit us in"
	cont "<BOLD_V><BOLD_I><BOLD_R><BOLD_I><BOLD_D><BOLD_I><BOLD_A><BOLD_N> <BOLD_C><BOLD_I><BOLD_T><BOLD_Y>."

	para "I know, I'll give"
	line "you a sample!"
	cont "Here you go!"
	prompt

_Route1Youngster1GotPotionText::
	text "<PLAYER> got"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_Route1Youngster1AlsoGotPokeballsText::
	text "We also carry"
	line "# <BOLD_B><BOLD_A><BOLD_L><BOLD_L>s for"
	cont "catching #<BOLD_M><BOLD_O><BOLD_N>!"
	done

_Route1Youngster1NoRoomText::
	text "You have too much"
	line "stuff with you!"
	done

_Route1Youngster2Text::
	text "See those ledges"
	line "along the road?"

	para "It's a bit scary,"
	line "but you can jump"
	cont "from them."

	para "You can get back"
	line "to <BOLD_P><BOLD_A><BOLD_L><BOLD_L><BOLD_E><BOLD_T> <BOLD_T><BOLD_O><BOLD_W><BOLD_N>"
	cont "quicker that way."
	done

_Route1SignText::
	text "<BOLD_R><BOLD_O><BOLD_U><BOLD_T><BOLD_E> 1"
	line "▲ <BOLD_V><BOLD_I><BOLD_R><BOLD_I><BOLD_D><BOLD_I><BOLD_A><BOLD_N> <BOLD_C><BOLD_I><BOLD_T><BOLD_Y>"
	cont "▼ <BOLD_P><BOLD_A><BOLD_L><BOLD_L><BOLD_E><BOLD_T> <BOLD_T><BOLD_O><BOLD_W><BOLD_N>"
	done
