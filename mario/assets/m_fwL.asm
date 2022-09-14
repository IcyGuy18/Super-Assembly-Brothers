playFireworksRising proc

	; Draw a small firework rising upwards

	dec fireworksRisingCount
	jz SKIP_RISE_FIREWORK

		push fireworksX
		mov ax, fireworksY
		mov pusher, ax
		mov ah, 0
		mov al, fireworksRisingCount
		add pusher, ax
		add pusher, ax
		push pusher
		mov pusher, 4d
		push pusher
		mov pusher, 8d
		push pusher
		mov pusher, 44h
		push pusher
		call drawRect
		
		push fireworksX
		mov ax, fireworksY
		mov pusher, ax
		mov ah, 0
		mov al, fireworksRisingCount
		add pusher, ax
		add pusher, ax
		add pusher, 9d
		push pusher
		mov pusher, 4d
		push pusher
		mov pusher, 6d
		push pusher
		push charBackgroundColour
		call drawRect
		
		jmp RETURN_RISE_FIREWORK
		
	SKIP_RISE_FIREWORK:
		mov fireworkRiseCheck, 1
	RETURN_RISE_FIREWORK:
	
	ret

playFireworksRising endp