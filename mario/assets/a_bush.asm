drawBush proc

	; Function for drawing bush in credits

	; LINE 1
	mov ax, treeX
	add ax, 28d
	push ax
	push treeY
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	; LINE 2
	mov ax, treeX
	add ax, 28d
	push ax
	mov ax, treeY
	add ax, 2d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 26d
	push ax
	mov ax, treeY
	add ax, 2d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 36d
	push ax
	mov ax, treeY
	add ax, 2d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	; LINE 3
	mov ax, treeX
	add ax, 22d
	push ax
	mov ax, treeY
	add ax, 4d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 38d
	push ax
	mov ax, treeY
	add ax, 4d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 26d
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
	
	; LINE 4
	mov ax, treeX
	add ax, 20d
	push ax
	mov ax, treeY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 5d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 22d
	push ax
	mov ax, treeY
	add ax, 6d
	push ax
	mov pusher, 15d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 42d
	push ax
	mov ax, treeY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	; LINES 5-6
	mov ax, treeX
	add ax, 22d
	push ax
	mov ax, treeY
	add ax, 8d
	push ax
	mov pusher, 23d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 40d
	push ax
	mov ax, treeY
	add ax, 8d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 44d
	push ax
	mov ax, treeY
	add ax, 8d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 46d
	push ax
	mov ax, treeY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 34d
	push ax
	mov ax, treeY
	add ax, 10d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawSquare
	
	; LINES 7-8
	mov ax, treeX
	add ax, 18d
	push ax
	mov ax, treeY
	add ax, 12d
	push ax
	mov pusher, 27d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 18d
	push ax
	mov ax, treeY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 16d
	push ax
	mov ax, treeY
	add ax, 14d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 46d
	push ax
	mov ax, treeY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 24d
	push ax
	mov ax, treeY
	add ax, 14d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 36d
	push ax
	mov ax, treeY
	add ax, 12d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 26d
	push ax
	mov ax, treeY
	add ax, 12d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 02h
	push pusher
	call drawRect
	
	; BASE
	mov ax, treeX
	add ax, 10d
	push ax
	mov ax, treeY
	add ax, 16d
	push ax
	mov pusher, 39d
	push pusher
	mov pusher, 15d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 10d
	push ax
	mov ax, treeY
	add ax, 16d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 48d
	push ax
	mov ax, treeY
	add ax, 16d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 8d
	push ax
	mov ax, treeY
	add ax, 18d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 52d
	push ax
	mov ax, treeY
	add ax, 18d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 56d
	push ax
	mov ax, treeY
	add ax, 18d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 54d
	push ax
	mov ax, treeY
	add ax, 16d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 54d
	push ax
	mov ax, treeY
	add ax, 18d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawSquare
	
	; FILL
	
	mov ax, treeX
	add ax, 6d
	push ax
	mov ax, treeY
	add ax, 20d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 11d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 2d
	push ax
	mov ax, treeY
	add ax, 26d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 5d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 50d
	push ax
	mov ax, treeY
	add ax, 20d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 11d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 56d
	push ax
	mov ax, treeY
	add ax, 24d
	push ax
	mov pusher, 5d
	push pusher
	mov pusher, 7d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	; OUTLINES
	mov ax, treeX
	add ax, 8d
	push ax
	mov ax, treeY
	add ax, 18d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 6d
	push ax
	mov ax, treeY
	add ax, 20d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 50d
	push ax
	mov ax, treeY
	add ax, 20d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 56d
	push ax
	mov ax, treeY
	add ax, 20d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 2d
	push ax
	mov ax, treeY
	add ax, 24d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	push treeX
	mov ax, treeY
	add ax, 26d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 2d
	push ax
	mov ax, treeY
	add ax, 30d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 58d
	push ax
	mov ax, treeY
	add ax,24d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 60d
	push ax
	mov ax, treeY
	add ax, 22d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	mov ax, treeX
	add ax, 62d
	push ax
	mov ax, treeY
	add ax, 24d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher,5d
	push pusher
	mov pusher, 00h
	push pusher
	call drawRect
	
	mov ax, treeX
	add ax, 60d
	push ax
	mov ax, treeY
	add ax, 30d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 00h
	push pusher
	call drawSquare
	
	ret

drawBush endp