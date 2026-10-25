_DaycareGentlemanAllRightThenText::
	text "All right then,"
	line "@"
	text_end

_DaycareGentlemanComeAgainText::
	text "come again."
	done

_DaycareGentlemanNoRoomForMonText::
	text "You have no room"
	line "for this #<BOLD_M><BOLD_O><BOLD_N>!"
	done

_DaycareGentlemanOnlyHaveOneMonText::
	text "You only have one"
	line "#<BOLD_M><BOLD_O><BOLD_N> with you."
	done

_DaycareGentlemanCantAcceptMonWithHMText::
	text "I can't accept a"
	line "#<BOLD_M><BOLD_O><BOLD_N> that"
	cont "knows an <BOLD_H><BOLD_M> move."
	done

_DaycareGentlemanHeresYourMonText::
	text "Thank you! Here's"
	line "your #<BOLD_M><BOLD_O><BOLD_N>!"
	prompt

_DaycareGentlemanNotEnoughMoneyText::
	text "Hey, you don't"
	line "have enough ¥!"
	done
