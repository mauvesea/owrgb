_AIBattleWithdrawText::
	text_ram wTrainerName
	text " with-"
	line "drew @"
	text_ram wEnemyMonNick
	text "!"
	prompt

_AIBattleUseItemText::
	text_ram wTrainerName
	text_start
	line "used @"
	text_ram wNameBuffer
	text_start
	cont "on @"
	text_ram wEnemyMonNick
	text "!"
	prompt

_TradeWentToText::
	text_ram wStringBuffer
	text " went"
	line "to @"
	text_ram wLinkEnemyTrainerName
	text "."
	done

_TradeForText::
	text "For <PLAYER>'s"
	line "@"
	text_ram wStringBuffer
	text ","
	done

_TradeSendsText::
	text_ram wLinkEnemyTrainerName
	text " sends"
	line "@"
	text_ram wNameBuffer
	text "."
	done

_TradeWavesFarewellText::
	text_ram wLinkEnemyTrainerName
	text " waves"
	line "farewell as"
	done

_TradeTransferredText::
	text_ram wNameBuffer
	text " is"
	line "transferred."
	done

_TradeTakeCareText::
	text "Take good care of"
	line "@"
	text_ram wNameBuffer
	text "."
	done

_TradeWillTradeText::
	text_ram wLinkEnemyTrainerName
	text " will"
	line "trade @"
	text_ram wNameBuffer
	text_start
	done

_TradeforText::
	text "for <PLAYER>'s"
	line "@"
	text_ram wStringBuffer
	text "."
	done

_PlaySlotMachineText::
	text "A slot machine!"
	line "Want to play?"
	done

_OutOfCoinsSlotMachineText::
	text "Darn!"
	line "Ran out of coins!"
	done

_BetHowManySlotMachineText::
	text "Bet how many"
	line "coins?"
	done

_StartSlotMachineText::
	text "Start!"
	done

_NotEnoughCoinsSlotMachineText::
	text "Not enough"
	line "coins!"
	prompt

_OneMoreGoSlotMachineText::
	text "One more "
	line "go?"
	done

_LinedUpText::
	text " lined up!"
	line "Scored @"
	text_ram wStringBuffer
	text " coins!"
	done

_NotThisTimeText::
	text "Not this time!"
	prompt

_YeahText::
	text "Yeah!@"
	text_end

_DexSeenOwnedText::
	text "#<b>DEX</b>   Seen:@"
	text_decimal wDexRatingNumMonsSeen, 1, 3
	text_start
	line "         Owned:@"
	text_decimal wDexRatingNumMonsOwned, 1, 3
	text_end

_DexRatingText::
	text "#<b>DEX</b> Rating<COLON>"
	done

_GymStatueText1::
	text_ram wGymCityName
	text_start
	line "#<b>MON GYM</b>"
	cont "<b>LEADER</b>: @"
	text_ram wGymLeaderName
	text_start

	para "<b>WINNING TRAINERS</b>:"
	line "<RIVAL>"
	done

_GymStatueText2::
	text_ram wGymCityName
	text_start
	line "#<b>MON GYM</b>"
	cont "<b>LEADER</b>: @"
	text_ram wGymLeaderName
	text_start

	para "<b>WINNING TRAINERS</b>:"
	line "<RIVAL>"
	cont "<PLAYER>"
	done

_ViridianCityPokecenterGuyText::
	text "#<b>MON CENTER</b>s"
	line "heal your tired,"
	cont "hurt or fainted"
	cont "#<b>MON</b>!"
	done

_PewterCityPokecenterGuyText::
	text "Yawn!"

	para "When <b>JIGGLYPUFF</b>"
	line "sings, #<b>MON</b>"
	cont "get drowsy..."

	para "...Me too..."
	line "Snore..."
	done

_CeruleanPokecenterGuyText::
	text "<b>BILL</b> has lots of"
	line "#<b>MON</b>!"

	para "He collects rare"
	line "ones too!"
	done

_LavenderPokecenterGuyText::
	text "<b>CUBONE</b>s wear"
	line "skulls, right?"

	para "People will pay a"
	line "lot for one!"
	done

_MtMoonPokecenterBenchGuyText::
	text "If you have too"
	line "many #<b>MON</b>, you"
	cont "should store them"
	cont "via <b>PC</b>!"
	done

_RockTunnelPokecenterGuyText::
	text "I heard that"
	line "<b>GHOST</b>s haunt"
	cont "<b>LAVENDER TOWN</b>!"
	done

_UnusedBenchGuyText1::
	text "I wish I could"
	line "catch #<b>MON</b>."
	done

_UnusedBenchGuyText2::
	text "I'm tired from"
	line "all the fun..."
	done

_UnusedBenchGuyText3::
	text "<b>SILPH's</b> manager"
	line "is hiding in the"
	cont "<b>SAFARI ZONE</b>."
	done

