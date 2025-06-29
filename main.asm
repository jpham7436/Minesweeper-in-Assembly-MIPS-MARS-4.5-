.data
	userInput: .space 1
	
	introMessage: .asciiz "Welcome to Minesweeper! Please enter w, a, s, or d to naviage the minefield. Click space to select a tile: "
	
	invalidInputMessage: .asciiz "\nThat input is invalid! Please enter w, a, s, or d to naviage the minefield or click space to select a tile: "
	
	invalidDirectionMessage: .asciiz "\nThat direction is invalid (out of bounds)! Please enter a different direction: "
	
	currentCoords:		.word 0
				.word 0
	
	differentColors:	.word 0x0000FF
				.word 0x008000
				.word 0xFF0000
				.word 0x000080
				.word 0x800000
				.word 0x008080
				.word 0x800080
				.word 0x808080
				.word 0xA9A9A9 # Selection Box Color: position 32
				.word 0x000000 # Clear Selection Color: position 36
				
	loadBombBoxCoords:	.word 0
	
	
	loadSelectionBoxCoords: .word 0
				.word 1
				.word 2
				.word 3
				.word 4
				.word 5
				.word 6
				.word 6
				.word 6
				.word 6
				.word 6
				.word 6
				.word 6
				.word 5
				.word 4
				.word 3
				.word 2
				.word 1
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0 # End of selection box x coords
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 1
				.word 2
				.word 3
				.word 4
				.word 5
				.word 6
				.word 6
				.word 6
				.word 6
				.word 6
				.word 6
				.word 6
				.word 5
				.word 4
				.word 3
				.word 2
				.word 1 # End of selection box y coords
	
	
	
	loadingLimits: 	.word 0   	# 0 = 8 * 0 (1 coordinates start here)
			.word 44	# 4
			.word 88	# 8 = 8 * 1 (2 coordinates start here)
			.word 144	# 12
			.word 200	# 16 = 8 * 2 (3 coordinates start here)
			.word 256	# 20 
			.word 312	# 24 = 8 * 3 (4 coordinates start here)
			.word 360	# 28
			.word 408	# 32 = 8 * 4 (5 coordinates start here)
			.word 468	# 36
			.word 528	# 40 = 8 * 5 (6 coordinates start here)
			.word 580	# 44
			.word 632	# 48 = 8 * 6 (7 coordinates start here)
			.word 668 	# 52
			.word 704 	# 56 = 8 * 7 (8 coordinates start here)
			.word 756	# 60
			.word 808	# 64 (End of 8 coordinates)
			
			
			
	loadingSizes: 	.word 44	# 1
			.word 56	# 2
			.word 56	# 3
			.word 48	# 4
			.word 60 	# 5
			.word 52	# 6
			.word 36 	# 7
			.word 52	# 8
	
	
	
	loadNumberCoordinates:   
		.word 1
		.word 2
		.word 3
		.word 3
		.word 3
		.word 3
		.word 3
		.word 1
		.word 2
		.word 4
		.word 5 # End of 1's xcoord
		.word 2
		.word 2
		.word 1
		.word 2
		.word 3
		.word 4
		.word 5
		.word 5
		.word 5
		.word 5
		.word 5 # End of 1's ycoord
		.word 1
		.word 2
		.word 3
		.word 4
		.word 5
		.word 4
		.word 3
		.word 2
		.word 1
		.word 1
		.word 2
		.word 3
		.word 4
		.word 5 # End of 2's x coord
		.word 1
		.word 1
		.word 1
		.word 1
		.word 2
		.word 3
		.word 3
		.word 3
		.word 4
		.word 5
		.word 5
		.word 5
		.word 5
		.word 5 # End of 2's y coord
		.word 1
		.word 2
		.word 3
		.word 4
		.word 5
		.word 4
		.word 3
		.word 2
		.word 1
		.word 5
		.word 4
		.word 3
		.word 2
		.word 1 # End of 3's x coord
		.word 1
		.word 1
		.word 1
		.word 1
		.word 2
		.word 3
		.word 3
		.word 3
		.word 3
		.word 4
		.word 5
		.word 5
		.word 5
		.word 5 # End of 3's y coord
		.word 1
		.word 1
		.word 1
		.word 1
		.word 2
		.word 3
		.word 4
		.word 5
		.word 4
		.word 4
		.word 4
		.word 4 # End of 4's x coord
		.word 1
		.word 2
		.word 3
		.word 4
		.word 4
		.word 4
		.word 4
		.word 4
		.word 1
		.word 2
		.word 3
		.word 5 # End of 4's y coord
		.word 5
		.word 4
		.word 3
		.word 2
		.word 1
		.word 1
		.word 1
		.word 2
		.word 3
		.word 4
		.word 5
		.word 4
		.word 3
		.word 2
		.word 1 # End of 5's x coord
		.word 1
		.word 1
		.word 1
		.word 1
		.word 1
		.word 2
		.word 3
		.word 3
		.word 3
		.word 3
		.word 4
		.word 5
		.word 5
		.word 5
		.word 5 # End of 5's y coord
		.word 4
		.word 3
		.word 2
		.word 1
		.word 1
		.word 1
		.word 2
		.word 3
		.word 4
		.word 5
		.word 4
		.word 3
		.word 2 # End of 6's x coord
		.word 1
		.word 1
		.word 1
		.word 2
		.word 3
		.word 4
		.word 5
		.word 5
		.word 5
		.word 4
		.word 3
		.word 3
		.word 3 # End of 6's y coord
		.word 1
		.word 2
		.word 3
		.word 4
		.word 5
		.word 5
		.word 4
		.word 3
		.word 3 # End of 7's x coord
		.word 1
		.word 1
		.word 1
		.word 1
		.word 1
		.word 2
		.word 3
		.word 4
		.word 5 # End of 7's y coord
		.word 1
		.word 2
		.word 3
		.word 4
		.word 5
		.word 4
		.word 3
		.word 2
		.word 1
		.word 2
		.word 3
		.word 4
		.word 5 # End of 8's x coord
		.word 2
		.word 1
		.word 1
		.word 1
		.word 2
		.word 3
		.word 3
		.word 3
		.word 4
		.word 5
		.word 5
		.word 5
		.word 4 # End of 8's y coord
		
		
		
