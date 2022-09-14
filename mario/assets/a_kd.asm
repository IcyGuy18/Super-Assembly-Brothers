drawKingdom proc

	; Drawing the kingdom

	; UPPER BASE
	push kingdomX
	push kingdomY
	mov pusher, 59d
	push pusher
	mov pusher, 50d
	push pusher
	push kingdomColour1
	call drawRect
	; LOWER BASE
	mov ax, kingdomX
	sub ax, 32d
	push ax
	mov ax, kingdomY
	add ax, 50d
	push ax
	mov pusher, 120d
	push pusher
	mov pusher, 70d
	push pusher
	push kingdomColour1
	call drawRect
	
	; BRICKS_LINING
	mov cx, 8
	mov bx, 6d
	mov dx, kingdomY
	sub dx, 6d
	UPPER_BRICKS_HORIZONTAL_LOOP:
		push kingdomX
		mov ax, dx
		add ax, bx
		push ax
		mov dx, ax
		mov pusher, 59d
		push pusher
		mov pusher, 1d
		push pusher
		mov pusher, 11h
		push pusher
		;push charBackgroundColour
		call drawRect
		loop UPPER_BRICKS_HORIZONTAL_LOOP

	mov ch, 4
	mov dx, kingdomY
	sub dx, 12d
	UPPER_BRICKS_VERTICAL_ONE_OUTER:
		mov cl, 6
		mov ax, kingdomX
		mov kingdomTemp, ax
		sub kingdomTemp, 2d
		add dx, 12d
		UPPER_BRICKS_VERTICAL_ONE_INNER:
			add kingdomTemp, 10d
			push kingdomTemp
			push dx
			mov pusher, 1d
			push pusher
			mov pusher, 5d
			push pusher
			mov pusher, 11h
			push pusher
			call drawRect
			dec cl
			jnz UPPER_BRICKS_VERTICAL_ONE_INNER
		dec ch
		jnz UPPER_BRICKS_VERTICAL_ONE_OUTER

	mov ch, 4
	mov dx, kingdomY
	sub dx, 6d
	UPPER_BRICKS_VERTICAL_TWO_OUTER:
		mov cl, 6
		mov ax, kingdomX
		mov kingdomTemp, ax
		sub kingdomTemp, 8d
		add dx, 12d
		UPPER_BRICKS_VERTICAL_TWO_INNER:
			add kingdomTemp, 10d
			push kingdomTemp
			push dx
			mov pusher, 1d
			push pusher
			mov pusher, 5d
			push pusher
			mov pusher, 11h
			push pusher
			call drawRect
			dec cl
			jnz UPPER_BRICKS_VERTICAL_TWO_INNER
		dec ch
		jnz UPPER_BRICKS_VERTICAL_TWO_OUTER

	mov cx, 12
	mov bx, 6d
	mov dx, kingdomY
	add dx, 44d
	LOWER_BRICKS_HORIZONTAL_LOOP:
		mov ax, kingdomX
		sub ax, 32d
		push ax
		mov ax, dx
		add ax, bx
		push ax
		mov dx, ax
		mov pusher, 120d
		push pusher
		mov pusher, 1d
		push pusher
		mov pusher, 11h
		push pusher
		;push charBackgroundColour
		call drawRect
		loop LOWER_BRICKS_HORIZONTAL_LOOP

	mov ch, 6
	mov dx, kingdomY
	add dx, 44d
	LOWER_BRICKS_VERTICAL_ONE_OUTER:
		mov cl, 12
		mov ax, kingdomX
		mov kingdomTemp, ax
		sub kingdomTemp, 39d
		add dx, 12d
		LOWER_BRICKS_VERTICAL_ONE_INNER:
			add kingdomTemp, 10d
			push kingdomTemp
			push dx
			mov pusher, 1d
			push pusher
			mov pusher, 5d
			push pusher
			mov pusher, 11h
			push pusher
			call drawRect
			dec cl
			jnz LOWER_BRICKS_VERTICAL_ONE_INNER
		dec ch
		jnz LOWER_BRICKS_VERTICAL_ONE_OUTER
		
	mov ch, 6
	mov dx, kingdomY
	add dx, 38d
	LOWER_BRICKS_VERTICAL_TWO_OUTER:
		mov cl, 12
		mov ax, kingdomX
		mov kingdomTemp, ax
		sub kingdomTemp, 33d
		add dx, 12d
		LOWER_BRICKS_VERTICAL_TWO_INNER:
			add kingdomTemp, 10d
			push kingdomTemp
			push dx
			mov pusher, 1d
			push pusher
			mov pusher, 5d
			push pusher
			mov pusher, 11h
			push pusher
			call drawRect
			dec cl
			jnz LOWER_BRICKS_VERTICAL_TWO_INNER
		dec ch
		jnz LOWER_BRICKS_VERTICAL_TWO_OUTER
		
	; WINDOWS
	mov ax, kingdomX
	mov pusher, ax
	add pusher, 10d
	push pusher
	mov ax, kingdomY
	mov pusher, ax
	add pusher, 12d
	push pusher
	mov pusher, 10d
	push pusher
	mov pusher, 24d
	push pusher
	mov pusher, 11h
	push pusher
	call drawRect
	
	mov ax, kingdomX
	mov pusher, ax
	add pusher, 38d
	push pusher
	mov ax, kingdomY
	mov pusher, ax
	add pusher, 12d
	push pusher
	mov pusher, 10d
	push pusher
	mov pusher, 24d
	push pusher
	mov pusher, 11h
	push pusher
	call drawRect
	
	; DOOR
	mov ax, kingdomX
	mov pusher, ax
	add pusher, 18d
	push pusher
	mov ax, kingdomY
	mov pusher, ax
	add pusher, 80d
	push pusher
	mov pusher, 22d
	push pusher
	mov pusher, 42d
	push pusher
	mov pusher, 11h
	push pusher
	call drawRect
	
	; BORDERS
	push kingdomX
	mov ax, kingdomY
	sub ax, 8d
	push ax
	mov pusher, 4d
	push pusher
	mov pusher, 7d
	push pusher
	push kingdomColour1
	call drawRect
	
	mov ax, kingdomX
	add ax, 55d
	push ax
	mov ax, kingdomY
	sub ax, 8d
	push ax
	mov pusher, 4d
	push pusher
	mov pusher, 7d
	push pusher
	push kingdomColour1
	call drawRect
	
	mov cx, 3
	mov bx, 14d
	mov dx, kingdomX
	sub dx, 2d
	UPPER_BORDERS_LOOP:
		add dx, bx
		push dx
		mov ax, kingdomY
		sub ax, 8d
		push ax
		mov pusher, 8d
		push pusher
		mov pusher, 7d
		push pusher
		push kingdomColour1
		call drawRect
		loop UPPER_BORDERS_LOOP
	
	mov ax, kingdomX
	sub ax, 32d
	push ax
	mov ax, kingdomY
	add ax, 42d
	push ax
	mov pusher, 4d
	push pusher
	mov pusher, 7d
	push pusher
	push kingdomColour1
	call drawRect
	
	mov ax, kingdomX
	add ax, 84d
	push ax
	mov ax, kingdomY
	add ax, 42d
	push ax
	mov pusher, 4d
	push pusher
	mov pusher, 7d
	push pusher
	push kingdomColour1
	call drawRect
	
	mov cx, 6
	mov bx, 18d
	mov dx, kingdomX
	sub dx, 39d
	LOWER_BORDERS_LOOP:
		add dx, bx
		push dx
		mov ax, kingdomY
		add ax, 42d
		push ax
		mov pusher, 8d
		push pusher
		mov pusher, 7d
		push pusher
		push kingdomColour1
		call drawRect
		loop LOWER_BORDERS_LOOP
	
	; BORDER LINES
	push kingdomX
	mov ax, kingdomY
	sub ax, 8d
	push ax
	mov pusher, 4d
	push pusher
	mov pusher, 1d
	push pusher
	push kingdomColour2
	call drawRect
	
	mov ax, kingdomX
	add ax, 5
	push ax
	mov ax, kingdomY
	sub ax, 8d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 7d
	push pusher
	push kingdomColour2
	call drawRect
	
	mov ax, kingdomX
	add ax, 55d
	push ax
	mov ax, kingdomY
	sub ax, 8d
	push ax
	mov pusher, 4d
	push pusher
	mov pusher, 1d
	push pusher
	push kingdomColour2
	call drawRect
	
	mov ax, kingdomX
	add ax, 53d
	push ax
	mov ax, kingdomY
	sub ax, 8d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 7d
	push pusher
	push kingdomColour2
	call drawRect
	
	mov cx, 3
	mov bx, 14d
	mov dx, kingdomX
	sub dx, 2d
	UPPER_BORDERS_LINES_LOOP:
		add dx, bx
		push dx
		mov ax, kingdomY
		sub ax, 8d
		push ax
		mov pusher, 8d
		push pusher
		mov pusher, 1d
		push pusher
		push kingdomColour2
		call drawRect
		loop UPPER_BORDERS_LINES_LOOP
		
	mov cx, 3
	mov bx, 14d
	mov dx, kingdomX
	sub dx, 2d
	UPPER_BORDERS_LINES_LOOP_LEFT:
		add dx, bx
		push dx
		mov ax, kingdomY
		sub ax, 8d
		push ax
		mov pusher, 1d
		push pusher
		mov pusher, 7d
		push pusher
		push kingdomColour2
		call drawRect
		loop UPPER_BORDERS_LINES_LOOP_LEFT
		
	mov cx, 3
	mov bx, 14d
	mov dx, kingdomX
	add dx, 5d
	UPPER_BORDERS_LINES_LOOP_RIGHT:
		add dx, bx
		push dx
		mov ax, kingdomY
		sub ax, 8d
		push ax
		mov pusher, 1d
		push pusher
		mov pusher, 7d
		push pusher
		push kingdomColour2
		call drawRect
		loop UPPER_BORDERS_LINES_LOOP_RIGHT
		
	mov cx, 3
	mov bx, 14d
	mov dx, kingdomX
	sub dx, 9d
	UPPER_BORDERS_LINES_LOOP_BOTTOM:
		add dx, bx
		push dx
		mov ax, kingdomY
		push ax
		mov pusher, 8d
		push pusher
		mov pusher, 1d
		push pusher
		push kingdomColour2
		call drawRect
		loop UPPER_BORDERS_LINES_LOOP_BOTTOM
		
	mov dx, kingdomX
	add dx, 47d
	push dx
	mov ax, kingdomY
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	push kingdomColour2
	call drawRect
		
	mov ax, kingdomX
	sub ax, 32d
	push ax
	mov ax, kingdomY
	add ax, 42d
	push ax
	mov pusher, 4d
	push pusher
	mov pusher, 1d
	push pusher
	push kingdomColour2
	call drawRect
	
	mov ax, kingdomX
	sub ax, 29d
	push ax
	mov ax, kingdomY
	add ax, 42d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 7d
	push pusher
	push kingdomColour2
	call drawRect
		
	mov ax, kingdomX
	add ax, 84d
	push ax
	mov ax, kingdomY
	add ax, 42d
	push ax
	mov pusher, 4d
	push pusher
	mov pusher, 1d
	push pusher
	push kingdomColour2
	call drawRect
	
	mov ax, kingdomX
	add ax, 84d
	push ax
	mov ax, kingdomY
	add ax, 42d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 7d
	push pusher
	push kingdomColour2
	call drawRect
	
	mov cx, 6
	mov bx, 18d
	mov dx, kingdomX
	sub dx, 39d
	LOWER_BORDERS_LINES_LOOP:
		add dx, bx
		push dx
		mov ax, kingdomY
		add ax, 42d
		push ax
		mov pusher, 8d
		push pusher
		mov pusher, 1d
		push pusher
		push kingdomColour2
		call drawRect
		loop LOWER_BORDERS_LINES_LOOP
	
	mov cx, 6
	mov bx, 18d
	mov dx, kingdomX
	sub dx, 39d
	LOWER_BORDERS_LINES_LOOP_LEFT:
		add dx, bx
		push dx
		mov ax, kingdomY
		add ax, 42d
		push ax
		mov pusher, 1d
		push pusher
		mov pusher, 7d
		push pusher
		push kingdomColour2
		call drawRect
		loop LOWER_BORDERS_LINES_LOOP_LEFT
	
	mov cx, 6
	mov bx, 18d
	mov dx, kingdomX
	sub dx, 31d
	LOWER_BORDERS_LINES_LOOP_RIGHT:
		add dx, bx
		push dx
		mov ax, kingdomY
		add ax, 42d
		push ax
		mov pusher, 1d
		push pusher
		mov pusher, 7d
		push pusher
		push kingdomColour2
		call drawRect
		loop LOWER_BORDERS_LINES_LOOP_RIGHT
	
	mov cx, 6
	mov bx, 18d
	mov dx, kingdomX
	sub dx, 47d
	LOWER_BORDERS_LINES_LOOP_BOTTOM:
		add dx, bx
		push dx
		mov ax, kingdomY
		add ax, 48d
		push ax
		mov pusher, 7d
		push pusher
		mov pusher, 1d
		push pusher
		push kingdomColour2
		call drawRect
		loop LOWER_BORDERS_LINES_LOOP_BOTTOM
	
	mov dx, kingdomX
	add dx, 79d
	push dx
	mov ax, kingdomY
	add ax, 48d
	push ax
	mov pusher, 6d
	push pusher
	mov pusher, 1d
	push pusher
	push kingdomColour2
	call drawRect
	
	ret

drawKingdom endp