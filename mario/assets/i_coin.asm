drawCoin proc

	; Drawing a coin
	; Check if coin has been removed
	cmp coinRemove, 1
	je RETURN_COIN_DRAW
	; Check if coin has been touched by player
	cmp coinTouch, 1
	je IS_PICKED

	; LINE 1
	mov ax, coinX
	add ax, 4d
	push ax
	push coinY
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, coinX
	add ax, 12d
	push ax
	push coinY
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 12h
	push pusher
	call drawRect
	
	; LINES 2-3
	mov ax, coinX
	add ax, 2d
	push ax
	mov ax, coinY
	add ax, 2d
	push ax
	mov pusher, 11d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, coinX
	add ax, 14d
	push ax
	mov ax, coinY
	add ax, 2d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 12h
	push pusher
	call drawRect
	
	mov ax, coinX
	add ax, 6d
	push ax
	mov ax, coinY
	add ax, 4d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 06h
	push pusher
	call drawRect
	
	; LINES 4-11
	push coinX
	mov ax, coinY
	add ax, 6d
	push ax
	mov pusher, 15d
	push pusher
	mov pusher, 15d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, coinX
	add ax, 4d
	push ax
	mov ax, coinY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 15d
	push pusher
	mov pusher, 06h
	push pusher
	call drawRect
	
	mov ax, coinX
	add ax, 10d
	push ax
	mov ax, coinY
	add ax, 6d
	push ax
	mov pusher, 1d
	push pusher
	mov pusher, 15d
	push pusher
	mov pusher, 06h
	push pusher
	call drawRect
	
	mov ax, coinX
	add ax, 16d
	push ax
	mov ax, coinY
	add ax, 6d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 15d
	push pusher
	mov pusher, 12h
	push pusher
	call drawRect
	
	; LINES 12-13
	mov ax, coinX
	add ax, 2d
	push ax
	mov ax, coinY
	add ax, 22d
	push ax
	mov pusher, 11d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, coinX
	add ax, 14d
	push ax
	mov ax, coinY
	add ax, 22d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 12h
	push pusher
	call drawRect
	
	mov ax, coinX
	add ax, 6d
	push ax
	mov ax, coinY
	add ax, 22d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 06h
	push pusher
	call drawRect
	
	; LINES 14
	mov ax, coinX
	add ax, 4d
	push ax
	mov ax, coinY
	add ax, 26d
	push ax
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov ax, coinX
	add ax, 12d
	push ax
	mov ax, coinY
	add ax, 26d
	push ax
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 12h
	push pusher
	call drawRect
	jmp RETURN_COIN_DRAW
	
	; If coin has been touched by player, go through this iteration and make "coinRemove" true, and clear out the coin shape
	IS_PICKED:
		push coinX
		push coinY
		mov pusher, 19d
		push pusher
		mov pusher, 27d
		push pusher
		push charBackgroundColour
		call drawRect
		mov coinRemove, 1
		add score, 200
		mov soundCoinShiftCount, 20d
		mov coinGet, 1
	
	RETURN_COIN_DRAW:
	ret

drawCoin endp