_CableClubNPCPleaseComeAgainText::
	text "Please come again!"
	done

_CableClubNPCMakingPreparationsText::
	text "We're making"
	line "preparations."
	cont "Please wait."
	done

_UsedStrengthText::
	text "<PLAYER> used the"
	line "<BOLD_C><BOLD_R><BOLD_O><BOLD_W><BOLD_B><BOLD_A><BOLD_R>!@"
	text_end

_UsedFlyText::
	text "<PLAYER> put on"
	line "the <BOLD_P><BOLD_A><BOLD_R><BOLD_A><BOLD_G><BOLD_L><BOLD_I><BOLD_D><BOLD_E><BOLD_R>!@"
	text_end

_CanMoveBouldersText::
	text "<PLAYER> can now"
	line "move boulders."
	prompt

_CurrentTooFastText::
	text "The current is"
	line "much too fast!"

	para "Swimming here"
	line "would be dan-"
	cont "gerous!"
	prompt

_CyclingIsFunText::
	text "Cycling is fun!"
	line "Forget swimming!"
	prompt

_FlashLightsAreaText::
	text "<PLAYER> turned"
	line "the <BOLD_F><BOLD_L><BOLD_A><BOLD_S><BOLD_H><BOLD_L><BOLD_I><BOLD_G><BOLD_H><BOLD_T>"
	cont "on!"
	prompt

_WarpToLastPokemonCenterText::
	text "Warp to the last"
	line "#<BOLD_M><BOLD_O><BOLD_N> <BOLD_C><BOLD_E><BOLD_N><BOLD_T><BOLD_E><BOLD_R>."
	done

_CannotUseTeleportNowText::
	text_ram wNameBuffer
	text " can't"
	line "use <BOLD_T><BOLD_E><BOLD_L><BOLD_E><BOLD_P><BOLD_O><BOLD_R><BOLD_T> now."
	prompt

_CannotFlyHereText::
	text "It's dangerous to"
	line "use the"
	cont "<BOLD_P><BOLD_A><BOLD_R><BOLD_A><BOLD_G><BOLD_L><BOLD_I><BOLD_D><BOLD_E><BOLD_R> here!"
	prompt

_UsedParagliderText::
	text "<PLAYER> put on"
	line "the <BOLD_P><BOLD_A><BOLD_R><BOLD_A><BOLD_G><BOLD_L><BOLD_I><BOLD_D><BOLD_E><BOLD_R>!"
	prompt

_NotHealthyEnoughText::
	text "Not healthy"
	line "enough."
	prompt

_NewBadgeRequiredText::
	text "No! A new <BOLD_B><BOLD_A><BOLD_D><BOLD_G><BOLD_E>"
	line "is required."
	prompt

_CannotUseItemsHereText::
	text "You can't use items"
	line "here."
	prompt

_CannotGetOffHereText::
	text "You can't get off"
	line "here."
	prompt

_GotMonText::
	text "<PLAYER> got"
	line "@"
	text_ram wNameBuffer
	text "!@"
	text_end

_SentToBoxText::
	text "There's no more"
	line "room for #<BOLD_M><BOLD_O><BOLD_N>!"
	cont "@"
	text_ram wBoxMonNicks
	text " was"
	cont "sent to #<BOLD_M><BOLD_O><BOLD_N>"
	cont "<BOLD_B><BOLD_O><BOLD_X> @"
	text_ram wStringBuffer
	text " on <BOLD_P><BOLD_C>!"
	done

_BoxIsFullText::
	text "There's no more"
	line "room for #<BOLD_M><BOLD_O><BOLD_N>!"

	para "The #<BOLD_M><BOLD_O><BOLD_N> <BOLD_B><BOLD_O><BOLD_X>"
	line "is full and can't"
	cont "accept any more!"

	para "Change the <BOLD_B><BOLD_O><BOLD_X> at"
	line "a #<BOLD_M><BOLD_O><BOLD_N> <BOLD_C><BOLD_E><BOLD_N><BOLD_T><BOLD_E><BOLD_R>!"
	done
