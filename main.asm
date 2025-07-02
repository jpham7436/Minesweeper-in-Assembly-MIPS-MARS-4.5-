.data


# In the grid, there will be various numbers that represent various statuses.
#	- 0: Unloaded
#	- 1-8: Number tile hidden
#	- 9: Bomb hidden
#	- 10: First Click Blank
#	- 11-18: Number tile revealed
#	- 19: Bomb revealed (game ends)
#	- 20: Blank space revealed



	userInput: .space 1
	
	grid: 	.word 0,0,0,0,0,0,0,0			# NOTE: This grid will be row-based when referred to - grid[0][0] first # = row, second # = col
		.word 0,0,0,0,0,0,0,0			# NOTE2: Calculating the address however is coded to store x coord in $a0 and y coord in $a1
		.word 0,0,0,0,0,0,0,0			# NOTE3: This is to match the Bitmap Address Calculation, where x coord = $a0 and y coord = $a1
		.word 0,0,0,0,0,0,0,0
	
	introMessage: .asciiz "Welcome to Minesweeper! Please enter w, a, s, or d to naviage the minefield. Click space to select a tile: "
	
	invalidInputMessage: .asciiz "\nThat input is invalid! Please enter w, a, s, or d to naviage the minefield or click space to select a tile: "
	
	invalidDirectionMessage: .asciiz "\nThat direction is invalid (out of bounds)! Please enter a different direction: "
	
	loseGameMessage: .asciiz "\nGame Over! You selected a bomb!"
	
	winGameMessage: .asciiz "\nCongratulations! You beat Minesweeper!"
	
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
				.word 0x555555 # Bomb Color: position 40
				
	loadLineCoords:		.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0 # End of load line x coords
				.word 0
				.word 1
				.word 2
				.word 3
				.word 4
				.word 5
				.word 6
				.word 7
				.word 8
				.word 9
				.word 10
				.word 11
				.word 12
				.word 13
				.word 14
				.word 15
				.word 16
				.word 17
				.word 18
				.word 19
				.word 20
				.word 21
				.word 22
				.word 23
				.word 24
				.word 25
				.word 26
				.word 27 # End of load line y coords
				
		
	loadLineCoordsX:	.word 0
				.word 1
				.word 2
				.word 3
				.word 4
				.word 5
				.word 6
				.word 7
				.word 8
				.word 9
				.word 10
				.word 11
				.word 12
				.word 13
				.word 14
				.word 15
				.word 16
				.word 17
				.word 18
				.word 19
				.word 20
				.word 21
				.word 22
				.word 23
				.word 24
				.word 25
				.word 26
				.word 27
				.word 28
				.word 29
				.word 30
				.word 31
				.word 32
				.word 33
				.word 34
				.word 35
				.word 36
				.word 37
				.word 38
				.word 39
				.word 40
				.word 41
				.word 42
				.word 43
				.word 44
				.word 45
				.word 46
				.word 47
				.word 48
				.word 49
				.word 50
				.word 51
				.word 52
				.word 53
				.word 54
				.word 55 
				.word 56 # End of line coords x direction x coords
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0
				.word 0 
				.word 0 # End of x direcion line y coords
				
				
				
				
	loadRevealedBlank: 	.word 1
				.word 2
				.word 3
				.word 4
				.word 5
				.word 1
				.word 2
				.word 3
				.word 4
				.word 5
				.word 1
				.word 2
				.word 3
				.word 4
				.word 5
				.word 1
				.word 2
				.word 3
				.word 4
				.word 5
				.word 1
				.word 2
				.word 3
				.word 4
				.word 5		# End of revealed blank x coords
				.word 1
				.word 1
				.word 1
				.word 1
				.word 1
				.word 2
				.word 2
				.word 2
				.word 2
				.word 2
				.word 3
				.word 3
				.word 3
				.word 3
				.word 3
				.word 4
				.word 4
				.word 4
				.word 4
				.word 4
				.word 5
				.word 5
				.word 5
				.word 5
				.word 5			# End of revealed blank y coords
							
	
	
	loadBombCoords:		.word 3
				.word 4
				.word 5
				.word 4
				.word 3
				.word 2
				.word 1
				.word 2
				.word 3
				.word 4
				.word 3
				.word 2
				.word 3 # End of Bomb x coords
				.word 1
				.word 2
				.word 3
				.word 4
				.word 5
				.word 4
				.word 3
				.word 2
				.word 2
				.word 3
				.word 4
				.word 3
				.word 3 # End of Bomb y coords
	
	
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
	lw $a0, currentCoords
	lw $a1, currentCoords + 4
	jal DisplaySelection	
	
	li $v0, 4
	la $a0, introMessage
	syscall
	
	# UserInput Loop
	li $t9, 0 # $t9 remains 0 as long as the game is running. If win, $t9 = 1, if lose, $t9 = 2
	li $s3, 0 # This tells us that the user has not made their first selection yet. Once they make their first selection, this will change to 1.
	li $a3, 32 # This holds the total amount of tiles generated. The first click reduces this by 1, each bomb generated reduces this by 1, and every click after reduces this by 1
			# WIN CONDITION: $a3 = 0.
	
	li $a0, 56
	li $a1, 0
	jal DrawLineY
	
	li $a0, 0
	li $a1, 28
	jal DrawLineX
	
	WhileGame: bne $t9, $zero, EndGame
	
		li $v0, 8			# Syscall 8 takes user input
		la $a0, userInput		# Address for repeated user input
		li $a1, 2			# BitSpace (2 because each asciiz ends with code for /0)
		syscall
		li $s2, 0	# Shows that userInput has not input a space yet
	
		jal ValidateUserInputAndDirection	# Will update SelectionBox or set $s2 = 1 if user inputs a space.
		jal GameStateChange
		jal DisplayGame
		j WhileGame
	
	
	EndGame:
	li $v0, 10
	syscall
	
	
	
