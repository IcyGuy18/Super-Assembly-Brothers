drawMarioJump proc

	; Draw a jumping Mario when jump check == 1 || fall check == 1

	; ABOVE
	mov ax, charX
	add ax, 20d
	push ax
	mov ax, charY
	sub ax, 4d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 3d
	push pusher
	push charBackgroundColour
	call drawRect
	
	push charX
	mov ax, charY
	sub ax, 2d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 15d
	push pusher
	push charBackgroundColour
	call drawRect

	; LINE 1
	mov ax, charX
	add ax, 6d
	push ax
	mov ax, charY
	sub ax, 2d
	push ax
	mov pusher, 15d
	push pusher
	mov pusher, 3d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, charX
	add ax, 28d
	push ax
	push charY
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 22d
	push ax
	push charY
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	; LINE 2
	mov ax, charX
	add ax, 4d
	push ax
	mov ax, charY
	add ax, 2d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, charX
	add ax, 20d
	push ax
	mov ax, charY
	add ax, 2d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 28d
	push ax
	mov ax, charY
	add ax, 2d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 8d
	push ax
	mov ax, charY
	add ax, 2d
	push ax
	mov pusher, 11d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 22d
	push ax
	mov ax, charY
	add ax, 2d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	; LINE 3
	mov ax, charX
	add ax, 4d
	push ax
	mov ax, charY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 28d
	push ax
	mov ax, charY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 6d
	push ax
	mov ax, charY
	add ax, 4d
	push ax
	mov pusher, 17d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 24d
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
	
	; LINE 4
	mov ax, charX
	add ax, 4d
	push ax
	mov ax, charY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 2d
	push ax
	mov ax, charY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 28d
	push ax
	mov ax, charY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 6d
	push ax
	mov ax, charY
	add ax, 6d
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
	add ax, 6d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 12d
	push ax
	mov ax, charY
	add ax, 6d
	push ax
	mov pusher, 9d
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
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawSquare
	
	; LINE 5
	mov ax, charX
	add ax, 2d
	push ax
	mov ax, charY
	add ax, 8d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 28d
	push ax
	mov ax, charY
	add ax, 8d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 4d
	push ax
	mov ax, charY
	add ax, 8d
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
	add ax, 8d
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
	add ax, 8d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 10d
	push ax
	mov ax, charY
	add ax, 8d
	push ax
	mov pusher, 11d
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
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawSquare
	
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
	mov pusher, 73h
	push pusher
	call drawRect
	
	; LINE 6
	mov ax, charX
	add ax, 2d
	push ax
	mov ax, charY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 28d
	push ax
	mov ax, charY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 4d
	push ax
	mov ax, charY
	add ax, 10d
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
	add ax, 10d
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
	add ax, 10d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 12d
	push ax
	mov ax, charY
	add ax, 10d
	push ax
	mov pusher, 5d
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
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 20d
	push ax
	mov ax, charY
	add ax, 10d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 26d
	push ax
	mov ax, charY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawSquare
	
	; LINE 7
	mov ax, charX
	add ax, 2d
	push ax
	mov ax, charY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 26d
	push ax
	mov ax, charY
	add ax, 12d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, charX
	add ax, 4d
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
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 16d
	push ax
	mov ax, charY
	add ax, 12d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect
	
	; LINE 8
	push charX
	mov ax, charY
	add ax, 14d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, charX
	add ax, 26d
	push ax
	mov ax, charY
	add ax, 14d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 8d
	push ax
	mov ax, charY
	add ax, 14d
	push ax
	mov pusher, 13d
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
	sub ax, 2d
	push ax
	mov ax, charY
	add ax, 16d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, charX
	add ax, 24d
	push ax
	mov ax, charY
	add ax, 16d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, charX
	add ax, 2d
	push ax
	mov ax, charY
	add ax, 16d
	push ax
	mov pusher, 21d
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
	add ax, 16d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 18d
	push ax
	mov ax, charY
	add ax, 16d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawSquare
	
	; LINE 10
	mov ax, charX
	sub ax, 4d
	push ax
	mov ax, charY
	add ax, 18d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, charX
	add ax, 22d
	push ax
	mov ax, charY
	add ax, 18d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 28d
	push ax
	mov ax, charY
	add ax, 18d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	push charX
	mov ax, charY
	add ax, 18d
	push ax
	mov pusher, 19d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 24
	push ax
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
	add ax, 12d
	push ax
	mov ax, charY
	add ax, 18d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 20d
	push ax
	mov ax, charY
	add ax, 18d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawSquare

	; LINE 11
	mov ax, charX
	sub ax, 4d
	push ax
	mov ax, charY
	add ax, 20d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 22d
	push ax
	mov ax, charY
	add ax, 20d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 28d
	push ax
	mov ax, charY
	add ax, 20d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare

	mov ax, charX
	sub ax, 2d
	push ax
	mov ax, charY
	add ax, 20d
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
	add ax, 20d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect

	mov ax, charX
	add ax, 12d
	push ax
	mov ax, charY
	add ax, 20d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect

	mov ax, charX
	add ax, 24d
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
	
	; LINE 12
	mov ax, charX
	sub ax, 4d
	push ax
	mov ax, charY
	add ax, 22d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 3d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, charX
	add ax, 28d
	push ax
	mov ax, charY
	add ax, 22d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare

	mov ax, charX
	sub ax, 2d
	push ax
	mov ax, charY
	add ax, 22d
	push ax
	mov pusher, 7d
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
	add ax, 22d
	push ax
	mov pusher, 15d
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
	mov pusher, 73h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 12d
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
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawSquare

	mov ax, charX
	add ax, 22d
	push ax
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
	
	; LINES 13-14
	mov ax, charX
	sub ax, 2d
	push ax
	mov ax, charY
	add ax, 24d
	push ax
	mov pusher, 3d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 28d
	push ax
	mov ax, charY
	add ax, 24d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 3d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, charX
	add ax, 2d
	push ax
	mov ax, charY
	add ax, 24d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 73h
	push pusher
	call drawSquare
	
	mov ax, charX
	add ax, 22d
	push ax
	mov ax, charY
	add ax, 24d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 3d
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
	mov pusher, 15d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	push charX
	mov ax, charY
	add ax, 24d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	; LINE 15
	mov ax, charX
	sub ax, 2d
	push ax
	mov ax, charY
	add ax, 28d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 20d
	push ax
	mov ax, charY
	add ax, 28d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	push charX
	mov ax, charY
	add ax, 28d
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
	add ax, 28d
	push ax
	mov pusher, 13d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	; LINE 16
	mov ax, charX
	sub ax, 2d
	push ax
	mov ax, charY
	add ax, 30d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 4d
	push ax
	mov ax, charY
	add ax, 30d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, charX
	add ax, 14d
	push ax
	mov ax, charY
	add ax, 30d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	push charX
	mov ax, charY
	add ax, 30d
	push ax
	mov pusher, 3d
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
	add ax, 30d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	; BOTTOM
	mov ax, charX
	add ax, 14d
	push ax
	mov ax, charY
	add ax, 30d
	push ax
	mov pusher, 15d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, charX
	sub ax, 2d
	push ax
	mov ax, charY
	add ax, 32d
	push ax
	mov pusher, 31d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect

	ret

drawMarioJump endp