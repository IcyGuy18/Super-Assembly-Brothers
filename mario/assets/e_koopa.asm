drawKoopa proc

	; Drawing a Koopa, line by line

	; LINE 1
	mov ax, koopaX
	add ax, 6d
	push ax
	push koopaY
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 4d
	push ax
	push koopaY
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 8d
	push ax
	push koopaY
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push charBackgroundColour
	call drawSquare

	; LINE 2
	mov ax, koopaX
	add ax, 2d
	push ax
	mov ax, koopaY
	add ax, 2d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 4d
	push ax
	mov ax, koopaY
	add ax, 2d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 10d
	push ax
	mov ax, koopaY
	add ax, 2d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 24d
	push ax
	mov ax, koopaY
	add ax, 2d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 26d
	push ax
	mov ax, koopaY
	add ax, 2d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 30d
	push ax
	mov ax, koopaY
	add ax, 2d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push charBackgroundColour
	call drawSquare
	
	; LINE 3
	mov ax, koopaX
	add ax, 2d
	push ax
	mov ax, koopaY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 4d
	push ax
	mov ax, koopaY
	add ax, 4d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 10d
	push ax
	mov ax, koopaY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 12d
	push ax
	mov ax, koopaY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 22d
	push ax
	mov ax, koopaY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 24d
	push ax
	mov ax, koopaY
	add ax, 4d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 32d
	push ax
	mov ax, koopaY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push charBackgroundColour
	call drawSquare
	
	; LINE 4
	push koopaX
	mov ax, koopaY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 2d
	push ax
	mov ax, koopaY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 4d
	push ax
	mov ax, koopaY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 6d
	push ax
	mov ax, koopaY
	add ax, 6d
	push ax
	mov pusher, 4d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 10d
	push ax
	mov ax, koopaY
	add ax, 6d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 14d
	push ax
	mov ax, koopaY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 20d
	push ax
	mov ax, koopaY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 22d
	push ax
	mov ax, koopaY
	add ax, 6d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 32d
	push ax
	mov ax, koopaY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push charBackgroundColour
	call drawSquare
	
	; LINE 5
	push koopaX
	mov ax, koopaY
	add ax, 8d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 2d
	push ax
	mov ax, koopaY
	add ax, 8d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 4d
	push ax
	mov ax, koopaY
	add ax, 8d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 6d
	push ax
	mov ax, koopaY
	add ax, 8d
	push ax
	mov pusher, 4d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 10d
	push ax
	mov ax, koopaY
	add ax, 8d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 14d
	push ax
	mov ax, koopaY
	add ax, 8d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 18d
	push ax
	mov ax, koopaY
	add ax, 8d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 20d
	push ax
	mov ax, koopaY
	add ax, 8d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 30d
	push ax
	mov ax, koopaY
	add ax, 8d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push charBackgroundColour
	call drawSquare
	
	; LINE 6
	push koopaX
	mov ax, koopaY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 2d
	push ax
	mov ax, koopaY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 4d
	push ax
	mov ax, koopaY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 6d
	push ax
	mov ax, koopaY
	add ax, 10d
	push ax
	mov pusher, 4d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 10d
	push ax
	mov ax, koopaY
	add ax, 10d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 14d
	push ax
	mov ax, koopaY
	add ax, 10d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, koopaX
	add ax, 18d
	push ax
	mov ax, koopaY
	add ax, 10d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 22d
	push ax
	mov ax, koopaY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 28d
	push ax
	mov ax, koopaY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 7
	push koopaX
	mov ax, koopaY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 2d
	push ax
	mov ax, koopaY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 4d
	push ax
	mov ax, koopaY
	add ax, 12d
	push ax
	mov pusher, 6d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 10d
	push ax
	mov ax, koopaY
	add ax, 12d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 14d
	push ax
	mov ax, koopaY
	add ax, 12d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, koopaX
	add ax, 18d
	push ax
	mov ax, koopaY
	add ax, 12d
	push ax
	mov pusher, 11d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 20d
	push ax
	mov ax, koopaY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 30d
	push ax
	mov ax, koopaY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 8
	mov ax, koopaX
	sub ax, 2d
	push ax
	mov ax, koopaY
	add ax, 14d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	push koopaX
	mov ax, koopaY
	add ax, 14d
	push ax
	mov pusher, 13d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 6d
	push ax
	mov ax, koopaY
	add ax, 14d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 14d
	push ax
	mov ax, koopaY
	add ax, 14d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 16d
	push ax
	mov ax, koopaY
	add ax, 14d
	push ax
	mov pusher, 13d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 20d
	push ax
	mov ax, koopaY
	add ax, 14d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 30d
	push ax
	mov ax, koopaY
	add ax, 14d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 9
	mov ax, koopaX
	sub ax, 2d
	push ax
	mov ax, koopaY
	add ax, 16d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	push koopaX
	mov ax, koopaY
	add ax, 16d
	push ax
	mov pusher, 13d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 2d
	push ax
	mov ax, koopaY
	add ax, 16d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 14d
	push ax
	mov ax, koopaY
	add ax, 16d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 16d
	push ax
	mov ax, koopaY
	add ax, 16d
	push ax
	mov pusher, 11d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 18d
	push ax
	mov ax, koopaY
	add ax, 16d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 28d
	push ax
	mov ax, koopaY
	add ax, 16d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 10
	mov ax, koopaX
	sub ax, 2d
	push ax
	mov ax, koopaY
	add ax, 18d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	push koopaX
	mov ax, koopaY
	add ax, 18d
	push ax
	mov pusher, 11d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 12d
	push ax
	mov ax, koopaY
	add ax, 18d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, koopaX
	add ax, 16d
	push ax
	mov ax, koopaY
	add ax, 18d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 18d
	push ax
	mov ax, koopaY
	add ax, 18d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 26d
	push ax
	mov ax, koopaY
	add ax, 18d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 28d
	push ax
	mov ax, koopaY
	add ax, 18d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 30d
	push ax
	mov ax, koopaY
	add ax, 18d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 11
	mov ax, koopaX
	sub ax, 2d
	push ax
	mov ax, koopaY
	add ax, 20d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	push koopaX
	mov ax, koopaY
	add ax, 20d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 6d
	push ax
	mov ax, koopaY
	add ax, 20d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 8d
	push ax
	mov ax, koopaY
	add ax, 20d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 12d
	push ax
	mov ax, koopaY
	add ax, 20d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 14d
	push ax
	mov ax, koopaY
	add ax, 20d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 16d
	push ax
	mov ax, koopaY
	add ax, 20d
	push ax
	mov pusher, 13d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 18d
	push ax
	mov ax, koopaY
	add ax, 20d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 30d
	push ax
	mov ax, koopaY
	add ax, 20d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare

	; LINE 12
	mov ax, koopaX
	sub ax, 2d
	push ax
	mov ax, koopaY
	add ax, 22d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	push koopaX
	mov ax, koopaY
	add ax, 22d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 4d
	push ax
	mov ax, koopaY
	add ax, 22d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, koopaX
	add ax, 8d
	push ax
	mov ax, koopaY
	add ax, 22d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 12d
	push ax
	mov ax, koopaY
	add ax, 22d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 14d
	push ax
	mov ax, koopaY
	add ax, 22d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 18d
	push ax
	mov ax, koopaY
	add ax, 22d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 20d
	push ax
	mov ax, koopaY
	add ax, 22d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 28d
	push ax
	mov ax, koopaY
	add ax, 22d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 30d
	push ax
	mov ax, koopaY
	add ax, 22d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 13
	mov ax, koopaX
	sub ax, 2d
	push ax
	mov ax, koopaY
	add ax, 24d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	push koopaX
	mov ax, koopaY
	add ax, 24d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 4d
	push ax
	mov ax, koopaY
	add ax, 24d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 6d
	push ax
	mov ax, koopaY
	add ax, 24d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 10d
	push ax
	mov ax, koopaY
	add ax, 24d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 12d
	push ax
	mov ax, koopaY
	add ax, 24d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 18d
	push ax
	mov ax, koopaY
	add ax, 24d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 24d
	push ax
	mov ax, koopaY
	add ax, 24d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 30d
	push ax
	mov ax, koopaY
	add ax, 24d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 14
	push koopaX
	mov ax, koopaY
	add ax, 26d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 2d
	push ax
	mov ax, koopaY
	add ax, 26d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 4d
	push ax
	mov ax, koopaY
	add ax, 26d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 6d
	push ax
	mov ax, koopaY
	add ax, 26d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 10d
	push ax
	mov ax, koopaY
	add ax, 26d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 12d
	push ax
	mov ax, koopaY
	add ax, 26d
	push ax
	mov pusher, 17d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 18d
	push ax
	mov ax, koopaY
	add ax, 26d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 22d
	push ax
	mov ax, koopaY
	add ax, 26d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 30d
	push ax
	mov ax, koopaY
	add ax, 26d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 15
	mov ax, koopaX
	add ax, 4d
	push ax
	mov ax, koopaY
	add ax, 28d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 6d
	push ax
	mov ax, koopaY
	add ax, 28d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 10d
	push ax
	mov ax, koopaY
	add ax, 28d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 12d
	push ax
	mov ax, koopaY
	add ax, 28d
	push ax
	mov pusher, 17d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 12d
	push ax
	mov ax, koopaY
	add ax, 28d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 16d
	push ax
	mov ax, koopaY
	add ax, 28d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 24d
	push ax
	mov ax, koopaY
	add ax, 28d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 28d
	push ax
	mov ax, koopaY
	add ax, 28d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 30d
	push ax
	mov ax, koopaY
	add ax, 28d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 16
	mov ax, koopaX
	add ax, 2d
	push ax
	mov ax, koopaY
	add ax, 30d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 4d
	push ax
	mov ax, koopaY
	add ax, 30d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 8d
	push ax
	mov ax, koopaY
	add ax, 30d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect

	mov ax, koopaX
	add ax, 12d
	push ax
	mov ax, koopaY
	add ax, 30d
	push ax
	mov pusher, 17d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 14d
	push ax
	mov ax, koopaY
	add ax, 30d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 26d
	push ax
	mov ax, koopaY
	add ax, 30d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 30d
	push ax
	mov ax, koopaY
	add ax, 30d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 17
	mov ax, koopaX
	add ax, 4d
	push ax
	mov ax, koopaY
	add ax, 32d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 6d
	push ax
	mov ax, koopaY
	add ax, 32d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 8d
	push ax
	mov ax, koopaY
	add ax, 32d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawSquare

	mov ax, koopaX
	add ax, 10d
	push ax
	mov ax, koopaY
	add ax, 32d
	push ax
	mov pusher, 19d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 12d
	push ax
	mov ax, koopaY
	add ax, 32d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 16d
	push ax
	mov ax, koopaY
	add ax, 32d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 24d
	push ax
	mov ax, koopaY
	add ax, 32d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 28d
	push ax
	mov ax, koopaY
	add ax, 32d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 30d
	push ax
	mov ax, koopaY
	add ax, 32d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 18
	mov ax, koopaX
	add ax, 4d
	push ax
	mov ax, koopaY
	add ax, 34d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 6d
	push ax
	mov ax, koopaY
	add ax, 34d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 8d
	push ax
	mov ax, koopaY
	add ax, 34d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawSquare

	mov ax, koopaX
	add ax, 10d
	push ax
	mov ax, koopaY
	add ax, 34d
	push ax
	mov pusher, 19d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 10d
	push ax
	mov ax, koopaY
	add ax, 34d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 18d
	push ax
	mov ax, koopaY
	add ax, 34d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 22d
	push ax
	mov ax, koopaY
	add ax, 34d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 30d
	push ax
	mov ax, koopaY
	add ax, 34d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 19
	mov ax, koopaX
	add ax, 6d
	push ax
	mov ax, koopaY
	add ax, 36d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 8d
	push ax
	mov ax, koopaY
	add ax, 36d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawSquare

	mov ax, koopaX
	add ax, 10d
	push ax
	mov ax, koopaY
	add ax, 36d
	push ax
	mov pusher, 19d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 20d
	push ax
	mov ax, koopaY
	add ax, 36d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 30d
	push ax
	mov ax, koopaY
	add ax, 36d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 20
	mov ax, koopaX
	add ax, 6d
	push ax
	mov ax, koopaY
	add ax, 38d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 8d
	push ax
	mov ax, koopaY
	add ax, 38d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect

	mov ax, koopaX
	add ax, 12d
	push ax
	mov ax, koopaY
	add ax, 38d
	push ax
	mov pusher, 13d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 18d
	push ax
	mov ax, koopaY
	add ax, 38d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 22d
	push ax
	mov ax, koopaY
	add ax, 38d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 26d
	push ax
	mov ax, koopaY
	add ax, 38d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 32d
	push ax
	mov ax, koopaY
	add ax, 38d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 21
	mov ax, koopaX
	add ax, 4d
	push ax
	mov ax, koopaY
	add ax, 40d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 6d
	push ax
	mov ax, koopaY
	add ax, 40d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 10d
	push ax
	mov ax, koopaY
	add ax, 40d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 16d
	push ax
	mov ax, koopaY
	add ax, 40d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare
	
	mov ax, koopaX
	add ax, 18d
	push ax
	mov ax, koopaY
	add ax, 40d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 22d
	push ax
	mov ax, koopaY
	add ax, 40d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 28d
	push ax
	mov ax, koopaY
	add ax, 40d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 22
	mov ax, koopaX
	add ax, 2d
	push ax
	mov ax, koopaY
	add ax, 42d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 4d
	push ax
	mov ax, koopaY
	add ax, 42d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 14d
	push ax
	mov ax, koopaY
	add ax, 42d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 24d
	push ax
	mov ax, koopaY
	add ax, 42d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 30d
	push ax
	mov ax, koopaY
	add ax, 42d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; LINE 23
	push koopaX
	mov ax, koopaY
	add ax, 44d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 2d
	push ax
	mov ax, koopaY
	add ax, 44d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 12d
	push ax
	mov ax, koopaY
	add ax, 44d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 22d
	push ax
	mov ax, koopaY
	add ax, 44d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, koopaX
	add ax, 24d
	push ax
	mov ax, koopaY
	add ax, 44d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, koopaX
	add ax, 32d
	push ax
	mov ax, koopaY
	add ax, 44d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	ret

drawKoopa endp