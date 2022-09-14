drawMenuPointer proc

	; Draw a small pointer to notify which option is being selected at start menu

	; TOP
	push menuX
	push menuY
	mov pusher, 15d
	push pusher
	mov pusher, 11d
	push pusher
	mov pusher, 06h
	push pusher
	call drawRect
	
	push menuX
	push menuY
	mov pusher, 1d
	push pusher
	mov pusher, 5d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, menuX
	add ax, 2d
	push ax
	push menuY
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, menuX
	add ax, 14d
	push ax
	push menuY
	mov pusher, 1d
	push pusher
	mov pusher, 5d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, menuX
	add ax, 12d
	push ax
	push menuY
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; BASE
	mov ax, menuX
	add ax, 4d
	push ax
	mov ax, menuY
	add ax, 12d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 5Ah
	push pusher
	call drawRect

	ret

drawMenuPointer endp