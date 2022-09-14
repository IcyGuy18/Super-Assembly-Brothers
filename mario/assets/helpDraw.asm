drawHelpImages proc

	; Drawing various shapes in this procedure

	; DRAW ANALOG STICK
	mov pusher, 160d
	push pusher
	mov pusher, 32d
	push pusher
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov pusher, 156d
	push pusher
	mov pusher, 36d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 7d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov pusher, 170d
	push pusher
	mov pusher, 36d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 7d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov pusher, 160d
	push pusher
	mov pusher, 46d
	push pusher
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov pusher, 158d
	push pusher
	mov pusher, 34d
	push pusher
	mov pusher, 11d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawSquare
	
	mov pusher, 160d
	push pusher
	mov pusher, 34d
	push pusher
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 1Dh
	push pusher
	call drawRect
	
	mov pusher, 160d
	push pusher
	mov pusher, 44d
	push pusher
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 1Dh
	push pusher
	call drawRect
	
	mov pusher, 158d
	push pusher
	mov pusher, 36d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 7d
	push pusher
	mov pusher, 1Dh
	push pusher
	call drawRect
	
	mov pusher, 168d
	push pusher
	mov pusher, 36d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 7d
	push pusher
	mov pusher, 1Dh
	push pusher
	call drawRect
	
	; FLAG FRONT
	mov pusher, 549d
	push pusher
	mov pusher, 200d
	push pusher
	mov pusher, 90d
	push pusher
	mov pusher, 60d
	push pusher
	mov pusher, 0Ah
	push pusher
	call drawRect
	
	; FLAG REAR
	mov pusher, 630d
	push pusher
	mov pusher, 200d
	push pusher
	mov pusher, 9d
	push pusher
	mov pusher, 60d
	push pusher
	mov pusher, 02h
	push pusher
	call drawRect
	
	; FLAG BORDERS x3
	mov pusher, 549d
	push pusher
	mov pusher, 200d
	push pusher
	mov pusher, 90d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	mov pusher, 549d
	push pusher
	mov pusher, 200d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 60d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	mov pusher, 549d
	push pusher
	mov pusher, 257d
	push pusher
	mov pusher, 90d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 2Dh
	push pusher
	call drawRect
	
	call drawMushroomHelp
	
	mov coin1.x_coord, 540d
	mov coinX, 420d
	mov coinY, 230d
	mov coinRemove, 0
	mov coinTouch, 0
	call drawCoin
	
	mov goombaX, 220d
	mov goombaY, 330d
	call drawGoomba
	
	mov koopaX, 490d
	mov koopaY, 390d
	call drawKoopa
	mov hammerX, 530d
	mov hammerY, 405d
	call drawHammer

	ret
	

drawHelpImages endp