flagTouch proc

	; Check if player has reached the flag pole

	mov ax, charX
	add ax, 24d
	cmp ax, finishLine
	jbe HAS_NOT_TOUCHED
		mov fanfareCheck, 1
	HAS_NOT_TOUCHED:
	ret

flagTouch endp