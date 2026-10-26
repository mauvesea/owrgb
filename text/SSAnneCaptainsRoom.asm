_SSAnneCaptainsRoomRubCaptainsBackText::
	text "<b>CAPTAIN</b>: Ooargh..."
	line "I feel hideous..."
	cont "Urrp! Seasick..."

	para "<PLAYER> rubbed"
	line "the <b>CAPTAIN's</b>"
	cont "back!"

	para "Rub-rub..."
	line "Rub-rub...@"
	text_end

_SSAnneCaptainsRoomCaptainIFeelMuchBetterText::
	text "<b>CAPTAIN</b>: Whew!"
	line "Thank you! I"
	cont "feel much better!"

	para "You want to see"
	line "my <b>IKEBANA</b>"
	cont "technique?"

	para "I could show you"
	line "if I wasn't ill..."

	para "I know! You can"
	line "have this!"

	para "I sense you have"
	line "what it takes"
	cont "to become an"
	cont "<b>IKEBANA</b> master"
	cont "just like me!"

	para "...But you being"
	line "a #<b>MON</b> trainer"
	cont "makes me think"
	cont "it will be more"
	cont "useful to you"
	cont "to use them to"
	cont "cut away those"
	cont "bushes you see"
	cont "everywhere..."
	prompt

_SSAnneCaptainsRoomCaptainReceivedHM01Text::
	text "<PLAYER> got the"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_SSAnneCaptainsRoomCaptainNotSickAnymoreText::
	text "<b>CAPTAIN</b>: Whew!"

	para "Now that I'm not"
	line "sick any more, I"
	cont "guess it's time."
	done

_SSAnneCaptainsRoomCaptainHM01NoRoomText::
	text "Oh no! You have"
	line "no room for this!"
	done

_SSAnneCaptainsRoomTrashText::
	text "Yuck! Shouldn't"
	line "have looked!"
	done

_SSAnneCaptainsRoomSeasickBookText::
	text "How to Conquer"
	line "Seasickness..."
	cont "The <b>CAPTAIN's</b>"
	cont "reading this!"
	done
