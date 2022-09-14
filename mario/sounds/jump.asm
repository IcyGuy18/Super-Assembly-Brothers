playJump proc

	cmp soundJumpIncreaseCount, 10
	jne SKIP_INITIAL_ASSIGNMENT
	
	mov ax, soundJumpToneInitial
	jmp INITIAL_ASSIGNMENT_DONE
	
	SKIP_INITIAL_ASSIGNMENT:
	mov ax, tempSoundJumpTone
	sub ax, 400 ; Change tone by faux gradient
	
	INITIAL_ASSIGNMENT_DONE:
	mov tempSoundJumpTone, ax
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	
	cmp soundJumpIncreaseCount, 1
	jne SKIP_STOP_SOUND
	mov al, 61h
	out 61h, al
	
	SKIP_STOP_SOUND:
	ret

playJump endp