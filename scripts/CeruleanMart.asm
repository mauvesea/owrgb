CeruleanMart_Script:
	jp EnableAutoTextBoxDrawing

CeruleanMart_TextPointers:
	def_text_pointers
	dw_const CeruleanMartClerkText,        TEXT_CERULEANMART_CLERK
	dw_const CeruleanMartCooltrainerMText, TEXT_CERULEANMART_COOLTRAINER_M
	dw_const CeruleanMartCooltrainerFText, TEXT_CERULEANMART_COOLTRAINER_F
	dw_const CeruleanVendingMachineText,   TEXT_CERULEAN_VENDING_MACHINE

CeruleanVendingMachineText:
	script_vending_machine

CeruleanMartCooltrainerMText:
	text_far _CeruleanMartCooltrainerMText
	text_end

CeruleanMartCooltrainerFText:
	text_far _CeruleanMartCooltrainerFText
	text_end
