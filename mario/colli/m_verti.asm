checkVerticalCollisions proc

	mov ah, 0Dh ; With this function, we will get the colour of pixel at a specific coordinate

	; First, check ceiling of player
	cmp jumpCheck, 1
	jne CHECK_FALL_STATE
	mov charCheckTopCount, 35d
	
	mov movX, 0
	mov bx, charX
	mov charTemp, bx
	sub charTemp, 4d
	CHAR_CHECK_TOP_LOOP:
		mov cx, charTemp
		add cx, movX
		mov dx, charY
		sub dx, 6d
		int 10h
		cmp al, BYTE PTR charBackgroundColour
		je DECREMENT_TOP_COUNT
			mov al, 61h
			out 61h, al
			mov soundJumpIncreaseCount, 0
			mov fallCheck, 1
			mov jumpCheck, 0
			jmp CHECK_FALL_STATE
		DECREMENT_TOP_COUNT:
		inc movX
		dec charCheckTopCount
		jnz CHAR_CHECK_TOP_LOOP
	
	; Second, check floor of player
	CHECK_FALL_STATE:
	cmp jumpCheck, 1
	je RETURN_COLLISION
	
	mov charCheckBottomCount, 35d
	mov movX, 0

	mov fallCheck, 1
	mov bx, charX
	mov charTemp, bx
	sub charTemp, 4d
	CHAR_CHECK_BOTTOM_LOOP:
		mov cx, charTemp
		add cx, movX
		mov dx, charY
		add dx, 34d
		int 10h
		cmp al, BYTE PTR charBackgroundColour
		je DECREMENT_COUNT
		mov fallCheck, 0
		mov bx, soundFallToneInitial
		mov tempSoundFallTone, bx
		mov soundJumpIncreaseCount, 10d
		jmp COMPARISON_BOTTOM
		DECREMENT_COUNT:
		inc movX
		dec charCheckBottomCount
		jnz CHAR_CHECK_BOTTOM_LOOP
	
	COMPARISON_BOTTOM:
	cmp fallCheck, 1
	jne RETURN_COLLISION
		call charFallDown
		
	RETURN_COLLISION:

	ret

checkVerticalCollisions endp