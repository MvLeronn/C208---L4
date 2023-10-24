.data

A: .word 4,6,5,8,10,-6,50,120,50,0,0
B: .word 2
C: .word 1

.text

la &t1,A
la &t2,B
la &t3,C

#2.1:
lw $t4,60($t2)
sub $t5,$t4,$t3
sw $t5,$t1

#2.2:
lw $t4,20($t1)
lw $t5,12($t3)
add $t6,$t4,$t5
sw $t6,$t3

#2.3:
lw $t4,84($t1)
sub $t5,$t2,$t4
sw $t5,$t3

