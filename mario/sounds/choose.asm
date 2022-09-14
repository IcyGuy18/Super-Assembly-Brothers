playChoose proc

	cmp soundChooseCount, 0
	je SKIP_CHOOSE_SOUND
	
	dec soundChooseCount
	cmp soundChooseCount, 0
	je SKIP_CHOOSE_SOUND
	
	cmp soundChooseCount, 1
	je STOP_SOUND
	
	cmp soundChooseCount, 10000
	jb SECOND_STEP
	
	FIRST_STEP:
	mov ax, 1000d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_CHOOSE_SOUND
	
	SECOND_STEP:
	mov ax, 1300d
	
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_CHOOSE_SOUND
	
	STOP_SOUND:
	mov al, 61h
	out 61h, al
	
	SKIP_CHOOSE_SOUND:
	ret

playChoose endp