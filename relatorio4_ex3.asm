.text 

li $s1,1 #a
li $s2,2 #b
li $s3,3 #c
li $s4,4 #d

bgt $s1,$s2,A
ble $s1,$s2,B
j exit

A: 
   sub $s3,$s1,$s2
   add $s1,$s2,$s3
   j exit
B:
   sub $s2,$s1,$s3
   add $s3,$s2,$s3
   j exit

exit: 