

.model small
.stack 100h
.data
	delayCount dw ? ; specifically for playing sounds at certain tempos
	
	movX dw ? ; Check to see if variable is equal to draw distance
	movY dw ?
	checkX dw ? ; Draw distance stored in these two variables
	checkY dw ?
	posX dw ? ; Draw distances temporarily stored in here
	posY dw ?
	colour dw ? ; Store object's colour
	
	movAnimX dw ? ; Both of these are specifically for animations
	movAnimY dw ?
	
	pusher dw ? ; This will take in a value in order and push it onto stack for drawing
	funcAddr dw ? ; This will store the function address: used in DrawRect and DrawSquare procedures
	
	; Some variables will be initialized to store the coordinates of objects for more convenient drawing
	;
	groundLevel dw 440d
	
	; Pipes collision coordinates
	pipe1Left dw 120d
	pipe1Top dw 390d
	
	pipe2Left dw 270d
	pipe2Top dw 360d
	
	pipe3Left dw 450d
	pipe3Top dw 350d
	
	tree struct
	
		x_coord dw ?
		y_coord dw ?
	
	tree ends
	
	tree1 tree <390d, 394d>
	tree2 tree <250d, 394d>
	tree3 tree <60d, 394d>
	tree4 tree <430d, 408d>
	tree5 tree <170d, 408d>
	
	treeX dw ?
	treeY dw ?
	
	; For animations/movement, variables will be necessary
	; to keep track of individual sprites
	cloudTopY dw 21d
	cloudTopX dw 180d
	cloudMiddleY dw 31d
	cloudMiddleX dw 170d
	cloudBottomY dw 41d
	cloudBottomX dw 160d
	
	charX dw 98d
	charY dw 348d
	charAnimX dw ?
	charAnimY dw ?
	charTemp dw ?
	charBackgroundColour dw 00h
	
	jumpCount db 60d
	
	charCheckTopCount dw ?
	charCheckBottomCount dw ?
	charCheckLeftCount dw ?
	charCheckRightCount dw ?
	charColour dw ?
	charLivesStr db "     Lives: $"
	charLives db 0
	charDead db 0 ; 0 is not dead, 1 is very dead
	levelStr db "                      Level: $"
	score dw 0
	scoreStr db "                         Score: $"
	startStr db 13,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,"                                       x  $"
	gameoverStr db 13,10,10,10,10,10,10,10,10,10,10,10,10,10,10,"                                   Game Over$"
	
	peachX dw 540d
	peachY dw 315d
	
	joystickConnected db 0
	checkJoystick db 0
	
	pushCount db 0
	divider dw 10
	
	kingdomX dw 520d
	kingdomY dw 320d
	kingdomColour1 dw 2Ah
	kingdomColour2 dw 5Ah
	kingdomTemp dw ?
	
	clearLevel db 0
	fanfareCheck db 0
	fireworksRisingCount db 40
	fireworksX dw 200
	fireworksY dw 200
	fireworkRiseCheck db 0
	fireworksExplodingCount db 40
	levelCount db 0
	; "levelCount" will indicate state of the game. 0 is menu, 1 is level 1, 2 is level 2, 3 is level 3, and 4 is winning the game
	finishLine dw ?
	
	; The next few variables are for controlling speaker tones while playing sound effects
	soundJumpToneInitial dw 4304d ; Initial sound tone that will play
	tempSoundJumpTone dw 0 ; Temporary sound tone variable to hold previous value
	soundJumpIncreaseCount db 10d ; Duration of gradient change in sound tone
	
	soundCoinToneInitial dw 2280d
	soundCoinToneAddition dw 759d
	soundCoinShiftCount db 0d
	
	soundFallToneInitial dw 4304d ; Initial sound tone that will play
	tempSoundFallTone dw 4304d ; Temporary sound tone variable to hold previous value
	
	soundSelectCount dw 0
	soundChooseCount dw 0
	soundLevelBeginCount dw 0
	soundGameOverCount dw 0
	soundDeadCount dw 0
	soundWinCount dw 0
	
	; Prototypes for playing music
	;parameters db "mario/sounds/bgm.wav"
	;musicPlayerFilePath db "PLANY.exe"
	
	moveCheck db 0 ; Movement state, 0 is stationary, 1 is moving left, 2 is moving right
	horizontalCollisionCheck db 0 ; Collision check while moving, 0 is no collisiion detected,
	; 1 is collision detected
	isTouching db 0 ; Collision state, 0 is not touching any border, 1 is touching something other than background object(s)
	jumpCheck db 0 ; Jump state, 0 is not jumping, 1 is jumping
	fallCheck db 0 ; Fall state, 0 is not falling, 1 is falling
	exitCode db 0
	
	coinX dw ?
	coinY dw ?
	coinTouch db ?
	coinRemove db ?
	coinGet db 0
	
	coin struct
	
		x_coord dw ? ; X coordinate of the coin
		y_coord dw ? ; Y coordinate of the coin
		isTouched db 0 ; Bool to see if the coin is picked up by player, 0 is not touched, 1 is touched
		removeOnce db 0; 0 is for background to be drawn once, 1 is that background has already been drawn
	
	coin ends
	
	coin1 coin <>
	coin2 coin <>
	coin3 coin <>
	coin4 coin <>
	coin5 coin <>
	
	goombaX dw ?
	goombaY dw ?
	goombaTouch db ?
	goombaDir db ?
	goombaColour dw ?
	goombaTemp dw ?
	goombaCheckCount db ?
	
	goomba struct
		x_coord dw ?
		y_coord dw ?
		movDirection db 0 ; Touch boolean, 0 is left, 1 is right
	goomba ends
	
	goomba1 goomba <220d, 408d, 0>
	goomba2 goomba <370d, 408d, 0>
	
	koopaX dw 440d
	koopaY dw 360d
	koopaMovDirection db 0 ; 0 is left, 1 is right
	koopaMovCount db 200d
	hammerX dw 0d
	hammerCount db 20d
	hammerY dw 0d
	hammerIsFalling db 0
	
	isMenu db 0
	menuX dw ?
	menuY dw ?
	menuDelay dw 0
	
	; Text to display on screen
	inputFormat db 13,10,10,10," Input: $"
	joystickIn db "Joystick$"
	keyboardIn db "Keyboard$"
	options db 13,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,"  Start",13,10,10,"  Help",13,10,10,"  Exit$"
	help1 db "                                     Use",13,10,"            The analog stick                       or the arrow keys",10,"                                                      ",17,"  ",16,"  ",30,"  ",31,"  ",10,"                            to move Mario around.",13,10,10,10,'$'
	help2 db "  Pressing A on the joystick or the spacebar on keyboard will make Mario jump.",13,10,10,10,"You can change controls between the keyboard and joystick by:",13,10," - pressing 1 on keyboard to change input to joystick",13,10," - pressing the X button on the joystick to change input to keyboard.",13,10,10,'$'
	help3 db "Your objective is to reach the flag on the other side.",13,10,10,"Along the way, collect coins to accumulate score.      x200",13,10,10,10,"Watch out for Goombas!",13,10,"They are immune to your stomping and will kill you once they touch you.",13,10,10,10,10,"The Koopa in the sky is equally bad! Avoid its deadly falling hammers!,",13,10,10,10,10,'$'
	help4 db "To close the game at any time, press ESC or the Y button.",13,10,10,"Press Enter or the A button to return to menu.$"
	
	endgameStr db 13,10,10,10,10,"                                 Congratulations!",13,10,10,"                   You have successfully saved Princess Peach!",13,10,10,10,"                      Now the kingdom is at peace once more.",13,10,10,10,10,10,"               Press Enter or the A button to return to main screen.$"
	displayOnce db 0
	
	; In draw functions, the values being pushed are in the order
	; X coordinate of object
	; Y coordinate of object
	; Length of object
	; Height of object
	; and colour of object
	
