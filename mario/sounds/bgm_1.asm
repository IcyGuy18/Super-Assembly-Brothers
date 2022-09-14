playMusic proc

	; This function was intended to play the .WAV file using the "PLANY.EXE" and multithreading the program to run alognside the game. Was not achievable so this is deprecated

	mov ah, 4Bh
	mov al, 00
	mov dx, offset musicPlayerFilePath
	mov bx, offset parameters
	int 21h
	
	ret
	
playMusic endp