_VermilionPokecenterGuyText::
	text "It is true that a"
	line "higher level"
	cont "#<b>MON</b> will be"
	cont "more powerful..."

	para "But, all #<b>MON</b>"
	line "will have weak"
	cont "points against"
	cont "specific types."

	para "So, there is no"
	line "universally"
	cont "strong #<b>MON</b>."
	done

_CeladonCityPokecenterGuyText::
	text "If I had a <b>BIKE</b>,"
	line "I would go to"
	cont "<b>CYCLING ROAD</b>!"
	done

_FuchsiaCityPokecenterGuyText::
	text "If you're studying "
	line "#<b>MON</b>, visit"
	cont "the <b>SAFARI ZONE</b>."

	para "It has all sorts"
	line "of rare #<b>MON</b>."
	done

_CinnabarPokecenterGuyText::
	text "#<b>MON</b> can still"
	line "learn techniques"
	cont "after canceling"
	cont "evolution."

	para "Evolution can wait"
	line "until new moves"
	cont "have been learned."
	done

_SaffronCityPokecenterGuyText1::
	text "It would be great"
	line "if the <b>ELITE FOUR</b>"
	cont "came and stomped"
	cont "<b>TEAM ROCKET</b>!"
	done

_SaffronCityPokecenterGuyText2::
	text "<b>TEAM ROCKET</b> took"
	line "off! We can go"
	cont "out safely again!"
	cont "That's great!"
	done

_CeladonCityHotelText::
	text "My sis brought me"
	line "on this vacation!"
	done

_BookcaseText::
	text "Crammed full of"
	line "#<b>MON</b> books!"
	done

_NewBicycleText::
	text "A shiny new"
	line "<b>BICYCLE</b>!"
	done

_PushStartText::
	text "Push <b>START</b> to"
	line "open the <b>MENU</b>!"
	done

_SaveOptionText::
	text "The <b>SAVE</b> option is"
	line "on the <b>MENU</b>"
	cont "screen."
	done

_StrengthsAndWeaknessesText::
	text "All #<b>MON</b> types"
	line "have strong and"
	cont "weak points"
	cont "against others."
	done

_TimesUpText::
	text "<b>PA</b>: Ding-dong!"

	para "Time's up!"
	prompt

_GameOverText::
	text "<b>PA</b>: Your <b>SAFARI</b>"
	line "<b>GAME</b> is over!"
	done

_CinnabarGymQuizIntroText::
	text "#<b>MON</b> Quiz!"

	para "Get it right and"
	line "the door opens to"
	cont "the next room!"

	para "Get it wrong and"
	line "face a trainer!"

	para "If you want to"
	line "conserve your"
	cont "#<b>MON</b> for the"
	cont "<b>GYM LEADER</b>..."

	para "Then get it right!"
	line "Here we go!"
	prompt

_CinnabarQuizQuestionsText1::
	text "<b>CATERPIE</b> evolves"
	line "into <b>BUTTERFREE</b>?"
	done

_CinnabarQuizQuestionsText2::
	text "There are 9"
	line "certified #<b>MON</b>"
	cont "<b>LEAGUE BADGE</b>s?"
	done

_CinnabarQuizQuestionsText3::
	text "<b>POLIWAG</b> evolves 3"
	line "times?"
	done

_CinnabarQuizQuestionsText4::
	text "Are thunder moves"
	line "effective against"
	cont "ground element-"
	cont "type #<b>MON</b>?"
	done

_CinnabarQuizQuestionsText5::
	text "#<b>MON</b> of the"
	line "same kind and"
	cont "level are not"
	cont "identical?"
	done

_CinnabarQuizQuestionsText6::
	text "<b>TM</b>28 contains"
	line "<b>TOMBSTONER</b>?"
	done

_CinnabarGymQuizCorrectText::
	text "You're absolutely"
	line "correct!"

	para "Go on through!@"
	text_end

_CinnabarGymQuizIncorrectText::
	text "Sorry! Bad call!"
	prompt

_MagazinesText::
	text "#<b>MON</b> magazines!"

	para "#<b>MON</b> notebooks!"

	para "#<b>MON</b> graphs!"
	done

_BillsHouseMonitorText::
	text "<b>TELEPORTER</b> is"
	line "displayed on the"
	cont "<b>PC</b> monitor."
	done

_BillsHouseInitiatedText::
	text "<PLAYER> initiated"
	line "<b>TELEPORTER's</b> Cell"
	cont "Separator!@"
	text_end

_BillsHousePokemonListText1::
	text "<b>BILL's</b> favorite"
	line "#<b>MON</b> list!"
	prompt

_BillsHousePokemonListText2::
	text "Which #<b>MON</b> do"
	line "you want to see?"
	done

_OakLabEmailText::
	text "There's an e-mail"
	line "message here!"

	para "..."

	para "Calling all"
	line "#<b>MON</b> trainers!"

	para "The elite trainers"
	line "of #<b>MON LEAGUE</b>"
	cont "are ready to take"
	cont "on all comers!"

	para "Bring your best"
	line "#<b>MON</b> and see"
	cont "how you rate as a"
	cont "trainer!"

	para "#<b>MON LEAGUE HQ</b>"
	line "<b>INDIGO PLATEAU</b>"

	para "<b>PS</b>: <b>PROF.OAK</b>,"
	line "please visit us!"
	cont "..."
	done

_GameCornerCoinCaseText::
	text "A <b>COIN CASE</b> is"
	line "required!"
	done

_GameCornerNoCoinsText::
	text "You don't have"
	line "any coins!"
	done

_GameCornerOutOfOrderText::
	text "<b>OUT OF ORDER</b>"
	line "This is broken."
	done

_GameCornerOutToLunchText::
	text "<b>OUT TO LUNCH</b>"
	line "This is reserved."
	done

_GameCornerSomeonesKeysText::
	text "Someone's keys!"
	line "They'll be back."
	done

_JustAMomentText::
	text "Just a moment."
	done

TMNotebookText::
	text "It's a pamphlet"
	line "on <b>TM</b>s."

	para "..."

	para "There are 50 <b>TM</b>s"
	line "in all."

	para "There are also 5"
	line "<b>HM</b>s that can be"
	cont "used repeatedly."

	para "<b>SILPH CO</b>.@"
	text_end

_TurnPageText::
	text "Turn the page?"
	done

_ViridianSchoolNotebookText5::
	text "<b>GIRL</b>: Hey! Don't"
	line "look at my notes!@"
	text_end

_ViridianSchoolNotebookText1::
	text "Looked at the"
	line "notebook!"

	para "First page..."

	para "# <b>BALL</b>s are"
	line "used to catch"
	cont "#<b>MON</b>."

	para "Up to 6 #<b>MON</b>"
	line "can be carried."

	para "People who raise"
	line "and make #<b>MON</b>"
	cont "fight are called"
	cont "#<b>MON</b> trainers."
	prompt

_ViridianSchoolNotebookText2::
	text "Second page..."

	para "A healthy #<b>MON</b>"
	line "may be hard to"
	cont "catch, so weaken"
	cont "it first!"

	para "Poison, burns and"
	line "other damage are"
	cont "effective!"
	prompt

_ViridianSchoolNotebookText3::
	text "Third page..."

	para "#<b>MON</b> trainers"
	line "seek others to"
	cont "engage in #<b>MON</b>"
	cont "fights."

	para "Battles are"
	line "constantly fought"
	cont "at #<b>MON GYM</b>s."
	prompt

_ViridianSchoolNotebookText4::
	text "Fourth page..."

	para "The goal for"
	line "#<b>MON</b> trainers"
	cont "is to beat the "
	cont "top 8 #<b>MON</b>"
	cont "<b>GYM LEADER</b>s."

	para "Do so to earn the"
	line "right to face..."

	para "The <b>ELITE FOUR</b> of"
	line "#<b>MON LEAGUE</b>!"
	prompt

_EnemiesOnEverySideText::
	text "Enemies on every"
	line "side!"
	done

_WhatGoesAroundComesAroundText::
	text "What goes around"
	line "comes around!"
	done

_FightingDojoText::
	text "<b>FIGHTING DOJO</b>"
	done

_IndigoPlateauHQText::
	text "<b>INDIGO PLATEAU</b>"
	line "#<b>MON LEAGUE HQ</b>"
	done

_RedBedroomSNESText::
	text "<PLAYER> is"
	line "playing the <b>SNES</b>!"

	para "A game with <b>MARIO</b>"
	line "wearing a bucket"
	cont "on his head!"

	para "...Okay!"
	line "It's time to go!"
	done

_Route15UpstairsBinocularsText::
	text "Looked into the"
	line "binoculars..."

	para "A large, shining"
	line "bird is flying"
	cont "toward the sea."
	done

_AerodactylFossilText::
	text "<b>AERODACTYL</b> Fossil"
	line "A primitive and"
	cont "rare #<b>MON</b>."
	done

_KabutopsFossilText::
	text "<b>KABUTOPS</b> Fossil"
	line "A primitive and"
	cont "rare #<b>MON</b>."
	done

_LinkCableHelpText1::
	text "<b>TRAINER TIPS</b>"

	para "Using a Game Link"
	line "Cable"
	prompt

_LinkCableHelpText2::
	text "Which heading do"
	line "you want to read?"
	done

_LinkCableInfoText1::
	text "When you have"
	line "linked your <b>GAME</b>"
	cont "<b>BOY</b> with another"
	cont "<b>GAME BOY</b>, talk to"
	cont "the attendant on"
	cont "the right in any"
	cont "#<b>MON CENTER</b>."
	prompt

