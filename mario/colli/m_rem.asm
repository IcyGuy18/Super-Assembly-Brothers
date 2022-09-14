removeCharTrace proc

	; Remove the character trace (DEPRECATED)

	cmp moveCheck, 1
	jne SKIP_RIGHT_REDRAW
	add charAnimX, 24d
	SKIP_RIGHT_REDRAW:
	push charAnimX
	push charY
	mov pusher, 3d
	push pusher
	mov pusher, 31d
	push pusher
	push charBackgroundColour
	call drawRect

	ret

removeCharTrace endp