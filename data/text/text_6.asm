_ItemUseBallText00::
	text "It dodged the"
	line "thrown <b>BALL</b>!"

	para "This #<b>MON</b>"
	line "can't be caught!"
	prompt

_ItemUseBallText01::
	text "You missed the"
	line "#<b>MON</b>!"
	prompt

_ItemUseBallText02::
	text "Darn! The #<b>MON</b>"
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
	cont "<b>BILL's PC</b>!"
	prompt

_ItemUseBallText08::
	text_ram wBoxMonNicks
	text " was"
	line "transferred to"
	cont "someone's <b>PC</b>!"
	prompt

_ItemUseBallText06::
	text "New #<b>DEX</b> data"
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
	line "some <b>BAIT</b>."
	done

_ThrewRockText::
	text "<PLAYER> threw a"
	line "<b>ROCK</b>."
	done

_PlayedFluteNoEffectText::
	text "Played the #"
	line "<b>FLUTE</b>."

	para "Now, that's a"
	line "catchy tune!"
	prompt

_FluteWokeUpText::
	text "All sleeping"
	line "#<b>MON</b> woke up."
	prompt

_PlayedFluteHadEffectText::
	text "<PLAYER> played the"
	line "# <b>FLUTE</b>.@"
	text_end

_CoinCaseNumCoinsText::
	text "Coins"
	line "@"
	text_bcd wPlayerCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " "
	prompt

_ItemfinderFoundItemText::
	text "Yes! <b>ITEMFINDER</b>"
	line "indicates there's"
	cont "an item nearby."
	prompt

_ItemfinderFoundNothingText::
	text "Nope! <b>ITEMFINDER</b>"
	line "isn't responding."
	prompt

_RaisePPWhichTechniqueText::
	text "Raise <b>PP</b> of which"
	line "technique?"
	done

_RestorePPWhichTechniqueText::
	text "Restore <b>PP</b> of"
	line "which technique?"
	done

_PPMaxedOutText::
	text_ram wStringBuffer
	text "'s <b>PP</b>"
	line "is maxed out."
	prompt

_PPIncreasedText::
	text_ram wStringBuffer
	text "'s <b>PP</b>"
	line "increased."
	prompt

_PPRestoredText::
	text "<b>PP</b> was restored."
	prompt

_BootedUpTMText::
	text "Booted up a <b>TM</b>!"
	prompt

_BootedUpHMText::
	text "Booted up an <b>HM</b>!"
	prompt

_TeachMachineMoveText::
	text "It contained"
	line "@"
	text_ram wStringBuffer
	text "!"

	para "Teach @"
	text_ram wStringBuffer
	text_start
	line "to a #<b>MON</b>?"
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
	text "<b>OAK</b>: <PLAYER>!"
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
	line "blocked the <b>BALL</b>!"
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
	text "The #<b>MON BOX</b>"
	line "is full! Can't"
	cont "use that item!"
	prompt
