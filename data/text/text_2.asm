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
	text "#<BOLD_D><BOLD_E><BOLD_X>   Seen:@"
	text_decimal wDexRatingNumMonsSeen, 1, 3
	text_start
	line "         Owned:@"
	text_decimal wDexRatingNumMonsOwned, 1, 3
	text_end

_DexRatingText::
	text "#<BOLD_D><BOLD_E><BOLD_X> Rating<COLON>"
	done

_GymStatueText1::
	text_ram wGymCityName
	text_start
	line "#<BOLD_M><BOLD_O><BOLD_N> <BOLD_G><BOLD_Y><BOLD_M>"
	cont "<BOLD_L><BOLD_E><BOLD_A><BOLD_D><BOLD_E><BOLD_R>: @"
	text_ram wGymLeaderName
	text_start

	para "<BOLD_W><BOLD_I><BOLD_N><BOLD_N><BOLD_I><BOLD_N><BOLD_G> <BOLD_T><BOLD_R><BOLD_A><BOLD_I><BOLD_N><BOLD_E><BOLD_R><BOLD_S>:"
	line "<RIVAL>"
	done

_GymStatueText2::
	text_ram wGymCityName
	text_start
	line "#<BOLD_M><BOLD_O><BOLD_N> <BOLD_G><BOLD_Y><BOLD_M>"
	cont "<BOLD_L><BOLD_E><BOLD_A><BOLD_D><BOLD_E><BOLD_R>: @"
	text_ram wGymLeaderName
	text_start

	para "<BOLD_W><BOLD_I><BOLD_N><BOLD_N><BOLD_I><BOLD_N><BOLD_G> <BOLD_T><BOLD_R><BOLD_A><BOLD_I><BOLD_N><BOLD_E><BOLD_R><BOLD_S>:"
	line "<RIVAL>"
	cont "<PLAYER>"
	done

_ViridianCityPokecenterGuyText::
	text "#<BOLD_M><BOLD_O><BOLD_N> <BOLD_C><BOLD_E><BOLD_N><BOLD_T><BOLD_E><BOLD_R>s"
	line "heal your tired,"
	cont "hurt or fainted"
	cont "#<BOLD_M><BOLD_O><BOLD_N>!"
	done

_PewterCityPokecenterGuyText::
	text "Yawn!"

	para "When <BOLD_J><BOLD_I><BOLD_G><BOLD_G><BOLD_L><BOLD_Y><BOLD_P><BOLD_U><BOLD_F><BOLD_F>"
	line "sings, #<BOLD_M><BOLD_O><BOLD_N>"
	cont "get drowsy..."

	para "...Me too..."
	line "Snore..."
	done

_CeruleanPokecenterGuyText::
	text "<BOLD_B><BOLD_I><BOLD_L><BOLD_L> has lots of"
	line "#<BOLD_M><BOLD_O><BOLD_N>!"

	para "He collects rare"
	line "ones too!"
	done

_LavenderPokecenterGuyText::
	text "<BOLD_C><BOLD_U><BOLD_B><BOLD_O><BOLD_N><BOLD_E>s wear"
	line "skulls, right?"

	para "People will pay a"
	line "lot for one!"
	done

_MtMoonPokecenterBenchGuyText::
	text "If you have too"
	line "many #<BOLD_M><BOLD_O><BOLD_N>, you"
	cont "should store them"
	cont "via <BOLD_P><BOLD_C>!"
	done

_RockTunnelPokecenterGuyText::
	text "I heard that"
	line "<BOLD_G><BOLD_H><BOLD_O><BOLD_S><BOLD_T>s haunt"
	cont "<BOLD_L><BOLD_A><BOLD_V><BOLD_E><BOLD_N><BOLD_D><BOLD_E><BOLD_R> <BOLD_T><BOLD_O><BOLD_W><BOLD_N>!"
	done

_UnusedBenchGuyText1::
	text "I wish I could"
	line "catch #<BOLD_M><BOLD_O><BOLD_N>."
	done

_UnusedBenchGuyText2::
	text "I'm tired from"
	line "all the fun..."
	done

