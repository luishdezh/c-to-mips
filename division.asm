# Author: Luis Hernandez
# Date: Sep 06, 2018
# Description: division;

.text

Main:
	addiu $s0,$zero, 10 # a = 10
	addiu $s1,$zero, 4 # b = 4
	jal division
	j exit

division:
	
	slt $t0,$s0,$s1 # if a > b jump to loop
	beq $t0,$zero, loop
	addiu $v0,$zero, 0 # result = 0
	jr $ra
	
loop:	

	addi $sp, $sp, -4 # decrease stack pointer
	sw $ra, 0($sp) #save return address
	sub $s0, $s0, $s1 #a = a-b
	jal division
	lw $ra, 0($sp) #load return address
	addi $sp, $sp, 4 #increase stack pointer
	addi $v0,$v0,1 #result = result + 1
 	jr $ra
	
exit:	