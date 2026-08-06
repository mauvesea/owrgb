CeladonMansion3F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, CeladonMansion3F_ScriptPointers
	ld a, [wGameFreakRoomCurScript]
	jp CallFunctionInTable

CeladonMansion3F_ScriptPointers:
	def_script_pointers
	dw_const CeladonMansion3FDefaultScript, SCRIPT_GF_ROOM_DEFAULT
	dw_const GFRoomNishidaScript,    SCRIPT_GF_ROOM_NISHIDA

CeladonMansion3FDefaultScript:
	ret

GFRoomNishidaScript:
	ld a, PIKACHU
	ld [wCurPartySpecies], a
	farcall DisplayMonFrontSpriteInBox
	xor a
	ld [wGameFreakRoomCurScript], a
	ret

CeladonMansion3F_TextPointers:
	def_text_pointers
;	dw_const CeladonMansion3FProgrammerText,     TEXT_CELADONMANSION3F_PROGRAMMER
;	dw_const CeladonMansion3FGraphicArtistText,  TEXT_CELADONMANSION3F_GRAPHIC_ARTIST
;	dw_const CeladonMansion3FWriterText,         TEXT_CELADONMANSION3F_WRITER
	dw_const CeladonMansion3FGameDesignerText,   TEXT_CELADONMANSION3F_TAJIRI

	dw_const GFRoomDeskMorimotoScript,  TEXT_GFROOM_DESK_MORIMOTO
	dw_const GFRoomDeskSugimoriScript,  TEXT_GFROOM_DESK_SUGIMORI
	dw_const GFRoomDeskMasudaScript,   TEXT_GFROOM_DESK_MASUDA
	dw_const GFRoomDeskNishidaScript,   TEXT_GFROOM_DESK_NISHIDA
	dw_const GFRoomDeskNishinoScript,   TEXT_GFROOM_DESK_NISHINO

	dw_const GFRoomPCMorimotoScript,  TEXT_GFROOM_PC_MORIMOTO
	dw_const GFRoomPCSugimoriScript,  TEXT_GFROOM_PC_SUGIMORI
	dw_const GFRoomPCMasudaScript,   TEXT_GFROOM_PC_MASUDA
	dw_const GFRoomPCNishidaScript,   TEXT_GFROOM_PC_NISHIDA
	dw_const GFRoomPCNishinoScript,   TEXT_GFROOM_PC_NISHINO



	dw_const CeladonMansion3FDevRoomSignText,    TEXT_CELADONMANSION3F_DEV_ROOM_SIGN


GFRoomPCMasudaScript:
	text_asm
	ld a, TRUE
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, GFRoomPCMasudaScript1
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .declined
	ld c, BANK(Music_TitleScreen)
	ld a, MUSIC_TITLE_SCREEN
	call PlayMusic
.declined
	jp TextScriptEnd



GFRoomPCNishidaScript:
	text_asm
;	ld a, TRUE
;	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, GFRoomPCNishidaScript1
	call PrintText
	ld a, SCRIPT_GF_ROOM_NISHIDA
	ld [wGameFreakRoomCurScript], a
	jp TextScriptEnd


GFRoomDeskMorimotoScript:
	text_asm
	ld hl, GFRoomDeskMorimotoScript1
	call PrintText
	jp TextScriptEnd

GFRoomDeskSugimoriScript:
	text_asm
	ld hl, GFRoomDeskSugimoriScript1
	call PrintText
	jp TextScriptEnd

GFRoomDeskMasudaScript:
	text_asm
	ld hl, GFRoomDeskMasudaScript1
	call PrintText
	jp TextScriptEnd

GFRoomDeskNishinoScript:
	text_asm
	ld hl, GFRoomDeskNishinoScript1
	call PrintText
	jp TextScriptEnd

GFRoomDeskNishidaScript:
	text_asm
	ld hl, GFRoomDeskNishidaScript1
	call PrintText
	jp TextScriptEnd




CeladonMansion3FGameDesignerText:
	text_asm
	ld hl, wPokedexOwned
	ld b, wPokedexOwnedEnd - wPokedexOwned
	call CountSetBits
	ld a, [wNumSetBits]
	cp NUM_POKEMON - 1 ; discount Mew
	jr nc, .completed_dex
	ld hl, .Text
	jr .done
.completed_dex
	ld hl, .CompletedDexText
.done
	call PrintText
	jp TextScriptEnd

.Text:
	text_far _CeladonMansion3FGameDesignerText
	text_end

.CompletedDexText:
	text_far _CeladonMansion3FGameDesignerCompletedDexText
	text_promptbutton
	text_asm
	callfar DisplayDiploma
	ld a, TRUE
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	jp TextScriptEnd

CeladonMansion3FDevRoomSignText:
	text_far _CeladonMansion3FDevRoomSignText
	text_end

GFRoomDeskNishinoScript1:
	text_far _GFRoomDeskNishinoScript1
	text_end

GFRoomDeskNishinoScript2:
	text_far _GFRoomDeskNishinoScript2
	text_end

GFRoomDeskNishidaScript1:
	text_far _GFRoomDeskNishidaScript1
	text_end

GFRoomDeskNishidaScript2:
	text_far _GFRoomDeskNishidaScript2
	text_end


GFRoomDeskMasudaScript1:
	text_far _GFRoomDeskMasudaScript1
	text_end

GFRoomDeskMasudaScript2:
	text_far _GFRoomDeskMasudaScript2
	text_end

GFRoomDeskSugimoriScript1:
	text_far _GFRoomDeskSugimoriScript1
	text_end

GFRoomDeskSugimoriScript2:
	text_far _GFRoomDeskSugimoriScript2
	text_end

GFRoomDeskMorimotoScript1:
	text_far _GFRoomDeskMorimotoScript1
	text_end

GFRoomDeskMorimotoScript2:
	text_far _GFRoomDeskMorimotoScript2
	text_end

GFRoomPCNishidaScript1:
	text_far _GFRoomPCNishidaScript1
	text_end

GFRoomPCMorimotoScript:
	text_far _GFRoomPCMorimotoScript
	text_end

GFRoomPCSugimoriScript:
	text_far _GFRoomPCSugimoriScript
	text_end

GFRoomPCMasudaScript1:
	text_far _GFRoomPCMasudaScript1
	text_end

GFRoomPCNishinoScript:
	text_far _GFRoomPCNishinoScript
	text_end
