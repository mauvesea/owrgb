_OaksLabRivalGrampsIsntAroundText::
	face FACE_RIVAL_1
	text "Yo <PLAYER>!"
	para "Gramps isn't"
	line "around!"
	done

_OaksLabRivalGoAheadAndChooseText::
	face FACE_RIVAL_1
	text "Heh, I don't"
	line "need to be"
	cont "greedy like"
	cont "you!"

	para "Go ahead and"
	line "choose,"
	cont "<PLAYER>!"
	done

_OaksLabRivalMyPokemonLooksStrongerText::
	face FACE_RIVAL_1
	text "My #<b>MON</b>"
	line "looks a lot"
	cont "stronger."
	done

_OaksLabThoseArePokeBallsText::
	text "Those are #"
	line "<b>BALL</b>s. They"
	cont "contain #<b>MON</b>!"
	done

_OaksLabYouWantCharmanderText::
	face FACE_OAK_1
	keepface
	text "So! You want"
	line "the fire"
	cont "#<b>MON</b>,"
	cont "<b>CHARMANDER</b>?"
	done

_OaksLabYouWantSquirtleText::
	face FACE_OAK_1
	keepface
	text "So! You want"
	line "the water"
	cont "#<b>MON</b>,"
	cont "<b>SQUIRTLE</b>?"
	done

_OaksLabYouWantBulbasaurText::
	face FACE_OAK_1
	keepface
	text "So! You want"
	line "the plant"
	cont "#<b>MON</b>,"
	cont "<b>BULBASAUR</b>?"
	done

_OaksLabMonEnergeticText::
	face FACE_OAK_1
	text "This #<b>MON</b>"
	line "is really"
	cont "energetic!"
	prompt

_OaksLabReceivedMonText::
	clearface
	text "<PLAYER> received"
	line "a @"
	text_ram wNameBuffer
	text "!@"
	text_end

_OaksLabLastMonText::
	text "That's <b>PROF.OAK's</b>"
	line "last #<b>MON</b>!"
	done

_OaksLabOak1WhichPokemonDoYouWantText::
	face FACE_OAK_1
	text "Now, <PLAYER>,"
	line "which #<b>MON</b>"
	cont "do you want?"
	done

_OaksLabOak1YourPokemonCanFightText::
	face FACE_OAK_1
	text "If a wild"
	line "#<b>MON</b>"
	cont "appears, your"
	cont "#<b>MON</b> can"
	cont "fight against"
	cont "it!"
	done

_OaksLabOak1RaiseYourYoungPokemonText::
	face FACE_OAK_1
	text "<PLAYER>,"
	line "raise your"
	cont "young #<b>MON</b>"
	cont "by making it"
	cont "fight!"
	done

_OaksLabOak1DeliverParcelText::
	face FACE_OAK_1
	text "Oh, <PLAYER>!"

	para "How is my old"
	line "#<b>MON</b>?"

	para "Well, it"
	line "seems to like"
	cont "you a lot."

	para "You must be"
	line "talented as a"
	cont "#<b>MON</b>"
	cont "trainer!"

	para "Hm? You have"
	line "something for"
	cont "me?"

	face FACE_NONE
	para "<PLAYER> delivered"
	line "<b>OAKs PARCEL</b>.@"
	text_end

_OaksLabOak1ParcelThanksText::
	text_start
	face FACE_OAK_1
	para "Ah! This is"
	line "the custom"
	cont "# <b>BALL</b>"
	cont "I ordered!"

	para "Thank you!"
	done

_OaksLabOak1PokemonAroundTheWorldText::
	face FACE_OAK_1
	text "#<b>MON</b>"
	line "around the"
	cont "world wait"
	cont "for you,"
	cont "<PLAYER>!"
	done

_OaksLabOak1ReceivedPokeballsText::
	face FACE_OAK_1
	text "You can't get"
	line "detailed data"
	cont "on #<b>MON</b> by"
	cont "just seeing"
	cont "them."

	para "You must"
	line "catch them!"

	para "Use these to"
	line "capture wild"
	cont "#<b>MON</b>."

	face FACE_NONE
	para "<PLAYER> got 5"
	line "# <b>BALL</b>s!@"
	text_end

_OaksLabGivePokeballsExplanationText::
	text_start
	face FACE_OAK_1
	para "When a wild"
	line "#<b>MON</b>"
	cont "appears, it's"
	cont "fair game."

	para "Just throw a"
	line "# <b>BALL</b> at"
	cont "it and try to"
	cont "catch it!"

	para "This won't"
	line "always work,"
	cont "though."

	para "A healthy"
	line "#<b>MON</b>"
	cont "could escape."
	cont "You have to"
	cont "be lucky!"
	done

_OaksLabOak1ComeSeeMeSometimesText::
	face FACE_OAK_1
	text "Come see me"
	line "sometimes."

	para "I want to"
	line "know how your"
	cont "#<b>DEX</b> is"
	cont "coming along."
	done

_OaksLabOak1HowIsYourPokedexComingText::
	face FACE_OAK_1
	text "Good to see"
	line "you! How is"
	cont "your #<b>DEX</b>"
	cont "coming?"
	cont "Here, let me"
	cont "take a look!"
	prompt

_OaksLabPokedexText::
	text "It's encyclopedia-"
	line "like, but the"
	cont "pages are blank!"
	done

