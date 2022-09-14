playWin proc

	cmp soundWinCount, 0
	je SKIP_WIN_SOUND

	dec soundWinCount
	
	cmp soundWinCount, 23500
	ja NOTE_ONE
	
	cmp soundWinCount, 23000
	ja NOTE_TWO
	
	cmp soundWinCount, 22500
	ja NOTE_ONE
	
	cmp soundWinCount, 21000
	ja NOTE_THREE
	
	cmp soundWinCount, 19500
	ja STOP_SOUND
	
	cmp soundWinCount, 18000
	ja NOTE_FOUR
	
	cmp soundWinCount, 16500
	ja NOTE_TWO
	
	cmp soundWinCount, 15000
	ja NOTE_ONE
	
	cmp soundWinCount, 13500
	ja STOP_SOUND
	
	cmp soundWinCount, 12000
	ja NOTE_FIVE
	
	cmp soundWinCount, 10500
	ja NOTE_SIX
	
	cmp soundWinCount, 9000
	ja NOTE_SEVEN
	
	cmp soundWinCount, 7500
	ja NOTE_SIX
	
	cmp soundWinCount, 6000
	ja NOTE_EIGHT
	
	cmp soundWinCount, 4500
	ja NOTE_NINE
	
	cmp soundWinCount, 3000
	ja NOTE_SEVEN
	
	cmp soundWinCount, 1500
	ja STOP_SOUND
	
	cmp soundWinCount, 10
	jae NOTE_FIVE
	
	cmp soundWinCount, 0
	jae STOP_SOUND

	NOTE_ONE:
	mov ax, 3043d ; G Major
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_WIN_SOUND
	
	NOTE_TWO:
	mov ax, 3224d ; F Minor
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_WIN_SOUND
	
	NOTE_THREE:
	mov ax, 3619d ; E Major
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_WIN_SOUND
	
	NOTE_FOUR:
	mov ax, 3416d ; F Major
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_WIN_SOUND
	
	NOTE_FIVE:
	mov ax, 2280d ; C Major
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_WIN_SOUND
	
	NOTE_SIX:
	mov ax, 1809d ; E Major
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_WIN_SOUND
	
	NOTE_SEVEN:
	mov ax, 2031d ; D Major
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_WIN_SOUND
	
	NOTE_EIGHT:
	mov ax, 1715d ; F Major
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_WIN_SOUND
	
	NOTE_NINE:
	mov ax, 2415d ; B Major
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_WIN_SOUND
	
	STOP_SOUND:
	mov al, 61h
	out 61h, al
	
	SKIP_WIN_SOUND:
	ret
	
playWin endp