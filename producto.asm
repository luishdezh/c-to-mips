# Author: Luis Hernandez
# Date: Sep 05, 2018
# Description: Calculator;

.data

	Vector_1: .word 1 2 3 4 5 6 7 8 9  # Array1 in Memory
	Vector_2: .word -1 2 -3 4 -5 6 -7 8 -9  # Array2 in Memory
	
.text

	addiu $t0, $zero, 0 # i
	addiu $s0, $zero, 0 # result

loop:

	lw $t1,Vector_1($t0) # Cargar en t1 el valor del arreglor 1 en la posicion [i]
	lw $t2,Vector_2($t0) # Cargar en t2 el valor del arreglor 2 en la posicion [i]
	mult $t1, $t2 #multiplicacion que se guarda en lo
	mflo $t4 #guardar lo que hay en lo en $t4
	addi $t0, $t0, 4 # i = i + 4
	add $s0, $s0, $t4 # resultado = resultado + $t4
	slti $t4, $t0, 36 #if i < 36 jump to loop
	bne $t4, $zero, loop
	

	

