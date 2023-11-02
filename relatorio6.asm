.data

frase_n: .asciiz "Entre com N"

.text

# Imprimindo a frase:
li $v0,4 #serviço 4
la $a0,frase_n
syscall

# Leitura do valor digitado pelo usuario
li $v0,5
syscall
add $t1,$v0,$0

#$t1 = n
li $t2,1
li $t3,0
li $t4,1
li $t5,0

if1:
	ble $t2,$t1,qds
	j if2
if2:
	ble $t4,$t1,sdq
	j exit
sdq:
	mul $t6,$t4,$t4
	add $t5,$t5,$t6
	addi $t4,$t4,1
	j if2
qds:
	add $t3,$t3,$t2
	addi $t2,$t2,1
	j if1

exit:
	mul $s0,$t3,$t3
	#$s0 - $t5 = diferença
	sub $s1,$s0,$t5
	li $v0,1 #serviço 4
	la $a0,($s1)
	syscall
	
