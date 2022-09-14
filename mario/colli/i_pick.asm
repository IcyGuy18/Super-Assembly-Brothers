coinPick proc

	; Check if coin is in range of player coordinates

	mov ax, charX
	add ax, 32d
	cmp ax, coinX
	jb SKIP_PICK
	
	mov ax, charX
	add coinX, 27d
	cmp ax, coinX
	ja SKIP_PICK
	
	mov bx, charY
	add bx, 34d
	cmp bx, coinY
	jb SKIP_PICK
	
	mov bx, charY
	sub bx, 2d
	add coinY, 30d
	cmp bx, coinY
	ja SKIP_PICK

	; If so, pick up the coin by making coinTouch == 1
	sub coinY, 30d
	sub coinX, 27d
	mov coinTouch, 1
	call drawCoin

	SKIP_PICK:
	ret

coinPick endp