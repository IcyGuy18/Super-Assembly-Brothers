playSelect proc
	
	cmp soundSelectCount, 0
	je SKIP_SELECT_SOUND
	
	dec soundSelectCount
	cmp soundSelectCount, 0
	je SKIP_SELECT_SOUND
	
	cmp soundSelectCount, 1
	je STOP_SOUND
	
	mov ax, 1600d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_SELECT_SOUND
	
	STOP_SOUND:
	mov al, 61h
	out 61h, al
	
	SKIP_SELECT_SOUND:
	ret

playSelect endp