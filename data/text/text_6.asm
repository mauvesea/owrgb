_ItemUseBallText00::
	text "It dodged the"
	line "thrown <BOLD_B><BOLD_A><BOLD_L><BOLD_L>!"

	para "This #<BOLD_M><BOLD_O><BOLD_N>"
	line "can't be caught!"
	prompt

_ItemUseBallText01::
	text "You missed the"
	line "#<BOLD_M><BOLD_O><BOLD_N>!"
	prompt

_ItemUseBallText02::
	text "Darn! The #<BOLD_M><BOLD_O><BOLD_N>"
	line "broke free!"
	prompt

_ItemUseBallText03::
	text "Aww! It appeared"
	line "to be caught! "
	prompt

_ItemUseBallText04::
	text "Shoot! It was so"
	line "close too!"
	prompt

_ItemUseBallText05::
	text "All right!"
	line "@"
	text_ram wEnemyMonNick
	text " was"
	cont "caught!@"
	text_end

_ItemUseBallText07::
	text_ram wBoxMonNicks
	text " was"
	line "transferred to"
	cont "<BOLD_B><BOLD_I><BOLD_L><BOLD_L>'<BOLD_s> <BOLD_P><BOLD_C>!"
	prompt

_ItemUseBallText08::
	text_ram wBoxMonNicks
	text " was"
	line "transferred to"
	cont "someone's <BOLD_P><BOLD_C>!"
	prompt

_ItemUseBallText06::
	text "New #<BOLD_D><BOLD_E><BOLD_X> data"
	line "will be added for"
	cont "@"
	text_ram wEnemyMonNick
	text "!@"
	text_end

_SurfingGotOnText::
	text "<PLAYER> put on"
	line "the @"
	text_ram wNameBuffer
	text "!"
	prompt

_SurfingNoPlaceToGetOffText::
	text "There's no place"
	line "to get off!"
	prompt

_VitaminStatRoseText::
	text_ram wNameBuffer
	text "'s"
	line "@"
	text_ram wStringBuffer
	text " rose."
	prompt

_VitaminNoEffectText::
	text "It won't have any"
	line "effect."
	prompt

_ThrewBaitText::
	text "<PLAYER> threw"
	line "some <BOLD_B><BOLD_A><BOLD_I><BOLD_T>."
	done

_ThrewRockText::
	text "<PLAYER> threw a"
	line "<BOLD_R><BOLD_O><BOLD_C><BOLD_K>."
	done

_PlayedFluteNoEffectText::
	text "Played the #"
	line "<BOLD_F><BOLD_L><BOLD_U><BOLD_T><BOLD_E>."

	para "Now, that's a"
	line "catchy tune!"
	prompt

_FluteWokeUpText::
	text "All sleeping"
	line "#<BOLD_M><BOLD_O><BOLD_N> woke up."
	prompt

_PlayedFluteHadEffectText::
	text "<PLAYER> played the"
	line "# <BOLD_F><BOLD_L><BOLD_U><BOLD_T><BOLD_E>.@"
	text_end

_CoinCaseNumCoinsText::
	text "Coins"
	line "@"
	text_bcd wPlayerCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " "
	prompt

_ItemfinderFoundItemText::
	text "Yes! <BOLD_I><BOLD_T><BOLD_E><BOLD_M><BOLD_F><BOLD_I><BOLD_N><BOLD_D><BOLD_E><BOLD_R>"
	line "indicates there's"
	cont "an item nearby."
	prompt

_ItemfinderFoundNothingText::
	text "Nope! <BOLD_I><BOLD_T><BOLD_E><BOLD_M><BOLD_F><BOLD_I><BOLD_N><BOLD_D><BOLD_E><BOLD_R>"
	line "isn't responding."
	prompt

_RaisePPWhichTechniqueText::
	text "Raise <BOLD_P><BOLD_P> of which"
	line "technique?"
	done

_RestorePPWhichTechniqueText::
	text "Restore <BOLD_P><BOLD_P> of"
	line "which technique?"
	done

_PPMaxedOutText::
	text_ram wStringBuffer
	text "'s <BOLD_P><BOLD_P>"
	line "is maxed out."
	prompt

_PPIncreasedText::
	text_ram wStringBuffer
	text "'s <BOLD_P><BOLD_P>"
	line "increased."
	prompt

_PPRestoredText::
	text "<BOLD_P><BOLD_P> was restored."
	prompt

_BootedUpTMText::
	text "Booted up a <BOLD_T><BOLD_M>!"
	prompt

_BootedUpHMText::
	text "Booted up an <BOLD_H><BOLD_M>!"
	prompt

_TeachMachineMoveText::
	text "It contained"
	line "@"
	text_ram wStringBuffer
	text "!"

	para "Teach @"
	text_ram wStringBuffer
	text_start
	line "to a #<BOLD_M><BOLD_O><BOLD_N>?"
	done

_MonCannotLearnMachineMoveText::
	text_ram wNameBuffer
	text " is not"
	line "compatible with"
	cont "@"
	text_ram wStringBuffer
	text "."

	para "It can't learn"
	line "@"
	text_ram wStringBuffer
	text "."
	prompt

_ItemUseNotTimeText::
	text "<BOLD_O><BOLD_A><BOLD_K>: <PLAYER>!"
	line "This isn't the"
	cont "time to use that! "
	prompt

_ItemUseNotYoursToUseText::
	text "This isn't yours"
	line "to use!"
	prompt

_ItemUseNoEffectText::
	text "It won't have any"
	line "effect."
	prompt

_ThrowBallAtTrainerMonText1::
	text "The trainer"
	line "blocked the <BOLD_B><BOLD_A><BOLD_L><BOLD_L>!"
	prompt

_ThrowBallAtTrainerMonText2::
	text "Don't be a thief!"
	prompt

_NoCyclingAllowedHereText::
	text "No cycling"
	next "allowed here."
	prompt

_NoSurfingHereText::
	text "You can't swim"
	line "here!"
	prompt

_BoxFullCannotThrowBallText::
	text "The #<BOLD_M><BOLD_O><BOLD_N> <BOLD_B><BOLD_O><BOLD_X>"
	line "is full! Can't"
	cont "use that item!"
	prompt