# This function ensures that the user enters either w, a, s, d, or space. It also changes $s1 depending on whether or not they enter a movement or space command.
# If the user enters w/a/s/d, then it will validate the direction and change accordingly. If the user enters a space, then it will set $s2 = 1.


	# NOTE: This function does call DisplaySelection, which calls CalculateBitmapAddress/GetColor.
	# However, since we check if the input is valid before calling those functions, we don't need to save the values in $t0 - $t4.
	# Thus, calling those functions will change those registers, but it doesn't matter.
	
	ValidateUserInputAndDirection:
		lb $s1, userInput
		li $t0, 119	# ASCII for w
		li $t1, 97 	# ASCII for a
		li $t2, 115	# ASCII for s
		li $t3, 100	# ASCII for d
		li $t4, 32	# ASCII for space
	
		Ifw: bne $s1, $t0, Elsea				# If input is w
			lw $a0, currentCoords
			lw $a1, currentCoords + 4
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal ClearSelection				# Clear selection box pre-userinput
			lw $ra, 0($sp)
			addi $sp, $sp, 4
		
			subi $a1, $a1, 7
		
			IfNotValidw: bge $a1, $zero, ElseValidw 	# If w direction goes above x = 0 coordinate
			
				addi $sp, $sp, -4
				sw $a0, 0($sp)
			
				li $v0, 4
				la $a0, invalidDirectionMessage		# Send invalid user input
				syscall
				
				lw $a0, 0($sp)
				addi $sp, $sp, 4
			
				addi $a1, $a1, 7
				
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal DisplaySelection			# Reprint Selection Box at initial location
				lw $ra, 0($sp)
				addi $sp, $sp, 4
				
				j AfterValidw				# Leave validation if statement, which leads to ending the function
			
			ElseValidw:					# ELSE means direction IS valid
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal DisplaySelection			# Update SelectionBox at new coords
				lw $ra, 0($sp)
				addi $sp, $sp, 4
				
				sw $a0, currentCoords			# Store new coordinates
				sw $a1, currentCoords + 4
			
			AfterValidw:
		j EndValidateUserInput
		
		
		Elsea: bne $s1, $t1, Elses				# If input is a
			lw $a0, currentCoords
			lw $a1, currentCoords + 4
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal ClearSelection
			lw $ra, 0($sp)
			addi $sp, $sp, 4
		
			subi $a0, $a0, 7
		
			IfNotValida: bge $a0, $zero, ElseValida		# Validation for a direction
			
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
		
		
		Elses: 	bne $s1, $t2, Elsed				# If user enters s
			lw $a0, currentCoords
			lw $a1, currentCoords + 4
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal ClearSelection
			lw $ra, 0($sp)
			addi $sp, $sp, 4
		
			addi $a1, $a1, 7
			li $t2, 21
		
			IfNotValids: ble $a1, $t2, ElseValids 		# Validation for s direction
			
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
		
		
		Elsed: bne $s1, $t3, ElseSpace				# If user enters d
			lw $a0, currentCoords
			lw $a1, currentCoords + 4
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal ClearSelection
			lw $ra, 0($sp)
			addi $sp, $sp, 4
		
			addi $a0, $a0, 7
			li $t3, 49
		
			IfNotValidd: ble $a0, $t3, ElseValidd		# Validation for d direction
			
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
		
		
		ElseSpace: bne $s1, $t4, EndValidationIfElse		# If user enters space
		
		
			bne $s3, $zero, ElsePostFirstClick		# Check if this is their FIRST TIME entering space (which functions as a click)
				lw $a0, currentCoords
				lw $a1, currentCoords + 4		# Takes coordinates of initial click
				div $a0, $a0, 7
				mflo $a0
				div $a1, $a1, 7
				mflo $a1
		
				addi $sp, $sp, -4
				sw $a1, 0($sp)
		
		
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal CalculateArrayAddress		# Returns 2d array address in $v0 of initial click
				lw $ra, 0($sp)
				addi $sp, $sp, 4
				
				lw $a1, 0($sp)
				addi $sp, $sp, 4
		
				li $t0, 10
				sw $t0, 0($v0) 				# Set the first tile clicked as 10 (first click blank
				subi $a3, $a3, 1
		
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal GenerateGridBombs			# Generate random bomb locations
				lw $ra, 0($sp)
				addi $sp, $sp, 4
				
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal GenerateNumbers			# Generate number locations based on bombs
				lw $ra, 0($sp)
				addi $sp, $sp, 4
				
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal DisplayGame
				lw $ra, 0($sp)
				addi $sp, $sp, -4
				
				li $s3, 1				# Updates $s3 to be 1, so the next click will ignore this code
			j AfterFirstClickValidation
		
			ElsePostFirstClick:
				li $s2, 1
		
			AfterFirstClickValidation:
		
		j EndValidateUserInput					# A space was entered so we updated $s2 accordingly and leave the function
		
		
		
		
		EndValidationIfElse:					# No valid inputs were entered, so this is jumped from ElseSpace. 
			li $v0, 4
			la $a0, invalidInputMessage
			syscall
		
		EndValidateUserInput:
	jr $ra
	
	
	
# This function is activated if the user enters a space. This will be coded later on, but essentially controls what happens when the user enters space.
		GameStateChange:
			bne $s2, $zero, ElseGameStateChange		# If a space was not entered ($s2 = 0), then end the function. Else, run code
				j EndGameStateChange
			ElseGameStateChange:
				
				lw $a0, currentCoords			# Get current coords
				lw $a1, currentCoords + 4
				div $a0, $a0, 7
				mflo $a0
				div $a1, $a1, 7
				mflo $a1
				
				addi $sp, $sp, -4
				sw $a1, 0($sp)
				
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal CalculateArrayAddress		# Get array address
				lw $ra, 0($sp)
				addi $sp, $sp, 4
				
				lw $a1, 0($sp)
				addi $sp, $sp, 4
				
				lw $v1, 0($v0)				# Get value in array address and store in $v1
				li $t0, 9
				
				IfRevealBomb: bne $v1, $t0, HiddenBlank	# If $v1 = 9 (a bomb), then end the game.
					addi $t0, $t0, 10			# Add 10 to $t0 so that it now holds 19 (revealed bomb)
					sw $t0, 0($v0)				# Update grid
					
					li $t9, 2
					
					li $v0, 4
					la $a0, loseGameMessage
					syscall
					j EndGameStateChange
				
				
					HiddenBlank:
					li $t6, 0
   					li $t7, 10
  					beq $v1, $t6, RevealTrueBlank
  					beq $v1, $t7, RevealFirstClickBlank
  					j AnyHiddenNumber

					RevealTrueBlank:
  				  	li $t0, 20
					sw $t0, 0($v0)
  					subi $a3, $a3, 1
  					j IfWinGame

					RevealFirstClickBlank:
   					li $t0, 20
   					sw $t0, 0($v0)
   					j IfWinGame
								
					AnyHiddenNumber: bge $v1, $t0, IfWinGame
					addi $v1, $v1, 10
					subi $a3, $a3, 1
					sw $v1, 0($v0)

				IfWinGame: bne $a3, $zero, ContinueGame
				li $v0, 4
				la $a0, winGameMessage
				syscall
				li $t9, 3
				
				ContinueGame:
				
			EndGameStateChange:
		jr $ra
		
		
