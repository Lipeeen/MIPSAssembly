.data

mensagem:	.asciiz "Digite um numero\n"
numero: 	.word 1
quadrado: 	.word 1
		
	.text
	# imprime mensagem
main:	li $v0, 4 
	la $a0, mensagem
	syscall

	# lê inteiro
	li $v0, 5 
	syscall
			
	# grava numero na memória	
	sw $v0, numero
			
	# calcula o quadrado
	mul $t0, $v0, $v0

	# grava o quadrado
	sw $t0, quadrado
			
	# imprime inteiro
	li $v0, 1
	move $a0, $t0
	syscall

	jr $ra
	