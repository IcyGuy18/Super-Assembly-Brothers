charFallDown proc
	; Simply add the Y-cooridnate of Mario by 2 for every iteration there is no opaque floor below him
	add charY, 2d
	
	ret

charFallDown endp