_UnusedBenchGuyText3::
	text "<BOLD_S><BOLD_I><BOLD_L><BOLD_P><BOLD_H>'<BOLD_s> manager"
	line "is hiding in the"
	cont "<BOLD_S><BOLD_A><BOLD_F><BOLD_A><BOLD_R><BOLD_I> <BOLD_Z><BOLD_O><BOLD_N><BOLD_E>."
	done

_VermilionPokecenterGuyText::
	text "It is true that a"
	line "higher level"
	cont "#<BOLD_M><BOLD_O><BOLD_N> will be"
	cont "more powerful..."

	para "But, all #<BOLD_M><BOLD_O><BOLD_N>"
	line "will have weak"
	cont "points against"
	cont "specific types."

	para "So, there is no"
	line "universally"
	cont "strong #<BOLD_M><BOLD_O><BOLD_N>."
	done

_CeladonCityPokecenterGuyText::
	text "If I had a <BOLD_B><BOLD_I><BOLD_K><BOLD_E>,"
	line "I would go to"
	cont "<BOLD_C><BOLD_Y><BOLD_C><BOLD_L><BOLD_I><BOLD_N><BOLD_G> <BOLD_R><BOLD_O><BOLD_A><BOLD_D>!"
	done

_FuchsiaCityPokecenterGuyText::
	text "If you're studying "
	line "#<BOLD_M><BOLD_O><BOLD_N>, visit"
	cont "the <BOLD_S><BOLD_A><BOLD_F><BOLD_A><BOLD_R><BOLD_I> <BOLD_Z><BOLD_O><BOLD_N><BOLD_E>."

	para "It has all sorts"
	line "of rare #<BOLD_M><BOLD_O><BOLD_N>."
	done

_CinnabarPokecenterGuyText::
	text "#<BOLD_M><BOLD_O><BOLD_N> can still"
	line "learn techniques"
	cont "after canceling"
	cont "evolution."

	para "Evolution can wait"
	line "until new moves"
	cont "have been learned."
	done

_SaffronCityPokecenterGuyText1::
	text "It would be great"
	line "if the <BOLD_E><BOLD_L><BOLD_I><BOLD_T><BOLD_E> <BOLD_F><BOLD_O><BOLD_U><BOLD_R>"
	cont "came and stomped"
	cont "<BOLD_T><BOLD_E><BOLD_A><BOLD_M> <BOLD_R><BOLD_O><BOLD_C><BOLD_K><BOLD_E><BOLD_T>!"
	done

_SaffronCityPokecenterGuyText2::
	text "<BOLD_T><BOLD_E><BOLD_A><BOLD_M> <BOLD_R><BOLD_O><BOLD_C><BOLD_K><BOLD_E><BOLD_T> took"
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
	line "#<BOLD_M><BOLD_O><BOLD_N> books!"
	done

_NewBicycleText::
	text "A shiny new"
	line "<BOLD_B><BOLD_I><BOLD_C><BOLD_Y><BOLD_C><BOLD_L><BOLD_E>!"
	done

_PushStartText::
	text "Push <BOLD_S><BOLD_T><BOLD_A><BOLD_R><BOLD_T> to"
	line "open the <BOLD_M><BOLD_E><BOLD_N><BOLD_U>!"
	done

_SaveOptionText::
	text "The <BOLD_S><BOLD_A><BOLD_V><BOLD_E> option is"
	line "on the <BOLD_M><BOLD_E><BOLD_N><BOLD_U>"
	cont "screen."
	done

_StrengthsAndWeaknessesText::
	text "All #<BOLD_M><BOLD_O><BOLD_N> types"
	line "have strong and"
	cont "weak points"
	cont "against others."
	done

_TimesUpText::
	text "<BOLD_P><BOLD_A>: Ding-dong!"

	para "Time's up!"
	prompt

_GameOverText::
	text "<BOLD_P><BOLD_A>: Your <BOLD_S><BOLD_A><BOLD_F><BOLD_A><BOLD_R><BOLD_I>"
	line "<BOLD_G><BOLD_A><BOLD_M><BOLD_E> is over!"
	done

