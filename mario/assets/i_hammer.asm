drawHammer proc
	
	; Draw Koopa's hammer
	
	; ABOVE:
	push hammerX
	mov ax, hammerY
	sub ax, 2d
	push ax
	mov pusher, 15d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	; LINE 1
	push hammerX
	push hammerY
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, hammerX
	add ax, 8d
	push ax
	push hammerY
	mov pusher, 1d
	push pusher
	mov pusher, 5Ah
	push pusher
	call drawSquare
	
	mov ax, hammerX
	add ax, 10d
	push ax
	push hammerY
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	; LINE 2
	push hammerX
	mov ax, hammerY
	add ax, 2d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, hammerX
	add ax, 6d
	push ax
	mov ax, hammerY
	add ax, 2d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect

	mov ax, hammerX
	add ax, 12d
	push ax
	mov ax, hammerY
	add ax, 2d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, hammerX
	add ax, 14d
	push ax
	mov ax, hammerY
	add ax, 2d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	; LINE 3
	push hammerX
	mov ax, hammerY
	add ax, 4d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, hammerX
	add ax, 4d
	push ax
	mov ax, hammerY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, hammerX
	add ax, 6d
	push ax
	mov ax, hammerY
	add ax, 4d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 5Ah
	push pusher
	call drawRect
	
	mov ax, hammerX
	add ax, 14d
	push ax
	mov ax, hammerY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 5Ah
	push pusher
	call drawSquare
	
	; LINES 4-7 for black base
	push hammerX
	mov ax, hammerY
	add ax, 6d
	push ax
	mov pusher, 15d
	push pusher
	mov pusher, 7d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	; LINES 3-6 for orange band
	mov ax, hammerX
	add ax, 12d
	push ax
	mov ax, hammerY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 7d
	push pusher
	mov pusher, 2Ah
	push pusher
	call drawRect
	
	; LINE 4
	mov ax, hammerX
	add ax, 4d
	push ax
	mov ax, hammerY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 5Ah
	push pusher
	call drawSquare
	
	; LINE 6
	mov ax, hammerX
	add ax, 2d
	push ax
	mov ax, hammerY
	add ax, 10d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawRect
	
	; LINE 7
	push hammerX
	mov ax, hammerY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	mov ax, hammerX
	add ax, 12d
	push ax
	mov ax, hammerY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	push charBackgroundColour
	call drawSquare
	
	; BASE:
	push hammerX
	mov ax, hammerY
	add ax, 14d
	push ax
	mov pusher, 15d
	push pusher
	mov pusher, 13d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov ax, hammerX
	add ax, 8d
	push ax
	mov ax, hammerY
	add ax, 14d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 13d
	push pusher
	mov pusher, 5Ah
	push pusher
	call drawRect
	
	ret

drawHammer endp