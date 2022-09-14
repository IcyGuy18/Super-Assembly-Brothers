drawHelp proc

	; Refresh the screen
	mov ax, 4F02h
	mov bx, 101h
	int 10h

	; Display text onto the screen
	mov ah, 09h
	mov dx, offset help1
	int 21h
	
	mov dx, offset help2
	int 21h
	
	mov dx, offset help3
	int 21h
	
	mov dx, offset help4
	int 21h
	
	; Call images to be drawn for attractiveness
	call drawHelpImages
	
	ret

drawHelp endp