_LinkCableInfoText2::
	text "<b>COLOSSEUM</b> lets"
	line "you play against"
	cont "a friend."
	prompt

_LinkCableInfoText3::
	text "<b>TRADE CENTER</b> is"
	line "used for trading"
	cont "#<b>MON</b>."
	prompt

_ViridianSchoolBlackboardText1::
	text "The blackboard"
	line "describes #<b>MON</b>"
	cont "<b>STATUS</b> changes"
	cont "during battles."
	prompt

_ViridianSchoolBlackboardText2::
	text "Which heading do"
	line "you want to read?"
	done

_ViridianBlackboardSleepText::
	text "A #<b>MON</b> can't"
	line "attack if it's"
	cont "asleep!"

	para "#<b>MON</b> will stay"
	line "asleep even after"
	cont "battles."

	para "Use <b>AWAKENING</b> to"
	line "wake them up!"
	prompt

_ViridianBlackboardPoisonText::
	text "When poisoned, a"
	line "#<b>MON's</b> health"
	cont "steadily drops."

	para "Poison lingers"
	line "after battles."

	para "Use an <b>ANTIDOTE</b>"
	line "to cure poison!"
	prompt

_ViridianBlackboardPrlzText::
	text "Paralysis could"
	line "make #<b>MON</b>"
	cont "moves misfire!"

	para "Paralysis remains"
	line "after battles."

	para "Use <b>PARLYZ HEAL</b>"
	line "for treatment!"
	prompt

_ViridianBlackboardBurnText::
	text "A burn reduces"
	line "power and speed."
	cont "It also causes"
	cont "ongoing damage."

	para "Burns remain"
	line "after battles."

	para "Use <b>BURN HEAL</b> to"
	line "cure a burn!"
	prompt

_ViridianBlackboardFrozenText::
	text "If frozen, a"
	line "#<b>MON</b> becomes"
	cont "totally immobile!"

	para "It stays frozen"
	line "even after the"
	cont "battle ends."

	para "Use <b>ICE HEAL</b> to"
	line "thaw out #<b>MON</b>!"
	prompt

_VermilionGymTrashText::
	text "Nope, there's"
	line "only trash here."
	done

_VermilionGymTrashSuccessText1::
	text "Hey! There's a"
	line "switch under the"
	cont "trash!"
	cont "Turn it on!"

	para "The 1st electric"
	line "lock opened!@"
	text_end

_VermilionGymTrashSuccessText2::
	text "Hey! There's"
	line "another switch"
	cont "under the trash!"
	cont "Turn it on!"
	prompt

_VermilionGymTrashSuccessText3::
	text "The 2nd electric"
	line "lock opened!"

	para "The motorized door"
	line "opened!@"
	text_end

_VermilionGymTrashFailText::
	text "Nope! There's"
	line "only trash here."
	cont "Hey! The electric"
	cont "locks were reset!@"
	text_end

_FoundHiddenItemText::
	text "<PLAYER> found"
	line "@"
	text_ram wNameBuffer
	text "!@"
	text_end

_HiddenItemBagFullText::
	text "But, <PLAYER> has"
	line "no more room for"
	cont "other items!"
	done

_FoundHiddenCoinsText::
	text "<PLAYER> found"
	line "@"
	text_bcd hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " coins!@"
	text_end

_FoundHiddenCoins2Text::
	text "<PLAYER> found"
	line "@"
	text_bcd hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " coins!@"
	text_end

_DroppedHiddenCoinsText::
	text_start
	para "Oops! Dropped"
	line "some coins!"
	done

_IndigoPlateauStatuesText1::
	text "<b>INDIGO PLATEAU</b>"
	prompt

_IndigoPlateauStatuesText2::
	text "The ultimate goal"
	line "of trainers!"
	cont "#<b>MON LEAGUE HQ</b>"
	done

_IndigoPlateauStatuesText3::
	text "The highest"
	line "#<b>MON</b> authority"
	cont "#<b>MON LEAGUE HQ</b>"
	done

_PokemonBooksText::
	text "Crammed full of"
	line "#<b>MON</b> books!"
	done

_DiglettSculptureText::
	text "It's a sculpture"
	line "of <b>DIGLETT</b>."
	done

_ElevatorText::
	text "This is an"
	line "elevator."
	done

_TownMapText::
	text "A <b>TOWN MAP</b>.@"
	text_end

_PokemonStuffText::
	text "Wow! Tons of"
	line "#<b>MON</b> stuff!"
	done

_OutOfSafariBallsText::
	text "<b>PA</b>: Ding-dong!"

	para "You are out of"
	line "<b>SAFARI BALL</b>s!"
	prompt

