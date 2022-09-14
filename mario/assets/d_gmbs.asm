drawGoombas proc

	; Pass coordinates and draw both goombas through same procedure

	mov ax, goomba1.x_coord
	mov goombaX, ax
	mov ax, goomba1.y_coord
	mov goombaY, ax
	mov al, goomba1.movDirection
	mov goombaDir, al
	call drawGoomba
	call moveGoomba
	call goombaCharHit
	mov ax, goombaX
	mov goomba1.x_coord, ax
	mov ax, goombaY
	mov goomba1.y_coord, ax
	mov al, goombaDir
	mov goomba1.movDirection, al
	
	mov ax, goomba2.x_coord
	mov goombaX, ax
	mov ax, goomba2.y_coord
	mov goombaY, ax
	mov al, goomba2.movDirection
	mov goombaDir, al
	call drawGoomba
	call moveGoomba
	call goombaCharHit
	mov ax, goombaX
	mov goomba2.x_coord, ax
	mov ax, goombaY
	mov goomba2.y_coord, ax
	mov al, goombaDir
	mov goomba2.movDirection, al
	
	ret

drawGoombas endp