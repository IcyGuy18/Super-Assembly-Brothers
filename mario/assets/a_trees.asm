drawTrees proc

	; Pass tree/bush coordinates and draw them

	mov ax, tree1.x_coord
	mov treeX, ax
	mov ax, tree1.y_coord
	mov treeY, ax
	call drawTreeLarge

	mov ax, tree2.x_coord
	mov treeX, ax
	mov ax, tree2.y_coord
	mov treeY, ax
	call drawTreeLarge
	
	mov ax, tree3.x_coord
	mov treeX, ax
	mov ax, tree3.y_coord
	mov treeY, ax
	call drawTreeLarge
	
	mov ax, tree4.x_coord
	mov treeX, ax
	mov ax, tree4.y_coord
	mov treeY, ax
	call drawBush
	
	mov ax, tree5.x_coord
	mov treeX, ax
	mov ax, tree5.y_coord
	mov treeY, ax
	call drawBush

	ret

drawTrees endp