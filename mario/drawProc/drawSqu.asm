drawSquare proc

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	; PROCEDURE NAME: Draw Square					  ;
	; FUNCTION: Draws a square in accordance to		  ;
	;			the parameters passed to function.	  ;
	; PARAMETERS: - Positions X & Y					  ;
	;			  - Size							  ;
	;			  - Colour							  ;
	; RETURNS: NULL									  ;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	pop funcAddr ; Get function address in here
	
	pop ax ;
	mov ah, 0Ch
	pop checkX ; Store the size of the square to be drawn
	pop posY ; Get Y coordinate
	pop posX ; Get X coordinate
	
	push bx
	push cx
	push dx
	
	mov movY, 0
	mov movAnimY, 0
	DRAW_OUTER:
		mov movX, 0
		mov movAnimX, 0
		DRAW_INNER:
			mov cx, posX
			add cx, movX
			mov dx, posY
			add dx, movY
			int 10h
			inc movX
			mov cx, movX
			cmp cx, checkX
			jbe DRAW_INNER
		mov movX, 0
		inc movY
		mov dx, movY
		cmp dx, checkX
		jbe DRAW_OUTER
	
	pop dx
	pop cx
	pop bx
	
	push funcAddr ; Push back function address
	ret
	
drawSquare endp