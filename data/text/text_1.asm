_CardKeySuccessText1::
	text "Bingo!@"
	text_end

_CardKeySuccessText2::
	text_start
	line "The <BOLD_C><BOLD_A><BOLD_R><BOLD_D> <BOLD_K><BOLD_E><BOLD_Y>"
	cont "opened the door!"
	done

_CardKeyFailText::
	text "Darn! It needs a"
	line "<BOLD_C><BOLD_A><BOLD_R><BOLD_D> <BOLD_K><BOLD_E><BOLD_Y>!"
	done

_TrainerNameText::
	text_ram wNameBuffer
	text ": @"
	text_end

_NoNibbleText::
	text "Not even a nibble!"
	prompt

_NothingHereText::
	text "Looks like there's"
	line "nothing here."
	prompt

_ItsABiteText::
	text "Oh!"
	line "It's a bite!"
	prompt

_ExclamationText::
	text "!"
	done

_GroundRoseText::
	text "Ground rose up"
	line "somewhere!"
	done

_BoulderText::
	text "This requires a"
	line "<BOLD_C><BOLD_R><BOLD_O><BOLD_W><BOLD_B><BOLD_A><BOLD_R> to move!"
	done

_MartSignText::
	text "All your item"
	line "needs fulfilled!"
	cont "#<BOLD_M><BOLD_O><BOLD_N> <BOLD_M><BOLD_A><BOLD_R><BOLD_T>"
	done

_PokeCenterSignText::
	text "Heal Your #<BOLD_M><BOLD_O><BOLD_N>!"
	line "#<BOLD_M><BOLD_O><BOLD_N> <BOLD_C><BOLD_E><BOLD_N><BOLD_T><BOLD_E><BOLD_R>"
	done

_FoundItemText::
	text "<PLAYER> found"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_NoMoreRoomForItemText::
	text "No more room for"
	line "items!"
	done

_OaksAideHiText::
	text "Hi! Remember me?"
	line "I'm <BOLD_P><BOLD_R><BOLD_O><BOLD_F>.<BOLD_O><BOLD_A><BOLD_K>'<BOLD_s>"
	cont "<BOLD_A><BOLD_I><BOLD_D><BOLD_E>!"

	para "If you caught @"
	text_decimal hOaksAideRequirement, 1, 3
	text_start
	line "kinds of #<BOLD_M><BOLD_O><BOLD_N>,"
	cont "I'm supposed to"
	cont "give you an"
	cont "@"
	text_ram wOaksAideRewardItemName
	text "!"

	para "So, <PLAYER>! Have"
	line "you caught at"
	cont "least @"
	text_decimal hOaksAideRequirement, 1, 3
	text " kinds of"
	cont "#<BOLD_M><BOLD_O><BOLD_N>?"
	done

_OaksAideUhOhText::
	text "Let's see..."
	line "Uh-oh! You have"
	cont "caught only @"
	text_decimal hOaksAideNumMonsOwned, 1, 3
	text_start
	cont "kinds of #<BOLD_M><BOLD_O><BOLD_N>!"

	para "You need @"
	text_decimal hOaksAideRequirement, 1, 3
	text " kinds"
	line "if you want the"
	cont "@"
	text_ram wOaksAideRewardItemName
	text "."
	done

_OaksAideComeBackText::
	text "Oh. I see."

	para "When you get @"
	text_decimal hOaksAideRequirement, 1, 3
	text_start
	line "kinds, come back"
	cont "for @"
	text_ram wOaksAideRewardItemName
	text "."
	done

_OaksAideHereYouGoText::
	text "Great! You have"
	line "caught @"
	text_decimal hOaksAideNumMonsOwned, 1, 3
	text " kinds "
	cont "of #<BOLD_M><BOLD_O><BOLD_N>!"
	cont "Congratulations!"

	para "Here you go!"
	prompt

_OaksAideGotItemText::
	text "<PLAYER> got the"
	line "@"
	text_ram wOaksAideRewardItemName
	text "!@"
	text_end

_OaksAideNoRoomText::
	text "Oh! I see you"
	line "don't have any"
	cont "room for the"
	cont "@"
	text_ram wOaksAideRewardItemName
	text "."
	done
