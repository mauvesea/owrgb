_SSAnneCaptainsRoomRubCaptainsBackText::
	text "<BOLD_C><BOLD_A><BOLD_P><BOLD_T><BOLD_A><BOLD_I><BOLD_N>: Ooargh..."
	line "I feel hideous..."
	cont "Urrp! Seasick..."

	para "<PLAYER> rubbed"
	line "the <BOLD_C><BOLD_A><BOLD_P><BOLD_T><BOLD_A><BOLD_I><BOLD_N>'<BOLD_s>"
	cont "back!"

	para "Rub-rub..."
	line "Rub-rub...@"
	text_end

_SSAnneCaptainsRoomCaptainIFeelMuchBetterText::
	text "<BOLD_C><BOLD_A><BOLD_P><BOLD_T><BOLD_A><BOLD_I><BOLD_N>: Whew!"
	line "Thank you! I"
	cont "feel much better!"

	para "You want to see"
	line "my <BOLD_I><BOLD_K><BOLD_E><BOLD_B><BOLD_A><BOLD_N><BOLD_A>"
	cont "technique?"

	para "I could show you"
	line "if I wasn't ill..."

	para "I know! You can"
	line "have this!"

	para "I sense you have"
	line "what it takes"
	cont "to become an"
	cont "<BOLD_I><BOLD_K><BOLD_E><BOLD_B><BOLD_A><BOLD_N><BOLD_A> master"
	cont "just like me!"

	para "...But you being"
	line "a #<BOLD_M><BOLD_O><BOLD_N> trainer"
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
	text "<BOLD_C><BOLD_A><BOLD_P><BOLD_T><BOLD_A><BOLD_I><BOLD_N>: Whew!"

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
	cont "The <BOLD_C><BOLD_A><BOLD_P><BOLD_T><BOLD_A><BOLD_I><BOLD_N>'<BOLD_s>"
	cont "reading this!"
	done
