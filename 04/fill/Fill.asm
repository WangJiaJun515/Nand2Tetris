// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.


@SCREEN
M = -1


(BEGIN)
@16384
D = A
@a
M = D
@8191
D = A
@b
M = D
@KBD
D = M

@BLACK
D;JGT
@WHITE
0;JMP

(BLACK)
@b
D = M
@END
D;JLT
@a
A = D + M
M = -1
@b
M = M - 1
@BLACK
0;JMP

(WHITE)
@b
D = M
@END
D;JLT
@a
A = D + M
M = 0
@b
M = M - 1
@WHITE
0;JMP

(END)
@BEGIN
0;JMP