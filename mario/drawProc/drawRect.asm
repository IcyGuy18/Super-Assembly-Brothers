drawRect proc

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	; PROCEDURE NAME: Draw Rectangle				  ;
	; FUNCTION: Draws a rectangle in accordance to	  ;
	;			the parameters passed to function.	  ;
	; PARAMETERS: - Position X						  ;
	;			  - Position Y						  ;
	;			  - Length							  ;
	;			  - Height							  ;
	;			  - Colour							  ;
	; RETURNS: NULL									  ;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	pop funcAddr ; Get function address in here
	
	pop ax ;
	mov ah, 0Ch
	pop checkY 
	pop checkX ; Store the width draw distance of object to be drawn
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
			cmp cx, 639d
			ja LOOP_FROM_LEFT
			CONT_FROM_CX:
			mov dx, posY
			add dx, movY
			cmp dx, 479d
			ja LOOP_FROM_UP
			CONT_FROM_DX:
			int 10h
			inc movX
			mov cx, movX
			cmp cx, checkX
			jbe DRAW_INNER
		mov movX, 0
		inc movY
		mov dx, movY
		cmp dx, checkY
		jbe DRAW_OUTER
		
	jmp STOP_DRAW
		
	LOOP_FROM_LEFT:
	mov cx, 0
	add cx, movAnimX
	inc movAnimX
	jmp CONT_FROM_CX
	
	LOOP_FROM_UP:
	mov dx, 0
	add dx, movAnimY
	inc movAnimY
	jmp CONT_FROM_DX
	STOP_DRAW:
	pop dx
	pop cx
	pop bx
	
	push funcAddr ; Push back function address
	ret
	
drawRect endp