_CinnabarGymQuizIntroText::
	text "#<BOLD_M><BOLD_O><BOLD_N> Quiz!"

	para "Get it right and"
	line "the door opens to"
	cont "the next room!"

	para "Get it wrong and"
	line "face a trainer!"

	para "If you want to"
	line "conserve your"
	cont "#<BOLD_M><BOLD_O><BOLD_N> for the"
	cont "<BOLD_G><BOLD_Y><BOLD_M> <BOLD_L><BOLD_E><BOLD_A><BOLD_D><BOLD_E><BOLD_R>..."

	para "Then get it right!"
	line "Here we go!"
	prompt

_CinnabarQuizQuestionsText1::
	text "<BOLD_C><BOLD_A><BOLD_T><BOLD_E><BOLD_R><BOLD_P><BOLD_I><BOLD_E> evolves"
	line "into <BOLD_B><BOLD_U><BOLD_T><BOLD_T><BOLD_E><BOLD_R><BOLD_F><BOLD_R><BOLD_E><BOLD_E>?"
	done

_CinnabarQuizQuestionsText2::
	text "There are 9"
	line "certified #<BOLD_M><BOLD_O><BOLD_N>"
	cont "<BOLD_L><BOLD_E><BOLD_A><BOLD_G><BOLD_U><BOLD_E> <BOLD_B><BOLD_A><BOLD_D><BOLD_G><BOLD_E>s?"
	done

_CinnabarQuizQuestionsText3::
	text "<BOLD_P><BOLD_O><BOLD_L><BOLD_I><BOLD_W><BOLD_A><BOLD_G> evolves 3"
	line "times?"
	done

_CinnabarQuizQuestionsText4::
	text "Are thunder moves"
	line "effective against"
	cont "ground element-"
	cont "type #<BOLD_M><BOLD_O><BOLD_N>?"
	done

_CinnabarQuizQuestionsText5::
	text "#<BOLD_M><BOLD_O><BOLD_N> of the"
	line "same kind and"
	cont "level are not"
	cont "identical?"
	done

_CinnabarQuizQuestionsText6::
	text "<BOLD_T><BOLD_M>28 contains"
	line "<BOLD_T><BOLD_O><BOLD_M><BOLD_B><BOLD_S><BOLD_T><BOLD_O><BOLD_N><BOLD_E><BOLD_R>?"
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
	text "#<BOLD_M><BOLD_O><BOLD_N> magazines!"

	para "#<BOLD_M><BOLD_O><BOLD_N> notebooks!"

	para "#<BOLD_M><BOLD_O><BOLD_N> graphs!"
	done

_BillsHouseMonitorText::
	text "<BOLD_T><BOLD_E><BOLD_L><BOLD_E><BOLD_P><BOLD_O><BOLD_R><BOLD_T><BOLD_E><BOLD_R> is"
	line "displayed on the"
	cont "<BOLD_P><BOLD_C> monitor."
	done

_BillsHouseInitiatedText::
	text "<PLAYER> initiated"
	line "<BOLD_T><BOLD_E><BOLD_L><BOLD_E><BOLD_P><BOLD_O><BOLD_R><BOLD_T><BOLD_E><BOLD_R>'<BOLD_s> Cell"
	cont "Separator!@"
	text_end

_BillsHousePokemonListText1::
	text "<BOLD_B><BOLD_I><BOLD_L><BOLD_L>'<BOLD_s> favorite"
	line "#<BOLD_M><BOLD_O><BOLD_N> list!"
	prompt

_BillsHousePokemonListText2::
	text "Which #<BOLD_M><BOLD_O><BOLD_N> do"
	line "you want to see?"
	done

_OakLabEmailText::
	text "There's an e-mail"
	line "message here!"

	para "..."

	para "Calling all"
	line "#<BOLD_M><BOLD_O><BOLD_N> trainers!"

	para "The elite trainers"
	line "of #<BOLD_M><BOLD_O><BOLD_N> <BOLD_L><BOLD_E><BOLD_A><BOLD_G><BOLD_U><BOLD_E>"
	cont "are ready to take"
	cont "on all comers!"

	para "Bring your best"
	line "#<BOLD_M><BOLD_O><BOLD_N> and see"
	cont "how you rate as a"
	cont "trainer!"

	para "#<BOLD_M><BOLD_O><BOLD_N> <BOLD_L><BOLD_E><BOLD_A><BOLD_G><BOLD_U><BOLD_E> <BOLD_H><BOLD_Q>"
	line "<BOLD_I><BOLD_N><BOLD_D><BOLD_I><BOLD_G><BOLD_O> <BOLD_P><BOLD_L><BOLD_A><BOLD_T><BOLD_E><BOLD_A><BOLD_U>"

	para "<BOLD_P><BOLD_S>: <BOLD_P><BOLD_R><BOLD_O><BOLD_F>.<BOLD_O><BOLD_A><BOLD_K>,"
	line "please visit us!"
	cont "..."
	done