_WildRanText::
	text "Wild @"
	text_ram wEnemyMonNick
	text_start
	line "ran!"
	prompt

_EnemyRanText::
	text "Enemy @"
	text_ram wEnemyMonNick
	text_start
	line "ran!"
	prompt

_HurtByPoisonText::
	text "<USER>'s"
	line "hurt by poison!"
	prompt

_HurtByBurnText::
	text "<USER>'s"
	line "hurt by the burn!"
	prompt

_HurtByLeechSeedText::
	text "<b>LEECH SEED</b> saps"
	line "<USER>!"
	prompt

_EnemyMonFaintedText::
	text "Enemy @"
	text_ram wEnemyMonNick
	text_start
	line "fainted!"
	prompt

_MoneyForWinningText::
	text "<PLAYER> got ¥@"
	text_bcd wAmountMoneyWon, 3 | LEADING_ZEROES | LEFT_ALIGN
	text_start
	line "for winning!"
	prompt

_TrainerDefeatedText::
	text "<PLAYER> defeated"
	line "@"
	text_ram wTrainerName
	text "!"
	prompt

_PlayerMonFaintedText::
	text_ram wBattleMonNick
	text_start
	line "fainted!"
	prompt

_UseNextMonText::
	text "Use next #<b>MON</b>?"
	done

_Rival1WinText::
	text "<RIVAL>: Yeah! Am"
	line "I great or what?"
	prompt

_PlayerBlackedOutText2::
	text "<PLAYER> is out of"
	line "useable #<b>MON</b>!"

	para "<PLAYER> blacked"
	line "out!"
	prompt

_LinkBattleLostText::
	text "<PLAYER> lost to"
	line "@"
	text_ram wTrainerName
	text "!"
	prompt

_TrainerAboutToUseText::
	text_ram wTrainerName
	text " is"
	line "about to use"
	cont "@"
	text_ram wEnemyMonNick
	text "!"

	para "Will <PLAYER>"
	line "change #<b>MON</b>?"
	done

_TrainerSentOutText::
	text_ram wTrainerName
	text " sent"
	line "out @"
	text_ram wEnemyMonNick
	text "!"
	done

_NoWillText::
	text "There's no will"
	line "to fight!"
	prompt

_CantEscapeText::
	text "Can't escape!"
	prompt

_NoRunningText::
	text "No! There's no"
	line "running from a"
	cont "trainer battle!"
	prompt

_GotAwayText::
	text "Got away safely!"
	prompt

_ItemsCantBeUsedHereText::
	text "Items can't be"
	line "used here."
	prompt

_AlreadyOutText::
	text_ram wBattleMonNick
	text " is"
	line "already out!"
	prompt

_MoveNoPPText::
	text "No <b>PP</b> left for"
	line "this move!"
	prompt

_MoveDisabledText::
	text "The move is"
	line "disabled!"
	prompt

_NoMovesLeftText::
	text_ram wBattleMonNick
	text " has no"
	line "moves left!"
	done

_MultiHitText::
	text "Hit the enemy"
	line "@"
	text_decimal wPlayerNumHits, 1, 1
	text " times!"
	prompt

_ScaredText::
	text_ram wBattleMonNick
	text " is too"
	line "scared to move!"
	prompt

_GetOutText::
	text "<b>GHOST</b>: Get out..."
	line "Get out..."
	prompt

_FastAsleepText::
	text "<USER>"
	line "is fast asleep!"
	prompt

_WokeUpText::
	text "<USER>"
	line "woke up!"
	prompt

_IsFrozenText::
	text "<USER>"
	line "is frozen solid!"
	prompt

_FullyParalyzedText::
	text "<USER>'s"
	line "fully paralyzed!"
	prompt

_FlinchedText::
	text "<USER>"
	line "flinched!"
	prompt

_MustRechargeText::
	text "<USER>"
	line "must recharge!"
	prompt

_DisabledNoMoreText::
	text "<USER>'s"
	line "disabled no more!"
	prompt

_IsConfusedText::
	text "<USER>"
	line "is confused!"
	prompt

_HurtItselfText::
	text "It hurt itself in"
	line "its confusion!"
	prompt

_ConfusedNoMoreText::
	text "<USER>'s"
	line "confused no more!"
	prompt

_SavingEnergyText::
	text "<USER>"
	line "is saving energy!"
	prompt

_UnleashedEnergyText::
	text "<USER>"
	line "unleashed energy!"
	prompt

_ThrashingAboutText::
	text "<USER>'s"
	line "thrashing about!"
	done

_AttackContinuesText::
	text "<USER>'s"
	line "attack continues!"
	done

_CantMoveText::
	text "<USER>"
	line "can't move!"
	prompt

_MoveIsDisabledText::
	text "<USER>'s"
	line "@"
	text_ram wNameBuffer
	text " is"
	cont "disabled!"
	prompt

