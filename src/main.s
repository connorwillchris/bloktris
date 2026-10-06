; compile with: cl65.exe -t none main.s -o TEST.CART
.org $C000

.segment "STARTUP"
.segment "INIT"
.segment "ONCE"
.segment "CODE"

VERA_ADDR_L = $9F20
VERA_ADDR_M = $9F21
VERA_ADDR_H = $9F22

VERA_DATA_0 = $9F23
VERA_DATA_1 = $9F24

header:
    .byte "CX16"

_start:
    jmp _start

end:
    rts
