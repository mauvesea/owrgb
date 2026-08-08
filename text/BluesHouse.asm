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
	text "Use the TOWN MAP"
	line "to find out where"
	cont "you are."
	done

_BluesHouseDaisyWalkingText::
	text "#MON are living"
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
	cont "I was the TOP"
	cont "TRAINER at the"
	cont "CHAMP CUP?"

	para "Tee hee!"
	done

_JuniorBeatChampionText::
	text "Hey, <PLAYER>!"
	line "Ya went and beat"
	cont "my big bro at"
	cont "the #MON"
	cont "LEAGUE, huh?"

	para "That's crazy!"

	para "By the way..."

	para "Did ya hear about"
	line "the CHAMP CUP"
	cont "being held at"
	cont "SILPH CO.?"

	para "A strong trainer"
	line "like ya should"
	cont "totally check it"
	cont "out!"
	done

_JuniorBeatGiovanniText::
	text "Ya telling me ya"
	line "got rid of TEAM"
	cont "ROCKET all by"
	cont "yourself?"

	para "Hmm... Don't think"
	line "I can trust that!"
	done

_JuniorGotDexText::
	text "Gramps gave ya a"
	line "#DEX?"

	para "That's so cool!"

	para "I wish he would"
	line "give me one too,"
	cont "though."
	done

_JuniorGotStartText::
	text "Hey, <PLAYER>!"
	line "That's a cool"
	cont "#MON ya have"
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
