
# Author: Luis Hernandez
# Date: Sep 05, 2018
# Description: Calculator;

.data

.text

	addiu $s0,$zero, 3 # Registro s0 se guarda con un cero
	addiu $s1,$zero, 5 # Registro s1 se guarda con un cinco
	addiu $s2,$zero, 3 # Registro s2 se guarda con un tres
	addiu $s3,$zero, 0 # Registro s3 se guarda con un cero
	
	addiu $a1,$zero, 1 
	addiu $a2,$zero, 2 
	addiu $a3,$zero, 3 
	
	beq $s0,$a1, suma
	beq $s0,$a2, resta
	beq $s0,$a3, multiplica
	
and:
	and $s3, $s1,$s2
	j exit
suma:
	add $s3, $s1,$s2
	j exit
resta:	
	sub $s3, $s1,$s2
	j exit
multiplica:
	mul $s3, $s1,$s2

exit:	
	