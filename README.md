# Super Assembly Brothers
An extremely simple game of Mario Bros. built entirely in pure Assembly Language.

# Demonstration
Click on the image below and watch the game in action!
[![Watch the video](https://i9.ytimg.com/vi/WXhxAhiA3co/mqdefault.jpg?v=63220c93&sqp=CMCaiJkG&rs=AOn4CLBArT84beTaEN_htoLoJagJRENmeg)](https://youtu.be/WXhxAhiA3co)

# Disclaimer
All of the assets you see inside were built by me, pixel-by-pixel. However, all credits to the art, music, and whatever is relevant here goes to Nintendo, for creating a (particularly awesome) franchise. I claim no ownership apart from the code.

# Just a fun project
I like to say it was a fun project I managed, but in all honesty, the pressure caved in on me while I was figuring out a lot of things I wanted to do and how I wanted to do it. The "game" is a by-product of what I managed to create for a semester project, and I'm honestly proud of how it turned out, although not without any improvements in my mind. I'd like to see how I could improve upon the game down the line.

# Details
The game was made using MASM 6.13, and compiled and executed on DOSBox 0.74. The basics of Assembly Language have been used to create from scratch, and a twist of its own.
The game offers compatibility with not only a keyboard, but with a joystick as well (tested on an XBox 360 controller), since repeat delays cause the game to be a bit more on the unplayable side, three (very) basic levels where you just have to get to the end, and a help option explaining what you have to do in the game.

# Running the game
Running the game is just as simple as compiling the "mario1.asm" file and running it on DOSBox:
- Compile the "mario1.asm" file using `masm mario1.asm`
- Link the object file created using `link mario11`
- Simply call `mario1.exe` to start running the game
