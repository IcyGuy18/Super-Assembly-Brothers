drawMario proc

	; Idle Mario, when standing or only moving horizontally, this is drawn
	; Cover the sides, top, and bottom with background colour so we don't have to call a redraw function to remove the previous instance of Mario when moving
	; SIDES
	mov ax, charX
	sub ax, 4d
	push ax
	mov ax, charY
	sub ax, 2d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 35d
	push pusher
	push charBackgroundColour
	call drawRect
	
	push charX
	mov ax, charY
	sub ax, 2d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 5d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, charX
	add ax, 20d
	push ax
	mov ax, charY
	sub ax, 2d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 5d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, charX
	add ax, 26d
	push ax
	mov ax, charY
	sub ax, 2d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 35d
	push pusher
	push charBackgroundColour
	call drawRect

	; TOP
	mov ax, charX
	add ax, 4d
	push ax
	mov ax, charY
	sub ax, 4d
	push ax
	mov pusher, 15d
	push pusher
	mov pusher, 3d
	push pusher
	push charBackgroundColour
	call drawRect
	
	; LINE 1
	mov ax, charX
	add ax, 2d
	push ax
	push charY
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, charX
	mov pusher, ax
	add pusher, 6d
	push pusher
	mov ax, charY
	mov pusher, ax
	push pusher
	mov pusher, 12d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 18d
	push ax
	push charY
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	; LINE 2
	mov ax, charX
	add ax, 2d
	push ax
	mov ax, charY
	add ax, 2d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	mov pusher, ax
	add pusher, 4d
	push pusher
	mov ax, charY
	mov pusher, ax
	add pusher, 2d
	push pusher
	mov pusher, 20d
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
	add ax, 2d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
		
	; LINE 3
	push charX
	mov ax, charY
	add ax, 4d
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
	add ax, 4d
	push ax
	mov pusher, 5d
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
	add ax, 4d
	push ax
	mov pusher, 9d
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
	add ax, 4d
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
	add ax, 4d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
		
	; LINE 4
	push charX
	mov ax, charY
	add ax, 6d
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
	add ax, 6d
	push ax
	mov pusher, 19d
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
	add ax, 6d
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
	add ax, 24d
	push ax
	mov ax, charY
	add ax, 6d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
		
	; LINE 5
	push charX
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
	mov pusher, 21d
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
	mov pusher, 3d
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
	add ax, 8d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawSquare

	mov ax, charX
	add ax, 26d
	push ax
	mov ax, charY
	add ax, 8d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare

	; LINE 6
	push charX
	mov ax, charY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare

	mov ax, charX
	add ax, 2d
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
	add ax, 6d
	push ax
	mov ax, charY
	add ax, 10d
	push ax
	mov pusher, 7d
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

	mov ax, charX
	add ax, 24d
	push ax
	mov ax, charY
	add ax, 10d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	; LINE 7
	push charX
	mov ax, charY
	add ax, 12d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, charX
	mov pusher, ax
	add pusher, 6d
	push pusher
	mov ax, charY
	mov pusher, ax
	add pusher, 12d
	push pusher
	mov pusher, 16d
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
	add ax, 12d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	; LINE 8
	push charX
	mov ax, charY
	add ax, 14d
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
	add ax, 14d
	push ax
	mov pusher, 13d
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
	add ax, 14d
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
	add ax, 14d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
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
	add ax, 8d
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
	add ax, 14d
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
	add ax, 24d
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

	; LINE 10
	mov ax, charX
	sub ax, 2d
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
	mov pusher, 25d
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
	add ax, 18d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 26d
	push ax
	mov ax, charY
	add ax, 18d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
		
	; LINE 11
	mov ax, charX
	sub ax, 2d
	push ax
	mov ax, charY
	add ax, 20d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare

	push charX
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
	add ax, 6d
	push ax
	mov ax, charY
	add ax, 20d
	push ax
	mov pusher, 11d
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
	add ax, 20d
	push ax
	mov pusher, 5d
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
	add ax, 20d
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
	add ax, 20d
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
	add ax, 20d
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
	add ax, 20d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawSquare

	mov ax, charX
	add ax, 26d
	push ax
	mov ax, charY
	add ax, 20d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare

	; LINE 12
	mov ax, charX
	sub ax, 2d
	push ax
	mov ax, charY
	add ax, 22d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	push charX
	mov ax, charY
	add ax, 22d
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
	add ax, 18d
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
	add ax, 26d
	push ax
	mov ax, charY
	add ax, 22d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare

	; LINE 13
	mov ax, charX
	sub ax, 2d
	push ax
	mov ax, charY
	add ax, 24d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
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
	
	mov ax, charX
	add ax, 4d
	push ax
	mov ax, charY
	add ax, 24d
	push ax
	mov pusher, 15d
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
	add ax, 24d
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
	add ax, 24d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
		
	; LINE 14
	mov ax, charX
	sub ax, 2d
	push ax
	mov ax, charY
	add ax, 26d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, charX
	add ax, 4d
	push ax
	mov ax, charY
	add ax, 26d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 12d
	push ax
	mov ax, charY
	add ax, 26d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 14d
	push ax
	mov ax, charY
	add ax, 26d
	push ax
	mov pusher, 7d
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
	add ax, 26d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect

	; LINE 15
	mov ax, charX
	sub ax, 2d
	push ax
	mov ax, charY
	add ax, 28d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, charX
	add ax, 2d
	push ax
	mov ax, charY
	add ax, 28d
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
	add ax, 28d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect

	mov ax, charX
	add ax, 16d
	push ax
	mov ax, charY
	add ax, 28d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect
	
	mov ax, charX
	add ax, 24d
	push ax
	mov ax, charY
	add ax, 28d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
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

	push charX
	mov ax, charY
	add ax, 30d
	push ax
	mov pusher, 9d
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
	add ax, 30d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, charX
	add ax, 14d
	push ax
	mov ax, charY
	add ax, 30d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare

	mov ax, charX
	add ax, 16d
	push ax
	mov ax, charY
	add ax, 30d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 73h
	push pusher
	call drawRect

	mov ax, charX
	add ax, 26d
	push ax
	mov ax, charY
	add ax, 30d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare

	; BOTTOM
	mov ax, charX
	add ax, 12d
	push ax
	mov ax, charY
	add ax, 26d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 5d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, charX
	sub ax, 2d
	push ax
	mov ax, charY
	add ax, 32d
	push ax
	mov pusher, 29d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect

	ret

drawMario endp