.data
idade: .byte 0x00

.text
li $v0,5
syscall
move $t0,$v0
add $t0,$t0,30
li $v0,1
move $a0,$t0
syscall
