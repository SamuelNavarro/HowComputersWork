
# Notes for nand to tetris course. 


## Boolean Functions and Gate Logic

### Boolean Logic
The reason computers only use 0 and 1's is because that's just enough. They can get away with it. 



Commutative Laws
- (x AND y) = (y AND x)
- (x OR  y) = (y OR x)

Associateive Laws
- (x AND (y AND z)) = ((x AND y) AND z)
- (x OR (y OR z)) = ((x OR y) OR z)

Distributive Laws
- (x AND (y OR z)) = (x AND y) OR (x AND z)
- (x OR (y AND z)) = (x OR y) AND (x OR z)

De Morgan Laws
- NOT(x AND y) = NOT(x) OR NOT(y)
- NOT(x OR y) = NOT(x) AND NOT(y)


### Boolean Functions Synthesis

Theorems:
Any Boolean function can be represented using an expression containing AND, OR, and NOT operations. 

In fact:
Any Boolean function can be represented using an expression containing AND, NOT operations. (We don't need OR gates).


Proof:


- (x OR y) = NOT(NOT(x) AND NOT(y)) -> With this we remove or. 


Can we give up, let's say, the AND gate? Well, that doesn't make sense, because not only it takes one value to one value, it doesn't even allow us to combine anything. Can we give up the NOT gate? Well, not really, because ANDs has this property that if you only feed it zeroes it will always have zero as output.


#### NAND

It gives zero only if both of its inputs are 1's and gives 1's in any other case.


(x NAND y) = NOT(x AND y)


So, NAND(x,x) is equivalent to NOT(x):


| x | y | NAND |
| - | - | - |
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |




Any Boolean function can be represented using an expression containing only NAND operations. 

We know that if you can do NOT, and you can do AND, you can do everything. So you just have to show how to do NOT and how to do AND with NAND gates. 



**Proof**:

1) NOT(x) = (x NAND x)
2) (x AND y) = NOT(x NAND y) 

In 2) we have seen that you can do NOT with NAND itself. 



### Hardware Description Language (HDL)

- HDL file -> textual description of gate diagram

### Multi-Bit Buses
- Enables handling group of multiple bits
- **indexed from right to left**
  - A[0] = right-most-bit, A[15] = left-most-bit


