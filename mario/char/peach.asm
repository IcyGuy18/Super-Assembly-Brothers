drawPeach proc

	; Drawing Princess Peach at the title screen and the credits

	; CROWN
	mov ax, peachX
	add ax, 4d
	push ax
	push peachY
	mov pusher, 11d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 6d
	push ax
	push peachY
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, peachX
	add ax, 12d
	push ax
	push peachY
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; HAIR AND FACE
	; LINE 3
	mov ax, peachX
	add ax, 2d
	push ax
	mov ax, peachY
	add ax, 4d
	push ax
	mov pusher, 15d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	; LINE 4
	push peachX
	mov ax, peachY
	add ax, 6d
	push ax
	mov pusher, 19d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	; LINE 5
	mov ax, peachX
	add ax, 2d
	push ax
	mov ax, peachY
	add ax, 8d
	push ax
	mov pusher, 17d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 8d
	push ax
	mov ax, peachY
	add ax, 8d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 10d
	push ax
	mov ax, peachY
	add ax, 8d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	; LINE 6
	mov ax, peachX
	add ax, 6d
	push ax
	mov ax, peachY
	add ax, 10d
	push ax
	mov pusher, 13d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 4d
	push ax
	mov ax, peachY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawSquare
	
	mov ax, peachX
	add ax, 16d
	push ax
	mov ax, peachY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawSquare
	
	mov ax, peachX
	add ax, 20d
	push ax
	mov ax, peachY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawSquare
	
	mov ax, peachX
	add ax, 10d
	push ax
	mov ax, peachY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	; LINE 7
	mov ax, peachX
	add ax, 2d
	push ax
	mov ax, peachY
	add ax, 12d
	push ax
	mov pusher, 17d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 16d
	push ax
	mov ax, peachY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawSquare
	
	mov ax, peachX
	add ax, 20d
	push ax
	mov ax, peachY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawSquare
	
	; LINE 8
	mov ax, peachX
	add ax, 4d
	push ax
	mov ax, peachY
	add ax, 14d
	push ax
	mov pusher, 15d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	; HARE EXTENDS TO BOTTOM
	mov ax, peachX
	add ax, 20d
	push ax
	mov ax, peachY
	add ax, 14d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 19d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	; LINE 9
	mov ax, peachX
	add ax, 2d
	push ax
	mov ax, peachY
	add ax, 16d
	push ax
	mov pusher, 17d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 4d
	push ax
	mov ax, peachY
	add ax, 16d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	; LINE 10
	mov ax, peachX
	add ax, 2d
	push ax
	mov ax, peachY
	add ax, 18d
	push ax
	mov pusher, 13d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 4d
	push ax
	mov ax, peachY
	add ax, 18d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 16d
	push ax
	mov ax, peachY
	add ax, 18d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	; LINE 11
	mov ax, peachX
	add ax, 4d
	push ax
	mov ax, peachY
	add ax, 20d
	push ax
	mov pusher, 11d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	; LINE 12
	mov ax, peachX
	add ax, 4d
	push ax
	mov ax, peachY
	add ax, 22d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 10d
	push ax
	mov ax, peachY
	add ax, 22d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 8d
	push ax
	mov ax, peachY
	add ax, 22d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawSquare
	
	mov ax, peachX
	add ax, 16d
	push ax
	mov ax, peachY
	add ax, 22d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawSquare
	
	mov ax, peachX
	add ax, 14d
	push ax
	mov ax, peachY
	add ax, 22d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawSquare
	
	mov ax, peachX
	add ax, 18d
	push ax
	mov ax, peachY
	add ax, 22d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawSquare
	
	; LINE 13
	mov ax, peachX
	add ax, 2d
	push ax
	mov ax, peachY
	add ax, 24d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 6d
	push ax
	mov ax, peachY
	add ax, 24d
	push ax
	mov pusher, 13d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 8d
	push ax
	mov ax, peachY
	add ax, 24d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	; LINE 14
	mov ax, peachX
	add ax, 2d
	push ax
	mov ax, peachY
	add ax, 26d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawSquare
	
	mov ax, peachX
	add ax, 4d
	push ax
	mov ax, peachY
	add ax, 26d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawSquare
	
	mov ax, peachX
	add ax, 6d
	push ax
	mov ax, peachY
	add ax, 26d
	push ax
	mov pusher, 13d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 14d
	push ax
	mov ax, peachY
	add ax, 26d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	; LINE 15
	push peachX
	mov ax, peachY
	add ax, 28d
	push ax
	mov pusher, 17d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 18d
	push ax
	mov ax, peachY
	add ax, 28d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawSquare
	
	; LINE 16
	mov ax, peachX
	add ax, 2d
	push ax
	mov ax, peachY
	add ax, 30d
	push ax
	mov pusher, 13d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 41h
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 16d
	push ax
	mov ax, peachY
	add ax, 30d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawSquare
	
	mov ax, peachX
	add ax, 18d
	push ax
	mov ax, peachY
	add ax, 30d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 28h
	push pusher
	call drawSquare
	
	; LINE 17
	mov ax, peachX
	add ax, 6d
	push ax
	mov ax, peachY
	add ax, 32d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 10d
	push ax
	mov ax, peachY
	add ax, 32d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	; DRESS
	mov ax, peachX
	add ax, 2d
	push ax
	mov ax, peachY
	add ax, 34d
	push ax
	mov pusher, 23d
	push pusher
	mov pusher, 5d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 2d
	push ax
	mov ax, peachY
	add ax, 34d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, peachX
	add ax, 24d
	push ax
	mov ax, peachY
	add ax, 34d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 21
	push peachX
	mov ax, peachY
	add ax, 40d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 8d
	push ax
	mov ax, peachY
	add ax, 40d
	push ax
	mov pusher, 11d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov ax, peachX
	add ax, 20d
	push ax
	mov ax, peachY
	add ax, 40d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	; LINE 22
	push peachX
	mov ax, peachY
	add ax, 42
	push ax
	mov pusher, 27d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	; LINE 23
	push peachX
	mov ax, peachY
	add ax, 44d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect

	mov ax, peachX
	add ax, 10d
	push ax
	mov ax, peachY
	add ax, 44d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect

	mov ax, peachX
	add ax, 18d
	push ax
	mov ax, peachY
	add ax, 44d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect

	ret

drawPeach endp