_GameCornerCoinCaseText::
	text "A <BOLD_C><BOLD_O><BOLD_I><BOLD_N> <BOLD_C><BOLD_A><BOLD_S><BOLD_E> is"
	line "required!"
	done

_GameCornerNoCoinsText::
	text "You don't have"
	line "any coins!"
	done

_GameCornerOutOfOrderText::
	text "<BOLD_O><BOLD_U><BOLD_T> <BOLD_O><BOLD_F> <BOLD_O><BOLD_R><BOLD_D><BOLD_E><BOLD_R>"
	line "This is broken."
	done

_GameCornerOutToLunchText::
	text "<BOLD_O><BOLD_U><BOLD_T> <BOLD_T><BOLD_O> <BOLD_L><BOLD_U><BOLD_N><BOLD_C><BOLD_H>"
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
	line "on <BOLD_T><BOLD_M>s."

	para "..."

	para "There are 50 <BOLD_T><BOLD_M>s"
	line "in all."

	para "There are also 5"
	line "<BOLD_H><BOLD_M>s that can be"
	cont "used repeatedly."

	para "<BOLD_S><BOLD_I><BOLD_L><BOLD_P><BOLD_H> <BOLD_C><BOLD_O>.@"
	text_end

_TurnPageText::
	text "Turn the page?"
	done

_ViridianSchoolNotebookText5::
	text "<BOLD_G><BOLD_I><BOLD_R><BOLD_L>: Hey! Don't"
	line "look at my notes!@"
	text_end

_ViridianSchoolNotebookText1::
	text "Looked at the"
	line "notebook!"

	para "First page..."

	para "# <BOLD_B><BOLD_A><BOLD_L><BOLD_L>s are"
	line "used to catch"
	cont "#<BOLD_M><BOLD_O><BOLD_N>."

	para "Up to 6 #<BOLD_M><BOLD_O><BOLD_N>"
	line "can be carried."

	para "People who raise"
	line "and make #<BOLD_M><BOLD_O><BOLD_N>"
	cont "fight are called"
	cont "#<BOLD_M><BOLD_O><BOLD_N> trainers."
	prompt

_ViridianSchoolNotebookText2::
	text "Second page..."

	para "A healthy #<BOLD_M><BOLD_O><BOLD_N>"
	line "may be hard to"
	cont "catch, so weaken"
	cont "it first!"

	para "Poison, burns and"
	line "other damage are"
	cont "effective!"
	prompt

_ViridianSchoolNotebookText3::
	text "Third page..."

	para "#<BOLD_M><BOLD_O><BOLD_N> trainers"
	line "seek others to"
	cont "engage in #<BOLD_M><BOLD_O><BOLD_N>"
	cont "fights."

	para "Battles are"
	line "constantly fought"
	cont "at #<BOLD_M><BOLD_O><BOLD_N> <BOLD_G><BOLD_Y><BOLD_M>s."
	prompt

_ViridianSchoolNotebookText4::
	text "Fourth page..."

	para "The goal for"
	line "#<BOLD_M><BOLD_O><BOLD_N> trainers"
	cont "is to beat the "
	cont "top 8 #<BOLD_M><BOLD_O><BOLD_N>"
	cont "<BOLD_G><BOLD_Y><BOLD_M> <BOLD_L><BOLD_E><BOLD_A><BOLD_D><BOLD_E><BOLD_R>s."

	para "Do so to earn the"
	line "right to face..."

	para "The <BOLD_E><BOLD_L><BOLD_I><BOLD_T><BOLD_E> <BOLD_F><BOLD_O><BOLD_U><BOLD_R> of"
	line "#<BOLD_M><BOLD_O><BOLD_N> <BOLD_L><BOLD_E><BOLD_A><BOLD_G><BOLD_U><BOLD_E>!"
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
	text "<BOLD_F><BOLD_I><BOLD_G><BOLD_H><BOLD_T><BOLD_I><BOLD_N><BOLD_G> <BOLD_D><BOLD_O><BOLD_J><BOLD_O>"
	done

