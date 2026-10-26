MACRO two_option_menu
	db \1, \2, \3
	dw \4
ENDM

TwoOptionMenuStrings:
; entries correspond to *_MENU constants
	table_width 5
	; width, height, blank line before first menu item?, text pointer
	two_option_menu 4, 3, FALSE, .YesNoMenu
	two_option_menu 6, 3, FALSE, .NorthWestMenu
	two_option_menu 6, 3, FALSE, .SouthEastMenu
	two_option_menu 6, 3, FALSE, .YesNoMenu
	two_option_menu 6, 3, FALSE, .NorthEastMenu
	two_option_menu 7, 3, FALSE, .TradeCancelMenu
	two_option_menu 7, 4, TRUE,  .HealCancelMenu
	two_option_menu 4, 3, FALSE, .NoYesMenu
	assert_table_length NUM_TWO_OPTION_MENUS

.NoYesMenu:
	db_text   "<b>NO</b>"
	next "<b>YES</b>@"

.YesNoMenu:
	db_text   "<b>YES</b>"
	next "<b>NO</b>@"

.NorthWestMenu:
	db_text   "<b>NORTH</b>"
	next "<b>WEST</b>@"

.SouthEastMenu:
	db_text   "<b>SOUTH</b>"
	next "<b>EAST</b>@"

.NorthEastMenu:
	db_text   "<b>NORTH</b>"
	next "<b>EAST</b>@"

.TradeCancelMenu:
	db_text   "<b>TRADE</b>"
	next "<b>CANCEL</b>@"

.HealCancelMenu:
	db_text   "<b>HEAL</b>"
	next "<b>CANCEL</b>@"
