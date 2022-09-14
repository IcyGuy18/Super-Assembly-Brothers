playFireworksExploding proc

	; Show the fireworks being exploded, frame by frame over multiple iterations

	dec fireworksExplodingCount
	jz NEW_LEVEL

	mov ax, fireworksX
	mov pusher, ax
	sub pusher, 10d
	push pusher
	mov ax, fireworksY
	mov pusher, ax
	sub pusher, 10d
	push pusher
	mov pusher, 50d
	push pusher
	mov pusher, 49d
	push pusher
	push charBackgroundColour
	call drawRect

	cmp fireworksExplodingCount, 36d
	ja EXPLOSION_FRAME_ONE
	cmp fireworksExplodingCount, 32d
	ja EXPLOSION_FRAME_TWO
	cmp fireworksExplodingCount, 28d
	ja EXPLOSION_FRAME_THREE
	cmp fireworksExplodingCount, 24d
	ja EXPLOSION_FRAME_FOUR
	cmp fireworksExplodingCount, 20d
	ja EXPLOSION_FRAME_FIVE
	jmp RETURN_EXPLOSION
	
	EXPLOSION_FRAME_ONE:
	
		push fireworksX
		mov ax, fireworksY
		mov pusher, ax
		sub pusher, 6d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		add pusher, 12d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 3d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		add pusher, 22d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 14d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		sub pusher, 3d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 24d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		jmp RETURN_EXPLOSION
	
	EXPLOSION_FRAME_TWO:
	
		mov ax, fireworksX
		mov pusher, ax
		add pusher, 18d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 9d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		sub pusher, 2d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 15d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		sub pusher, 8d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 18d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		add pusher, 25d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 4d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		add pusher, 5d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		sub pusher, 7d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		sub pusher, 5d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		sub pusher, 1d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		jmp RETURN_EXPLOSION
	
	EXPLOSION_FRAME_THREE:
	
		mov ax, fireworksX
		mov pusher, ax
		add pusher, 9d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 24d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		sub pusher, 7d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 6d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		add pusher, 25d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 18d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		add pusher, 5d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 4d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		add pusher, 16d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		sub pusher, 7d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		add pusher, 34d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 7d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		jmp RETURN_EXPLOSION
	
	EXPLOSION_FRAME_FOUR:
	
		mov ax, fireworksX
		mov pusher, ax
		add pusher, 28d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 24d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		add pusher, 15d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 8d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		add pusher, 37d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 4d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		add pusher, 16d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		sub pusher, 7d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		sub pusher, 4d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 33d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		jmp RETURN_EXPLOSION
	
	EXPLOSION_FRAME_FIVE:
	
		mov ax, fireworksX
		mov pusher, ax
		add pusher, 8d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 14d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		add pusher, 15d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 34d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		add pusher, 37d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		sub pusher, 7d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		mov ax, fireworksX
		mov pusher, ax
		sub pusher, 9d
		push pusher
		mov ax, fireworksY
		mov pusher, ax
		add pusher, 23d
		push pusher
		mov pusher, 3d
		push pusher
		mov pusher, 2Bh
		push pusher
		call drawSquare
		
		jmp RETURN_EXPLOSION

	NEW_LEVEL:
		mov clearLevel, 1
	RETURN_EXPLOSION:

	ret

playFireworksExploding endp