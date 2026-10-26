_Route1Youngster1MartSampleText::
	text "Hi! I work at a"
	line "#<b>MON MART</b>."

	para "It's a convenient"
	line "shop, so please"
	cont "visit us in"
	cont "<b>VIRIDIAN CITY</b>."

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
	line "# <b>BALL</b>s for"
	cont "catching #<b>MON</b>!"
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
	line "to <b>PALLET TOWN</b>"
	cont "quicker that way."
	done

_Route1SignText::
	text "<b>ROUTE</b> 1"
	line "▲ <b>VIRIDIAN CITY</b>"
	cont "▼ <b>PALLET TOWN</b>"
	done
