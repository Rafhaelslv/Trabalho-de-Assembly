.data
	msg:.asciiz"A soma é:"
.text
main:
	li $t1, 1
	li $t2, 1
se:

	addi $t4, $t4, 1

	add $t3, $t1, $t2

	add $t1, $t2, 0
	add $t2, $t3, 0

	add $t5, $t5, $t3
	
	blt $t4, 8, se
	j senao

senao:
	add $t5, $t5, 2

	li $v0, 4
	la $a0, msg
	syscall

	li $v0, 1
	add $a0, $t5, 0
	syscall

	


	