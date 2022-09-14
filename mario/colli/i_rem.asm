removeHammer proc

	; Remove the previous instance of hammer

	push hammerX
	mov ax, hammerY
	sub ax, 2d
	push ax
	mov pusher, 15d
	push pusher
	mov pusher, 27d
	push pusher
	push charBackgroundColour
	call drawRect
	
	ret

removeHammer endp