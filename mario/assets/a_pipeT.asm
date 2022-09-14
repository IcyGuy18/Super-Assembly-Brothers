drawPipeTitle proc

	; PIPE TOP
	mov pusher, 90d
	push pusher
	mov pusher, 382d
	push pusher
	mov pusher, 40d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 48h
	push pusher
	call drawRect
	
	; PIPE TOP BACKDROP
	mov pusher, 90d
	add pusher, 3d
	push pusher
	mov pusher, 382d
	add pusher, 2d
	push pusher
	mov pusher, 37d
	push pusher
	mov pusher, 17d
	push pusher
	mov pusher, 30h
	push pusher
	call drawRect
	
	; PIPE BASE
	mov pusher, 90d
	add pusher, 10d
	push pusher
	mov pusher, 382d
	add pusher, 20
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 77d
	push pusher
	mov pusher, 48h
	push pusher
	call drawRect
	
	; PIPE BASE BACKDROP
	mov pusher, 90d
	add pusher, 13d
	push pusher
	mov pusher, 382d
	add pusher, 20
	push pusher
	mov pusher, 17d
	push pusher
	mov pusher, 77d
	push pusher
	mov pusher, 30h
	push pusher
	call drawRect

	ret

drawPipeTitle endp