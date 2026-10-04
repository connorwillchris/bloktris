.org $080D

.segment "STARTUP"
.segment "INIT"
.segment "ONCE"
.segment "CODE"

SCREEN      = $FF5F
BSOUT       = $FFD2

main:
    lda #$03
    jsr SCREEN
    ldx #0

loop:
    lda text, x
    beq end
    jsr BSOUT
    inx
    bra loop

text:
    .literal "HELLO WORLD!", 0
end:
    rts