_IndigoPlateauHQText::
	text "<BOLD_I><BOLD_N><BOLD_D><BOLD_I><BOLD_G><BOLD_O> <BOLD_P><BOLD_L><BOLD_A><BOLD_T><BOLD_E><BOLD_A><BOLD_U>"
	line "#<BOLD_M><BOLD_O><BOLD_N> <BOLD_L><BOLD_E><BOLD_A><BOLD_G><BOLD_U><BOLD_E> <BOLD_H><BOLD_Q>"
	done

_RedBedroomSNESText::
	text "<PLAYER> is"
	line "playing the <BOLD_S><BOLD_N><BOLD_E><BOLD_S>!"

	para "A game with <BOLD_M><BOLD_A><BOLD_R><BOLD_I><BOLD_O>"
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
	text "<BOLD_A><BOLD_E><BOLD_R><BOLD_O><BOLD_D><BOLD_A><BOLD_C><BOLD_T><BOLD_Y><BOLD_L> Fossil"
	line "A primitive and"
	cont "rare #<BOLD_M><BOLD_O><BOLD_N>."
	done

_KabutopsFossilText::
	text "<BOLD_K><BOLD_A><BOLD_B><BOLD_U><BOLD_T><BOLD_O><BOLD_P><BOLD_S> Fossil"
	line "A primitive and"
	cont "rare #<BOLD_M><BOLD_O><BOLD_N>."
	done

_LinkCableHelpText1::
	text "<BOLD_T><BOLD_R><BOLD_A><BOLD_I><BOLD_N><BOLD_E><BOLD_R> <BOLD_T><BOLD_I><BOLD_P><BOLD_S>"

	para "Using a Game Link"
	line "Cable"
	prompt

_LinkCableHelpText2::
	text "Which heading do"
	line "you want to read?"
	done

_LinkCableInfoText1::
	text "When you have"
	line "linked your <BOLD_G><BOLD_A><BOLD_M><BOLD_E>"
	cont "<BOLD_B><BOLD_O><BOLD_Y> with another"
	cont "<BOLD_G><BOLD_A><BOLD_M><BOLD_E> <BOLD_B><BOLD_O><BOLD_Y>, talk to"
	cont "the attendant on"
	cont "the right in any"
	cont "#<BOLD_M><BOLD_O><BOLD_N> <BOLD_C><BOLD_E><BOLD_N><BOLD_T><BOLD_E><BOLD_R>."
	prompt

_LinkCableInfoText2::
	text "<BOLD_C><BOLD_O><BOLD_L><BOLD_O><BOLD_S><BOLD_S><BOLD_E><BOLD_U><BOLD_M> lets"
	line "you play against"
	cont "a friend."
	prompt

_LinkCableInfoText3::
	text "<BOLD_T><BOLD_R><BOLD_A><BOLD_D><BOLD_E> <BOLD_C><BOLD_E><BOLD_N><BOLD_T><BOLD_E><BOLD_R> is"
	line "used for trading"
	cont "#<BOLD_M><BOLD_O><BOLD_N>."
	prompt

_ViridianSchoolBlackboardText1::
	text "The blackboard"
	line "describes #<BOLD_M><BOLD_O><BOLD_N>"
	cont "<BOLD_S><BOLD_T><BOLD_A><BOLD_T><BOLD_U><BOLD_S> changes"
	cont "during battles."
	prompt

_ViridianSchoolBlackboardText2::
	text "Which heading do"
	line "you want to read?"
	done

_ViridianBlackboardSleepText::
	text "A #<BOLD_M><BOLD_O><BOLD_N> can't"
	line "attack if it's"
	cont "asleep!"

	para "#<BOLD_M><BOLD_O><BOLD_N> will stay"
	line "asleep even after"
	cont "battles."

	para "Use <BOLD_A><BOLD_W><BOLD_A><BOLD_K><BOLD_E><BOLD_N><BOLD_I><BOLD_N><BOLD_G> to"
	line "wake them up!"
	prompt

