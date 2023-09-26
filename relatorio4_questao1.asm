.text
li $t0, 10
li $t1, 25
li $t2, 43
li $t3, 89

# deslocamento para a direita
sra $s4,$t0,8
sra $s5,$t1,8 
sra $s6,$t2,8
sra $s7,$t3,8

# deslocamento para a esquerda
sll $s0,$t0,4 
sll $s1,$t1,4
sll $s2,$t2,4
sll $s3,$t3,4
