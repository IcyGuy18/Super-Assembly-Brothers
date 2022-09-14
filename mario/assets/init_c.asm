initCoins proc
	
	; Initialize the coins' values
	
	mov coin1.x_coord, 132d
	mov coin1.y_coord, 300d
	mov coin1.isTouched, 0
	mov coin1.removeOnce, 0
	mov coin2.x_coord, 282d
	mov coin2.y_coord, 240d
	mov coin2.isTouched, 0
	mov coin2.removeOnce, 0
	mov coin3.x_coord, 370d
	mov coin3.y_coord, 370d
	mov coin3.isTouched, 0
	mov coin3.removeOnce, 0
	mov coin4.x_coord, 370d
	mov coin4.y_coord, 200d
	mov coin4.isTouched, 0
	mov coin4.removeOnce, 0
	mov coin5.x_coord, 462d
	mov coin5.y_coord, 310d
	mov coin5.isTouched, 0
	mov coin5.removeOnce, 0

	ret

initCoins endp