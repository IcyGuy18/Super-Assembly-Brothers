playLevelBegin proc
	
	cmp soundLevelBeginCount, 0
	je SKIP_BEGIN_SOUND
	
	dec soundLevelBeginCount
	
	cmp soundLevelBeginCount, 700
	jb STOP_SOUND
	
	cmp soundLevelBeginCount, 1400
	jb NOTE_THREE
	
	cmp soundLevelBeginCount, 1900
	jb STOP_SOUND
	
	cmp soundLevelBeginCount, 2350
	jb NOTE_ONE
	
	cmp soundLevelBeginCount, 2850
	jb NOTE_TWO
	
	cmp soundLevelBeginCount, 3250
	jb STOP_SOUND
	
	cmp soundLevelBeginCount, 3700
	jb NOTE_ONE
	
	cmp soundLevelBeginCount, 4200
	jb STOP_SOUND
	
	cmp soundLevelBeginCount, 4500
	jb NOTE_ONE
	
	cmp soundLevelBeginCount, 4750
	jb STOP_SOUND
	
	NOTE_ONE:
	mov ax, 1809d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_BEGIN_SOUND
	
	NOTE_TWO:
	mov ax, 2280d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_BEGIN_SOUND
	
	NOTE_THREE:
	mov ax, 1521d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_BEGIN_SOUND
	
	
	STOP_SOUND:
	mov al, 61h
	out 61h, al
	
	SKIP_BEGIN_SOUND:
	ret

playLevelBegin endp