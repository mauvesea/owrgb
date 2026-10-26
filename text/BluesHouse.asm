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
	text "Use the <b>TOWN MAP</b>"
	line "to find out where"
	cont "you are."
	done

_BluesHouseDaisyWalkingText::
	text "#<b>MON</b> are living"
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
	cont "I was the <b>TOP</b>"
	cont "<b>TRAINER</b> at the"
	cont "<b>CHAMP CUP</b>?"

	para "Tee hee!"
	done

_JuniorBeatChampionText::
	text "Hey, <PLAYER>!"
	line "Ya went and beat"
	cont "my big bro at"
	cont "the #<b>MON</b>"
	cont "<b>LEAGUE</b>, huh?"

	para "That's crazy!"

	para "By the way..."

	para "Did ya hear about"
	line "the <b>CHAMP CUP</b>"
	cont "being held at"
	cont "<b>SILPH CO</b>.?"

	para "A strong trainer"
	line "like ya should"
	cont "totally check it"
	cont "out!"
	done

_JuniorBeatGiovanniText::
	text "Ya telling me ya"
	line "got rid of <b>TEAM</b>"
	cont "<b>ROCKET</b> all by"
	cont "yourself?"

	para "Hmm... Don't think"
	line "I can trust that!"
	done

_JuniorGotDexText::
	text "Gramps gave ya a"
	line "#<b>DEX</b>?"

	para "That's so cool!"

	para "I wish he would"
	line "give me one too,"
	cont "though."
	done

_JuniorGotStartText::
	text "Hey, <PLAYER>!"
	line "That's a cool"
	cont "#<b>MON</b> ya have"
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