_ActorNameText::
	text "<USER>@"
	text_end

_UsedMove1Text::
	text_start
	line "used @"
	text_end

_UsedMove2Text::
	text_start
	line "used @"
	text_end

_UsedInsteadText::
	text "instead,"
	cont "@"
	text_end

_MoveNameText::
	text_ram wStringBuffer
	text "@"

_EndUsedMove1Text::
	text "!"
	done

_EndUsedMove2Text::
	text "!"
	done

_EndUsedMove3Text::
	text "!"
	done

_EndUsedMove4Text::
	text "!"
	done

_EndUsedMove5Text::
	text "!"
	done

_AttackMissedText::
	text "<USER>'s"
	line "attack missed!"
	prompt

_KeptGoingAndCrashedText::
	text "<USER>"
	line "kept going and"
	cont "crashed!"
	prompt

_UnaffectedText::
	text "<TARGET>'s"
	line "unaffected!"
	prompt

_DoesntAffectMonText::
	text "It doesn't affect"
	line "<TARGET>!"
	prompt

_CriticalHitText::
	text "Critical hit!"
	prompt

_OHKOText::
	text "One-hit <b>KO</b>!"
	prompt

_LoafingAroundText::
	text_ram wBattleMonNick
	text " is"
	line "loafing around."
	prompt

_BeganToNapText::
	text_ram wBattleMonNick
	text " began"
	line "to nap!"
	prompt

_WontObeyText::
	text_ram wBattleMonNick
	text " won't"
	line "obey!"
	prompt

_TurnedAwayText::
	text_ram wBattleMonNick
	text " turned"
	line "away!"
	prompt

_IgnoredOrdersText::
	text_ram wBattleMonNick
	text_start
	line "ignored orders!"
	prompt

_SubstituteTookDamageText::
	text "The <b>SUBSTITUTE</b>"
	line "took damage for"
	cont "<TARGET>!"
	prompt

_SubstituteBrokeText::
	text "<TARGET>'s"
	line "<b>SUBSTITUTE</b> broke!"
	prompt

_BuildingRageText::
	text "<USER>'s"
	line "<b>RAGE</b> is building!"
	prompt

_MirrorMoveFailedText::
	text "The <b>MIRROR MOVE</b>"
	next "failed!"
	prompt

_HitXTimesText::
	text "Hit @"
	text_decimal wEnemyNumHits, 1, 1
	text " times!"
	prompt

_GainedText::
	text_ram wNameBuffer
	text " gained"
	line "@"
	text_end

_WithExpAllText::
	text "with <b>EXP.ALL</b>,"
	cont "@"
	text_end

_BoostedText::
	text "a boosted"
	cont "@"
	text_end

_ExpPointsText::
	text_decimal wExpAmountGained, 2, 4
	text " <b>EXP</b>. Points!"
	prompt

_GrewLevelText::
	text_ram wNameBuffer
	text " grew"
	line "to level @"
	text_decimal wCurEnemyLevel, 1, 3
	text "!@"
	text_end

_WildMonAppearedText::
	text "Wild @"
	text_ram wEnemyMonNick
	text_start
	line "appeared!"
	prompt

_HookedMonAttackedText::
	text "The hooked"
	line "@"
	text_ram wEnemyMonNick
	text_start
	cont "attacked!"
	prompt

_EnemyAppearedText::
	text_ram wEnemyMonNick
	text_start
	line "appeared!"
	prompt

_TrainerWantsToFightText::
	text_ram wTrainerName
	text " wants"
	line "to fight!"
	prompt

_UnveiledGhostText::
	text "<b>SILPH SCOPE</b>"
	line "unveiled the"
	cont "<b>GHOST's</b> identity!"
	prompt

_GhostCantBeIDdText::
	text "Darn! The <b>GHOST</b>"
	line "can't be ID'd!"
	prompt

_GoText::
	text "Go! @"
	text_end

_DoItText::
	text "Do it! @"
	text_end

_GetmText::
	text "Get'm! @"
	text_end

_EnemysWeakText::
	text "The enemy's weak!"
	line "Get'm! @"
	text_end

_PlayerMon1Text::
	text_ram wBattleMonNick
	text "!"
	done

_PlayerMon2Text::
	text_ram wBattleMonNick
	text " @"
	text_end

_EnoughText::
	text "enough!@"
	text_end

_OKExclamationText::
	text "<b>OK</b>!@"
	text_end

_GoodText::
	text "good!@"
	text_end

_ComeBackText::
	text_start
	line "Come back!"
	done

_SuperEffectiveText::
	text "It's super"
	line "effective!"
	prompt

_NotVeryEffectiveText::
	text "It's not very"
	line "effective..."
	prompt

_SafariZoneEatingText::
	text "Wild @"
	text_ram wEnemyMonNick
	text_start
	line "is eating!"
	prompt

