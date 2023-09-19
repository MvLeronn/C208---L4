.data

B: .byte 0x54
A: .byte 0x45

.text

addi $t0,$0,A
addi $t1,$0,B

add $t3,$t0,$t1