_ViridianBlackboardPoisonText::
	text "When poisoned, a"
	line "#<BOLD_M><BOLD_O><BOLD_N>'<BOLD_s> health"
	cont "steadily drops."

	para "Poison lingers"
	line "after battles."

	para "Use an <BOLD_A><BOLD_N><BOLD_T><BOLD_I><BOLD_D><BOLD_O><BOLD_T><BOLD_E>"
	line "to cure poison!"
	prompt

_ViridianBlackboardPrlzText::
	text "Paralysis could"
	line "make #<BOLD_M><BOLD_O><BOLD_N>"
	cont "moves misfire!"

	para "Paralysis remains"
	line "after battles."

	para "Use <BOLD_P><BOLD_A><BOLD_R><BOLD_L><BOLD_Y><BOLD_Z> <BOLD_H><BOLD_E><BOLD_A><BOLD_L>"
	line "for treatment!"
	prompt

_ViridianBlackboardBurnText::
	text "A burn reduces"
	line "power and speed."
	cont "It also causes"
	cont "ongoing damage."

	para "Burns remain"
	line "after battles."

	para "Use <BOLD_B><BOLD_U><BOLD_R><BOLD_N> <BOLD_H><BOLD_E><BOLD_A><BOLD_L> to"
	line "cure a burn!"
	prompt

_ViridianBlackboardFrozenText::
	text "If frozen, a"
	line "#<BOLD_M><BOLD_O><BOLD_N> becomes"
	cont "totally immobile!"

	para "It stays frozen"
	line "even after the"
	cont "battle ends."

	para "Use <BOLD_I><BOLD_C><BOLD_E> <BOLD_H><BOLD_E><BOLD_A><BOLD_L> to"
	line "thaw out #<BOLD_M><BOLD_O><BOLD_N>!"
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
	text "<BOLD_I><BOLD_N><BOLD_D><BOLD_I><BOLD_G><BOLD_O> <BOLD_P><BOLD_L><BOLD_A><BOLD_T><BOLD_E><BOLD_A><BOLD_U>"
	prompt

_IndigoPlateauStatuesText2::
	text "The ultimate goal"
	line "of trainers!"
	cont "#<BOLD_M><BOLD_O><BOLD_N> <BOLD_L><BOLD_E><BOLD_A><BOLD_G><BOLD_U><BOLD_E> <BOLD_H><BOLD_Q>"
	done

_IndigoPlateauStatuesText3::
	text "The highest"
	line "#<BOLD_M><BOLD_O><BOLD_N> authority"
	cont "#<BOLD_M><BOLD_O><BOLD_N> <BOLD_L><BOLD_E><BOLD_A><BOLD_G><BOLD_U><BOLD_E> <BOLD_H><BOLD_Q>"
	done

_PokemonBooksText::
	text "Crammed full of"
	line "#<BOLD_M><BOLD_O><BOLD_N> books!"
	done

_DiglettSculptureText::
	text "It's a sculpture"
	line "of <BOLD_D><BOLD_I><BOLD_G><BOLD_L><BOLD_E><BOLD_T><BOLD_T>."
	done

_ElevatorText::
	text "This is an"
	line "elevator."
	done

_TownMapText::
	text "A <BOLD_T><BOLD_O><BOLD_W><BOLD_N> <BOLD_M><BOLD_A><BOLD_P>.@"
	text_end

_PokemonStuffText::
	text "Wow! Tons of"
	line "#<BOLD_M><BOLD_O><BOLD_N> stuff!"
	done

_OutOfSafariBallsText::
	text "<BOLD_P><BOLD_A>: Ding-dong!"

	para "You are out of"
	line "<BOLD_S><BOLD_A><BOLD_F><BOLD_A><BOLD_R><BOLD_I> <BOLD_B><BOLD_A><BOLD_L><BOLD_L>s!"
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
	text "<BOLD_L><BOLD_E><BOLD_E><BOLD_C><BOLD_H> <BOLD_S><BOLD_E><BOLD_E><BOLD_D> saps"
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
	text "Use next #<BOLD_M><BOLD_O><BOLD_N>?"
	done