_OaksLabOak2Text::
	text "?"
	done

_OaksLabGirlText::
	text "<b>PROF. OAK</b> is the"
	line "authority on"
	cont "#<b>MON</b>!"

	para "Many #<b>MON</b>"
	line "trainers hold him"
	cont "in high regard!"
	done

_OaksLabRivalFedUpWithWaitingText::
	face FACE_RIVAL_1
	text "Gramps! I'm"
	line "fed up with"
	cont "waiting!"
	done

_OaksLabOakChooseMonText::
	face FACE_OAK_1
	text "<RIVAL>? Let"
	line "me think<...>"

	para "Oh, that's"
	line "right! I told"
	cont "you to come!"
	cont "Just wait!"

	para "Here,"
	line "<PLAYER>!"

	para "There are 3"
	line "#<b>MON</b> here!"

	para "Haha!"

	para "They are in-"
	line "inside the"
	cont "# <b>BALL</b>s."

	para "When I was"
	line "young, I was"
	cont "a serious"
	cont "#<b>MON</b>"
	cont "trainer!"

	para "In my old"
	line "age, I have"
	cont "only 3 left,"
	cont "but you can"
	cont "have one!"
	cont "Choose!"
	done

_OaksLabRivalWhatAboutMeText::
	face FACE_RIVAL_1
	text "Hey! Gramps!"
	line "What about"
	cont "me?"
	done

_OaksLabOakBePatientText::
	face FACE_OAK_1
	text "Be patient!"
	line "<RIVAL>, you"
	cont "can have one"
	cont "too!"
	done

_OaksLabOakDontGoAwayYetText::
	face FACE_OAK_1
	text "Hey! Don't go"
	line "away yet!"
	done

_OaksLabRivalIllTakeThisOneText::
	face FACE_RIVAL_1
	text "I'll take"
	line "this one,"
	cont "then!"
	done

_OaksLabRivalReceivedMonText::
	text "<RIVAL> received"
	line "a @"
	text_ram wNameBuffer
	text "!@"
	text_end

_OaksLabRivalIllTakeYouOnText::
	face FACE_RIVAL_1
	text "Wait <PLAYER>!"
	line "Let's check"
	cont "out our"
	cont "#<b>MON</b>!"

	para "Come on, I'll"
	line "take you on!"
	done

_OaksLabRivalIPickedTheWrongPokemonText::
	text "What!?"
	line "Unbelievable!"
	cont "I picked the"
	cont "wrong #<b>MON</b>!"
	prompt

_OaksLabRivalAmIGreatOrWhatText::
	text "Yeah! Am"
	line "I great or what?"
	prompt

_OaksLabRivalSmellYouLaterText::
	face FACE_RIVAL_1
	text "Okay! I'll"
	line "make my"
	cont "#<b>MON</b> fight"
	cont "to toughen it"
	cont "up!"

	para "<PLAYER>!"
	line "Gramps! Smell"
	cont "you later!"
	done

_OaksLabRivalGrampsText::
	face FACE_RIVAL_1
	text "Gramps!"
	done

_OaksLabRivalWhatDidYouCallMeForText::
	face FACE_RIVAL_1
	text "What did you"
	line "call me for?"
	done

_OaksLabOakIHaveARequestText::
	face FACE_OAK_1
	text "Oh right! I"
	line "have a"
	cont "request of"
	cont "you two."
	done

_OaksLabOakMyInventionPokedexText::
	face FACE_OAK_1
	text "On the desk"
	line "there is my"
	cont "invention,"
	cont "the #<b>DEX</b>!"

	para "It automatic-"
	line "ally records"
	cont "data on"
	cont "#<b>MON</b> you"
	cont "have seen or"
	cont "caught!"

	para "It's a hitech"
	line "encyclopedia!"
	done

_OaksLabOakGotPokedexText::
	face FACE_OAK_1
	text "<PLAYER> and"
	line "<RIVAL>! Take"
	cont "these with"
	cont "you!"

	face FACE_NONE
	para "<PLAYER> got"
	line "#<b>DEX</b> from <b>OAK</b>!@"
	text_end

_OaksLabOakThatWasMyDreamText::
	face FACE_OAK_1
	text "To make a"
	line "complete"
	cont "guide on all"
	cont "the #<b>MON</b>"
	cont "in the world<...>"

	para "That was my"
	line "dream!"

	para "But, I'm too"
	line "old! I can't"
	cont "do it!"

	para "So, I want"
	line "you two to"
	cont "fulfill my"
	cont "dream for me!"

	para "Get moving,"
	line "you two!"

	para "This is a"
	line "great under-"
	cont "taking in"
	cont "#<b>MON</b>"
	cont "history!"
	done

_OaksLabRivalLeaveItAllToMeText::
	face FACE_RIVAL_1
	text "Alright!"
	line "Gramps! Leave"
	cont "it all to me!"

	para "<PLAYER>, I"
	line "hate to say"
	cont "it, but I"
	cont "won't need"
	cont "your help!"

	para "I know! I'll"
	line "borrow a"
	cont "<b>TOWN MAP</b>"
	cont "from my sis!"

	para "I'll tell her"
	line "not to lend"
	cont "you one,"
	cont "<PLAYER>!"
	para "Hahaha!"
	done

_OaksLabScientistText::
	text "I study #<b>MON</b> as"
	line "<b>PROF. OAKs AIDE</b>."
	done