.code
.586
; Include in all of the files necessary
; for the game to work properly
INCLUDE mario\actions\jump.asm
INCLUDE mario\actions\fall.asm

INCLUDE mario\drawProc\drawRect.asm
INCLUDE mario\drawProc\drawSqu.asm

INCLUDE mario\input\joystick.asm
INCLUDE mario\input\keyboard.asm

INCLUDE mario\sounds\jump.asm
INCLUDE mario\sounds\coin.asm
INCLUDE mario\sounds\dead.asm
INCLUDE mario\sounds\select.asm
INCLUDE mario\sounds\choose.asm
INCLUDE mario\sounds\begin.asm
INCLUDE mario\sounds\win.asm
INCLUDE mario\sounds\gameOver.asm
; This was a prototype to try run a .WAV file for music
;INCLUDE mario\sounds\bgm_1.asm

INCLUDE mario\char\mario.asm
INCLUDE mario\char\m_jump.asm
INCLUDE mario\char\m_dead.asm
INCLUDE mario\char\m_head.asm
INCLUDE mario\char\peach.asm
INCLUDE mario\char\score.asm

INCLUDE mario\colli\menuRem.asm
INCLUDE mario\colli\c_coins.asm
INCLUDE mario\colli\m_hori.asm
INCLUDE mario\colli\m_verti.asm
INCLUDE mario\colli\m_flagT.asm
INCLUDE mario\colli\m_colli.asm
INCLUDE mario\colli\e_colli.asm
INCLUDE mario\colli\e_move.asm
INCLUDE mario\colli\e_kMove.asm
INCLUDE mario\colli\i_pick.asm
INCLUDE mario\colli\i_fall.asm
INCLUDE mario\colli\i_rem.asm
INCLUDE mario\colli\i_hitMar.asm

