_BluesHouseDaisyRivalAtLabText::
	text "Hi <PLAYER>!"
	line "<RIVAL> is out at"
	cont "Grandpa's lab."
	done

_BluesHouseDaisyOfferMapText::
	text "Grandpa asked you"
	line "to run an errand?"
	cont "Here, this will"
	cont "help you!"
	prompt

_GotMapText::
	text "<PLAYER> got a"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_BluesHouseDaisyBagFullText::
	text "You have too much"
	line "stuff with you."
	done

_BluesHouseDaisyUseMapText::
	text "Use the <BOLD_T><BOLD_O><BOLD_W><BOLD_N><BOLD_ ><BOLD_M><BOLD_A><BOLD_P>"
	line "to find out where"
	cont "you are."
	done

_BluesHouseDaisyWalkingText::
	text "#<BOLD_M><BOLD_O><BOLD_N> are living"
	line "things! If they"
	cont "get tired, give"
	cont "them a rest!"
	done

_BluesHouseTownMapText::
	text "It's a big map!"
	line "This is useful!"
	done

_JuniorBeatJuniorText::
	text "Hey, <PLAYER>!"
	line "Were ya surprised"
	cont "I was the <BOLD_T><BOLD_O><BOLD_P>"
	cont "<BOLD_T><BOLD_R><BOLD_A><BOLD_I><BOLD_N><BOLD_E><BOLD_R> at the"
	cont "<BOLD_C><BOLD_H><BOLD_A><BOLD_M><BOLD_P> <BOLD_C><BOLD_U><BOLD_P>?"

	para "Tee hee!"
	done

_JuniorBeatChampionText::
	text "Hey, <PLAYER>!"
	line "Ya went and beat"
	cont "my big bro at"
	cont "the #<BOLD_M><BOLD_O><BOLD_N>"
	cont "<BOLD_L><BOLD_E><BOLD_A><BOLD_G><BOLD_U><BOLD_E>, huh?"

	para "That's crazy!"

	para "By the way..."

	para "Did ya hear about"
	line "the <BOLD_C><BOLD_H><BOLD_A><BOLD_M><BOLD_P> <BOLD_C><BOLD_U><BOLD_P>"
	cont "being held at"
	cont "<BOLD_S><BOLD_I><BOLD_L><BOLD_P><BOLD_H> <BOLD_C><BOLD_O>.?"

	para "A strong trainer"
	line "like ya should"
	cont "totally check it"
	cont "out!"
	done

_JuniorBeatGiovanniText::
	text "Ya telling me ya"
	line "got rid of <BOLD_T><BOLD_E><BOLD_A><BOLD_M>"
	cont "<BOLD_R><BOLD_O><BOLD_C><BOLD_K><BOLD_E><BOLD_T> all by"
	cont "yourself?"

	para "Hmm... Don't think"
	line "I can trust that!"
	done

_JuniorGotDexText::
	text "Gramps gave ya a"
	line "#<BOLD_D><BOLD_E><BOLD_X>?"

	para "That's so cool!"

	para "I wish he would"
	line "give me one too,"
	cont "though."
	done

_JuniorGotStartText::
	text "Hey, <PLAYER>!"
	line "That's a cool"
	cont "#<BOLD_M><BOLD_O><BOLD_N> ya have"
	cont "there!"

	para "You say gramps"
	line "gave it to ya?"

	para "I want one, too!"
	done

_JuniorInitialText::
	text "Hey, <PLAYER>!"
	line "Big bro isn't home"
	cont "right now."
	done
