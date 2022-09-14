drawGroundBlock proc
	
	; A square block being drawn inside the opaque ground rectangle drawn (procedure of opaque ground rectangle below)
	
	mov cx, 16d
	mov bx, 3d
	mov dx, 6d
	; GROUND BLOCK
	GROUND_BLOCK_LOOP:
		mov pusher, bx
		push pusher
		mov pusher, 444d
		push pusher
		mov pusher, 32d
		push pusher
		mov pusher, 31d
		push pusher
		mov pusher, 2Ah
		push pusher
		call drawRect
		add bx, 40d
		
		mov pusher, dx
		push pusher
		mov pusher, 447d
		push pusher
		mov pusher, 26d
		push pusher
		mov pusher, 25d
		push pusher
		mov pusher, 71h
		push pusher
		call drawRect
		add dx, 40d
		
		loop GROUND_BLOCK_LOOP
	
	ret

drawGroundBlock endp

drawGround proc

	; GROUND BACKGROUND
	mov pusher, 0d
	push pusher
	push groundLevel
	mov pusher, 639d
	push pusher
	mov pusher, 39d
	push pusher
	mov pusher, 06h
	push pusher
	call drawRect
	
	call drawGroundBlock

	ret
	
drawGround endp