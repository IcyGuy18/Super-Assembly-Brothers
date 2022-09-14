moveGoomba proc

	; Moving a Goomba through this procedure

	; goombaDir == 1 means Goomba is moving rightward, goombaDir == 0 means Goomba is moving leftward
	cmp goombaDir, 1
	je CHECK_RIGHT_MOVEMENT
		sub goombaX, 1d

	CHECK_RIGHT_MOVEMENT:
	cmp goombaDir, 0
	je RETURN_GOOMBA_MOVEMENT
		add goombaX, 1d
		
	RETURN_GOOMBA_MOVEMENT:
	call goombaCollision
	ret

moveGoomba endp