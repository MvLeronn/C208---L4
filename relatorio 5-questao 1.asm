.data

A: .word 4,6,5,8,10,-6,50,120,50,0,0
B: .word 2
C: .word 1

.text

la &t1,A
la &t2,B
la &t3,C

#1.1:
sub $t4,$t2,$t3
sw $t4,40($t1)

#1.2:
add $t4,$t1,$t3
sw $t4,980($t2)

#1.3:
sub $t4,$t2,$t1
sw $t4,$t3

