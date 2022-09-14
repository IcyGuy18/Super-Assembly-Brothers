goombaCollision proc

	;Procedure to check if a Goomba has hit an obstruction

	; VERTICAL CHECK FOR HORIZONTAL COLLISION
	cmp goombaDir, 1 ; 1 is right
	je CHECK_RIGHT
	
	mov bx, goombaY
	mov goombaTemp, bx
	sub goombaTemp, 1
	mov bx, 1
	mov goombaCheckCount, 30
	LOOP_GOOMBA_CHECK_LEFT:
		mov cx, goombaX
		sub cx, 3d
		mov dx, goombaTemp
		add dx, bx
		mov ah, 0Dh
		int 10h
		cmp al, BYTE PTR charBackgroundColour
		je DECREMENT_LEFT_COUNT
			mov goombaDir, 1
			jmp RETURN_GOOMBA_COLLISION
		DECREMENT_LEFT_COUNT:
		inc bx
		dec goombaCheckCount
		jnz LOOP_GOOMBA_CHECK_LEFT

	CHECK_RIGHT:
	
	cmp goombaDir, 0
	je RETURN_GOOMBA_COLLISION
	
	mov bx, goombaY
	mov goombaTemp, bx
	sub goombaTemp, 1
	mov bx, 1
	mov goombaCheckCount, 30
	LOOP_GOOMBA_CHECK_RIGHT:
		mov cx, goombaX
		add cx, 34d
		mov dx, goombaTemp
		add dx, bx
		mov ah, 0Dh
		int 10h
		cmp al, BYTE PTR charBackgroundColour
		je DECREMENT_RIGHT_COUNT
			mov goombaDir, 0
			jmp RETURN_GOOMBA_COLLISION
		DECREMENT_RIGHT_COUNT:
		inc bx
		dec goombaCheckCount
		jnz LOOP_GOOMBA_CHECK_RIGHT
	
	RETURN_GOOMBA_COLLISION:
	ret

goombaCollision endp