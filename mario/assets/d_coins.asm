drawCoins proc

	; Draw the coins according to their initialized coordinate values

	mov ax, coin1.x_coord
	mov coinX, ax
	mov ax, coin1.y_coord
	mov coinY, ax
	mov al, coin1.isTouched
	mov coinTouch, al
	mov al, coin1.removeOnce
	mov coinRemove, al
	call drawCoin

	mov ax, coin2.x_coord
	mov coinX, ax
	mov ax, coin2.y_coord
	mov coinY, ax
	mov al, coin2.isTouched
	mov coinTouch, al
	mov al, coin2.removeOnce
	mov coinRemove, al
	call drawCoin

	mov ax, coin3.x_coord
	mov coinX, ax
	mov ax, coin3.y_coord
	mov coinY, ax
	mov al, coin3.isTouched
	mov coinTouch, al
	mov al, coin3.removeOnce
	mov coinRemove, al
	call drawCoin

	mov ax, coin4.x_coord
	mov coinX, ax
	mov ax, coin4.y_coord
	mov coinY, ax
	mov al, coin4.isTouched
	mov coinTouch, al
	mov al, coin4.removeOnce
	mov coinRemove, al
	call drawCoin

	mov ax, coin5.x_coord
	mov coinX, ax
	mov ax, coin5.y_coord
	mov coinY, ax
	mov al, coin5.isTouched
	mov coinTouch, al
	mov al, coin5.removeOnce
	mov coinRemove, al
	call drawCoin
	
	ret

drawCoins endp