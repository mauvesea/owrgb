PrintLetterDelay::
	push hl
	push bc
	push de
	farcall PrintLetterDelay_
	pop de
	pop bc
	pop hl
	ret
