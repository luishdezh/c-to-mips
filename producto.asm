# Author: Luis Hernandez
# Date: Sep 05, 2018
# Description: Calculator;

.data

	Vector_1: .word 1 2 3 4 5 6 7 8 9  # Array1 in Memory
	Vector_2: .word -1 2 -3 4 -5 6 -7 8 -9  # Array2 in Memory
	
.text

	addiu $t0, $zero, 0
	addiu $s0, $zero, 0

	la $s1, Vector_1 # Loading an address
	
	la $s2, Vector_2  # Loading an address

producto:
	

	

