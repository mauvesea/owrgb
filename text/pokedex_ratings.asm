_DexCompletionText::
	text "#DEX comp-"
	line "letion is:"

	para "@"
	text_decimal hDexRatingNumMonsSeen, 1, 3
	text " #MON seen"
	line "@"
	text_decimal hDexRatingNumMonsOwned, 1, 3
	text " #MON owned"

	para "PROF.OAK's"
	line "Rating:"
	prompt

_DexRatingText_Own0To9::
	text "You still have"
	line "lots to do."
	cont "Look for #MON"
	cont "in grassy areas!"
	done

_DexRatingText_Own10To19::
	text "You're on the"
	line "right track! "
	cont "Get a FLASHLIGHT"
	cont "from my AIDE!"
	done

_DexRatingText_Own20To29::
	text "You still need"
	line "more #MON!"
	cont "Try to catch"
	cont "other species!"
	done

_DexRatingText_Own30To39::
	text "Good, you're"
	line "trying hard!"
	cont "Get an ITEMFINDER"
	cont "from my AIDE!"
	done

_DexRatingText_Own40To49::
	text "Looking good!"
	line "Go find my AIDE"
	cont "when you get 50!"
	done

_DexRatingText_Own50To59::
	text "You finally got at"
	line "least 50 species!"
	cont "Be sure to get"
	cont "EXP.ALL from my"
	cont "AIDE!"
	done

_DexRatingText_Own60To69::
	text "Ho! This is geting"
	line "even better!"
	done

_DexRatingText_Own70To79::
	text "Very good!"
	line "Go fish for some"
	cont "marine #MON!"
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
	cont "#MON! Super!"
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
	text "Your #DEX is"
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
	cont "CHAMPION!"
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
	line "CHAMPION <PLAYER>!"
	prompt
