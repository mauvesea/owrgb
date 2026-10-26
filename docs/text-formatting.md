# Bold text

Wrap a word or phrase in `<b>` and `</b>`:

```asm
    text "Meet <b>MISTY</b>!"
    line "Visit the <b>BIKE SHOP</b>."
    cont "Catch #<b>MON</b>!"
```

Tags are resolved at assembly time, so they take no ROM bytes and do not
count toward text width or fixed-length names. Both overworld dialogue and
screens using the static font support the same notation.

The current font has bold **A–Z**, **é**, and **s**. Other characters retain
their normal glyphs; lowercase letters are not automatically capitalized.
Tags must be balanced within each string and cannot be nested. Existing
control tokens such as `<PLAYER>` are preserved; tags do not change the
contents of substituted names at runtime.

`text`, `line`, `next`, `para`, `cont`, `page`, `dname`, `li`, and
`ld_hli_a_string` accept the tags. For raw string data, use `db_text`:

```asm
Greeting: db_text "Hello, <b>TRAINER</b>!@"
    dname "<b>MEW</b>"
```

Keep using ordinary `db` for numeric bytes and unformatted strings.
The `<bold:...>` mappings in the character map are internal output tokens
for the formatter; authored text should use `<b>...</b>`.

# Keeping a portrait between messages

Use `keepface` after selecting a portrait:

```asm
_FirstMessage::
    face FACE_OAK_1
    keepface
    text "Hello, <PLAYER>!"
    prompt

_NextMessage::
    text "Ready to begin?"
    prompt

_FinalMessage::
    clearface
    text "Let's go!"
    done
```

`keepface` retains the current portrait, palette, and open textbox across
`PrintText` and `DisplayTextID` calls. Only the text area is cleared for the
next message. Selecting the same face again does not reload it; selecting a
different face replaces it and keeps persistence enabled.

`clearface`, `face FACE_NONE`, and `face NONE` are equivalent: they remove the
portrait, restore the full text width, and let the textbox close normally.
Without `keepface`, closing the textbox still removes the portrait as before.
`keepface` with no active portrait does nothing. End a retained conversation
explicitly on every exit path, including declined choices, before returning
to gameplay or opening another screen.