_SafariZoneAngryText::
	text "Wild @"
	text_ram wEnemyMonNick
	text_start
	line "is angry!"
	prompt

; money related
_PickUpPayDayMoneyText::
	text "<PLAYER> picked up"
	line "¥@"
	text_bcd wTotalPayDayMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "!"
	prompt

_ClearSaveDataText::
	text "Clear all saved"
	line "data?"
	done

_WhichFloorText::
	text "Which floor do"
	line "you want? "
	done

_PartyMenuNormalText::
	text "Choose a #<b>MON</b>."
	done

_PartyMenuItemUseText::
	text "Use item on which"
	line "#<b>MON</b>?"
	done

_PartyMenuBattleText::
	text "Bring out which"
	line "#<b>MON</b>?"
	done

_PartyMenuUseTMText::
	text "Use <b>TM</b> on which"
	line "#<b>MON</b>?"
	done

_PartyMenuSwapMonText::
	text "Move #<b>MON</b>"
	line "where?"
	done

_PotionText::
	text_ram wNameBuffer
	text_start
	line "recovered by @"
	text_decimal wHPBarHPDifference, 2, 3
	text "!"
	done

_AntidoteText::
	text_ram wNameBuffer
	text " was"
	line "cured of poison!"
	done

_ParlyzHealText::
	text_ram wNameBuffer
	text "'s"
	line "rid of paralysis!"
	done

_BurnHealText::
	text_ram wNameBuffer
	text "'s"
	line "burn was healed!"
	done

_IceHealText::
	text_ram wNameBuffer
	text " was"
	line "defrosted!"
	done

_AwakeningText::
	text_ram wNameBuffer
	text_start
	line "woke up!"
	done

_FullHealText::
	text_ram wNameBuffer
	text "'s"
	line "health returned!"
	done

_ReviveText::
	text_ram wNameBuffer
	text_start
	line "is revitalized!"
	done

_RareCandyText::
	text_ram wNameBuffer
	text " grew"
	line "to level @"
	text_decimal wCurEnemyLevel, 1, 3
	text "!@"
	text_end

_TurnedOnPC1Text::
	text "<PLAYER> turned on"
	line "the <b>PC</b>."
	prompt

_AccessedBillsPCText::
	text "Accessed <b>BILL's</b>"
	line "<b>PC</b>."

	para "Accessed #<b>MON</b>"
	line "Storage System."
	prompt

_AccessedSomeonesPCText::
	text "Accessed someone's"
	line "<b>PC</b>."

	para "Accessed #<b>MON</b>"
	line "Storage System."
	prompt

_AccessedMyPCText::
	text "Accessed my <b>PC</b>."

	para "Accessed Item"
	line "Storage System."
	prompt

_TurnedOnPC2Text::
	text "<PLAYER> turned on"
	line "the <b>PC</b>."
	prompt

_WhatDoYouWantText::
	text "What do you want"
	line "to do?"
	done

_WhatToDepositText::
	text "What do you want"
	line "to deposit?"
	done

_DepositHowManyText::
	text "How many?"
	done

_ItemWasStoredText::
	text_ram wNameBuffer
	text " was"
	line "stored via <b>PC</b>."
	prompt

_NothingToDepositText::
	text "You have nothing"
	line "to deposit."
	prompt

_NoRoomToStoreText::
	text "No room left to"
	line "store items."
	prompt

_WhatToWithdrawText::
	text "What do you want"
	line "to withdraw?"
	done

_WithdrawHowManyText::
	text "How many?"
	done

_WithdrewItemText::
	text "Withdrew"
	line "@"
	text_ram wNameBuffer
	text "."
	prompt

_NothingStoredText::
	text "There is nothing"
	line "stored."
	prompt

_CantCarryMoreText::
	text "You can't carry"
	line "any more items."
	prompt

_WhatToTossText::
	text "What do you want"
	line "to toss away?"
	done

_TossHowManyText::
	text "How many?"
	done

_AccessedHoFPCText::
	text "Accessed #<b>MON</b>"
	line "<b>LEAGUE's</b> site."

	para "Accessed the <b>HALL</b>"
	line "<b>OF FAME</b> List."
	prompt

_SwitchOnText::
	text "Switch on!"
	prompt

_WhatText::
	text "What?"
	done

_DepositWhichMonText::
	text "Deposit which"
	line "#<b>MON</b>?"
	done

_MonWasStoredText::
	text_ram wStringBuffer
	text " was"
	line "stored in Box @"
	text_ram wBoxNumString
	text "."
	prompt

_CantDepositLastMonText::
	text "You can't deposit"
	line "the last #<b>MON</b>!"
	prompt

_BoxFullText::
	text "Oops! This Box is"
	line "full of #<b>MON</b>."
	prompt