# This function generates the grid.
	GenerateGridBombs:
		li $t0, 8	# Sets limit of for loop (# of columns)
		li $t1, 4	# Sets limit of for loop (# of rows)

		li $a1, 0	# Starts # of cols for loop at $a0 = 0
		ForIBombs: bge $a1, $t1, EndForIBombs	# Starts # of rows at $a1 = 1

			li $a0, 0		
			ForJBombs: bge $a0, $t0, EndForJBombs
				addi $sp, $sp, -4			# Push $a1 to stack
				sw $a1, 0($sp)
				
				addi $sp, $sp, -4			# Push $ra to stack
				sw $ra, 0($sp)
				jal CalculateArrayAddress		# NOTE: Because the for loops are based off of $a0 and $a1, we can call this directly ($a0 = colIndex, $a1 = rowIndex)
				lw $ra, 0($sp)				# Pop $ra from stack
				addi $sp, $sp, 4
				
				
				lw $a1, 0($sp)				# Pop $a1 from stack 
				addi $sp, $sp, 4
				
				
				# NOTE: The first tile clicked is always a blank space, so for every variable, we must check and skip if it contains the first click.
				lw $t2, 0($v0)
				li $t3, 10				# 
				beq $t2, $t3, IncrementJ		# If the current tile has a 20, that means it is a revealed blank and we can skip random bomb generation for this tile.
				
				
				addi $sp, $sp, -4			# Push $a1 to stack
				sw $a1, 0($sp)
				addi $sp, $sp, -4			# Push $a0 to stack
				sw $a0, 0($sp)
				addi $sp, $sp, -4			# Push $v0 to stack
				sw $v0, 0($sp)
				
				addi $sp, $sp, -4			# Push $ra to stack
				sw $ra, 0($sp)
				jal GenerateRandomNumber		# Generate a random number that is stored in $a0. Changes $a0, $a1, and $v0, so we have to load to stack
				lw $ra, 0($sp)				
				addi $sp, $sp, 4			# Pop $ra from stack
		
		
				lw $v0, 0($sp)	
				addi $sp, $sp, 4			# Pop $v0 from stack
				
				IfBombGenerated: bne $a0, $zero, NoBombGenerated
					li $t3, 9
					sw $t3, 0($v0)
					subi $a3, $a3, 1
					
				NoBombGenerated:
				
					lw $a0, 0($sp)				# Pop $a0 from stack
					addi $sp, $sp, 4
					lw $a1, 0($sp)				# Pop $a1 from stack
					addi $sp, $sp, 4

				IncrementJ:
					addi $a0, $a0, 1
				j ForJBombs
			EndForJBombs:
		
			addi $a1, $a1, 1
			j ForIBombs
		EndForIBombs:
	jr $ra
	