.text
	main:
	
	
	# Initial display setup
	
	li $v0, 4
	la $a0, introMessage
	syscall
	
	li $a0, 0
	li $a1, 0
	li $a2, 1
	jal MakeNumber
	
	li $a0, 7
	li $a1, 0
	li $a2, 2
	jal MakeNumber
	
	li $a0, 14
	li $a1, 0
	li $a2, 3
	jal MakeNumber
	
	li $a0, 0
	li $a1, 7
	li $a2, 4
	jal MakeNumber
	
	li $a0, 7
	li $a1, 7
	li $a2, 5
	jal MakeNumber
	
	li $a0, 14
	li $a1, 7
	li $a2, 6
	jal MakeNumber
	
	li $a0, 0
	li $a1, 14
	li $a2, 7
	jal MakeNumber
	
	li $a0, 7
	li $a1, 14
	li $a2, 8
	jal MakeNumber
	
	li $a0, 14
	li $a1, 14
	li $a2, 8
	jal MakeNumber
	
	lw $a0, currentCoords
	lw $a1, currentCoords + 4
	jal DisplaySelection	
	
	
	# UserInput Loop
	li $t9, 0 # $t9 remains 0 as long as the game is running. If win, $t9 = 1, if lose, $t9 = 2
	li $s0, 0 # This is what $t9 will be compared to using bne
	
	WhileGame: bne $t9, $s0, EndGame
	
	li $v0, 8
	la $a0, userInput
	li $a1, 2
	syscall
	li $s2, 0	# Shows that UserInput hasn't been validated yet.
	
	jal ValidateUserInputAndDirection	# Will update SelectionBox or set $s2 = 1 if user inputs a space.
	#jal GameStateChange
	j WhileGame
	
	
	EndGame:
	li $v0, 10
	syscall
	
	
	
