_CopycatsHouse2FCopycatDoYouLikePokemonText::
	text "<PLAYER>: Hi! Do"
	line "you like #<BOLD_M><BOLD_O><BOLD_N>?"

	para "<PLAYER>: Uh no, I"
	line "just asked you."

	para "<PLAYER>: Huh?"
	line "You're strange!"

	para "<BOLD_C><BOLD_O><BOLD_P><BOLD_Y><BOLD_C><BOLD_A><BOLD_T>: Hmm?"
	line "Quit mimicking?"

	para "But, that's my"
	line "favorite hobby!"
	prompt

_CopycatsHouse2FCopycatTM31PreReceiveText::
	text "Oh wow!"
	line "A # <BOLD_D><BOLD_O><BOLD_L><BOLD_L>!"

	para "For me?"
	line "Thank you!"

	para "You can have"
	line "this, then!"
	prompt

_CopycatsHouse2FCopycatReceivedTM31Text::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_CopycatsHouse2FCopycatTM31Explanation1Text::
	text_start

	para "<BOLD_T><BOLD_M>31 contains my"
	line "favorite, <BOLD_M><BOLD_I><BOLD_M><BOLD_I><BOLD_C>!"

	para "Use it on a good"
	line "#<BOLD_M><BOLD_O><BOLD_N>!@"
	text_end

_CopycatsHouse2FCopycatTM31Explanation2Text::
	text "<PLAYER>: Hi!"
	line "Thanks for <BOLD_T><BOLD_M>31!"

	para "<PLAYER>: Pardon?"

	para "<PLAYER>: Is it"
	line "that fun to mimic"
	cont "my every move?"

	para "<BOLD_C><BOLD_O><BOLD_P><BOLD_Y><BOLD_C><BOLD_A><BOLD_T>: You bet!"
	line "It's a scream!"
	done

_CopycatsHouse2FCopycatTM31NoRoomText::
	text "Don't you want"
	line "this?@"
	text_end

_CopycatsHouse2FDoduoText::
	text "<BOLD_D><BOLD_O><BOLD_D><BOLD_U><BOLD_O>: Giiih!"

	para "<BOLD_M><BOLD_I><BOLD_R><BOLD_R><BOLD_O><BOLD_R> <BOLD_M><BOLD_I><BOLD_R><BOLD_R><BOLD_O><BOLD_R> <BOLD_O><BOLD_N>"
	line "<BOLD_T><BOLD_H><BOLD_E> <BOLD_W><BOLD_A><BOLD_L><BOLD_L>, <BOLD_W><BOLD_H><BOLD_O> <BOLD_I><BOLD_S>"
	cont "<BOLD_T><BOLD_H><BOLD_E> <BOLD_F><BOLD_A><BOLD_I><BOLD_R><BOLD_E><BOLD_S><BOLD_T> <BOLD_O><BOLD_N><BOLD_E>"
	cont "<BOLD_O><BOLD_F> <BOLD_A><BOLD_L><BOLD_L>?"
	done

_CopycatsHouse2FRareDollText::
	text "This is a rare"
	line "#<BOLD_M><BOLD_O><BOLD_N>! Huh?"
	cont "It's only a doll!"
	done

_CopycatsHouse2FSNESText::
	text "<PLAYER> is"
	line "playing the <BOLD_M><BOLD_D>!"

	para "An odd-looking boy"
	line "zips through a"
	cont "dark city-scape!"

	para "...Okay!"
	line "It's time to go!"
	done

_CopycatsHouse2FPCMySecretsText::
	text "..."

	para "My Secrets!"

	para "Skill: Mimicry!"
	line "Hobby: Collecting"
	cont "dolls!"
	cont "Favorite #<BOLD_M><BOLD_O><BOLD_N>:"
	cont "<BOLD_C><BOLD_L><BOLD_E><BOLD_F><BOLD_A><BOLD_I><BOLD_R><BOLD_Y>!"
	done

_CopycatsHouse2FPCCantSeeText::
	text "Huh? Can't see!"
	done
