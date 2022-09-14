playGameOver proc
	
	cmp soundGameOverCount, 0
	je SKIP_GAME_OVER_SOUND
	
	dec soundGameOverCount
	
	cmp soundGameOverCount, 17000
	ja NOTE_ONE
	
	cmp soundGameOverCount, 16000
	ja STOP_SOUND
	
	cmp soundGameOverCount, 15000
	ja NOTE_TWO
	
	cmp soundGameOverCount, 14000
	ja STOP_SOUND
	
	cmp soundGameOverCount, 13000
	ja NOTE_THREE
	
	cmp soundGameOverCount, 12600
	ja STOP_SOUND
	
	cmp soundGameOverCount, 11200
	ja NOTE_FOUR
	
	cmp soundGameOverCount, 9800
	ja NOTE_FIVE
	
	cmp soundGameOverCount, 8400
	ja NOTE_FOUR
	
	cmp soundGameOverCount, 6600
	ja NOTE_SIX
	
	cmp soundGameOverCount, 4800
	ja NOTE_SEVEN
	
	cmp soundGameOverCount, 3000
	ja NOTE_SIX
	
	cmp soundGameOverCount, 10
	ja NOTE_TWO
	
	jmp STOP_SOUND
	
	NOTE_ONE:
	mov ax, 1140d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_GAME_OVER_SOUND
	
	NOTE_TWO:
	mov ax, 1521d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_GAME_OVER_SOUND
	
	NOTE_THREE:
	mov ax, 1809d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_GAME_OVER_SOUND
	
	NOTE_FOUR:
	mov ax, 1355d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_GAME_OVER_SOUND
	
	NOTE_FIVE:
	mov ax, 1207
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_GAME_OVER_SOUND
	
	NOTE_SIX:
	mov ax, 1436d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_GAME_OVER_SOUND
	
	NOTE_SEVEN:
	mov ax, 1292d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_GAME_OVER_SOUND
	
	STOP_SOUND:
	mov al, 61h
	out 61h, al
	
	SKIP_GAME_OVER_SOUND:
	ret

playGameOver endp