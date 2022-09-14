hammerFall proc
	; Check if hammer is already falling
	cmp hammerIsFalling, 1
	je SKIP_HAMMER_INIT
	; Initialize a new hammer
	mov ax, koopaX
	mov hammerX, ax
	
	mov ax, koopaY
	add ax, 48d
	mov hammerY, ax
	
	mov hammerIsFalling, 1

	SKIP_HAMMER_INIT:
	; Draw the hammer
	call drawHammer
	
	; Move the hammer downwards
	add hammerY, 2d
	
	; Check if hammer hits something at the bottom
	mov movX, 0
	mov hammerCount, 20
	HAMMER_LOOP:
		mov ah, 0Dh
		mov cx, hammerX
		add cx, movX
		mov dx, hammerY
		add dx, 27d
		int 10h
	
		cmp al, BYTE PTR charBackgroundColour
		je DECREMENT_LOOP
			mov hammerIsFalling, 0
			call removeHammer
			jmp TOUCHED_SOMETHING
		DECREMENT_LOOP:
		inc movX
		dec hammerCount
		jnz HAMMER_LOOP

	TOUCHED_SOMETHING:
	ret

hammerFall endp