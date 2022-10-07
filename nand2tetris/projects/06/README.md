# Assembly Languages and Assemblers


The assembler translates assembly language to machine language.

The assembler enters a symbol into the table only when that symbol has not appeared before.

## The Hack Assembly Language

Assembler for symbol-less Hack programs

- For white space, when you encounter it, you just ignore it.


### Translating A-instructions

If value is a decimal constant, generate the equivalent 15-bit binary constant. 


### Translating C-instructions

We have the set of tables:


![c-inst](./images/c-inst.png)

Suppose we have `MD=D+1`


The result would be 1110011111011000

![assembly_logic](./images/assembly_logic.png "opt title")


## The Assembly Process - Handling Symbols


Symbols:
- **pre-defined symbols** represent special memory locations. Just translate the decimal into binary.
- **label symbols** represent destinations of goto instructions
- **variable symbols** represent memory locations where the programmer wants to maintain values

In the labels, you declared the value of the line of code you see at the left.

![labels](./images/labels.png)

![variables](./images/variables.png)


The assembler is a two pass assembler process, the first pass we extract all the labels and in the second, you extract all the variables. 

In the first pass, you go through all the program and when you encounter labels (denoted for parenthesis), you declare them as labels. 

In the second pass, you start the entire program, whenever you see a symbol that is not in the symbol table, you know that is variables.

![vars_2](./images/vars_2.png)


### The assembly process


![assembly_process](./images/assembly_process.png)



## Developing a Hack Assembler

![parsing](./images/parsing.png)





![using_table](./images/using_table.png)


![adding_symbols](./images/adding_symbols.png)


![overall](./images/overall.png)