# This function ensures that the user enters either w, a, s, d, or space. It also changes $s1 depending on whether or not they enter a movement or space command.
# If the user enters w/a/s/d, then it will validate the direction and change accordingly. If the user enters a space, then it will set $s2 = 1.
	ValidateUserInputAndDirection:
		lb $s1, userInput
		li $t0, 119	# ASCII for w
		li $t1, 97 	# ASCII for a
		li $t2, 115	# ASCII for s
		li $t3, 100	# ASCII for d
		li $t4, 32	# ASCII for space
	
		Ifw: bne $s1, $t0, Elsea
			lw $a0, currentCoords
			lw $a1, currentCoords + 4
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal ClearSelection
			lw $ra, 0($sp)
			addi $sp, $sp, 4
		
			subi $a1, $a1, 7
		
			IfNotValidw: bge $a1, $zero, ElseValidw 
			
				addi $sp, $sp, -4
				sw $a0, 0($sp)
			
				li $v0, 4
				la $a0, invalidDirectionMessage
				syscall
				
				lw $a0, 0($sp)
				addi $sp, $sp, 4
			
				addi $a1, $a1, 7
				
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal DisplaySelection
				lw $ra, 0($sp)
				addi $sp, $sp, 4
				
				j AfterValidw
			
			ElseValidw:
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal DisplaySelection
				lw $ra, 0($sp)
				addi $sp, $sp, 4
				
				sw $a0, currentCoords
				sw $a1, currentCoords + 4
			
			AfterValidw:
		j EndValidateUserInput
		
		
		Elsea: bne $s1, $t1, Elses
			lw $a0, currentCoords
			lw $a1, currentCoords + 4
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal ClearSelection
			lw $ra, 0($sp)
			addi $sp, $sp, 4
		
			subi $a0, $a0, 7
		
			IfNotValida: bge $a0, $zero, ElseValida
			
				addi $sp, $sp, -4
				sw $a0, 0($sp)
			
				li $v0, 4
				la $a0, invalidDirectionMessage
				syscall
				
				lw $a0, 0($sp)
				addi $sp, $sp, 4
			
				addi $a0, $a0, 7
				
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal DisplaySelection
				lw $ra, 0($sp)
				addi $sp, $sp, 4
				
				j AfterValida
			
			ElseValida:
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal DisplaySelection
				lw $ra, 0($sp)
				addi $sp, $sp, 4
				
				sw $a0, currentCoords
				sw $a1, currentCoords + 4
			
			AfterValida:
		j EndValidateUserInput
		
		
		Elses: 	bne $s1, $t2, Elsed
			lw $a0, currentCoords
			lw $a1, currentCoords + 4
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal ClearSelection
			lw $ra, 0($sp)
			addi $sp, $sp, 4
		
			addi $a1, $a1, 7
			li $t2, 21
		
			IfNotValids: ble $a1, $t2, ElseValids 
			
				addi $sp, $sp, -4
				sw $a0, 0($sp)
			
				li $v0, 4
				la $a0, invalidDirectionMessage
				syscall
				
				lw $a0, 0($sp)
				addi $sp, $sp, 4
			
				subi $a1, $a1, 7
				
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal DisplaySelection
				lw $ra, 0($sp)
				addi $sp, $sp, 4
				
				j AfterValids
			
			ElseValids:
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal DisplaySelection
				lw $ra, 0($sp)
				addi $sp, $sp, 4
				
				sw $a0, currentCoords
				sw $a1, currentCoords + 4
			
			AfterValids:
		j EndValidateUserInput
		
		
		Elsed: bne $s1, $t3, ElseSpace
			lw $a0, currentCoords
			lw $a1, currentCoords + 4
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal ClearSelection
			lw $ra, 0($sp)
			addi $sp, $sp, 4
		
			addi $a0, $a0, 7
			li $t3, 56
		
			IfNotValidd: ble $a0, $t3, ElseValidd
			
				addi $sp, $sp, -4
				sw $a0, 0($sp)
			
				li $v0, 4
				la $a0, invalidDirectionMessage
				syscall
				
				lw $a0, 0($sp)
				addi $sp, $sp, 4
			
				subi $a0, $a0, 7
				
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal DisplaySelection
				lw $ra, 0($sp)
				addi $sp, $sp, 4
				
				j AfterValidd
			
			ElseValidd:
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal DisplaySelection
				lw $ra, 0($sp)
				addi $sp, $sp, 4
				
				sw $a0, currentCoords
				sw $a1, currentCoords + 4
			
			AfterValidd:
		j EndValidateUserInput
		
		
		ElseSpace: bne $s1, $t4, EndValidationIfElse
		li $s1, 1
		j EndValidateUserInput
		
		
		EndValidationIfElse:
		li $v0, 4
		la $a0, invalidInputMessage
		syscall
		
		EndValidateUserInput:
	jr $ra
	
	
	
# This function is activated if the user enters a space. This will be coded later on, but essentially controls what happens when the user enters space.
	#	GameStateChange:
	#	if $s2 = 2
	#	code rest of game
	#	jr $ra
	
	
# This function clears the previous selection. Since clear selection changes the same coordiantes as DispalySelection, I can use the same variable 
# (loadSelectionBoxCoords). All I need to do is change the color.
	ClearSelection:
		lw $v1, differentColors + 36	# Selects black color
		li $t4, 0	# Sets up for loop, w = 0
		li $t5, 96	# Sets up for loop, z = 96
	
		WhileClearSelect: bge $t4, $t5, EndClearSelect	# for(w = 0, w < z, w + 4)
	
		lw $t0, loadSelectionBoxCoords + 0($t4)		# Loads x coord from array
		lw $t1, loadSelectionBoxCoords + 96($t4)	# Loads y cord from array
		add $t0, $t0, $a0		# Adds larger grid x offset (from $a0)
		add $t1, $t1, $a1		# Adds larger grid y offest (from $a1)
	
		addi $sp, $sp, -4		# Stack maintaince to call CalculateAddress
		sw $ra, 0($sp)
		jal CalculateBitmapAddress
		lw $ra, 0($sp)
		addi $sp, $sp, 4		# Stack maintaince to call CalculateAddress
	
		sw $v1, 0($v0)			# Draw the dot
	
	
		addi $t4, $t4, 4 		# For loop increment (w + 4)
		j WhileClearSelect
		EndClearSelect:
	jr $ra
	
	
	
