PrizeDifferentMenuPtrs:
	dw PrizeMenuMon1Entries, PrizeMenuMon1Cost
	dw PrizeMenuMon2Entries, PrizeMenuMon2Cost
	dw PrizeMenuTMsEntries,  PrizeMenuTMsCost

NoThanksText:
	db "NO THANKS@"

PrizeMenuMon1Entries:
	db PIKACHU
	db CLEFAIRY
	db DRATINI
	db "@"

PrizeMenuMon1Cost:
	bcd2 250
	bcd2 250
	bcd2 1500
	db "@"

PrizeMenuMon2Entries:
	db PINSIR
	db SCYTHER
	db PORYGON
	db "@"

PrizeMenuMon2Cost:
	bcd2 2500
	bcd2 2500
	bcd2 5000
	db "@"

PrizeMenuTMsEntries:
	db TM_DRAGON_RAGE
	db TM_HYPER_BEAM
	db TM_SUBSTITUTE
	db "@"

PrizeMenuTMsCost:
	bcd2 1500
	bcd2 2500
	bcd2 3500
	db "@"
