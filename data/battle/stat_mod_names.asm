; Stats that move effects can raise or lower
; The relevant move effect IDs correspond to the stats

StatModTextStrings:
	list_start STAT_NAME_LENGTH - 1
	li "<BOLD_A><BOLD_T><BOLD_T><BOLD_A><BOLD_C><BOLD_K>"
	li "<BOLD_D><BOLD_E><BOLD_F><BOLD_E><BOLD_N><BOLD_S><BOLD_E>"
	li "<BOLD_S><BOLD_P><BOLD_E><BOLD_E><BOLD_D>"
	li "<BOLD_S><BOLD_P><BOLD_E><BOLD_C><BOLD_I><BOLD_A><BOLD_L>"
	assert_list_length SPECIAL_DOWN_SIDE_EFFECT - ATTACK_DOWN_SIDE_EFFECT + 1
	li "<BOLD_A><BOLD_C><BOLD_C><BOLD_U><BOLD_R><BOLD_A><BOLD_C><BOLD_Y>"
	li "<BOLD_E><BOLD_V><BOLD_A><BOLD_D><BOLD_E>"
	assert_list_length NUM_STAT_MODS - 2 ; two bytes are unused
	assert_list_length EVASION_UP1_EFFECT - ATTACK_UP1_EFFECT + 1
	assert_list_length EVASION_DOWN1_EFFECT - ATTACK_DOWN1_EFFECT + 1
	assert_list_length EVASION_UP2_EFFECT - ATTACK_UP2_EFFECT + 1
	assert_list_length EVASION_DOWN2_EFFECT - ATTACK_DOWN2_EFFECT + 1
