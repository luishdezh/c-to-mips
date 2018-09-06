# Author: Luis Hernandez
# Date: Sep 06, 2018
# Description: arraysum;

.data

	Vector: .word 1 2 3 4 5 6 7 8 9 10  # Array1 in Memory

.text

	addiu $s0, $zero, 10 # i = 9
	lui $at, 0x1001 # cargar en $s1 la direccion base del arreglo
	ori $s1, $at, 0
	addiu $s2, $zero,0 #contador
	jal sum
	j exit

sum:

	bne $s0, $s2, loop #  if s0 != s2  jump to loop
	addi $v0, $zero, 0 # result = 0
	jr $ra 

loop:

	addi $sp, $sp, -4 # decrease stack pointer
	sw $ra, 0($sp) #save return address
	addi $s2, $s2, 1 # incrementar contador
	jal sum
	lw $ra, 0($sp) #load return address
	addi $sp, $sp, 4 #increase stack pointer
	lw $t1,($s1) #cargar en t1 el valor de la direccion que contenga s1
	addi $s1, $s1, 4 #aumentar en 4 s1
	add $v0, $v0, $t1 # sumar elementos
 	jr $ra
exit:

