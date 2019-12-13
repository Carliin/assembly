	.data
	#Declaracao de variaveis
	um: .asciiz "Digite o primeiro numero: \n"
	dois:  .asciiz "Digite o segundo numero: \n"
	re:  .asciiz "O resultado e: "
		
	.text
main:	
	
	li 		$v0, 4 
	la 		$a0, um
	syscall

	li 		$v0, 5 
	syscall
	
	addi 	$s0, $v0, 0 

	li 		$v0, 4 
	la 		$a0, dois
	syscall

	li 		$v0, 5 
	syscall
	addi 	$s1, $v0, 0 	
	
	add 	$s2, $s0, $s1 
	
	li $v0, 4 
	la $a0, re
	syscall
	
	li $v0, 1
	la $a0, ($s2)	
	syscall	

	jr $ra
	