# This function generates all the grid numbers by searching the surrounding tiles for bombs
	GenerateNumbers:
	# Have 8 edge cases: top left corner, top right corner, bottom left corner, bottom right corner, top edge, left edge, bottom edge, and right edge
	
	
	# Search top left corner
	
		TopLeftCorner:		# Top left corner edge case
		li $a0, 0		# Index for top left corner
		li $a1, 0
		li $t0, 0	# Counter for bombs
	
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	# Address for top left corner in $v0
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		
		
		lw $t2, 0($v0)			# Store value in $t2
		li $t1, 10			# Compare value to $t1 (9)
		IfTopLeftCornerHasBlank: bne $t2, $t1, ContinueSearchingTopLeftForBombs	# If top left corner has a bomb, skip checking top left corner
			li $t0, 10
			j ContinueSearchingTopLeft
	
		ContinueSearchingTopLeftForBombs:
		lw $t2, 0($v0)			# Store value in $t0
		li $t1, 9			# Compare value to $t1 (9)
		IfTopLeftCornerHasBomb: bne $t2, $t1, ContinueSearchingTopLeft	# If top left corner has a bomb, skip checking top left corner
			j EndTopLeftCorner
	
		ContinueSearchingTopLeft:
		li $a0, 1	
		li $a1, 0	# Checking right tile of top left corner
		
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		lw $t1, 0($v0)	
		seq $t2, $t1, 9		# Set $t2 to 1 if $t1 = 9 (has a bomb)
		add $t0, $t0, $t2	# Add $t2 to $t0
		
		
		li $a0, 1
		li $a1, 1	# Checking diagonal tile of top left corner
		
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		lw $t1, 0($v0)
		seq $t2, $t1, 9		# Set $t2 to 1 if $t1 = 9 (has a bomb)
		add $t0, $t0, $t2	# Add $t2 to $t0
		
		li $a0, 0	# Checking bottom tile of top left corner
		li $a1, 1
		
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		lw $t1, 0($v0)
		seq $t2, $t1, 9		# Set $t2 to 1 if $t1 = 9 (has a bomb)
		add $t0, $t0, $t2	# Add $t2 to $t0
		
		li $a0, 0		# Index for top left corner
		li $a1, 0
	
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	# Address for top left corner in $v0
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		sw $t0, 0($v0)
	
		EndTopLeftCorner:
		
	# Search Top Right Corner
		TopRightCorner:		# Top left corner edge case
		li $a0, 7		# Index for top right corner
		li $a1, 0
		li $t0, 0	# Counter for bombs
	
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	# Address for top right corner in $v0
		lw $ra, 0($sp)
		addi $sp, $sp, 4
	
		lw $t2, 0($v0)			# Store value in $t0
		li $t1, 10			# Compare value to $t1 (9)
		IfTopRightCornerHasBlank: bne $t2, $t1, ContinueSearchingTopRightForBombs	# If top left corner has a bomb, skip checking top left corner
			li $t0, 10
			j ContinueSearchingTopRight
	
		ContinueSearchingTopRightForBombs:
	
		lw $t2, 0($v0)			# Store value in $t0
		li $t1, 9			# Compare value to $t1 (9)
		IfTopRightCornerHasBomb: bne $t2, $t1, ContinueSearchingTopRight	# If top left corner has a bomb, skip checking top left corner
			j EndTopRightCorner
	
		ContinueSearchingTopRight:
		
		li $a0, 6	
		li $a1, 0	# Checking left tile of top right corner
		
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		lw $t1, 0($v0)	
		seq $t2, $t1, 9		# Set $t2 to 1 if $t1 = 9 (has a bomb)
		add $t0, $t0, $t2	# Add $t2 to $t0
		
		
		li $a0, 6
		li $a1, 1	# Checking diagonal tile of top right corner
		
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		lw $t1, 0($v0)
		seq $t2, $t1, 9		# Set $t2 to 1 if $t1 = 9 (has a bomb)
		add $t0, $t0, $t2	# Add $t2 to $t0
		
		li $a0, 7	# Checking bottom tile of top right corner
		li $a1, 1
		
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		lw $t1, 0($v0)
		seq $t2, $t1, 9		# Set $t2 to 1 if $t1 = 9 (has a bomb)
		add $t0, $t0, $t2	# Add $t2 to $t0
		
		li $a0, 7		# Index for top right corner
		li $a1, 0
	
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	# Address for top left corner in $v0
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		sw $t0, 0($v0)
	
		EndTopRightCorner:
		
	# Search Bottom Left Corner
		BottomLeftCorner:		# Bottom left corner edge case
		li $a0, 0			# Index for bottom left corner
		li $a1, 3
		li $t0, 0			# Counter for bombs
	
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	# Address for bottom left corner in $v0
		lw $ra, 0($sp)
		addi $sp, $sp, 4
	
		lw $t2, 0($v0)			# Store value in $t0
		li $t1, 10			# Compare value to $t1 (9)
		IfBottomLeftCornerHasBlank: bne $t2, $t1, ContinueSearchingBottomLeftForBombs	# If top left corner has a bomb, skip checking top left corner
			li $t0, 10
			j ContinueSearchingBottomLeft
	
		ContinueSearchingBottomLeftForBombs:
	
	
		lw $t2, 0($v0)			# Store value in $t0
		li $t1, 9			# Compare value to $t1 (9)
		IfBottomLeftCornerHasBomb: bne $t2, $t1, ContinueSearchingBottomLeft	# If top left corner has a bomb, skip checking top left corner
			j EndBottomLeftCorner
	
		ContinueSearchingBottomLeft:
		li $a0, 0	
		li $a1, 2	# Checking above tile of bottom left corner
		
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		lw $t1, 0($v0)	
		seq $t2, $t1, 9		# Set $t2 to 1 if $t1 = 9 (has a bomb)
		add $t0, $t0, $t2	# Add $t2 to $t0
		
		
		li $a0, 1
		li $a1, 2	# Checking diagonal tile of bottom left corner
		
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		lw $t1, 0($v0)
		seq $t2, $t1, 9		# Set $t2 to 1 if $t1 = 9 (has a bomb)
		add $t0, $t0, $t2	# Add $t2 to $t0
		
		li $a0, 1	# Checking right tile of bottom left corner
		li $a1, 3
		
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		lw $t1, 0($v0)
		seq $t2, $t1, 9		# Set $t2 to 1 if $t1 = 9 (has a bomb)
		add $t0, $t0, $t2	# Add $t2 to $t0
		
		li $a0, 0		# Index for bottom left corner
		li $a1, 3
	
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	# Address for bottom left corner in $v0
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		sw $t0, 0($v0)
	
		EndBottomLeftCorner:
		
	# Search Bottom Right Corner
		BottomRightCorner:		# Bottom right corner edge case
		li $a0, 7			# Index for bottom right corner
		li $a1, 3
		li $t0, 0 			# Counter
	
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	# Address for bottom right corner in $v0
		lw $ra, 0($sp)
		addi $sp, $sp, 4
	
		lw $t2, 0($v0)			# Store value in $t0
		li $t1, 10			# Compare value to $t1 (9)
		IfBottomRightCornerHasBlank: bne $t2, $t1, ContinueSearchingBottomRightForBombs	# If top left corner has a bomb, skip checking top left corner
			li $t0, 10
			j ContinueSearchingBottomRight
	
		ContinueSearchingBottomRightForBombs:
		lw $t2, 0($v0)			# Store value in $t0
		li $t1, 9			# Compare value to $t1 (9)
		IfBottomRightCornerHasBomb: bne $t2, $t1, ContinueSearchingBottomRight	# If top left corner has a bomb, skip checking top left corner
			j EndBottomRightCorner
	
		ContinueSearchingBottomRight:
		li $a0, 7	
		li $a1, 2	# Checking above tile of bottom right corner
		
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		lw $t1, 0($v0)	
		seq $t2, $t1, 9		# Set $t2 to 1 if $t1 = 9 (has a bomb)
		add $t0, $t0, $t2	# Add $t2 to $t0
		
		
		li $a0, 6
		li $a1, 2	# Checking diagonal tile of bottom right corner
		
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		lw $t1, 0($v0)
		seq $t2, $t1, 9		# Set $t2 to 1 if $t1 = 9 (has a bomb)
		add $t0, $t0, $t2	# Add $t2 to $t0
		
		li $a0, 6	# Checking left tile of bottom right corner
		li $a1, 3
		
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		lw $t1, 0($v0)
		seq $t2, $t1, 9		# Set $t2 to 1 if $t1 = 9 (has a bomb)
		add $t0, $t0, $t2	# Add $t2 to $t0
		
		li $a0, 7		# Index for bottom right corner
		li $a1, 3
	
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		jal CalculateArrayAddress	# Address for top left corner in $v0
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		sw $t0, 0($v0)
	
		EndBottomRightCorner:
	
	# Top border edge case
		TopBorderEdgeCase:
			li $t0, 1		
			li $t1, 0
			li $t2, 7		# Comparison for while loop
			li $t3, 0 		# Counter for bombs
			WhileTopEdgeCase: bge $t0, $t2, EndTopBorderEdgeCase
			li $t3, 0
			move $a0, $t0			# Check if the current index has a bomb
			move $a1, $t1
			li $t4, 0			# States that we haven't validated if current index is a bomb
			
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t4, 0($v0)
			seq $t4, $t4, 10		# Set $t4 to 1 if $t4 = 9 (has a bomb)
			
			CheckForBlankTopEdgeCase: beq $t4, $zero, Continue1 	# If $t4 doesn't equal 0, $t4 must equal 1. $t4 = 1 means bomb was found, so skip current index	
				addi $t3, $t3, 10
			Continue1:
			
			
			lw $t4, 0($v0)
			seq $t4, $t4, 9		# Set $t4 to 1 if $t4 = 9 (has a bomb)
			
			CheckForBombTopEdgeCase: bne $t4, $zero, BombFoundTopEdgeCase 	# If $t4 doesn't equal 0, $t4 must equal 1. $t4 = 1 means bomb was found, so skip current index			
			
			
			move $a0, $t0
			move $a1, $t1
			subi $a0, $a0, 1		# Checking left tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			subi $a0, $a0, 1		# Checking left diagonal tile
			addi $a1, $a1, 1
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			addi $a1, $a1, 1		# Checking bottom tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			addi $a0, $a0, 1		# Checking right tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			addi $a0, $a0, 1
			addi $a1, $a1, 1		# Checking right diagonal tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			move $a0, $t0			# Get original tile again
			move $a1, $t1
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			sw $t3, 0($v0)
			
			BombFoundTopEdgeCase:
		
			addi $t0, $t0, 1
			j WhileTopEdgeCase
		EndTopBorderEdgeCase:
	
	
	# Right border Edge case
		RightBorderEdgeCase:
			li $t0, 7		
			li $t1, 1
			li $t2, 3		# Comparison for while loop
			li $t3, 0 		# Counter for bombs
			WhileRightEdgeCase: bge $t1, $t2, EndRightBorderEdgeCase
			li $t3, 0 
			move $a0, $t0			# Check if the current index has a bomb
			move $a1, $t1
			li $t4, 0			# States that we haven't validated if current index is a bomb
			
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t4, 0($v0)
			seq $t4, $t4, 10		# Set $t4 to 1 if $t4 = 9 (has a bomb)
			
			CheckForBlankRightEdgeCase: beq $t4, $zero, Continue2 	# If $t4 doesn't equal 0, $t4 must equal 1. $t4 = 1 means bomb was found, so skip current index	
				addi $t3, $t3, 10
			Continue2:
			
			
			lw $t4, 0($v0)
			seq $t4, $t4, 9		# Set $t4 to 1 if $t4 = 9 (has a bomb)
			
			CheckForBombRightEdgeCase: bne $t4, $zero, BombFoundRightEdgeCase	# If $t4 doesn't equal 0, $t4 must equal 1. $t4 = 1 means bomb was found, so skip current index			
			
			
			move $a0, $t0
			move $a1, $t1
			subi $a1, $a1, 1		# Checking above tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			subi $a0, $a0, 1		# Checking above diagonal tile
			subi $a1, $a1, 1
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			subi $a0, $a0, 1		# Checking left tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			subi $a0, $a0, 1
			addi $a1, $a1, 1		# Checking below diagonal tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			addi $a1, $a1, 1		# Checking bottom tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			move $a0, $t0			# Get original tile again
			move $a1, $t1
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			sw $t3, 0($v0)
			
			BombFoundRightEdgeCase:
		
			addi $t1, $t1, 1
			j WhileRightEdgeCase
		EndRightBorderEdgeCase:
		
		
	# Left border Edge case
		LeftBorderEdgeCase:
			li $t0, 0		# x coordinate 
			li $t1, 1		# y coordinate
			li $t2, 3		# Comparison for while loop
			li $t3, 0 		# Counter for bombs
			WhileLeftEdgeCase: bge $t1, $t2, EndLeftBorderEdgeCase
			li $t3, 0 
			move $a0, $t0			# Check if the current index has a bomb
			move $a1, $t1
			li $t4, 0			# States that we haven't validated if current index is a bomb
			
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t4, 0($v0)
			seq $t4, $t4, 10
			
			CheckForBlankLeftEdgeCase: beq $t4, $zero, Continue3	# If $t4 doesn't equal 0, $t4 must equal 1. $t4 = 1 means bomb was found, so skip current index	
				addi $t3, $t3, 10
			Continue3:
			
			lw $t4, 0($v0)
			seq $t4, $t4, 9		# Set $t4 to 1 if $t4 = 9 (has a bomb)
			
			CheckForBombLeftEdgeCase: bne $t4, $zero, BombFoundLeftEdgeCase 	# If $t4 doesn't equal 0, $t4 must equal 1. $t4 = 1 means bomb was found, so skip current index			
			
			
			move $a0, $t0
			move $a1, $t1
			subi $a1, $a1, 1		# Checking above tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			addi $a0, $a0, 1		# Checking above diagonal tile
			subi $a1, $a1, 1
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			addi $a0, $a0, 1		# Checking right tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			addi $a0, $a0, 1
			addi $a1, $a1, 1		# Checking below diagonal tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			addi $a1, $a1, 1		# Checking bottom tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			move $a0, $t0			# Get original tile again
			move $a1, $t1
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			sw $t3, 0($v0)
			
			BombFoundLeftEdgeCase:
		
			addi $t1, $t1, 1
			j WhileLeftEdgeCase
		EndLeftBorderEdgeCase:
		
	# Bottom border edge case
		BottomBorderEdgeCase:
			li $t0, 1		
			li $t1, 3
			li $t2, 7		# Comparison for while loop
			li $t3, 0 		# Counter for bombs
			WhileBottomEdgeCase: bge $t0, $t2, EndBottomBorderEdgeCase
			li $t3, 0 
			move $a0, $t0			# Check if the current index has a bomb
			move $a1, $t1
			li $t4, 0			# States that we haven't validated if current index is a bomb
			
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			CheckForBlankBottomEdgeCase: beq $t4, $zero, Continue4	# If $t4 doesn't equal 0, $t4 must equal 1. $t4 = 1 means bomb was found, so skip current index	
				addi $t3, $t3, 10
			Continue4:
			
			lw $t4, 0($v0)
			seq $t4, $t4, 9		# Set $t4 to 1 if $t4 = 9 (has a bomb)
			
			CheckForBombBottomEdgeCase: bne $t4, $zero, BombFoundBottomEdgeCase 	# If $t4 doesn't equal 0, $t4 must equal 1. $t4 = 1 means bomb was found, so skip current index			
			
			
			move $a0, $t0
			move $a1, $t1
			subi $a0, $a0, 1		# Checking left tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			subi $a0, $a0, 1		# Checking left diagonal tile
			subi $a1, $a1, 1
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			subi $a1, $a1, 1		# Checking above tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			addi $a0, $a0, 1		# Checking right tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			addi $a0, $a0, 1
			subi $a1, $a1, 1		# Checking right diagonal tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t5, 0($v0)
			seq $t5, $t5, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t3, $t3, $t5	# Add $t5 to $3
			
			
			move $a0, $t0			# Get original tile again
			move $a1, $t1
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			sw $t3, 0($v0)
			
			BombFoundBottomEdgeCase:
		
			addi $t0, $t0, 1
			j WhileBottomEdgeCase
		EndBottomBorderEdgeCase:
		
		
	# Generating numbers for middle values
		# FINAL CASE:
		
		li $t3, 7		# Limit for inner for loop
		li $t2, 3		# Limit for outer for loop

		li $t1, 1		# Beginning index for out for loop
		ForMiddleI: bge $t1, $t2, EndForMiddleI
	
			li $t0, 1	# Beginning index for inner for loop
			ForMiddleJ: bge $t0, $t3, EndForMiddleJ
				li $t5, 0			# Counter for bombs
				
				move $a0, $t0			# Check if the current index has a bomb
				move $a1, $t1
				li $t4, 0			# States that we haven't validated if current index is a bomb
			
			
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal CalculateArrayAddress	# Address in $v0
				lw $ra, 0($sp)
				addi $sp, $sp, 4
			
				lw $t4, 0($v0)
				seq $t4, $t4, 10
			
				CheckForBlankMiddleEdgeCase: beq $t4, $zero, Continue5	# If $t4 doesn't equal 0, $t4 must equal 1. $t4 = 1 means bomb was found, so skip current index	
					addi $t5, $t5, 10
				Continue5: 
			
				lw $t4, 0($v0)
				seq $t4, $t4, 9		# Set $t4 to 1 if $t4 = 9 (has a bomb)
			
				CheckForBombCenterEdgeCase: bne $t4, $zero, BombFoundCenterEdgeCase 
				
				move $a0, $t0
				move $a1, $t1
				
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal SearchTiles	# Address in $v0
				lw $ra, 0($sp)
				addi $sp, $sp, 4
				
				
				move $a0, $t0
				move $a1, $t1
				
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal CalculateArrayAddress	# Address in $v0
				lw $ra, 0($sp)
				addi $sp, $sp, 4
				
				sw $t5, 0($v0)			# Store value in $t5
				
				BombFoundCenterEdgeCase:
		
				addi $t0, $t0, 1
				j ForMiddleJ
			EndForMiddleJ:
		
			addi $t1, $t1, 1
			j ForMiddleI
		EndForMiddleI:
		
		
	jr $ra
	
