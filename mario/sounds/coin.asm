playCoin proc
	
	dec soundCoinShiftCount
	
	cmp soundCoinShiftCount, 1d
	je STOP_COIN_SOUND

	cmp soundCoinShiftCount, 13d
	jbe SKIP_FIRST_TONE
	
	mov ax, soundCoinToneInitial
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_COIN_SOUND
	
	SKIP_FIRST_TONE:
	
	mov ax, soundCoinToneInitial
	sub ax, soundCoinToneAddition
	out 42h, al
	mov al, ah
	out 42h, al
	
	mov al, 61h
	mov al, 11b
	out 61h, al
	jmp SKIP_COIN_SOUND
	
	STOP_COIN_SOUND:
	mov al, 61h
	out 61h, al
	mov coinGet, 0
	
	SKIP_COIN_SOUND:
	ret

playCoin endp