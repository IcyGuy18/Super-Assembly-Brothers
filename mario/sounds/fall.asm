playFall proc
	
	cmp fallCheck, 0
	je STOP_SOUND
	
	cmp tempSoundFallTone, 4304d
	jne SKIP_INITIAL_ASSIGNMENT
	
	jmp INITIAL_ASSIGNMENT_DONE
	
	SKIP_INITIAL_ASSIGNMENT:
	mov ax, tempSoundFallTone
	add ax, 50 ; Change tone gradient
	
	INITIAL_ASSIGNMENT_DONE:
	mov tempSoundFallTone, ax
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_STOP_SOUND

	STOP_SOUND:
	mov al, 61h
	out 61h, al
	SKIP_STOP_SOUND:
	
	ret

playFall endp