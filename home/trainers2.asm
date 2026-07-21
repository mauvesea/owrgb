GetTrainerInformation::
	call GetTrainerName
	ld a, [wLinkState]
	and a
	jr nz, .linkBattle
	ld a, BANK(TrainerPicAndMoneyPointers)
	call BankswitchHome
	ld a, [wTrainerClass]
	dec a
	ld hl, TrainerPicAndMoneyPointers
	ld bc, $5
	call AddNTimes
	ld de, wTrainerPicPointer
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a


	; Load base money, double it, then store it
	push hl
	ld b, OMAMORI
	call IsItemInBag
	pop hl
	jr z, .LuckyCharmNotInBag ; Lucky Charm not in Bag


	ld c, [hl]      ; Low byte
	inc hl
	ld b, [hl]      ; High byte
	inc hl

	sla c           ; BC *= 2
	rl b

	ld de, wTrainerBaseMoney
	ld a, c
	ld [de], a
	inc de
	ld a, b
	ld [de], a
	jr .LuckyCharmDone

.LuckyCharmNotInBag
	ld de, wTrainerBaseMoney
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a

.LuckyCharmDone
	jp BankswitchBack
.linkBattle
	ld hl, wTrainerPicPointer
	ld de, RedPicFront
	ld [hl], e
	inc hl
	ld [hl], d
	ret

GetTrainerName::
	farjp GetTrainerName_