INCLUDE mario\assets\help.asm
INCLUDE mario\assets\helpDraw.asm
INCLUDE mario\assets\a_trees.asm
INCLUDE mario\assets\a_bush.asm
INCLUDE mario\assets\a_treeL.asm
INCLUDE mario\assets\a_pipe1.asm
INCLUDE mario\assets\a_pipe2.asm
INCLUDE mario\assets\a_pipe3.asm
INCLUDE mario\assets\a_pipeT.asm
INCLUDE mario\assets\a_fpole.asm
INCLUDE mario\assets\a_flagM.asm
INCLUDE mario\assets\a_flagMH.asm
INCLUDE mario\assets\a_ground.asm
INCLUDE mario\assets\a_bg.asm
INCLUDE mario\assets\a_title.asm
INCLUDE mario\assets\a_kd.asm
INCLUDE mario\assets\e_gmb.asm
INCLUDE mario\assets\e_koopa.asm
INCLUDE mario\assets\m_cloud.asm
INCLUDE mario\assets\m_fwL.asm
INCLUDE mario\assets\m_fwE.asm
INCLUDE mario\assets\i_coin.asm
INCLUDE mario\assets\i_hammer.asm
INCLUDE mario\assets\i_menu.asm
INCLUDE mario\assets\init_c.asm
INCLUDE mario\assets\d_gmbs.asm
INCLUDE mario\assets\d_coins.asm

jmp start

drawAssetsOnce proc

	call drawBackground
	
	call drawPipeOne
	call drawPipeTwo
	
	; Draw the flag in levels 1 and 2 - Kingdom will be drawin in level 3
	cmp levelCount, 3
	je SKIP_PIPE_THREE
		call drawFlag
		call drawPole
		call drawMushroom
		call drawPipeThree
	SKIP_PIPE_THREE:
	; Check for drawing Kingdom in level 3
	cmp levelCount, 3
	jne SKIP_KINGDOM
		call drawKingdom
	SKIP_KINGDOM:
	call drawGround
	call drawCoins
	
	ret
	
drawAssetsOnce endp

drawAssetsCont proc

	; The delay is to compensate for BIOS keyboard buffer delays so jumps are easier on keyboard
	cmp levelCount, 3
	je SKIP_DELAY
	mov delayCount, 700d
	call delay
	SKIP_DELAY:
	call showScore
	
	cmp levelCount, 1
	jne SKIP_CLOUD
		call drawCloud
	SKIP_CLOUD:
	
	; Comparison to draw different states of Mario - idle/moving, or jumping/falling
	cmp jumpCheck, 1
	je DRAW_JUMP_MARIO
	cmp fallCheck, 1
	je DRAW_JUMP_MARIO
	call drawMario
	jmp SKIP_JUMP_MARIO
	DRAW_JUMP_MARIO:
	call drawMarioJump
	SKIP_JUMP_MARIO:
	
	; Draw the Goombas after level 1
	
	cmp levelCount, 1
	je SKIP_GOOMBA
		
		call drawGoombas
		
		; Draw the flying Koops only in level 3
		KOOPA:
		cmp levelCount, 3
		jne SKIP_GOOMBA
			call drawKoopa
			call moveKoopa
			call hammerFall
			call hitMario
	SKIP_GOOMBA:
	
	call checkCoins

	ret