# This function displays the selection box at the given coordinates in $a0 and $a1. 	
	DisplaySelection:
		lw $v1, differentColors + 32
		li $t4, 0	# Sets up for loop, w = 0
		li $t5, 96	# Sets up for loop, z = 96
	
		WhileSelect: bge $t4, $t5, EndSelect	# for(w = 0, w < z, w + 4)
	
		lw $t0, loadSelectionBoxCoords + 0($t4)		# Loads x coord from array
		lw $t1, loadSelectionBoxCoords + 96($t4)		# Loads y cord from array
		add $t0, $t0, $a0		# Adds larger grid x offset (from $a0)
		add $t1, $t1, $a1		# Adds larger grid y offest (from $a1)
	
		addi $sp, $sp, -4		# Stack maintaince to call CalculateAddress
		sw $ra, 0($sp)
		jal CalculateBitmapAddress
		lw $ra, 0($sp)
		addi $sp, $sp, 4		# Stack maintaince to call CalculateAddress
	
		sw $v1, 0($v0)			# Draw the dot
	
	
		addi $t4, $t4, 4 		# For loop increment (w + 4)
		j WhileSelect
		EndSelect:
	jr $ra
	
	
	
# Prints any number as specified by the coordinates in $a0 (x) and $a1 (y). The specified number goes in $a2.
	# This functions uses $a0, $a1, and $a2 as ARGUMENTS
	# This function uses $t2 (calls CalculateAddress), $t3 (calls CalculateAddress), $t4, $t5, $t7, and $t8 to carry out arithmatic
	# This function DOESN'T RETURN
	MakeNumber:
	
		subi $a2, $a2, 1
		move $t7, $a2
		mul $a2, $a2, 8
		mul $t7, $t7, 4
	
		lw $t4, loadingLimits + 0($a2)
		lw $t5, loadingLimits + 4($a2)
		lw $t7, loadingSizes + 0($t7)
	
		addi $sp, $sp, -4		# Stack maintaince to call GetColor
		sw $ra, 0($sp)
		jal GetColor
		lw $ra, 0($sp)
		addi $sp, $sp, 4		# Stack maintaince to call GetColor
	
	
	
		While1: bge $t4, $t5, End1	# for(w = 0, w < z, w + 4)
	
	
		lw $t0, loadNumberCoordinates + 0($t4)		# Loads x coord from array 
		add $t8, $t4, $t7
		lw $t1, loadNumberCoordinates + 0($t8)		# Loads y cord from array
		add $t0, $t0, $a0		# Adds larger grid x offset (from $t0)
		add $t1, $t1, $a1		# Adds larger grid y offest (from $t1)
	
		addi $sp, $sp, -4		# Stack maintaince to call CalculateAddress
		sw $ra, 0($sp)
		jal CalculateBitmapAddress
		lw $ra, 0($sp)
		addi $sp, $sp, 4		# Stack maintaince to call CalculateAddress
	
		sw $v1, 0($v0)			# Draw the dot
	
	
		addi $t4, $t4, 4 		# For loop increment (w + 4)
		j While1
		End1:
	
	jr $ra
		
	
	
# Takes coordinates and calculates addresses for bitmap. Coordinates in $t0 (x) and $t1 (y) 
	# This function uses $t0 and $t1 as ARGUMENTS
	# This functions uses $t2 and $t3 to carryout arithmatic
	# This function uses $v0 as RETURN 
	
	# Formula: Pixel Address = Base Address + 4x + 4y * 64
	# Dimensions of BitMap: 8 unit height/width, 512 display width, 256 display height, and 0x10040000 (heap) for base address
	CalculateBitmapAddress:
		li $v0, 0x10040000	# Base address
		sll $t2, $t0, 2		# 4 * x = x (2^2)
		sll $t3, $t1, 8		# 4y * 64 = 256 * y = y * (2^8)
		add $v0, $v0, $t2	# Base address + 4x
		add $v0, $v0, $t3	# (Base address + 4x) + 4y * 64
	jr $ra
	
	
	
# Takes in the number to be printed (in %a2) and gets the corresponding color
	# This function uses $a2 as ARUGUMENTS
	# This function uses $v1 as RETURN
	GetColor:
		srl $a2, $a2, 1
		lw $v1, differentColors + 0($a2)
	jr $ra
		
