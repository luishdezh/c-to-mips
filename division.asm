# Author: Luis Hernandez
# Date: Sep 06, 2018
# Description: division;

.text

Main:
	addiu $s0,$zero, 1821
	addiu $s1,$zero, 31
	jal division
	j exit

division:
	
	slt $t0,$s0,$s1
	beq $t0,$zero, loop
	addiu $v0,$zero, 0
	jr $ra
	
loop:	

	addi $sp, $sp, -8 # decrease stack pointer
	sw $ra, 4($sp) #save return adress
	sw $s0, 0($sp) #save a
	sub $s0, $s0, $s1 
	jal division
	lw $s0, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	addi $v0,$v0,1
 	jr $ra
	
exit:


	
	
	
	