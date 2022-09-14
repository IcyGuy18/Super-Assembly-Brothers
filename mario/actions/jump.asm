charJump proc
	; This comparison is to play the jump sound
	cmp soundJumpIncreaseCount, 0
	je SKIP_SOUND
		call playJump
		dec soundJumpIncreaseCount
	SKIP_SOUND:
	; Simply subtract the Y-coordinate from Mario for every instance the jump count is > 0
	sub charY, 2d
	
	dec jumpCount
	jnz RETURN_JUMP
	; When jump count is == 0, set the jump check to false and fall check to true
	mov jumpCheck, 0
	mov fallCheck, 1
	
	RETURN_JUMP:
	ret

charJump endp