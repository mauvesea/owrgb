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
	db   "<BOLD_N><BOLD_O>"
	next "<BOLD_Y><BOLD_E><BOLD_S>@"

.YesNoMenu:
	db   "<BOLD_Y><BOLD_E><BOLD_S>"
	next "<BOLD_N><BOLD_O>@"

.NorthWestMenu:
	db   "<BOLD_N><BOLD_O><BOLD_R><BOLD_T><BOLD_H>"
	next "<BOLD_W><BOLD_E><BOLD_S><BOLD_T>@"

.SouthEastMenu:
	db   "<BOLD_S><BOLD_O><BOLD_U><BOLD_T><BOLD_H>"
	next "<BOLD_E><BOLD_A><BOLD_S><BOLD_T>@"

.NorthEastMenu:
	db   "<BOLD_N><BOLD_O><BOLD_R><BOLD_T><BOLD_H>"
	next "<BOLD_E><BOLD_A><BOLD_S><BOLD_T>@"

.TradeCancelMenu:
	db   "<BOLD_T><BOLD_R><BOLD_A><BOLD_D><BOLD_E>"
	next "<BOLD_C><BOLD_A><BOLD_N><BOLD_C><BOLD_E><BOLD_L>@"

.HealCancelMenu:
	db   "<BOLD_H><BOLD_E><BOLD_A><BOLD_L>"
	next "<BOLD_C><BOLD_A><BOLD_N><BOLD_C><BOLD_E><BOLD_L>@"
