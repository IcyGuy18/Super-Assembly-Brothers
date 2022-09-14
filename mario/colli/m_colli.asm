goombaCharHit proc

	; CHECK IF PLAYER IS ABOVE GOOMBA
	mov ax, charY
	add ax, 36d
	cmp ax, goombaY
	jb RETURN_COLLISION
	; CHECK IF PLAYER IS WITHIN VICINITY OF GOOMBA
	; CHECK LEFT SIDE OF GOOMBA FIRST
	mov ax, charX
	add ax, 31d
	cmp ax, goombaX
	jb RETURN_COLLISION
	
	; CHECK RIGHT SIDE OF GOOMBA NEXT
	mov ax, goombaX
	add ax, 37d
	cmp charX, ax
	ja RETURN_COLLISION
	
	mov charDead, 1

	RETURN_COLLISION:
	ret

goombaCharHit endp