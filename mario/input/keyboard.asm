keyboardInput proc

	; Initialize the isTouching variable to be false so program can see if player is allowed to move left/right
	mov isTouching, 0

	mov ah, 01h
	int 16h
	jz END_INPUT
	mov ah, 00h
	int 16h
	; Check if user is using joystick or not
	cmp checkJoystick, 1
	je REFRESH_INPUT
	; Block out keyboard inputs when player has touched the flagpole
	cmp fanfareCheck, 1
	je END_INPUT
	
	; Compare the UP arrow key (for menu)
	cmp ah, 48h
	jne DOWN
		cmp isMenu, 1
		jne END_INPUT
		cmp menuY, 350d
		jbe END_INPUT
		call removeMenuPointer
		sub menuY, 32d
		call drawMenuPointer
		mov soundSelectCount, 2000
		jmp END_INPUT
	DOWN:
	; Compare the DOWN arrow key (for menu)
	cmp ah, 50h
	jne CHANGE_INPUT
		cmp isMenu, 1
		jne END_INPUT
		cmp menuY, 414d
		jae END_INPUT
		call removeMenuPointer
		add menuY, 32d
		call drawMenuPointer
		mov soundSelectCount, 2000
		jmp END_INPUT
	CHANGE_INPUT:
	; Check if user pressed 1 to chenge input
	cmp ah, 02h
	jne LEFT
		; If a joystick was detected at startup, the program will allow changing control to a joystick
		cmp joystickConnected, 1
		jne END_INPUT
		mov displayOnce, 0
		mov checkJoystick, 1
		jmp END_INPUT
	LEFT:
	; Check if user pressed LEFT arrow key
	cmp ah, 4Bh
	jne RIGHT
		cmp levelCount, 0
		je END_INPUT
		cmp levelCount, 4
		je END_INPUT
		mov moveCheck, 1
		call checkHorizontalCollisions
		cmp isTouching, 1
		je END_INPUT
		mov bx, charX
		mov charAnimX, bx
		sub charX, 2d
		;call removeCharTrace
	jmp END_INPUT
	RIGHT:
	; Check if user pressed RIGHT arrow key
	cmp ah, 4Dh
	jne JUMP
		cmp levelCount, 0
		je END_INPUT
		cmp levelCount, 4
		je END_INPUT
		mov moveCheck, 2
		call checkHorizontalCollisions
		cmp isTouching, 1
		je END_INPUT
		mov bx, charX
		mov charAnimX, bx
		add charX, 2d
		;call removeCharTrace
	jmp END_INPUT
	JUMP:
	; Check if user pressed ENTER key
	cmp ah, 39h
	jne ENTER_KEY
	
		cmp isMenu, 1
		je END_INPUT
		cmp isMenu, 2
		je END_INPUT
	
		cmp jumpCheck, 1 ; Check if player has already jumped
		je END_INPUT
		cmp fallCheck, 1 ; Check if player is falling down
		je END_INPUT
		call playJump
			mov jumpCheck, 1
		mov jumpCount, 60d
		mov soundCoinShiftCount, 0
		jmp END_INPUT
		
	jmp END_INPUT
	ENTER_KEY:
	cmp ah, 1Ch
	jne ESCAPE
		; If on screen, credits are being shown, return back to title screen
		cmp levelCount, 4
		je GO_TO_MENU
		
		; If isMenu == 0, do nothing. If isMenu == 2, go back from help menu to title screen
		cmp isMenu, 0
		je END_INPUT
		cmp isMenu, 2
		je CHECK_HELP
		; Compare the position of the pointer
		cmp menuY, 350d
		jne CHECK_SECOND_OPTION
			; Pointer was at the start option and was pressed, so the game starts
			mov isMenu, 0
			inc levelCount
			jmp END_INPUT
		CHECK_SECOND_OPTION:
		cmp menuY, 382d
		jne CHECK_THIRD_OPTION
			; Pointer was at help option so help menu will be displayed
			mov soundChooseCount, 20000
			mov isMenu, 2
			jmp END_INPUT
		CHECK_THIRD_OPTION:
		cmp menuY, 414
		jne END_INPUT
			; Pointer was at exit option so exit code will be flagged true
			mov exitCode, 1
		jmp END_INPUT
		
		; Going to help menu from title screen
		CHECK_HELP:
		mov soundChooseCount, 20000
		mov isMenu, 1
		jmp END_INPUT
		; Returning back from help to title screen
		GO_TO_MENU:
			mov isMenu, 1
			jmp END_INPUT
	ESCAPE:
	; Check if user pressed the ESC button
	cmp ah, 01
	jne END_INPUT
	mov exitCode, 1
	jmp END_INPUT
	
	REFRESH_INPUT:
	mov ax, 0C00h
	int 21h
	
	END_INPUT:
	ret

keyboardInput endp