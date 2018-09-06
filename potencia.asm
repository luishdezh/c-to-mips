# Author: Luis Hernandez
# Date: Sep 06, 2018
# Description: potencia;

.data

.text

main:	
	addiu $s0, $zero, 21 # m = 6
	addiu $s1, $zero, 5 # n = 6
	jal potencia
	j exit
	
potencia:

	slti $t0, $s1, 1 #  if n > 1 jump to loop
	beq $t0, $zero, loop
	addi $v0, $zero, 1 
	jr $ra 
loop:

	addi $sp, $sp, -8 # decrease stack pointer
	sw $ra, 4($sp) #save return adress
	addi $s1, $s1, -1 #decrease n
	jal potencia
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	mul $v0, $s0, $v0
 	jr $ra
 	
exit: 
	