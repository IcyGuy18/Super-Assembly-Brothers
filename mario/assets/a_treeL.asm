drawTreeLarge proc

	; Drawing a large tree

	; LINE 1

	mov ax, treeX
	add ax, 6d
	push ax
	push treeY
	mov pusher, 3d
	push pusher
	mov pusher, 0d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect

	; LINE 2

	mov ax, treeX
	add ax, 4d
	push ax
	mov ax, treeY
	add ax, 1d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect

	mov ax, treeX
	add ax, 10d
	push ax
	mov ax, treeY
	add ax, 1d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect

	mov ax, treeX
	add ax, 6d
	push ax
	mov ax, treeY
	add ax, 1d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 0d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	; LINE 3
	mov ax, treeX
	add ax, 3d
	push ax
	mov ax, treeY
	add ax, 2d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 12d
	push ax
	mov ax, treeY
	add ax, 2d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare

	mov ax, treeX
	add ax, 4d
	push ax
	mov ax, treeY
	add ax, 2d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 0d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	; LINE 4
	mov ax, treeX
	add ax, 2d
	push ax
	mov ax, treeY
	add ax, 3d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 13d
	push ax
	mov ax, treeY
	add ax, 3d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare

	mov ax, treeX
	add ax, 3d
	push ax
	mov ax, treeY
	add ax, 3d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 0d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	; LINES 5-6
	mov ax, treeX
	add ax, 1d
	push ax
	mov ax, treeY
	add ax, 4d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 14d
	push ax
	mov ax, treeY
	add ax, 4d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect

	mov ax, treeX
	add ax, 2d
	push ax
	mov ax, treeY
	add ax, 4d
	push ax
	mov pusher, 11d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	; LINES 7-22
	push treeX
	mov ax, treeY
	add ax, 6d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 15d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 15d
	push ax
	mov ax, treeY
	add ax, 6d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 15d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 1d
	push ax
	mov ax, treeY
	add ax, 6d
	push ax
	mov pusher, 13d
	push pusher
	mov pusher, 15d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	; LINES 23-25
	mov ax, treeX
	add ax, 1d
	push ax
	mov ax, treeY
	add ax, 23d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 2d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 14d
	push ax
	mov ax, treeY
	add ax, 23d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 2d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 2d
	push ax
	mov ax, treeY
	add ax, 22d
	push ax
	mov pusher, 11d
	push pusher
	mov pusher, 2d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	; LINES 26-27
	mov ax, treeX
	add ax, 2d
	push ax
	mov ax, treeY
	add ax, 25d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 12d
	push ax
	mov ax, treeY
	add ax, 25d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 3d
	push ax
	mov ax, treeY
	add ax, 25d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 0d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 4d
	push ax
	mov ax, treeY
	add ax, 26d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 0d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	; LINES 28-30
	mov ax, treeX
	add ax, 3d
	push ax
	mov ax, treeY
	add ax, 27d
	push ax
	mov pusher, 9d
	push pusher
	mov pusher, 0d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 6d
	push ax
	mov ax, treeY
	add ax, 27d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 0d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 4d
	push ax
	mov ax, treeY
	add ax, 28d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 0d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 5d
	push ax
	mov ax, treeY
	add ax, 29d
	push ax
	mov pusher, 6d
	push pusher
	mov pusher, 0d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	; BASE
	mov ax, treeX
	add ax, 5d
	push ax
	mov ax, treeY
	add ax, 30d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 15d
	push pusher
	mov pusher, 5Ah
	push pusher
	call drawRect
	
	; OUTLINE
	mov ax, treeX
	add ax, 4d
	push ax
	mov ax, treeY
	add ax, 30d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 5d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 11d
	push ax
	mov ax, treeY
	add ax, 30d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 5d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 9d
	push ax
	mov ax, treeY
	add ax, 31d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 5d
	push ax
	mov ax, treeY
	add ax, 35d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 10d
	push ax
	mov ax, treeY
	add ax, 35d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 7d
	push ax
	mov ax, treeY
	add ax, 36d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 6d
	push ax
	mov ax, treeY
	add ax, 37d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 9d
	push ax
	mov ax, treeY
	add ax, 37d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 4d
	push ax
	mov ax, treeY
	add ax, 37d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 6d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 11d
	push ax
	mov ax, treeY
	add ax, 37d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 6d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 9d
	push ax
	mov ax, treeY
	add ax, 39d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 5d
	push ax
	mov ax, treeY
	add ax, 43d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 10d
	push ax
	mov ax, treeY
	add ax, 43d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 7d
	push ax
	mov ax, treeY
	add ax, 44d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 0d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 4d
	push ax
	mov ax, treeY
	add ax, 44d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 6d
	push ax
	mov ax, treeY
	add ax, 44d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 9d
	push ax
	mov ax, treeY
	add ax, 44d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 11d
	push ax
	mov ax, treeY
	add ax, 44d
	push ax
	mov pusher, 0d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare

	ret

drawTreeLarge endp