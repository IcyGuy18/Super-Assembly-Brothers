drawMarioDead proc

	; Remove previous instance of Mario first
	mov ax, charX
	sub ax, 2d
	push ax
	mov ax, charY
	sub ax, 2d
	push ax
	mov pusher, 29d
	push pusher
	mov pusher, 33d
	push pusher
	push charBackgroundColour
	call drawRect
	
	; Now draw the dead Mario, only the outline. No need to retrace (or draw background around it)
	; LINE 1
	mov ax, charX
	add ax, 8d
	push ax
	push charY
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	; LINE 2
	mov ax, charX
	add ax, 2d
	push ax
	mov ax, charY
	add ax, 2d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 20d
	push ax
	mov ax, charY
	add ax, 2d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 6d
	push ax
	mov ax, charY
	add ax, 2d
	push ax
	mov pusher, 13d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	; LINE 3
	mov ax, charX
	sub ax, 2d
	push ax
	mov ax, charY
	add ax, 4d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 10d
	push ax
	mov ax, charY
	add ax, 4d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 20d
	push ax
	mov ax, charY
	add ax, 4d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 4d
	push ax
	mov ax, charY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 8d
	push ax
	mov ax, charY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 14d
	push ax
	mov ax, charY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 18d
	push ax
	mov ax, charY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 6d
	push ax
	mov ax, charY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 16d
	push ax
	mov ax, charY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawSquare
	
	; LINE 4
	mov ax, charX
	sub ax, 2d
	push ax
	mov ax, charY
	add ax, 6d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 10d
	push ax
	mov ax, charY
	add ax, 6d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 22d
	push ax
	mov ax, charY
	add ax, 6d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 6d
	push ax
	mov ax, charY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 16d
	push ax
	mov ax, charY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 8d
	push ax
	mov ax, charY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 14d
	push ax
	mov ax, charY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 2d
	push ax
	mov ax, charY
	add ax, 6d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 18d
	push ax
	mov ax, charY
	add ax, 6d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect
	
	; LINE 5
	mov ax, charX
	sub ax, 2d
	push ax
	mov ax, charY
	add ax, 8d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 2d
	push ax
	mov ax, charY
	add ax, 8d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 8d
	push ax
	mov ax, charY
	add ax, 8d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 16d
	push ax
	mov ax, charY
	add ax, 8d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 22d
	push ax
	mov ax, charY
	add ax, 8d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	; LINE 6
	mov ax, charX
	add ax, 2d
	push ax
	mov ax, charY
	add ax, 10d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 10d
	push ax
	mov ax, charY
	add ax, 10d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 14d
	push ax
	mov ax, charY
	add ax, 10d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect

	; LINE 7
	mov ax, charX
	add ax, 4d
	push ax
	mov ax, charY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 6d
	push ax
	mov ax, charY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 8d
	push ax
	mov ax, charY
	add ax, 12d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 16d
	push ax
	mov ax, charY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 18d
	push ax
	mov ax, charY
	add ax, 12d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect

	; LINE 8
	mov ax, charX
	add ax, 4d
	push ax
	mov ax, charY
	add ax, 14d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 6d
	push ax
	mov ax, charY
	add ax, 14d
	push ax
	mov pusher, 11d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 18d
	push ax
	mov ax, charY
	add ax, 14d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect

	; LINE 9
	mov ax, charX
	add ax, 2d
	push ax
	mov ax, charY
	add ax, 16d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 8d
	push ax
	mov ax, charY
	add ax, 16d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 16d
	push ax
	mov ax, charY
	add ax, 16d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	; LINE 10
	push charX
	mov ax, charY
	add ax, 18d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect

	mov ax, charX
	add ax, 4d
	push ax
	mov ax, charY
	add ax, 18d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect

	mov ax, charX
	add ax, 8d
	push ax
	mov ax, charY
	add ax, 18d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect

	mov ax, charX
	add ax, 16d
	push ax
	mov ax, charY
	add ax, 18d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect

	mov ax, charX
	add ax, 20d
	push ax
	mov ax, charY
	add ax, 18d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect

	; LINE 11
	push charX
	mov ax, charY
	add ax, 20d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect

	mov ax, charX
	add ax, 6d
	push ax
	mov ax, charY
	add ax, 20d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect

	mov ax, charX
	add ax, 10d
	push ax
	mov ax, charY
	add ax, 20d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect

	mov ax, charX
	add ax, 14d
	push ax
	mov ax, charY
	add ax, 20d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect

	mov ax, charX
	add ax, 18d
	push ax
	mov ax, charY
	add ax, 20d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect
	
	; LINE 12
	push charX
	mov ax, charY
	add ax, 22d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect

	mov ax, charX
	add ax, 6d
	push ax
	mov ax, charY
	add ax, 22d
	push ax
	mov pusher, 11d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 8d
	push ax
	mov ax, charY
	add ax, 22d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 14d
	push ax
	mov ax, charY
	add ax, 22d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawSquare

	mov ax, charX
	add ax, 18d
	push ax
	mov ax, charY
	add ax, 22d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect
	
	; LINE 13
	push charX
	mov ax, charY
	add ax, 24d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 6d
	push ax
	mov ax, charY
	add ax, 24d
	push ax
	mov pusher, 11d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect

	mov ax, charX
	add ax, 18d
	push ax
	mov ax, charY
	add ax, 24d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect
	
	; LINE 14
	mov ax, charX
	add ax, 2d
	push ax
	mov ax, charY
	add ax, 26d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 6d
	push ax
	mov ax, charY
	add ax, 26d
	push ax
	mov pusher, 11d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect

	mov ax, charX
	add ax, 18d
	push ax
	mov ax, charY
	add ax, 26d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect

	ret

drawMarioDead endp