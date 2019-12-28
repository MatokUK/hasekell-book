# Defining Functions

### 01

Using library functions, define

`halve :: [a] -> ([a],[a])`

that splits an even-lenghted list into two halves

---

### 02

Define a function

`third :: [a] -> a`

that returns the third element in a list that contains at least this many elements using:
1. `head` and `tail`
2. list indexing `!!`
3. pattern matching


### 03

Consider a function 

`safetail :: [a] -> [a]` 

that behaves in the same way as `tail` expect that it maps the empty list to itself rather than production an error.
Unis `tail` and the function `null ::[a] -> Bool` that decides if a list empty or not, define `safetail` using:
1. a condition expression
2. guard equation
3. pattern matching

### 04

In a similar wat to && in section 4.4 show the disjunction operator || can be defined in four diffrent ways using pattern matching.

---

### 05

Without using any other library functions or operators, show how the meaning of the
following pattern matching definition for logical conjuction `&&` can be formalised
using condition expressions:

```
True && True = True
_    &&    _ = False 
```

Hint: use two nested condition expressions.

---

### 06

Do the same for the following alternative definitions, and note the difference in the number
of conditional expressions that are required.

```
True  && b = b
False && _ = False
```

---

### 07

Show how the meaning of the following curried function definition can be formalised
in terms of lambda expressions:

```
mult :: Int -> Int -> Int -> Int
mult x y z = x*y*z
```

#### Solution:
