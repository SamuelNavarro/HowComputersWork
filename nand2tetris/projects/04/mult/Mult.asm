// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
@R0
D=M  // D=R0
@n
M=D  // n = R0
@i
M=1  // i = 1
@sum
M=0  // sum = 0

(LOOP)
@i
D=M
@n
D=D-M
@STOP
D;JGT

@R1
D=M
@sum
M=M+D    // sum = sum + R1
@i
M=M+1   // i = i + 1
@LOOP
0;JMP


(STOP)
@sum
D=M
@R2
M=D  // R2 = sum


(END)
@END
0;JMP
