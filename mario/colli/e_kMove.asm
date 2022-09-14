moveKoopa proc

	; Procedure to move the flying Koopa left and right

	cmp koopaMovDirection, 0
	jne MOVE_RIGHT

	sub koopaX, 2d
	dec koopaMovCount
	jnz RETURN_KOOPA_MOVEMENT
	mov koopaMovDirection, 1

	MOVE_RIGHT:
	cmp koopaMovDirection, 1
	jne RETURN_KOOPA_MOVEMENT

	add koopaX, 2d
	dec koopaMovCount
	jnz RETURN_KOOPA_MOVEMENT
	mov koopaMovDirection, 0

	RETURN_KOOPA_MOVEMENT:
	ret

moveKoopa endp