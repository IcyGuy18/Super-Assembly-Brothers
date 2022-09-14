drawTitleScreen proc

	; Draw the title screen, letter by letter

	; TITLE SCREEN:
	; S
	mov pusher, 120d
	push pusher
	mov pusher, 110d
	push pusher
	mov pusher, 60d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 36h
	push pusher
	call drawRect
	
	mov pusher, 160d
	push pusher
	mov pusher, 110d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 30d
	push pusher
	mov pusher, 36h
	push pusher
	call drawRect
	
	mov pusher, 120d
	push pusher
	mov pusher, 110d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 40d
	push pusher
	mov pusher, 36h
	push pusher
	call drawRect
	
	mov pusher, 120d
	push pusher
	mov pusher, 150d
	push pusher
	mov pusher, 60d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 36h
	push pusher
	call drawRect
	
	mov pusher, 160d
	push pusher
	mov pusher, 150d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 40d
	push pusher
	mov pusher, 36h
	push pusher
	call drawRect
	
	mov pusher, 120d
	push pusher
	mov pusher, 190d
	push pusher
	mov pusher, 60d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 36h
	push pusher
	call drawRect
	
	mov pusher, 120d
	push pusher
	mov pusher, 180d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 30d
	push pusher
	mov pusher, 36h
	push pusher
	call drawRect
	
	; U
	mov pusher, 200d
	push pusher
	mov pusher, 130d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 80d
	push pusher
	mov pusher, 2Ch
	push pusher
	call drawRect
	
	mov pusher, 200d
	push pusher
	mov pusher, 190d
	push pusher
	mov pusher, 60d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 2Ch
	push pusher
	call drawRect
	
	mov pusher, 240d
	push pusher
	mov pusher, 130d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 80d
	push pusher
	mov pusher, 2Ch
	push pusher
	call drawRect
	
	;P
	mov pusher, 280d
	push pusher
	mov pusher, 130d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 80d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov pusher, 280d
	push pusher
	mov pusher, 130d
	push pusher
	mov pusher, 40d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov pusher, 310d
	push pusher
	mov pusher, 130d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 40d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov pusher, 280d
	push pusher
	mov pusher, 160d
	push pusher
	mov pusher, 50d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	;E
	mov pusher, 350d
	push pusher
	mov pusher, 130d
	push pusher
	mov pusher, 50d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 77h
	push pusher
	call drawRect
	
	mov pusher, 350d
	push pusher
	mov pusher, 130d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 80d
	push pusher
	mov pusher, 77h
	push pusher
	call drawRect
	
	mov pusher, 350d
	push pusher
	mov pusher, 190d
	push pusher
	mov pusher, 50d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 77h
	push pusher
	call drawRect
	
	mov pusher, 350d
	push pusher
	mov pusher, 160d
	push pusher
	mov pusher, 40d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 77h
	push pusher
	call drawRect
	
	;R
	mov pusher, 415d
	push pusher
	mov pusher, 130d
	push pusher
	mov pusher, 55d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 2Ch
	push pusher
	call drawRect
	
	mov pusher, 420d
	push pusher
	mov pusher, 130d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 80d
	push pusher
	mov pusher, 2Ch
	push pusher
	call drawRect
	
	mov pusher, 420d
	push pusher
	mov pusher, 160d
	push pusher
	mov pusher, 50d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 2Ch
	push pusher
	call drawRect
	
	mov pusher, 450d
	push pusher
	mov pusher, 130d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 40d
	push pusher
	mov pusher, 2Ch
	push pusher
	call drawRect
	
	mov pusher, 460d
	push pusher
	mov pusher, 170d
	push pusher
	mov pusher, 15d
	push pusher
	mov pusher, 40d
	push pusher
	mov pusher, 2Ch
	push pusher
	call drawRect
	
	;M
	mov pusher, 140d
	push pusher
	mov pusher, 240d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 100d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov pusher, 140d
	push pusher
	mov pusher, 240d
	push pusher
	mov pusher, 60d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov pusher, 200d
	push pusher
	mov pusher, 240d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 100d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	mov pusher, 170d
	push pusher
	mov pusher, 250d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 70d
	push pusher
	mov pusher, 28h
	push pusher
	call drawRect
	
	;A
	mov pusher, 240d
	push pusher
	mov pusher, 260d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 80d
	push pusher
	mov pusher, 77h
	push pusher
	call drawRect
	
	mov pusher, 240d
	push pusher
	mov pusher, 260d
	push pusher
	mov pusher, 60d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 77h
	push pusher
	call drawRect
	
	mov pusher, 280d
	push pusher
	mov pusher, 260d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 80d
	push pusher
	mov pusher, 77h
	push pusher
	call drawRect
	
	mov pusher, 240d
	push pusher
	mov pusher, 295d
	push pusher
	mov pusher, 60d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 77h
	push pusher
	call drawRect
	
	;R
	mov pusher, 315d
	push pusher
	mov pusher, 260d
	push pusher
	mov pusher, 55d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 2Ch
	push pusher
	call drawRect
	
	mov pusher, 320d
	push pusher
	mov pusher, 260d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 80d
	push pusher
	mov pusher, 2Ch
	push pusher
	call drawRect
	
	mov pusher, 320d
	push pusher
	mov pusher, 290d
	push pusher
	mov pusher, 50d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 2Ch
	push pusher
	call drawRect
	
	mov pusher, 350d
	push pusher
	mov pusher, 260d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 40d
	push pusher
	mov pusher, 2Ch
	push pusher
	call drawRect
	
	mov pusher, 360d
	push pusher
	mov pusher, 300d
	push pusher
	mov pusher, 15d
	push pusher
	mov pusher, 40d
	push pusher
	mov pusher, 2Ch
	push pusher
	call drawRect
	
	;I
	mov pusher, 400d
	push pusher
	mov pusher, 260d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 80d
	push pusher
	mov pusher, 36h
	push pusher
	call drawRect
	
	;O
	mov pusher, 440d
	push pusher
	mov pusher, 260d
	push pusher
	mov pusher, 60d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 77h
	push pusher
	call drawRect
	
	mov pusher, 440d
	push pusher
	mov pusher, 260d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 80d
	push pusher
	mov pusher, 77h
	push pusher
	call drawRect
	
	mov pusher, 440d
	push pusher
	mov pusher, 320d
	push pusher
	mov pusher, 60d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 77h
	push pusher
	call drawRect
	
	mov pusher, 480d
	push pusher
	mov pusher, 260d
	push pusher
	mov pusher, 20d
	push pusher
	mov pusher, 80d
	push pusher
	mov pusher, 77h
	push pusher
	call drawRect

	ret

drawTitleScreen endp