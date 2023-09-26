.text 

li $s1,1 #a
li $s2,2 #b
li $s3,3 #c
li $s4,4 #d

bne $s3,$s4,A
beq $s3,$s4,B
j exit

A: 
   add $s3,$s1,$s2
   sub $s1,$s2,$s3
   j exit
B:
   add $s2,$s1,$s3
   sub $s3,$s2,$s3
   j exit

exit: 