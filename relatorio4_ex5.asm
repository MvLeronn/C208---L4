.text

   li $t0, 10 #i
   li $t2, 0 #cont

   WHILE: bgt $t0,0, loop #$t0 <= 2
   j exit
   loop:
      addi $t2,$t2,5
      subi $t0,$t0,2
      j WHILE
      
   exit:
   
   