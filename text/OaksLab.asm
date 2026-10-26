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
	line "which"
	cont "#<b>MON</b> do"
	cont "you want?"
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
	cont "young"
	cont "#<b>MON</b> by"
	cont "making it"
	cont "fight!"
	done

_OaksLabOak1DeliverParcelText::
	text "<b>OAK</b>: Oh, <PLAYER>!"

	para "How is my old"
	line "#<b>MON</b>?"

	para "Well, it seems to"
	line "like you a lot."

	para "You must be"
	line "talented as a"
	cont "#<b>MON</b> trainer!"

	para "What? You have"
	line "something for me?"

	para "<PLAYER> delivered"
	line "<b>OAKs PARCEL</b>.@"
	text_end

_OaksLabOak1ParcelThanksText::
	text_start
	para "Ah! This is the"
	line "custom # <b>BALL</b>"
	cont "I ordered!"
	cont "Thank you!"
	done

_OaksLabOak1PokemonAroundTheWorldText::
	text "#<b>MON</b> around the"
	line "world wait for"
	cont "you, <PLAYER>!"
	done

_OaksLabOak1ReceivedPokeballsText::
	text "<b>OAK</b>: You can't get"
	line "detailed data on"
	cont "#<b>MON</b> by just"
	cont "seeing them."

	para "You must catch"
	line "them! Use these"
	cont "to capture wild"
	cont "#<b>MON</b>."

	para "<PLAYER> got 5"
	line "# <b>BALL</b>s!@"
	text_end

_OaksLabGivePokeballsExplanationText::
	text_start
	para "When a wild"
	line "#<b>MON</b> appears,"
	cont "it's fair game."

	para "Just throw a #"
	line "<b>BALL</b> at it and"
	cont "try to catch it!"

	para "This won't always"
	line "work, though."

	para "A healthy #<b>MON</b>"
	line "could escape. You"
	cont "have to be lucky!"
	done

_OaksLabOak1ComeSeeMeSometimesText::
	text "<b>OAK</b>: Come see me"
	line "sometimes."

	para "I want to know how"
	line "your #<b>DEX</b> is"
	cont "coming along."
	done

_OaksLabOak1HowIsYourPokedexComingText::
	text "<b>OAK</b>: Good to see "
	line "you! How is your "
	cont "#<b>DEX</b> coming? "
	cont "Here, let me take"
	cont "a look!"
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
	text "<RIVAL>: Gramps!"
	line "I'm fed up with"
	cont "waiting!"
	done

_OaksLabOakChooseMonText::
	text "<b>OAK</b>: <RIVAL>?"
	line "Let me think..."

	para "Oh, that's right,"
	line "I told you to"
	cont "come! Just wait!"

	para "Here, <PLAYER>!"

	para "There are 3"
	line "#<b>MON</b> here!"

	para "Haha!"

	para "They are inside"
	line "the # <b>BALL</b>s."

	para "When I was young,"
	line "I was a serious"
	cont "#<b>MON</b> trainer!"

	para "In my old age, I"
	line "have only 3 left,"
	cont "but you can have"
	cont "one! Choose!"
	done

_OaksLabRivalWhatAboutMeText::
	text "<RIVAL>: Hey!"
	line "Gramps! What"
	cont "about me?"
	done

_OaksLabOakBePatientText::
	text "<b>OAK</b>: Be patient!"
	line "<RIVAL>, you can"
	cont "have one too!"
	done

_OaksLabOakDontGoAwayYetText::
	text "<b>OAK</b>: Hey! Don't go"
	line "away yet!"
	done

_OaksLabRivalIllTakeThisOneText::
	text "<RIVAL>: I'll take"
	line "this one, then!"
	done

_OaksLabRivalReceivedMonText::
	text "<RIVAL> received"
	line "a @"
	text_ram wNameBuffer
	text "!@"
	text_end

_OaksLabRivalIllTakeYouOnText::
	text "<RIVAL>: Wait"
	line "<PLAYER>!"
	cont "Let's check out"
	cont "our #<b>MON</b>!"

	para "Come on, I'll take"
	line "you on!"
	done

_OaksLabRivalIPickedTheWrongPokemonText::
	text "What!?"
	line "Unbelievable!"
	cont "I picked the"
	cont "wrong #<b>MON</b>!"
	prompt

_OaksLabRivalAmIGreatOrWhatText::
	text "<RIVAL>: Yeah! Am"
	line "I great or what?"
	prompt

_OaksLabRivalSmellYouLaterText::
	text "<RIVAL>: Okay!"
	line "I'll make my"
	cont "#<b>MON</b> fight to"
	cont "toughen it up!"

	para "<PLAYER>! Gramps!"
	line "Smell you later!"
	done

_OaksLabRivalGrampsText::
	text "<RIVAL>: Gramps!"
	done

_OaksLabRivalWhatDidYouCallMeForText::
	text "<RIVAL>: What did"
	line "you call me for?"
	done

_OaksLabOakIHaveARequestText::
	text "<b>OAK</b>: Oh right! I"
	line "have a request"
	cont "of you two."
	done

_OaksLabOakMyInventionPokedexText::
	text "On the desk there"
	line "is my invention,"
	cont "#<b>DEX</b>!"

	para "It automatically"
	line "records data on"
	cont "#<b>MON</b> you've"
	cont "seen or caught!"

	para "It's a hi-tech"
	line "encyclopedia!"
	done

_OaksLabOakGotPokedexText::
	text "<b>OAK</b>: <PLAYER> and"
	line "<RIVAL>! Take"
	cont "these with you!"

	para "<PLAYER> got"
	line "#<b>DEX</b> from <b>OAK</b>!@"
	text_end

_OaksLabOakThatWasMyDreamText::
	text "To make a complete"
	line "guide on all the"
	cont "#<b>MON</b> in the"
	cont "world..."

	para "That was my dream!"

	para "But, I'm too old!"
	line "I can't do it!"

	para "So, I want you two"
	line "to fulfill my"
	cont "dream for me!"

	para "Get moving, you"
	line "two!"

	para "This is a great"
	line "undertaking in"
	cont "#<b>MON</b> history!"
	done

_OaksLabRivalLeaveItAllToMeText::
	text "<RIVAL>: Alright"
	line "Gramps! Leave it"
	cont "all to me!"

	para "<PLAYER>, I hate to"
	line "say it, but I"
	cont "don't need you!"

	para "I know! I'll"
	line "borrow a <b>TOWN MAP</b>"
	cont "from my sis!"

	para "I'll tell her not"
	line "to lend you one,"
	cont "<PLAYER>! Hahaha!"
	done

_OaksLabScientistText::
	text "I study #<b>MON</b> as"
	line "<b>PROF. OAKs AIDE</b>."
	done