_Rival1WinText::
	text "<RIVAL>: Yeah! Am"
	line "I great or what?"
	prompt

_PlayerBlackedOutText2::
	text "<PLAYER> is out of"
	line "useable #<BOLD_M><BOLD_O><BOLD_N>!"

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
	line "change #<BOLD_M><BOLD_O><BOLD_N>?"
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
	text "No <BOLD_P><BOLD_P> left for"
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
	text "<BOLD_G><BOLD_H><BOLD_O><BOLD_S><BOLD_T>: Get out..."
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
	text "One-hit <BOLD_K><BOLD_O>!"
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
	text "The <BOLD_S><BOLD_U><BOLD_B><BOLD_S><BOLD_T><BOLD_I><BOLD_T><BOLD_U><BOLD_T><BOLD_E>"
	line "took damage for"
	cont "<TARGET>!"
	prompt

_SubstituteBrokeText::
	text "<TARGET>'s"
	line "<BOLD_S><BOLD_U><BOLD_B><BOLD_S><BOLD_T><BOLD_I><BOLD_T><BOLD_U><BOLD_T><BOLD_E> broke!"
	prompt

_BuildingRageText::
	text "<USER>'s"
	line "<BOLD_R><BOLD_A><BOLD_G><BOLD_E> is building!"
	prompt

_MirrorMoveFailedText::
	text "The <BOLD_M><BOLD_I><BOLD_R><BOLD_R><BOLD_O><BOLD_R> <BOLD_M><BOLD_O><BOLD_V><BOLD_E>"
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
	text "with <BOLD_E><BOLD_X><BOLD_P>.<BOLD_A><BOLD_L><BOLD_L>,"
	cont "@"
	text_end

_BoostedText::
	text "a boosted"
	cont "@"
	text_end

_ExpPointsText::
	text_decimal wExpAmountGained, 2, 4
	text " <BOLD_E><BOLD_X><BOLD_P>. Points!"
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
	text "<BOLD_S><BOLD_I><BOLD_L><BOLD_P><BOLD_H> <BOLD_S><BOLD_C><BOLD_O><BOLD_P><BOLD_E>"
	line "unveiled the"
	cont "<BOLD_G><BOLD_H><BOLD_O><BOLD_S><BOLD_T>'<BOLD_s> identity!"
	prompt

_GhostCantBeIDdText::
	text "Darn! The <BOLD_G><BOLD_H><BOLD_O><BOLD_S><BOLD_T>"
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
	text "<BOLD_O><BOLD_K>!@"
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
	text "Choose a #<BOLD_M><BOLD_O><BOLD_N>."
	done

_PartyMenuItemUseText::
	text "Use item on which"
	line "#<BOLD_M><BOLD_O><BOLD_N>?"
	done

_PartyMenuBattleText::
	text "Bring out which"
	line "#<BOLD_M><BOLD_O><BOLD_N>?"
	done

_PartyMenuUseTMText::
	text "Use <BOLD_T><BOLD_M> on which"
	line "#<BOLD_M><BOLD_O><BOLD_N>?"
	done

_PartyMenuSwapMonText::
	text "Move #<BOLD_M><BOLD_O><BOLD_N>"
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
	line "the <BOLD_P><BOLD_C>."
	prompt

_AccessedBillsPCText::
	text "Accessed <BOLD_B><BOLD_I><BOLD_L><BOLD_L>'<BOLD_s>"
	line "<BOLD_P><BOLD_C>."

	para "Accessed #<BOLD_M><BOLD_O><BOLD_N>"
	line "Storage System."
	prompt

_AccessedSomeonesPCText::
	text "Accessed someone's"
	line "<BOLD_P><BOLD_C>."

	para "Accessed #<BOLD_M><BOLD_O><BOLD_N>"
	line "Storage System."
	prompt

_AccessedMyPCText::
	text "Accessed my <BOLD_P><BOLD_C>."

	para "Accessed Item"
	line "Storage System."
	prompt