# This funtion will search the surrounding 8 tiles for bombs and increment $5 if it finds one. The indexes of the middle tile will be given in $a0 and $a1
	SearchTiles:
			move $a0, $t0
			move $a1, $t1
			subi $a1, $a1, 1		# Checking above tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t6, 0($v0)
			seq $t6, $t6, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t5, $t5, $t6	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			addi $a0, $a0, 1		# Checking right tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t6, 0($v0)
			seq $t6, $t6, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t5, $t5, $t6	# Add $t5 to $3
			
			
			move $a0, $t0
			move $a1, $t1
			addi $a1, $a1, 1		# Checking bottom tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t6, 0($v0)
			seq $t6, $t6, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t5, $t5, $t6	# Add $t5 to $3
			
			
			
			
			move $a0, $t0
			move $a1, $t1
			subi $a0, $a0, 1		# Checking left tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t6, 0($v0)
			seq $t6, $t6, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t5, $t5, $t6	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			addi $a0, $a0, 1
			subi $a1, $a1, 1		# Checking NE tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t6, 0($v0)
			seq $t6, $t6, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t5, $t5, $t6	# Add $t5 to $3
			
			
			move $a0, $t0
			move $a1, $t1
			subi $a0, $a0, 1
			subi $a1, $a1, 1		# Checking NW tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t6, 0($v0)
			seq $t6, $t6, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t5, $t5, $t6	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			addi $a0, $a0, 1
			addi $a1, $a1, 1		# Checking SE tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t6, 0($v0)
			seq $t6, $t6, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t5, $t5, $t6	# Add $t5 to $3
			
			
			
			move $a0, $t0
			move $a1, $t1
			subi $a0, $a0, 1
			addi $a1, $a1, 1		# Checking SW tile
			
			addi $sp, $sp, -4
			sw $ra, 0($sp)
			jal CalculateArrayAddress	# Address in $v0
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			
			lw $t6, 0($v0)
			seq $t6, $t6, 9		# Set $t5 to 1 if $t5 = 9 (has a bomb)
			add $t5, $t5, $t6	# Add $t5 to $
	jr $ra
	
