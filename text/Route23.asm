_Route23YouDontHaveTheBadgeYetText::
	text "You can pass here"
	line "only if you have"
	cont "the @"
	text_ram wNameBuffer
	text "!"

	para "You don't have the"
	line "@"
	text_ram wNameBuffer
	text " yet!"

	para "You have to have"
	line "it to get to"
	cont "#<b>MON LEAGUE</b>!@"
	text_end

_Route23OhThatIsTheBadgeText::
	text "You can pass here"
	line "only if you have"
	cont "the @"
	text_ram wNameBuffer
	text "!"

	para "Oh! That is the"
	line "@"
	text_ram wNameBuffer
	text "!@"
	text_end

_Route23GoRightAheadText::
	text_start

	para "<b>OK</b> then! Please,"
	line "go right ahead!"
	done

_Route23VictoryRoadGateSignText::
	text "<b>VICTORY ROAD GATE</b>"
	line "- #<b>MON LEAGUE</b>"
	done

_Route23SignText::
	text "<b>ROUTE</b> 23"
	line "▲ #<b>MON LEAGUE</b>"
	done
