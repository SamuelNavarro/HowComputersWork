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

@SCREEN
D=A
@addr
M=D 
@24575
D=A
@n    
M=D  

(START)
@KBD
D=M
@FILL
D;JNE
@UNFILL
D;JEQ

(FILL)
@addr
D=M
@n
D=D-M
@START
D;JGT

@addr
A=M
M=-1
@addr
A=M
A=A+1
D=A
@addr
M=D
@KBD
D=M
@FILL
D;JNE
@UNFILL
D;JEQ

(UNFILL)
@addr
D=M
@n
D=D-M
@START
D;JGT
@addr
A=M
M=0
@addr
A=M
A=A+1
D=A
@addr
M=D
@KBD
D=M
@FILL
D;JNE
@UNFILL
D;JEQ
