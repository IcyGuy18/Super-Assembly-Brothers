drawGoomba proc

	; Drawing a goomba line by line

	; LINE 1
	mov ax, goombaX
	add ax, 10d
	push ax
	push goombaY
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, goombaX
	mov pusher, ax
	add pusher, 12d
	push pusher
	mov ax, goombaY
	mov pusher, ax
	push pusher
	mov pusher, 8d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 06h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 20d
	push ax
	push goombaY
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 2
	mov ax, goombaX
	add ax, 8d
	push ax
	mov ax, goombaY
	add ax, 2d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, goombaX
	mov pusher, ax
	add pusher, 10d
	push pusher
	mov ax, goombaY
	mov pusher, ax
	add pusher, 2d
	push pusher
	mov pusher, 12d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 06h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 22d
	push ax
	mov ax, goombaY
	add ax, 2d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 3
	mov ax, goombaX
	add ax, 6d
	push ax
	mov ax, goombaY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, goombaX
	mov pusher, ax
	add pusher, 8d
	push pusher
	mov ax, goombaY
	mov pusher, ax
	add pusher, 4d
	push pusher
	mov pusher, 16d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 06h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 24d
	push ax
	mov ax, goombaY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 4
	mov ax, goombaX
	add ax, 4d
	push ax
	mov ax, goombaY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	
	mov ax, goombaX
	mov pusher, ax
	add pusher, 6d
	push pusher
	mov ax, goombaY
	mov pusher, ax
	add pusher, 6d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 06h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 26d
	push ax
	mov ax, goombaY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 5
	mov ax, goombaX
	add ax, 2d
	push ax
	mov ax, goombaY
	add ax, 8d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, goombaX
	add ax, 4d
	push ax
	mov ax, goombaY
	add ax, 8d
	push ax
	mov pusher, 23d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 06h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 6d
	push ax
	mov ax, goombaY
	add ax, 8d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 22d
	push ax
	mov ax, goombaY
	add ax, 8d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 28d
	push ax
	mov ax, goombaY
	add ax, 8d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 6
	push goombaX
	mov ax, goombaY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, goombaX
	add ax, 2d
	push ax
	mov ax, goombaY
	add ax, 10d
	push ax
	mov pusher, 27d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 06h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 8d
	push ax
	mov ax, goombaY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawSquare
	
	mov ax, goombaX
	add ax, 10d
	push ax
	mov ax, goombaY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, goombaX
	add ax, 20d
	push ax
	mov ax, goombaY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, goombaX
	add ax, 22d
	push ax
	mov ax, goombaY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawSquare
	
	mov ax, goombaX
	add ax, 30d
	push ax
	mov ax, goombaY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
		
	; LINE 7
	push goombaX
	mov ax, goombaY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, goombaX
	add ax, 2d
	push ax
	mov ax, goombaY
	add ax, 12d
	push ax
	mov pusher, 27d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 06h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 8d
	push ax
	mov ax, goombaY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawSquare
	
	mov ax, goombaX
	mov pusher, ax
	add pusher, 10d
	push pusher
	mov ax, goombaY
	mov pusher, ax
	add pusher, 12d
	push pusher
	mov pusher, 11d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 22d
	push ax
	mov ax, goombaY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawSquare
	
	mov ax, goombaX
	add ax, 30d
	push ax
	mov ax, goombaY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 8
	mov ax, goombaX
	sub ax, 2d
	push ax
	mov ax, goombaY
	add ax, 14d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	push goombaX
	mov ax, goombaY
	add ax, 14d
	push ax
	mov pusher, 31d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 06h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 8d
	push ax
	mov ax, goombaY
	add ax, 14d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 10d
	push ax
	mov ax, goombaY
	add ax, 14d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, goombaX
	add ax, 18d
	push ax
	mov ax, goombaY
	add ax, 14d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 20d
	push ax
	mov ax, goombaY
	add ax, 14d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, goombaX
	add ax, 32d
	push ax
	mov ax, goombaY
	add ax, 14d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 9
	mov ax, goombaX
	sub ax, 2d
	push ax
	mov ax, goombaY
	add ax, 16d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	push goombaX
	mov ax, goombaY
	add ax, 16d
	push ax
	mov pusher, 31d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 06h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 8d
	push ax
	mov ax, goombaY
	add ax, 16d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 18d
	push ax
	mov ax, goombaY
	add ax, 16d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 32d
	push ax
	mov ax, goombaY
	add ax, 16d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
		
	; LINE 10
	mov ax, goombaX
	sub ax, 2d
	push ax
	mov ax, goombaY
	add ax, 18d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, goombaX
	mov pusher, ax
	push pusher
	mov ax, goombaY
	mov pusher, ax
	add pusher, 18d
	push pusher
	mov pusher, 31d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 06h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 32d
	push ax
	mov ax, goombaY
	add ax, 18d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 11
	push goombaX
	mov ax, goombaY
	add ax, 20d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, goombaX
	add ax, 2d
	push ax
	mov ax, goombaY
	add ax, 20d
	push ax
	mov pusher, 27d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 06h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 10d
	push ax
	mov ax, goombaY
	add ax, 20d
	push ax
	mov pusher, 11d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 5Ah
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 30d
	push ax
	mov ax, goombaY
	add ax, 20d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare

	; LINE 12
	mov ax, goombaX
	add ax, 6d
	push ax
	mov ax, goombaY
	add ax, 22d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, goombaX
	mov pusher, ax
	add pusher, 8d
	push pusher
	mov ax, goombaY
	mov pusher, ax
	add pusher, 22d
	push pusher
	mov pusher, 15d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 5Ah
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 24d
	push ax
	mov ax, goombaY
	add ax, 22d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 13
	mov ax, goombaX
	add ax, 2d
	push ax
	mov ax, goombaY
	add ax, 24d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, goombaX
	add ax, 4d
	push ax
	mov ax, goombaY
	add ax, 24d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 8d
	push ax
	mov ax, goombaY
	add ax, 24d
	push ax
	mov pusher, 15d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 5Ah
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 24d
	push ax
	mov ax, goombaY
	add ax, 24d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 28d
	push ax
	mov ax, goombaY
	add ax, 24d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 14
	push goombaX
	mov ax, goombaY
	add ax, 26d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare

	mov ax, goombaX
	add ax, 2d
	push ax
	mov ax, goombaY
	add ax, 26d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect

	mov ax, goombaX
	add ax, 12d
	push ax
	mov ax, goombaY
	add ax, 26d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 5Ah
	push pusher
	call drawRect

	mov ax, goombaX
	add ax, 20d
	push ax
	mov ax, goombaY
	add ax, 26d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect

	mov ax, goombaX
	add ax, 30d
	push ax
	mov ax, goombaY
	add ax, 26d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
		
	; LINE 15
	push goombaX
	mov ax, goombaY
	add ax, 28d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, goombaX
	add ax, 2d
	push ax
	mov ax, goombaY
	add ax, 28d
	push ax
	mov pusher, 11d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 14d
	push ax
	mov ax, goombaY
	add ax, 28d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 5Ah
	push pusher
	call drawRect

	mov ax, goombaX
	add ax, 18d
	push ax
	mov ax, goombaY
	add ax, 28d
	push ax
	mov pusher, 11d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 30d
	push ax
	mov ax, goombaY
	add ax, 28d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
		
	; LINE 1
	mov ax, goombaX
	add ax, 2d
	push ax
	mov ax, goombaY
	add ax, 30d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, goombaX
	add ax, 4d
	push ax
	mov ax, goombaY
	add ax, 30d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, goombaX
	add ax, 14d
	push ax
	mov ax, goombaY
	add ax, 30d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 5Ah
	push pusher
	call drawRect

	mov ax, goombaX
	add ax, 18d
	push ax
	mov ax, goombaY
	add ax, 30d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect

	mov ax, goombaX
	add ax, 28d
	push ax
	mov ax, goombaY
	add ax, 30d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare

	ret

drawGoomba endp