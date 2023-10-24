.data

a: .word 4,5

.text

la $s1,a
li $t1,0
blt $s1,5,if

lw $t2,4($s1)
addi $t1,$t2,10
j exit

if:
addi $t1,$t1,2
sw $t1,$s1
j exit

exit: