checkHorizontalCollisions proc

	; A unique way to detect collision is by getting a pixel using the function AH = 0Dh and calling interrupt 16h to get the colour of pixel, then compare if the position where the object is moving is a background colour or not

	; Idle and not doing anything
	cmp moveCheck, 0
	je RETURN_HORIZONTAL_COLLISION

	cmp moveCheck, 1
	jne COMPARE_RIGHT_MOVE
	; Moving left and touching something
	
	cmp charX, 0
	jne SKIP_LEFT_BOUNDARY
	mov isTouching, 1
	jmp RETURN_HORIZONTAL_COLLISION

	SKIP_LEFT_BOUNDARY:
	mov charCheckLeftCount, 35d
	mov movY, 0
	CHECK_LEFT_COLLISION:
		mov ah, 0Dh
		mov cx, charX
		sub cx, 7d
		mov dx, charY
		add dx, movY
		sub dx, 2d
		int 10h
		cmp al, BYTE PTR charBackgroundColour
		je DECREMENT_LEFT_COUNT
		mov isTouching, 1
		jmp RETURN_HORIZONTAL_COLLISION
		DECREMENT_LEFT_COUNT:
		inc movY
		dec charCheckLeftCount
		jnz CHECK_LEFT_COLLISION
	
	jmp RETURN_HORIZONTAL_COLLISION
	
	COMPARE_RIGHT_MOVE:
	cmp moveCheck, 2
	jne RETURN_HORIZONTAL_COLLISION
	; Moving right and touching something
	
	cmp charX, 639d
	jle SKIP_RIGHT_BOUNDARY
	mov isTouching, 1
	jmp RETURN_HORIZONTAL_COLLISION
	
	SKIP_RIGHT_BOUNDARY:
	mov charCheckRightCount, 33d
	mov movY, 0
	CHECK_RIGHT_COLLISION:
		mov ah, 0Dh
		mov cx, charX
		add cx, 32d
		mov dx, charY
		add dx, movY
		sub dx, 2d
		int 10h
		cmp al, BYTE PTR charBackgroundColour
		je DECREMENT_RIGHT_COUNT
		mov isTouching, 1
		jmp RETURN_HORIZONTAL_COLLISION
		DECREMENT_RIGHT_COUNT:
		inc movY
		dec charCheckRightCount
		jnz CHECK_RIGHT_COLLISION

	RETURN_HORIZONTAL_COLLISION:
	ret

checkHorizontalCollisions endp