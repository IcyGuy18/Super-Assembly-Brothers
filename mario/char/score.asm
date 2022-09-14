showScore proc

	; Show the score, level, and lives at the top of screen

	mov ah, 02h
	mov dl, 13
	int 21h
	mov ah, 09h
	mov dx, offset charLivesStr
	int 21h
	mov ah, 02h
	mov dl, charLives
	add dl, 48
	int 21h
	
	mov ah, 09h
	mov dx, offset levelStr
	int 21h
	mov ah, 02h
	mov dl, levelCount
	add dl, 48
	int 21h
	
	mov ah, 09h
	mov dx, offset scoreStr
	int 21h

	mov ax, score
	
	INPUT:
		mov dx, 0
		div divider
		push dx
		inc pushCount
		cmp ax, 0
		ja INPUT
	OUTPUT:
		pop dx
		add dx, 48
		mov ah, 02h
		int 21h
		dec pushCount
		cmp pushCount, 0
		ja OUTPUT
	
	ret

showScore endp