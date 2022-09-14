joystickInput proc

	; Check the joystick's state, whether the user is using it or not
	cmp checkJoystick, 0
	je RETURN_JOYSTICK_INPUT
	; Block out joystick inputs when player has touched the flagpole
	cmp fanfareCheck, 1
	je RETURN_JOYSTICK_INPUT
	; Initialize the isTouching variable to false initially
	mov isTouching, 0

	; Check for joystick movement first
	; X-MAX: 254		X-MIN: 1
	mov ah, 84h
	mov dx, 1
	int 15h

	CHECK_X_PLUS:
	cmp ax, 254d
	jl CHECK_X_MINUS
		cmp levelCount, 0
		je RETURN_JOYSTICK_INPUT
		cmp levelCount, 4
		je RETURN_JOYSTICK_INPUT
		mov moveCheck, 2
		call checkHorizontalCollisions
		cmp isTouching, 1
		je RETURN_JOYSTICK_INPUT
		mov bx, charX
		mov charAnimX, bx
		add charX, 2d
		
	CHECK_X_MINUS:
	cmp ax, 1d
	jne CHECK_Y_PLUS
		cmp levelCount, 0
		je RETURN_JOYSTICK_INPUT
		cmp levelCount, 4
		je RETURN_JOYSTICK_INPUT
		mov moveCheck, 1
		call checkHorizontalCollisions
		cmp isTouching, 1
		je RETURN_JOYSTICK_INPUT
		mov bx, charX
		mov charAnimX, bx
		sub charX, 2d
		
	CHECK_Y_PLUS:
	cmp menuDelay, 0
	jne DECREMENT_DELAY
	
	mov ah, 84h
	mov dx, 1
	int 15h
	
	cmp bx, 254d
	jl CHECK_Y_MINUS
		cmp isMenu, 1
		jne RETURN_JOYSTICK_INPUT
		cmp menuY, 414d
		jae RETURN_JOYSTICK_INPUT
		call removeMenuPointer
		add menuY, 32d
		call drawMenuPointer
		mov soundSelectCount, 2000
		mov menuDelay, 10000
		jmp RETURN_JOYSTICK_INPUT
	CHECK_Y_MINUS:
	cmp bx, 1d
	jne CHECK_JUMP_BUTTON
		cmp isMenu, 1
		jne RETURN_JOYSTICK_INPUT
		cmp menuY, 350d
		jbe RETURN_JOYSTICK_INPUT
		call removeMenuPointer
		sub menuY, 32d
		call drawMenuPointer
		mov soundSelectCount, 2000
		mov menuDelay, 10000
		jmp RETURN_JOYSTICK_INPUT
	DECREMENT_DELAY:
		dec menuDelay
		jmp RETURN_JOYSTICK_INPUT
	CHECK_JUMP_BUTTON:
	mov ah, 84h
	mov dx, 0
	int 15h

	cmp al, 0E0h ;XBOX360 - A
	jne CHECK_SWITCH_BUTTON
		cmp levelCount, 4
		je GO_TO_MENU
		
		cmp isMenu, 0
		je CHECK_INGAME
		cmp isMenu, 2
		je CHECK_HELP
		
		cmp menuY, 350d
		jne CHECK_SECOND_OPTION
			mov isMenu, 0
			inc levelCount
			jmp RETURN_JOYSTICK_INPUT
		CHECK_SECOND_OPTION:
		cmp menuY, 382d
		jne CHECK_THIRD_OPTION
			mov soundChooseCount, 20000
			mov menuDelay, 10000
			mov isMenu, 2
			jmp RETURN_JOYSTICK_INPUT
		CHECK_THIRD_OPTION:
		cmp menuY, 414
		jne RETURN_JOYSTICK_INPUT
			mov exitCode, 1
		jmp RETURN_JOYSTICK_INPUT
		
		CHECK_INGAME:
		cmp jumpCheck, 1 ; Check if player has already jumped
		je RETURN_JOYSTICK_INPUT
		cmp fallCheck, 1 ; Check if player is falling down
		je RETURN_JOYSTICK_INPUT
		mov jumpCheck, 1
		mov jumpCount, 60d
		mov soundCoinShiftCount, 0
		jmp RETURN_JOYSTICK_INPUT
		
		CHECK_HELP:
			mov soundChooseCount, 20000
			mov menuDelay, 60000
			mov isMenu, 1
			jmp RETURN_JOYSTICK_INPUT
		
		GO_TO_MENU:
			mov isMenu, 1
			jmp RETURN_JOYSTICK_INPUT

	CHECK_SWITCH_BUTTON:
	cmp al, 0B0h ;XBOX360 - X
	jne CHECK_EXIT_BUTTON
		mov checkJoystick, 0
		mov displayOnce, 0
		jmp RETURN_JOYSTICK_INPUT
		
	CHECK_EXIT_BUTTON:
	cmp al, 070h ;XBOX360 - Y
	jne RETURN_JOYSTICK_INPUT
		mov exitCode, 1
	RETURN_JOYSTICK_INPUT:
	ret

joystickInput endp