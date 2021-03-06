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
(START)
  @SCREEN
  D=A
  @addr
  M=D 

(LOOP)
  @KBD
  D=M
  @UNFILL
  D;JEQ
  @FILL
  0;JMP

(FILL)
  @addr
  A=M
  M=-1
  @NEXT
  0;JMP

(UNFILL)
  @addr
  A=M
  M=0
  @NEXT
  0;JMP


(NEXT)
  @addr
  D=M+1
  M=D
  @KBD
  D=A-D
  @START
  D;JEQ
  @LOOP
  0;JMP