drawAssetsCont endp

delay proc

	push ax
	push bx
	push cx
	push dx
	
	mov cx, delayCount
	OUTER_DELAY:
		mov bx, 10
		INNER_DELAY:
			dec bx
			jnz INNER_DELAY
		loop OUTER_DELAY
	
	pop dx
	pop cx
	pop bx
	pop ax

	ret

delay endp

start:
main proc
	mov ax, @data
	mov ds, ax
	mov ax, 0
	
	mov ax, 4F02h ; New Screen Type
	mov bx, 101h  ; 640x480 with 256 colours
	;mov ax, 12h ; Old Screen Type
	int 10h
	
	cmp ah, 01h ; If VGA BIOS is supported, int 10h will return AH = 00, else it will return AH = 01
				; meaning that this screen type is not supported
	je TERMINATE
	
	; Detect a joystick
	mov ah, 84h
	mov dx, 1
	int 15h
	; The joystick will always be the preferred input for playing the game due to zero delays when pressing buttons or moving
	jc CONTINUE_JOYSTICK_CHECK
	mov joystickConnected, 1
	mov checkJoystick, 1
	CONTINUE_JOYSTICK_CHECK:
	
	
	MENU_DRAW_ONCE:
	; Stop any sounds being produced by controlling the PC Speaker and terminating the tone it produces
	mov al, 61h
	out 61h, al
	; Refresh screen
	mov ax, 4F02h
	mov bx, 101h
	int 10h
	; Set in all of the assets in position for menu screen
	mov charX, 98d
	mov charY, 350d
	mov peachX, 540d
	mov peachY, 315d
	mov koopaX, 440d
	mov koopaY, 360d
	mov kingdomX, 520d
	mov kingdomY, 359d
	mov menuX, 65d
	mov menuY, 350d
	mov charBackgroundColour, 00h
	mov levelCount, 0
	mov charLives, 3
	MENU_SOUND:
	; This loop is to play the sound; this type of loop will be repeated throughout the main program
	call playChoose
	cmp soundChooseCount, 0
	jne MENU_SOUND

	; Display the text once inside the loop: necessary for when input is being changed.
	mov displayOnce, 0
	mov isMenu, 1
	
	call showScore
	call drawTitleScreen
	call drawMario
	call drawPipeTitle
	call drawPeach
	call drawKingdom
	call drawKoopa
	call drawMenuPointer
	
	; Draw the start menu
	MENU:
		; Refresh key every time so it doesn't store key buffer
		mov ah, 0Ch
		mov al, 0
		int 21h
		call playSelect
		call keyboardInput
		call joystickInput
		cmp displayOnce, 1
		; Display the input format at the bottom left screen - once, or else it will keep repeating and block out screen
		je SKIP_DISPLAY_ONCE
			mov ah, 09h
			mov dx, offset options
			int 21h
			mov dx, offset inputFormat
			int 21h
		cmp checkJoystick, 0
		je DISPLAY_KEYBOARD_SEGMENT
			mov dx, offset joystickIn
			int 21h
			mov displayOnce, 1
			jmp SKIP_KEYBOARD_SEGMENT
		DISPLAY_KEYBOARD_SEGMENT:
			mov dx, offset keyboardIn
			int 21h
			mov displayOnce, 1
		SKIP_KEYBOARD_SEGMENT:
		SKIP_DISPLAY_ONCE:
		; Check if player has pressed Enter or the A button which changed isMenu or levelCount
		cmp isMenu, 2
		je HELP
		cmp exitCode, 1
		je TERMINATE_GAME
		cmp levelCount, 0
		je MENU
		jmp START_GAME
	
	; Draw the help menu
	HELP:
		call drawHelp
		HELP_SOUND_LOOP:
			call playChoose
			cmp soundChooseCount, 0
			jne HELP_SOUND_LOOP
		HELP_LOOP:
			call joystickInput
			call keyboardInput
			cmp exitCode, 1
			je TERMINATE
			cmp isMenu, 1
			je MENU_DRAW_ONCE
			jmp HELP_LOOP
	
	; Starting the game
	START_GAME:
		mov soundChooseCount, 20000
		START_GAME_LOOP:
			call playChoose
			cmp soundChooseCount, 0
			jne START_GAME_LOOP
	; Delay is set to slow down the game in certain parts where it proceeds too quickly
	mov delayCount, 60000d
	call delay
	mov score, 0
	
	; Play the intro sequence displaying the amount of lives Mario has
	INTRO:
		mov ax, 4F02h
		mov bx, 101h
		int 10h
		; If number of lives is below zero, game will be over for the player
		cmp charLives, 0
		jl GAME_OVER
		mov charBackgroundColour, 00h
		call showScore
		mov soundLevelBeginCount, 5000
		mov charX, 270d
		mov charY, 240d
		mov ah, 09h
		mov dx, offset startStr
		int 21h
		mov dl, charLives
		add dl, 48
		mov ah, 02h
		int 21h
		call drawMarioHead
		mov delayCount, 50
		INTRO_LOOP:
			call playLevelBegin
			call delay
			cmp soundLevelBeginCount, 0
			jne INTRO_LOOP

		mov ax, 4F02h ; New Screen Type
		mov bx, 101h  ; 640x480 with 256 colours
		;mov ax, 12h ; Old Screen Type
		int 10h
	
	; Change the assets and variables accordingly in here
	LEVEL_CHANGER:
	cmp levelCount, 1
	jne CHECK_LEVEL_TWO
		; Background colour is blue, giving it a look of mid-day
		mov charBackgroundColour, 36h
		mov finishLine, 620d
		jmp SKIP_LEVEL_CHECK
	CHECK_LEVEL_TWO:
	cmp levelCount, 2
	jne CHECK_LEVEL_THREE
		; Background colour is a light shade of purple, giving it a look of early evening
		mov charBackgroundColour, 38h
		mov finishLine, 620d
		jmp SKIP_LEVEL_CHECK
	CHECK_LEVEL_THREE:
	cmp levelCount, 3
	jne SKIP_LEVEL_CHECK
		; Background colour is almost dark, giving a look of night time
		mov charBackgroundColour, 11h
		mov finishLine, 508d
	SKIP_LEVEL_CHECK:
		; Initialize all of the variables to their respective positions
		call initCoins
		mov hammerIsFalling, 0
		mov koopaX, 440d
		mov koopaY, 40d
		mov koopaMovDirection, 0
		mov koopaMovCount, 200d
		mov goomba1.x_coord, 220d
		mov goomba1.y_coord, 408d
		mov goomba1.movDirection, 0
		mov goomba2.x_coord, 370d
		mov goomba2.y_coord, 408d
		mov goomba2.movDirection, 0
		mov kingdomX, 549d
		mov kingdomY, 320d
		mov charX, 30d
		mov charY, 406d
		mov fireworksRisingCount, 40
		mov fireworksExplodingCount, 40
		mov fireworksX, 570d
		mov fireworksY, 180d
		mov jumpCheck, 0
		mov fallCheck, 0
		mov jumpCount, 0
	
	; Show the score at the top and display all of the static assets on screen
	call showScore
	call drawAssetsOnce
	; Another prototype function to call to play music
	;call playMusic
	GAMELOOP:
		; Refresh key everytime so it doesn't store key buffer
		mov ah, 0Ch
		mov al, 0
		int 21h
		;  Continuously draw the moving assets
		call drawAssetsCont
		; Check vertical collisions constantly, unlike horizontal collisions, which we'll only check when moving
		call checkVerticalCollisions
		; Check if user has reached the flagpole/kingdom
		call flagTouch
		
		; If player gets coin, play sound
		cmp coinGet, 1
		jne SKIP_COIN_SOUND
			call playCoin
		SKIP_COIN_SOUND:
		; Check if player has touched a hazard
		cmp charDead, 1
		jne SKIP_DEAD
			call drawMarioDead
			mov soundDeadCount, 13500
			mov delayCount, 24
			DEAD_LOOP:
				call playDead
				call delay
				cmp soundDeadCount, 0
				jne DEAD_LOOP
			mov al, 61h
			out 61h, al
			mov charDead, 0
			mov delayCount, 60000d
			call delay
			dec charLives
			call delay
			jmp INTRO
		SKIP_DEAD:
		; Check for when player touches flagpole/kingdom
		cmp fanfareCheck, 0
		je SKIP_CLEAR_LEVEL
			mov hammerIsFalling, 0
			mov goomba1.movDirection, 2
			mov goomba2.movDirection, 2
			mov koopaMovDirection, 2
			cmp fireworkRiseCheck, 0
			jne SKIP_RISE
				call playFireworksRising
			SKIP_RISE:
			cmp fireworkRiseCheck, 1
			jne SKIP_EXPLOSION
				call playFireworksExploding
			SKIP_EXPLOSION:
		; When level is cleared, increment level count and reset positions
		cmp clearLevel, 1
		jne SKIP_CLEAR_LEVEL
			inc levelCount
			mov fireworkRiseCheck, 0
			mov fanfareCheck, 0
			mov clearLevel, 0
			cmp levelCount, 4
			je ENDGAME
			jmp INTRO
		SKIP_CLEAR_LEVEL:
		cmp checkJoystick, 0
		je CHECK_KEYBOARD
			call joystickInput
			jmp SKIP_KEYBOARD
		CHECK_KEYBOARD:
			call keyboardInput
		SKIP_KEYBOARD:
		
		; Check: if the player is stationary or falling, then do not jump
		cmp jumpCheck, 0
		je SKIP_JUMP
		cmp fallCheck, 1
		je SKIP_JUMP
		call charJump
		SKIP_JUMP:
		; Check if user has forcefully terminated the game
		cmp exitCode, 1
		je TERMINATE
		jmp GAMELOOP
	
	; Game over loop: display 
	GAME_OVER:
		mov delayCount, 30
		mov levelCount, 0
		mov soundGameOverCount, 18000
		mov charLives, 0
		call showScore
		mov ah, 09h
		mov dx, offset gameoverStr
		int 21h
		GAME_OVER_LOOP:
			call playGameOver
			call delay
			cmp soundGameOverCount, 0
			jnz GAME_OVER_LOOP
		mov al, 61h
		out 61h, al
		mov delayCount, 60000d
		call delay
		jmp MENU_DRAW_ONCE
	
	ENDGAME:
		mov ax, 4F02h ; New Screen Type
		mov bx, 101h  ; 640x480 with 256 colours
		;mov ax, 12h ; Old Screen Type
		int 10h
		
		mov charBackgroundColour, 00h
		mov charX, 280d
		mov charY, 408d
		mov peachX, 320d
		mov peachY, 394d
		call drawCloud
		call drawMario
		call drawPeach
		call drawKingdom
		call drawGround
		call drawTrees
		mov ah, 09h
		mov dx, offset endgameStr
		int 21h
		; LOOP_WIN is for resetting the music tone to its original position after the whole fanfare has been played
		LOOP_WIN:
			mov soundWinCount, 24000
		ENDLOOP:
			mov ah, 0Ch
			mov al, 0
			int 21h
			mov delayCount, 40
			call delay
			call playWin
			call joystickInput
			call keyboardInput
			cmp exitCode, 1
			je TERMINATE
			cmp isMenu, 1
			je MENU_DRAW_ONCE
			cmp soundWinCount, 0
			jne ENDLOOP
			jmp LOOP_WIN
	
	TERMINATE_GAME:
		mov soundChooseCount, 20000
		TERMINATE_LOOP:
			call playChoose
			cmp soundChooseCount, 0
			jne TERMINATE_LOOP
	
	TERMINATE:
	; Before terminating, close off any tone being generated by the PC speaker
	mov al, 61h
	out 61h, al
	
	; Revert back to default DOSBOX screen
	mov ax, 2h
	int 10h
	
	mov ah, 4Ch
	int 21h
main endp

end start