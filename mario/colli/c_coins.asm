checkCoins proc
	
	; Check if coins have been picked
	
	mov ax, coin1.x_coord
	mov coinX, ax
	mov ax, coin1.y_coord
	mov coinY, ax
	mov al, coin1.isTouched
	mov coinTouch, al
	mov al, coin1.removeOnce
	mov coinRemove, al
	call coinPick
	mov al, coinTouch
	mov coin1.isTouched, al
	mov al, coinRemove
	mov coin1.removeOnce, al
	
	mov ax, coin2.x_coord
	mov coinX, ax
	mov ax, coin2.y_coord
	mov coinY, ax
	mov al, coin2.isTouched
	mov coinTouch, al
	mov al, coin2.removeOnce
	mov coinRemove, al
	call coinPick
	mov al, coinTouch
	mov coin2.isTouched, al
	mov al, coinRemove
	mov coin2.removeOnce, al
	
	mov ax, coin3.x_coord
	mov coinX, ax
	mov ax, coin3.y_coord
	mov coinY, ax
	mov al, coin3.isTouched
	mov coinTouch, al
	mov al, coin3.removeOnce
	mov coinRemove, al
	call coinPick
	mov al, coinTouch
	mov coin3.isTouched, al
	mov al, coinRemove
	mov coin3.removeOnce, al
	
	mov ax, coin4.x_coord
	mov coinX, ax
	mov ax, coin4.y_coord
	mov coinY, ax
	mov al, coin4.isTouched
	mov coinTouch, al
	mov al, coin4.removeOnce
	mov coinRemove, al
	call coinPick
	mov al, coinTouch
	mov coin4.isTouched, al
	mov al, coinRemove
	mov coin4.removeOnce, al
	
	mov ax, coin5.x_coord
	mov coinX, ax
	mov ax, coin5.y_coord
	mov coinY, ax
	mov al, coin5.isTouched
	mov coinTouch, al
	mov al, coin5.removeOnce
	mov coinRemove, al
	call coinPick
	mov al, coinTouch
	mov coin5.isTouched, al
	mov al, coinRemove
	mov coin5.removeOnce, al
	
	ret

checkCoins endp