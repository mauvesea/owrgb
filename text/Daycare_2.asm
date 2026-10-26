_DaycareGentlemanAllRightThenText::
	text "All right then,"
	line "@"
	text_end

_DaycareGentlemanComeAgainText::
	text "come again."
	done

_DaycareGentlemanNoRoomForMonText::
	text "You have no room"
	line "for this #<b>MON</b>!"
	done

_DaycareGentlemanOnlyHaveOneMonText::
	text "You only have one"
	line "#<b>MON</b> with you."
	done

_DaycareGentlemanCantAcceptMonWithHMText::
	text "I can't accept a"
	line "#<b>MON</b> that"
	cont "knows an <b>HM</b> move."
	done

_DaycareGentlemanHeresYourMonText::
	text "Thank you! Here's"
	line "your #<b>MON</b>!"
	prompt

_DaycareGentlemanNotEnoughMoneyText::
	text "Hey, you don't"
	line "have enough ¥!"
	done
