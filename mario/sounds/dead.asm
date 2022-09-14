playDead proc

	cmp soundDeadCount, 0
	je SKIP_DEAD_SOUND
	
	dec soundDeadCount
	
	cmp soundDeadCount, 12500
	ja NOTE_ONE
	
	cmp soundDeadCount, 11500
	ja NOTE_TWO
	
	cmp soundDeadCount, 10500
	ja STOP_SOUND
	
	cmp soundDeadCount, 9500
	ja NOTE_TWO
	
	cmp soundDeadCount, 8500
	ja STOP_SOUND
	
	cmp soundDeadCount, 7000
	ja NOTE_THREE
	
	cmp soundDeadCount, 6500
	ja STOP_SOUND
	
	cmp soundDeadCount, 5500
	ja NOTE_FOUR
	
	cmp soundDeadCount, 4500
	ja NOTE_FIVE
	
	cmp soundDeadCount, 3500
	ja NOTE_SIX
	
	cmp soundDeadCount, 2500
	ja STOP_SOUND
	
	cmp soundDeadCount, 1500
	ja NOTE_SIX
	
	cmp soundDeadCount, 500
	ja NOTE_SEVEN
	
	cmp soundDeadCount, 0
	ja STOP_SOUND

	NOTE_ONE:
	mov ax, 2280d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_DEAD_SOUND
	
	NOTE_TWO:
	mov ax, 1612d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_DEAD_SOUND
	
	NOTE_THREE:
	mov ax, 1715d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_DEAD_SOUND
	
	NOTE_FOUR:
	mov ax, 1917d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_DEAD_SOUND
	
	NOTE_FIVE:
	mov ax, 2152d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_DEAD_SOUND
	
	NOTE_SIX:
	mov ax, 2873d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_DEAD_SOUND
	
	NOTE_SEVEN:
	mov ax, 4304d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_DEAD_SOUND
	
	STOP_SOUND:
	mov al, 61h
	out 61h, al
	
	SKIP_DEAD_SOUND:
	ret

playDead endp