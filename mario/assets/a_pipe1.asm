drawPipeOne proc

	; Pipe (or hurdle) drawing functions - all four functions follow the same procedure but with different coordinates

	; PIPE TOP
	mov bx, pipe1Left
	mov pusher, bx
	push pusher
	mov bx, pipe1Top
	mov pusher, bx
	push pusher
	mov pusher, 40d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 48h
	push pusher
	call drawRect
	
	; PIPE TOP BACKDROP
	mov bx, pipe1Left
	mov pusher, bx
	add pusher, 3d
	push pusher
	mov bx, pipe1Top
	mov pusher, bx
	add pusher, 3d
	push pusher
	mov pusher, 37d
	push pusher
	mov pusher, 17d
	push pusher
	mov pusher, 30h
	push pusher
	call drawRect
	
	; PIPE BASE
	mov bx, pipe1Left
	mov pusher, bx
	add pusher, 10d
	push pusher
	mov bx, pipe1Top
	mov pusher, bx
	add pusher, 20
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 29d
	push pusher
	mov pusher, 48h
	push pusher
	call drawRect
	
	; PIPE BASE BACKDROP
	mov bx, pipe1Left
	mov pusher, bx
	add pusher, 13d
	push pusher
	mov bx, pipe1Top
	mov pusher, bx
	add pusher, 20
	push pusher
	mov pusher, 17d
	push pusher
	mov pusher, 29d
	push pusher
	mov pusher, 30h
	push pusher
	call drawRect

	ret

drawPipeOne endp