# This function will check a tile for a bomb at a given coordinate. It will increment $t0 by 1 if it does.
	CheckForBomb:
		addi $sp, $sp, -4			# Push $ra to stack
		sw $ra, 0($sp)
		jal CalculateArrayAddress
		lw $ra, 0($sp)				
		addi $sp, $sp, 4			# Pop $ra from stack
		
		lw $t2, 0($v0)				# Store grid value in $t2
		IfHasBomb: bne $t2, $t1, NoBombDetected		# If $t2 is equal to 9 ($t1), then increment $t0 by 1
		addi $t0, $t0, 1
		NoBombDetected:
	jr $ra
	
	
	
# This function displays the grid	
	DisplayGame:
		li $t0, 8
		li $t1, 4

		li $a1, 0
		ForIDisplayGame: bge $a1, $t1, EndForIDisplayGame	# y coordinate loop
	
			li $a0, 0	
			ForJDisplayGame: bge $a0, $t0, EndForJDisplayGame	# x coordinate loop
		
		
				addi $sp, $sp, -4		# Push $a1 to stack since CalcArrayAddres changes $a1
				sw $a1, 0($sp)
						
				addi $sp, $sp, -4
				sw $ra, 0($sp)
				jal CalculateArrayAddress	# Call CalculateArrayAddress
				lw $ra, 0($sp)
				addi $sp, $sp, 4
				
				lw $a1, 0($sp)			# Pop $a1 from stack
				addi $sp, $sp, 4
				
				lw $t2, 0($v0)			# Store array value into $t2
				li $t3, 20
				li $t4, 19
				li $t5, 10
				
				IfBlankTile: bne $t2, $t3, IfBomb
					mul $a0, $a0, 7			# Convert into bitmap coordinates (multiples of 7)
					mul $a1, $a1, 7
					
					
					addi $sp, $sp, -4		# Push $t0 to stack
					sw $t0, 0($sp)
					addi $sp, $sp, -4		# Push $t1 to stack
					sw $t1, 0($sp)
					
					addi $sp, $sp, -4
					sw $ra, 0($sp)
					jal DisplayRevealedBlank	# Displays a revealed blank. This function CHANGES $t0 and $t1.
					lw $ra, 0($sp)
					addi $sp, $sp, 4
					
					lw $t1, 0($sp)			# Pop $t1 from stack
					addi $sp, $sp, 4		
					lw $t0, 0($sp)			# Pop $t0 from stack
					addi $sp, $sp, 4
					
					div $a0, $a0, 7
					mflo $a0
					div $a1, $a1, 7
					mflo $a1
					
					j AfterIfStatement
					
				IfBomb: bne $t2, $t4, IfVisibleNumber
					mul $a0, $a0, 7			# Convert into bitmap coordinates (multiples of 7)
					mul $a1, $a1, 7
					
					
					addi $sp, $sp, -4		# Push $t0 to stack
					sw $t0, 0($sp)
					addi $sp, $sp, -4		# Push $t1 to stack
					sw $t1, 0($sp)
					
					addi $sp, $sp, -4
					sw $ra, 0($sp)
					jal DisplayBomb 		# Displays a bomb. This function CHANGES $t0 and $t1.
					lw $ra, 0($sp)
					addi $sp, $sp, 4
					
					lw $t1, 0($sp)			# Pop $t1 from stack
					addi $sp, $sp, 4		
					lw $t0, 0($sp)			# Pop $t0 from stack
					addi $sp, $sp, 4
					
					div $a0, $a0, 7
					mflo $a0
					div $a1, $a1, 7
					mflo $a1
					
					j AfterIfStatement
					
				IfVisibleNumber: ble $t2, $t5, IfFirstClickBlank
					subi $t2, $t2, 10		# Only possible values are 11-18, so subtract 10 and store in $a2
					move $a2, $t2
					mul $a0, $a0, 7			# Convert into bitmap coordinates (multiples of 7)
					mul $a1, $a1, 7
					
					
					addi $sp, $sp, -4		# Push $t0 to stack
					sw $t0, 0($sp)
					addi $sp, $sp, -4		# Push $t1 to stack
					sw $t1, 0($sp)
					
					addi $sp, $sp, -4
					sw $ra, 0($sp)
					jal MakeNumber 		# Displays a number. This function CHANGES $t0 and $t1.
					lw $ra, 0($sp)
					addi $sp, $sp, 4
					
					lw $t1, 0($sp)			# Pop $t1 from stack
					addi $sp, $sp, 4		
					lw $t0, 0($sp)			# Pop $t0 from stack
					addi $sp, $sp, 4
					
					div $a0, $a0, 7
					mflo $a0
					div $a1, $a1, 7
					mflo $a1
					
					j AfterIfStatement
					
				IfFirstClickBlank: bne $t2, $t5, AfterIfStatement
					mul $a0, $a0, 7			# Convert into bitmap coordinates (multiples of 7)
					mul $a1, $a1, 7
					
					
					addi $sp, $sp, -4		# Push $t0 to stack
					sw $t0, 0($sp)
					addi $sp, $sp, -4		# Push $t1 to stack
					sw $t1, 0($sp)
					
					addi $sp, $sp, -4
					sw $ra, 0($sp)
					jal DisplayRevealedBlank	# Displays a revealed blank. This function CHANGES $t0 and $t1.
					lw $ra, 0($sp)
					addi $sp, $sp, 4
					
					lw $t1, 0($sp)			# Pop $t1 from stack
					addi $sp, $sp, 4		
					lw $t0, 0($sp)			# Pop $t0 from stack
					addi $sp, $sp, 4
					
					div $a0, $a0, 7
					mflo $a0
					div $a1, $a1, 7
					mflo $a1
				
				AfterIfStatement:
				
				addi $a0, $a0, 1
				j ForJDisplayGame
			EndForJDisplayGame:
		
			addi $a1, $a1, 1
			j ForIDisplayGame
		EndForIDisplayGame:
	
	jr $ra
	
	
	
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
	
	
# This function displays a revealed blank tile at a given coordinate
	DisplayRevealedBlank:
		lw $v1, differentColors + 32
		li $t4, 0	# Sets up for loop, w = 0
		li $t5, 100	# Sets up for loop, z = 96
	
		WhileRevealBlank: bge $t4, $t5, EndRevealBlank	# for(w = 0, w < z, w + 4)
	
		lw $t0, loadRevealedBlank + 0($t4)		# Loads x coord from array
		lw $t1, loadRevealedBlank + 100($t4)		# Loads y cord from array
		add $t0, $t0, $a0		# Adds larger grid x offset (from $a0)
		add $t1, $t1, $a1		# Adds larger grid y offest (from $a1)
	
		addi $sp, $sp, -4		# Stack maintaince to call CalculateAddress
		sw $ra, 0($sp)
		jal CalculateBitmapAddress
		lw $ra, 0($sp)
		addi $sp, $sp, 4		# Stack maintaince to call CalculateAddress
	
		sw $v1, 0($v0)			# Draw the dot
	
	
		addi $t4, $t4, 4 		# For loop increment (w + 4)
		j WhileRevealBlank
		EndRevealBlank:
	jr $ra
	
