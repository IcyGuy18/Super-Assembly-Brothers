drawFlag proc

	; Draw the flag and its pole (procedure of pole below)

	; FLAG FRONT
	mov pusher, 549d
	push pusher
	mov pusher, 100d
	push pusher
	mov pusher, 90d
	push pusher
	mov pusher, 60d
	push pusher
	mov pusher, 0Ah
	push pusher
	call drawRect
	
	; FLAG REAR
	mov pusher, 630d
	push pusher
	mov pusher, 100d
	push pusher
	mov pusher, 9d
	push pusher
	mov pusher, 60d
	push pusher
	mov pusher, 02h
	push pusher
	call drawRect
	
	; FLAG BORDERS x3
	mov pusher, 549d
	push pusher
	mov pusher, 100d
	push pusher
	mov pusher, 90d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	mov pusher, 549d
	push pusher
	mov pusher, 100d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 60d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	mov pusher, 549d
	push pusher
	mov pusher, 157d
	push pusher
	mov pusher, 90d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	ret
	
drawFlag endp

drawPole proc

	; POLE FRONT
	mov pusher, 629d
	push pusher
	mov pusher, 161d
	push pusher
	mov pusher, 7d
	push pusher
	mov pusher, 300d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	; POLE REAR
	mov pusher, 636d
	push pusher
	mov pusher, 161d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 300d
	push pusher
	mov pusher, 07h
	push pusher
	call drawRect

	ret

drawPole endp