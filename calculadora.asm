
# Author: Luis Hernandez
# Date: Sep 05, 2018
# Description: Calculator;

.data

.text

	addiu $s0,$zero, 3 # Registro s0 se guarda con un cero
	addiu $s1,$zero, 5 # Registro s1 se guarda con un cinco
	addiu $s2,$zero, 3 # Registro s2 se guarda con un tres
	addiu $s3,$zero, 0 # Registro s3 se guarda con un cero
	
	addiu $a1,$zero, 1 #Opción de suma
	addiu $a2,$zero, 2 #Opción de resta
	addiu $a3,$zero, 3 #Opción de multiplicacion
	
	beq $s0,$a1, suma #Si el registro 0 es 1 saltar a suma
	beq $s0,$a2, resta #Si el registro 0 es 2 saltar a resta
	beq $s0,$a3, multiplica #Si el registro 0 es 3 saltar a multiplica
	
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
	mult $s1,$s2
	mflo $s3
exit:	
	