# This function displays the selection box at the given coordinates in $a0 and $a1. 	
# This function uses $t0, $t1, $t2, $t3, $t4, $t5, $v1, and returns in $v0
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
	
	
	# This displays a bomb
	DisplayBomb:
		lw $v1, differentColors + 40
		li $t4, 0	# Sets up for loop, w = 0
		li $t5, 52	# Sets up for loop, z = 96
	
		WhileBomb: bge $t4, $t5, EndBomb	# for(w = 0, w < z, w + 4)
	
		lw $t0, loadBombCoords + 0($t4)		# Loads x coord from array
		lw $t1, loadBombCoords + 52($t4)		# Loads y cord from array
		add $t0, $t0, $a0		# Adds larger grid x offset (from $a0)
		add $t1, $t1, $a1		# Adds larger grid y offest (from $a1)
	
		addi $sp, $sp, -4		# Stack maintaince to call CalculateAddress
		sw $ra, 0($sp)
		jal CalculateBitmapAddress
		lw $ra, 0($sp)
		addi $sp, $sp, 4		# Stack maintaince to call CalculateAddress
	
		sw $v1, 0($v0)			# Draw the dot
	
	
		addi $t4, $t4, 4 		# For loop increment (w + 4)
		j WhileBomb
		EndBomb:
	jr $ra
	
	
