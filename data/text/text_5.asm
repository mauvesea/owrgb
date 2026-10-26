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
	line "<b>CROWBAR</b>!@"
	text_end

_UsedFlyText::
	text "<PLAYER> put on"
	line "the <b>PARAGLIDER</b>!@"
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
	line "the <b>FLASHLIGHT</b>"
	cont "on!"
	prompt

_WarpToLastPokemonCenterText::
	text "Warp to the last"
	line "#<b>MON CENTER</b>."
	done

_CannotUseTeleportNowText::
	text_ram wNameBuffer
	text " can't"
	line "use <b>TELEPORT</b> now."
	prompt

_CannotFlyHereText::
	text "It's dangerous to"
	line "use the"
	cont "<b>PARAGLIDER</b> here!"
	prompt

_UsedParagliderText::
	text "<PLAYER> put on"
	line "the <b>PARAGLIDER</b>!"
	prompt

_NotHealthyEnoughText::
	text "Not healthy"
	line "enough."
	prompt

_NewBadgeRequiredText::
	text "No! A new <b>BADGE</b>"
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
	line "room for #<b>MON</b>!"
	cont "@"
	text_ram wBoxMonNicks
	text " was"
	cont "sent to #<b>MON</b>"
	cont "<b>BOX</b> @"
	text_ram wStringBuffer
	text " on <b>PC</b>!"
	done

_BoxIsFullText::
	text "There's no more"
	line "room for #<b>MON</b>!"

	para "The #<b>MON BOX</b>"
	line "is full and can't"
	cont "accept any more!"

	para "Change the <b>BOX</b> at"
	line "a #<b>MON CENTER</b>!"
	done
