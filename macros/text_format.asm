; Resolve <b>...</b> at assembly time: tags do not consume ROM bytes or name
; length. The existing font has bold A-Z, é, and s; other characters retain
; their normal glyphs. Each string must have balanced, non-nested tags.
; Result: _formatted_text (a string symbol containing ordinary charmap tokens).
MACRO _format_text
	IF STRFIND(\1, "<b>") < 0 && STRFIND(\1, "</b>") < 0
		REDEF _formatted_text EQUS \1
	ELSE
		REDEF _formatted_text EQUS ""
		REDEF _format_pos = 0
		REDEF _format_bold = 0
		REPT STRLEN(\1)
			IF _format_pos < STRLEN(\1)
				IF STRFIND(STRSLICE(\1, _format_pos), "<b>") == 0
					ASSERT !_format_bold, "Nested <b> tags are not supported"
					REDEF _format_bold = 1
					REDEF _format_pos += 3
				ELIF STRFIND(STRSLICE(\1, _format_pos), "</b>") == 0
					ASSERT _format_bold, "Closing </b> without an opening <b>"
					REDEF _format_bold = 0
					REDEF _format_pos += 4
				ELSE
					REDEF _format_char EQUS STRSLICE(\1, _format_pos, _format_pos + 1)
					IF STRCMP("{_format_char}", "<") == 0 && STRFIND(STRSLICE(\1, _format_pos), ">") >= 0
						; Preserve substitutions/control tokens such as <PLAYER>.
						REDEF _format_end = _format_pos + STRFIND(STRSLICE(\1, _format_pos), ">") + 1
						REDEF _formatted_text EQUS STRCAT("{_formatted_text}", STRSLICE(\1, _format_pos, _format_end))
						REDEF _format_pos = _format_end
					ELSE
						IF _format_bold && STRFIND("ABCDEFGHIJKLMNOPQRSTUVWXYZés", "{_format_char}") >= 0
							REDEF _formatted_text EQUS STRCAT("{_formatted_text}", "<bold:", "{_format_char}", ">")
						ELSE
							REDEF _formatted_text EQUS STRCAT("{_formatted_text}", "{_format_char}")
						ENDC
						REDEF _format_pos += 1
					ENDC
				ENDC
			ENDC
		ENDR
		ASSERT !_format_bold, "Missing </b> at the end of a string"
	ENDC
ENDM

; Use for raw text data; ordinary db remains available for unformatted bytes.
MACRO db_text
	REPT _NARG
		_format_text \1
		db "{_formatted_text}"
		SHIFT
	ENDR
ENDM
