drawCloud proc

	; CLOUD TOP
	push cloudTopX
	push cloudTopY
	mov pusher, 20d
	push pusher
	mov pusher, 10d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	; CLOUD MIDDLE
	push cloudMiddleX
	push cloudMiddleY
	mov pusher, 45d
	push pusher
	mov pusher, 10d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	; CLOUD BOTTOM
	push cloudBottomX
	push cloudBottomY
	mov pusher, 60d
	push pusher
	mov pusher, 15d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	; The next lines from "LINE 39" to "LINE 73" attempt to clear out the previous drawing of the
	; cloud with the background colour so that it does not overlap and create a white border on top
	
	mov cx, cloudTopX
	dec cx
	mov dx, cloudTopY
	push cx
	push dx
	mov pusher, 1d
	push pusher
	mov pusher, 9d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov cx, cloudMiddleX
	dec cx
	mov dx, cloudMiddleY
	push cx
	push dx
	mov pusher, 1d
	push pusher
	mov pusher, 9d
	push pusher
	push charBackgroundColour
	call drawRect
	
	mov cx, cloudBottomX
	dec cx
	mov dx, cloudBottomY
	push cx
	push dx
	mov pusher, 1d
	push pusher
	mov pusher, 15d
	push pusher
	push charBackgroundColour
	call drawRect
	
	; Increment the coordinates of the clouds so they appear to be moving rightwards
	inc cloudTopX
	inc cloudMiddleX
	inc cloudBottomX
	mov ax, cloudTopX
	add ax, 40d
	cmp ax, 679d
	ja RESET_TOP
	mov ax, cloudMiddleX
	add ax, 65d
	cmp ax, 704d
	ja RESET_MIDDLE
	mov ax, cloudBottomX
	add ax, 100d
	cmp ax, 739d
	ja RESET_BOTTOM
	jmp STOP_CLOUD
	RESET_TOP:
		mov cloudTopX, 0
		jmp STOP_CLOUD
	RESET_MIDDLE:
		mov cloudMiddleX, 0
		jmp STOP_CLOUD
	RESET_BOTTOM:
		mov cloudBottomX, 0
	STOP_CLOUD:

	ret

drawCloud endp