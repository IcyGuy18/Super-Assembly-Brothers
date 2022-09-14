drawBackground proc

	; BACKGROUND
	mov pusher, 0
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 639d
	push pusher
	mov pusher, 439d
	push pusher
	push charBackgroundColour
	call drawRect

	ret

drawBackground endp