# Prints any number as specified by the coordinates in $a0 (x) and $a1 (y). The specified number goes in $a2.
	# This functions uses $a0, $a1, and $a2 as ARGUMENTS
	# This function uses $t0, $t1, $t2 (calls CalculateAddress), $t3 (calls CalculateAddress), $t4, $t5, $t7, and $t8 to carry out arithmatic
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
		jal GetColor			# Stores correct color in $v1
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
	
	
 # Takes array indexes and calcualtes addresses for bitmpa. Row index (y coords) in $a0 and Col index in $a1 (x coords)
	# Uses $a0 and $a1 as ARGUMENTS
	# CHANGES $a1. NEED TO PUSH AND POP $a1 to stack
	# Uses $v0 to RETURN
	#  memory[array base address + 4 * (array width * row index + column index)] 
	CalculateArrayAddress:
		la $v0, grid
		mul $a1, $a1, 8
		add $a1, $a1, $a0
		mul $a1, $a1, 4
		add $v0, $v0, $a1
	jr $ra

	
# Generates a random number from 0-5 in $a0
	# CHANGES $a0, $a1, and $v0. NEED TO PUSH AND POP ALL THREE TO STACK
	# Returns the random integer in $a0
	GenerateRandomNumber:
		li $a1, 7
		li $v0, 42
		syscall
	jr $ra
	
	
# Draws the line on the right of the screen that shows the border of grid display
	DrawLineY:
		lw $v1, differentColors + 32
		li $t4, 0	# Sets up for loop, w = 0
		li $t5, 112	# Sets up for loop, z = 96
	
		WhileLine: bge $t4, $t5, EndLine	# for(w = 0, w < z, w + 4)
	
		lw $t0, loadLineCoords + 0($t4)		# Loads x coord from array
		lw $t1, loadLineCoords + 112($t4)		# Loads y cord from array
		add $t0, $t0, $a0		# Adds larger grid x offset (from $a0)
		add $t1, $t1, $a1		# Adds larger grid y offest (from $a1)
	
		addi $sp, $sp, -4		# Stack maintaince to call CalculateAddress
		sw $ra, 0($sp)
		jal CalculateBitmapAddress
		lw $ra, 0($sp)
		addi $sp, $sp, 4		# Stack maintaince to call CalculateAddress
	
		sw $v1, 0($v0)			# Draw the dot
	
	
		addi $t4, $t4, 4 		# For loop increment (w + 4)
		j WhileLine
		EndLine:
	
	jr $ra
	
	
# Draws the line on the right of the screen that shows the border of grid display
	DrawLineX:
		lw $v1, differentColors + 32
		li $t4, 0	# Sets up for loop, w = 0
		li $t5, 228	# Sets up for loop, z = 96
	
		WhileLineX: bge $t4, $t5, EndLineX	# for(w = 0, w < z, w + 4)
	
		lw $t0, loadLineCoordsX + 0($t4)		# Loads x coord from array
		lw $t1, loadLineCoordsX + 228($t4)		# Loads y cord from array
		add $t0, $t0, $a0		# Adds larger grid x offset (from $a0)
		add $t1, $t1, $a1		# Adds larger grid y offest (from $a1)
	
		addi $sp, $sp, -4		# Stack maintaince to call CalculateAddress
		sw $ra, 0($sp)
		jal CalculateBitmapAddress
		lw $ra, 0($sp)
		addi $sp, $sp, 4		# Stack maintaince to call CalculateAddress
	
		sw $v1, 0($v0)			# Draw the dot
	
	
		addi $t4, $t4, 4 		# For loop increment (w + 4)
		j WhileLineX
		EndLineX:
	
	jr $ra
		
	
# Takes in the number to be printed (in %a2) and gets the corresponding color
	# This function uses $a2 as ARGUMENTS
	# This function uses $v1 as RETURN
	GetColor:
		srl $a2, $a2, 1
		lw $v1, differentColors + 0($a2)
	jr $ra