_TurnedOnPC2Text::
	text "<PLAYER> turned on"
	line "the <BOLD_P><BOLD_C>."
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
	line "stored via <BOLD_P><BOLD_C>."
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
	text "Accessed #<BOLD_M><BOLD_O><BOLD_N>"
	line "<BOLD_L><BOLD_E><BOLD_A><BOLD_G><BOLD_U><BOLD_E>'<BOLD_s> site."

	para "Accessed the <BOLD_H><BOLD_A><BOLD_L><BOLD_L>"
	line "<BOLD_O><BOLD_F> <BOLD_F><BOLD_A><BOLD_M><BOLD_E> List."
	prompt

_SwitchOnText::
	text "Switch on!"
	prompt

_WhatText::
	text "What?"
	done

_DepositWhichMonText::
	text "Deposit which"
	line "#<BOLD_M><BOLD_O><BOLD_N>?"
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
	line "the last #<BOLD_M><BOLD_O><BOLD_N>!"
	prompt

_BoxFullText::
	text "Oops! This Box is"
	line "full of #<BOLD_M><BOLD_O><BOLD_N>."
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
	line "no #<BOLD_M><BOLD_O><BOLD_N> here!"
	prompt

_CantTakeMonText::
	text "You can't take"
	line "any more #<BOLD_M><BOLD_O><BOLD_N>."

	para "Deposit #<BOLD_M><BOLD_O><BOLD_N>"
	line "first."
	prompt

_ReleaseWhichMonText::
	text "Release which"
	line "#<BOLD_M><BOLD_O><BOLD_N>?"
	done

_OnceReleasedText::
	text "Once released,"
	line "@"
	text_ram wStringBuffer
	text " is"
	cont "gone forever. <BOLD_O><BOLD_K>?"
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
	text "A <BOLD_C><BOLD_O><BOLD_I><BOLD_N> <BOLD_C><BOLD_A><BOLD_S><BOLD_E> is"
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
	line "#<BOLD_D><BOLD_E><BOLD_X> rated?"
	done

_ClosedOaksPCText::
	text "Closed link to"
	line "<BOLD_P><BOLD_R><BOLD_O><BOLD_F>.<BOLD_O><BOLD_A><BOLD_K>'<BOLD_s> <BOLD_P><BOLD_C>.@"
	text_end

_AccessedOaksPCText::
	text "Accessed <BOLD_P><BOLD_R><BOLD_O><BOLD_F>."
	line "<BOLD_O><BOLD_A><BOLD_K>'<BOLD_s> <BOLD_P><BOLD_C>."

	para "Accessed #<BOLD_D><BOLD_E><BOLD_X>"
	line "Rating System."
	prompt

_WhereWouldYouLikeText::
	text "Where would you"
	line "like to go?"
	done

_PleaseWaitText::
	text "<BOLD_O><BOLD_K>, please wait"
	line "just a moment."
	done

_LinkCanceledText::
	text "The link was"
	line "canceled."
	done

_OakSpeechText1::
	text "Hello there!"
	line "Welcome to the"
	cont "world of #<BOLD_M><BOLD_O><BOLD_N>!"

	para "My name is <BOLD_O><BOLD_A><BOLD_K>!"
	line "People call me"
	cont "the #<BOLD_M><BOLD_O><BOLD_N> Prof.!"
	prompt

_OakSpeechText2A::
	text "This world is"
	line "inhabited by"
	cont "creatures called"
	cont "#<BOLD_M><BOLD_O><BOLD_N>!@"
	text_end

_OakSpeechText2B::
	text_start

	para "For some people,"
	line "#<BOLD_M><BOLD_O><BOLD_N> are"
	cont "pets. Others use"
	cont "them for fights."

	para "Myself..."

	para "I study #<BOLD_M><BOLD_O><BOLD_N>"
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
	line "#<BOLD_M><BOLD_O><BOLD_N> legend is"
	cont "about to unfold!"

	para "A world of dreams"
	line "and adventures"
	cont "with #<BOLD_M><BOLD_O><BOLD_N>"
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
	text " <BOLD_E><BOLD_R><BOLD_R><BOLD_O><BOLD_R>."
	done

_ContCharText::
	text "<_CONT>@"
	text_end
