; compile with: cl65.exe -t none main.s -o TEST.CART
.org $C000

.segment "STARTUP"
.segment "INIT"
.segment "ONCE"
.segment "CODE"

SCREEN      = $FF5F
BSOUT       = $FFD2

header:
    .byte "CX16"

_start:
    jmp loop

end:
    rts
