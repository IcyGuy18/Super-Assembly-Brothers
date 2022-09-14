hitMario proc

	; Check if player is above hammer
	mov ax, charY
	add ax, 36d
	cmp ax, hammerY
	jb RETURN_COLLISION
	; Check if player is below hammer
	mov ax, charY
	mov bx, hammerY
	add bx, 33d
	cmp ax, bx
	ja RETURN_COLLISION
	; Check if player is to the left of hammer
	mov ax, charX
	add ax, 33d
	cmp ax, hammerX
	jb RETURN_COLLISION
	; Check if player is to the right of hammer
	mov ax, charX
	mov bx, hammerX
	add bx, 23d
	cmp ax, bx
	ja RETURN_COLLISION
	
	mov charDead, 1
	
	RETURN_COLLISION:
	ret

hitMario endp