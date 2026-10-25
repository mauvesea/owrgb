_DexCompletionText::
	text "#<BOLD_D><BOLD_E><BOLD_X> comp-"
	line "letion is:"

	para "@"
	text_decimal hDexRatingNumMonsSeen, 1, 3
	text " #<BOLD_M><BOLD_O><BOLD_N> seen"
	line "@"
	text_decimal hDexRatingNumMonsOwned, 1, 3
	text " #<BOLD_M><BOLD_O><BOLD_N> owned"

	para "<BOLD_P><BOLD_R><BOLD_O><BOLD_F>.<BOLD_O><BOLD_A><BOLD_K>'<BOLD_s>"
	line "Rating:"
	prompt

_DexRatingText_Own0To9::
	text "You still have"
	line "lots to do."
	cont "Look for #<BOLD_M><BOLD_O><BOLD_N>"
	cont "in grassy areas!"
	done

_DexRatingText_Own10To19::
	text "You're on the"
	line "right track! "
	cont "Get a <BOLD_F><BOLD_L><BOLD_A><BOLD_S><BOLD_H><BOLD_L><BOLD_I><BOLD_G><BOLD_H><BOLD_T>"
	cont "from my <BOLD_A><BOLD_I><BOLD_D><BOLD_E>!"
	done

_DexRatingText_Own20To29::
	text "You still need"
	line "more #<BOLD_M><BOLD_O><BOLD_N>!"
	cont "Try to catch"
	cont "other species!"
	done

_DexRatingText_Own30To39::
	text "Good, you're"
	line "trying hard!"
	cont "Get an <BOLD_I><BOLD_T><BOLD_E><BOLD_M><BOLD_F><BOLD_I><BOLD_N><BOLD_D><BOLD_E><BOLD_R>"
	cont "from my <BOLD_A><BOLD_I><BOLD_D><BOLD_E>!"
	done

_DexRatingText_Own40To49::
	text "Looking good!"
	line "Go find my <BOLD_A><BOLD_I><BOLD_D><BOLD_E>"
	cont "when you get 50!"
	done

_DexRatingText_Own50To59::
	text "You finally got at"
	line "least 50 species!"
	cont "Be sure to get"
	cont "<BOLD_E><BOLD_X><BOLD_P>.<BOLD_A><BOLD_L><BOLD_L> from my"
	cont "<BOLD_A><BOLD_I><BOLD_D><BOLD_E>!"
	done

_DexRatingText_Own60To69::
	text "Ho! This is geting"
	line "even better!"
	done

_DexRatingText_Own70To79::
	text "You got 70"
	line "species already?"
	cont "Impressive!"
	cont "Look for my <BOLD_A><BOLD_I><BOLD_D><BOLD_E>"
	cont "to claim an"
	cont "<BOLD_O><BOLD_M><BOLD_A><BOLD_M><BOLD_O><BOLD_R><BOLD_I>!"
	done

_DexRatingText_Own80To89::
	text "Wonderful!"
	line "Do you like to"
	cont "collect things?"
	done

_DexRatingText_Own90To99::
	text "I'm impressed!"
	line "It must have been"
	cont "difficult to do!"
	done

_DexRatingText_Own100To109::
	text "You finally got at"
	line "least 100 species!"
	cont "I can't believe"
	cont "how good you are!"
	done

_DexRatingText_Own110To119::
	text "You even have the"
	line "evolved forms of"
	cont "#<BOLD_M><BOLD_O><BOLD_N>! Super!"
	done

_DexRatingText_Own120To129::
	text "Excellent! Trade"
	line "with friends to"
	cont "get some more!"
	done

_DexRatingText_Own130To139::
	text "Outstanding!"
	line "You've become a"
	cont "real pro at this!"
	done

_DexRatingText_Own140To149::
	text "I have nothing"
	line "left to say!"
	cont "You're the"
	cont "authority now!"
	done

_DexRatingText_Own150To151::
	text "Your #<BOLD_D><BOLD_E><BOLD_X> is"
	line "entirely complete!"
	cont "Congratulations!"
	done

_OakPreBattleText1::
	text "I'm proud of you,"
	line "<PLAYER>!"

	para "Seeing how far"
	line "you've come as a"
	cont "trainer makes me"
	cont "excited!"

	para "Back then, I was"
	line "a trainer too."

	para "Perhaps my"
	line "partners still"
	cont "have what it"
	cont "takes for a"
	cont "great fight!"

	para "What do you say?"
	line "Wanna fight?"
	done

_OakPreBattleText2::
	text "Alright!"
	line "Bring it on,"
	cont "<BOLD_C><BOLD_H><BOLD_A><BOLD_M><BOLD_P><BOLD_I><BOLD_O><BOLD_N>!"
	done

_OakRefusedBattleText::
	text "I see..."

	para "I'll be here"
	line "if you change"
	cont "your mind!"
	done

_OakPostBattleText::
	text "I have"
	line "no words."

	para "You really are"
	line "the authority"
	cont "now!"

	para "Congratulations,"
	line "<BOLD_C><BOLD_H><BOLD_A><BOLD_M><BOLD_P><BOLD_I><BOLD_O><BOLD_N> <PLAYER>!"
	prompt
