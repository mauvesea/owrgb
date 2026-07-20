GiveItem::
; Give player quantity c of item b,
; and copy the item's name to wStringBuffer.
; Return carry on success.
	ld a, b
	ld [wNamedObjectIndex], a
	ld [wCurItem], a
	ld a, c
	ld [wItemQuantity], a
	ld hl, wNumBagItems
	call AddItemToInventory
	ret nc
	call GetItemName
	call CopyToStringBuffer
	scf
	ret

GivePokemon::
; Give the player monster b at level c.
	ld a, b
	ld [wCurPartySpecies], a
	ld a, c
	ld [wCurEnemyLevel], a
	ld a, [wLevelScaling]
	cp 0
	jr z, .NoScaling
	push de
	push bc
	ld a, [wCurEnemyLevel]
	ld e, a
	ld a, [wLevelScaling]
	ld c, a
	ld a, e
.scaleLoop
	ld d, 5
.addFive
	inc a
	dec d
	jr nz, .addFive
	dec c
	jr nz, .scaleLoop
	pop bc
	pop de
	jr .FinishLevelScaling
.NoScaling
	ld a, c
.FinishLevelScaling
	ld [wCurEnemyLevel], a
	xor a ; PLAYER_PARTY_DATA
	ld [wMonDataLocation], a
	farjp _GivePokemon
