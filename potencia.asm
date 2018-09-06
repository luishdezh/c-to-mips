# Author: Luis Hernandez
# Date: Sep 06, 2018
# Description: potencia;

.data

.text

main:	
	addiu $s0, $zero, 6 # m = 6
	addiu $s1, $zero, 6 # n = 6
	jal potencia
	j exit
	
potencia:

	slti $t0, $s1, 1 #  if n > 1 jump to loop
	beq $t0, $zero, loop
	addi $v0, $zero, 1 # result = 1
	jr $ra 
loop:

	addi $sp, $sp, -4 # decrease stack pointer
	sw $ra, 0($sp) #save return address
	addi $s1, $s1, -1 #decrease n
	jal potencia
	lw $ra, 0($sp) #load return address
	addi $sp, $sp, 4 #increase stack pointer
	mult $v0, $s0 # result = result x m
	mflo $v0
 	jr $ra
 	
exit: 
	
