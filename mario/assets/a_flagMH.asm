drawMushroomHelp proc

	; Specifically for the Help menu; only the Y-coordinates are changed

	; MUSHROOM

	mov pusher, 590d
	push pusher
	mov pusher, 210d
	push pusher
	mov pusher, 7d
	push pusher
	mov pusher, 21d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect

	; LINE 2
	mov pusher, 588d
	push pusher
	mov pusher, 212d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare

	mov pusher, 596d
	push pusher
	mov pusher, 212d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 04h
	push pusher
	call drawRect
	
	; LINE 3
	mov pusher, 586d
	push pusher
	mov pusher, 214d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect

	mov pusher, 594d
	push pusher
	mov pusher, 214d
	push pusher
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 04h
	push pusher
	call drawRect
	
	; LINE 4
	mov pusher, 584d
	push pusher
	mov pusher, 216d
	push pusher
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect

	mov pusher, 594d
	push pusher
	mov pusher, 216d
	push pusher
	mov pusher, 9d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 04h
	push pusher
	call drawRect
	
	; LINE 5
	mov pusher, 582d
	push pusher
	mov pusher, 218d
	push pusher
	mov pusher, 7d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect

	mov pusher, 596d
	push pusher
	mov pusher, 218d
	push pusher
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 04h
	push pusher
	call drawRect
	
	mov pusher, 602d
	push pusher
	mov pusher, 218d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	; LINES 6-11 for backdrop
	mov pusher, 580d
	push pusher
	mov pusher, 220d
	push pusher
	mov pusher, 27d
	push pusher
	mov pusher, 13d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov pusher, 578d
	push pusher
	mov pusher, 224d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 7d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov pusher, 608d
	push pusher
	mov pusher, 224d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 7d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	; Patches
	mov pusher, 584d
	push pusher
	mov pusher, 220d
	push pusher
	mov pusher, 5d
	push pusher
	mov pusher, 9d
	push pusher
	mov pusher, 04h
	push pusher
	call drawRect
	
	mov pusher, 582d
	push pusher
	mov pusher, 222d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 5d
	push pusher
	mov pusher, 04h
	push pusher
	call drawRect
	
	mov pusher, 590d
	push pusher
	mov pusher, 222d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 5d
	push pusher
	mov pusher, 04h
	push pusher
	call drawRect
	
	mov pusher, 602d
	push pusher
	mov pusher, 224d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 04h
	push pusher
	call drawSquare
	
	mov pusher, 604d
	push pusher
	mov pusher, 226d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 04h
	push pusher
	call drawSquare
	
	; Base
	mov pusher, 586d
	push pusher
	mov pusher, 232d
	push pusher
	mov pusher, 15d
	push pusher
	mov pusher, 7d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov pusher, 582d
	push pusher
	mov pusher, 232d
	push pusher
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 04h
	push pusher
	call drawRect
	
	mov pusher, 600d
	push pusher
	mov pusher, 232d
	push pusher
	mov pusher, 5d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 04h
	push pusher
	call drawRect
	
	mov pusher, 588d
	push pusher
	mov pusher, 240d
	push pusher
	mov pusher, 11d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 0Fh
	push pusher
	call drawRect
	
	mov pusher, 598d
	push pusher
	mov pusher, 236d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 3d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawRect
	
	mov pusher, 596d
	push pusher
	mov pusher, 240d
	push pusher
	mov pusher, 1d
	push pusher
	mov pusher, 2Bh
	push pusher
	call drawSquare

	ret

drawMushroomHelp endp