_MonIsTakenOutText::
	text_ram wStringBuffer
	text " is"
	line "taken out."
	cont "Got @"
	text_ram wStringBuffer
	text "."
	prompt

_NoMonText::
	text "What? There are"
	line "no #<b>MON</b> here!"
	prompt

_CantTakeMonText::
	text "You can't take"
	line "any more #<b>MON</b>."

	para "Deposit #<b>MON</b>"
	line "first."
	prompt

_ReleaseWhichMonText::
	text "Release which"
	line "#<b>MON</b>?"
	done

_OnceReleasedText::
	text "Once released,"
	line "@"
	text_ram wStringBuffer
	text " is"
	cont "gone forever. <b>OK</b>?"
	done

_MonWasReleasedText::
	text_ram wStringBuffer
	text " was"
	line "released outside."
	cont "Bye @"
	text_ram wStringBuffer
	text "!"
	prompt

_RequireCoinCaseText::
	text "A <b>COIN CASE</b> is"
	line "required!@"
	text_end

_ExchangeCoinsForPrizesText::
	text "We exchange your"
	line "coins for prizes."
	prompt

_WhichPrizeText::
	text "Which prize do"
	line "you want?"
	done

_HereYouGoText::
	text "Here you go!@"
	text_end

_SoYouWantPrizeText::
	text "So, you want"
	line "@"
	text_ram wNameBuffer
	text "?"
	done

_SorryNeedMoreCoinsText::
	text "Sorry, you need"
	line "more coins.@"
	text_end

_OopsYouDontHaveEnoughRoomText::
	text "Oops! You don't"
	line "have enough room.@"
	text_end

_OhFineThenText::
	text "Oh, fine then.@"
	text_end

_GetDexRatedText::
	text "Want to get your"
	line "#<b>DEX</b> rated?"
	done

_ClosedOaksPCText::
	text "Closed link to"
	line "<b>PROF.OAK's PC</b>.@"
	text_end

_AccessedOaksPCText::
	text "Accessed <b>PROF</b>."
	line "<b>OAK's PC</b>."

	para "Accessed #<b>DEX</b>"
	line "Rating System."
	prompt

_WhereWouldYouLikeText::
	text "Where would you"
	line "like to go?"
	done

_PleaseWaitText::
	text "<b>OK</b>, please wait"
	line "just a moment."
	done

_LinkCanceledText::
	text "The link was"
	line "canceled."
	done

_OakSpeechText1::
	text "Hello there!"
	line "Welcome to the"
	cont "world of #<b>MON</b>!"

	para "My name is <b>OAK</b>!"
	line "People call me"
	cont "the #<b>MON</b> Prof.!"
	prompt

_OakSpeechText2A::
	text "This world is"
	line "inhabited by"
	cont "creatures called"
	cont "#<b>MON</b>!@"
	text_end

_OakSpeechText2B::
	text_start

	para "For some people,"
	line "#<b>MON</b> are"
	cont "pets. Others use"
	cont "them for fights."

	para "Myself..."

	para "I study #<b>MON</b>"
	line "as a profession."
	prompt

_IntroducePlayerText::
	text "First, what is"
	line "your name?"
	prompt

_IntroduceRivalText::
	text "This is my grand-"
	line "son. He's been"
	cont "your rival since"
	cont "you were a baby."

	para "...Erm, what is"
	line "his name again?"
	prompt

_IntroduceJuniorText::
	text "This is my other"
	line "grandson. He's"
	cont "younger than"
	cont "<RIVAL>, but you're"
	cont "good friends with"
	cont "him too, right?"

	para "...Hmm, what is"
	line "his name again?"
	prompt

_OakSpeechText3::
	text "<PLAYER>!"

	para "Your very own"
	line "#<b>MON</b> legend is"
	cont "about to unfold!"

	para "A world of dreams"
	line "and adventures"
	cont "with #<b>MON</b>"
	cont "awaits! Let's go!"
	done

_DoYouWantToNicknameText::
	text "Do you want to"
	line "give a nickname"
	cont "to @"
	text_ram wNameBuffer
	text "?"
	done

_YourNameIsText::
	text "Right! So your"
	line "name is <PLAYER>!"
	prompt

_HisNameIsText::
	text "That's right! I"
	line "remember now! His"
	cont "name is <RIVAL>!"
	prompt

_JuniorNameIsText::
	text "How could I for-"
	line "get? His name is"
	cont "<JUNIOR>!"
	prompt

_WillBeTradedText::
	text_ram wNameOfPlayerMonToBeTraded
	text " and"
	line "@"
	text_ram wNameBuffer
	text " will"
	cont "be traded."
	done

_TextIDErrorText::
	text_decimal hTextID, 1, 2
	text " <b>ERROR</b>."
	done

_ContCharText::
	text "<_CONT>@"
	text_end
