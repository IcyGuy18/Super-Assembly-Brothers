removeMenuPointer proc

	; Remove the menu pointer when moving up or down

	push menuX
	push menuY
	mov pusher, 15d
	push pusher
	push charBackgroundColour
	call drawSquare

	ret

removeMenuPointer endp