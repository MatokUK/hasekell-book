# Defining Functions

# TODO 8 is unsolved

### 01

Using library functions, define

`halve :: [a] -> ([a],[a])`

that splits an even-lenghted list into two halves

#### Solution:

Defined `halve` in **solution.hs**

---

### 02

Define a function

`third :: [a] -> a`

that returns the third element in a list that contains at least this many elements using:
1. `head` and `tail`
2. list indexing `!!`
3. pattern matching

#### Solution:

Defined `third1`, `third2` and `third3` in **solution.hs**

---

### 03

Consider a function 

`safetail :: [a] -> [a]` 

that behaves in the same way as `tail` expect that it maps the empty list to itself rather than production an error.
Unis `tail` and the function `null ::[a] -> Bool` that decides if a list empty or not, define `safetail` using:
1. a condition expression
2. guard equation
3. pattern matching

#### Solution:

Defined `safetail1`, `safetail2` and `safetail3` in **solution.hs**

---

### 04

In a similar way to `&&` in section 4.4 show the disjunction operator `||` can be 
defined in four different ways using pattern matching.

#### Solution:
```
True || True = True
True || False = True
False || True = True
False || False = False 

False || b = b
True || _ = True

a || False = a
_ || True = True

False || False = False
_ || _ = True
```
---

### 05

Without using any other library functions or operators, show how the meaning of the
following pattern matching definition for logical conjunction `&&` can be formalised
using condition expressions:

```
True && True = True
_    &&    _ = False 
```

Hint: use two nested condition expressions.

#### Solution:
```
conjunction1 a b = if a then (if b then True else False) else False
```
---

### 06

Do the same for the following alternative definitions, and note the difference in the number
of conditional expressions that are required.

```
True  && b = b
False && _ = False
```

#### Solution:
```
conjunction2 a b = if a then b else False
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

```
(\a -> (\b -> (\c -> a + b + c))) 2 3 1
```
---
### 08
The _Luhn algorithm_ is used to check card numbers for simple errors such as 
mistyping a digit, and proceeds as follows:

* consider each digit as a separate number;
* moving left, double every other number from second last;
* subtract 9 from each number that is now greater than 9;
* add all the resulting numbers together;
* if total os divisible by 10, the card number is valid.

Define a function `luhnDouble :: Int -> Int` that doubles a digit and subtracts 9
if the result is greater than 9. For example:

```
> luhnDouble 3
6

> luhnDouble 6
3
```

Using `luhnDouble` and the integer reminder function `mod`, define a function
`luhn :: Int -> Int -> Int -> Int -> Bool` that decides if a four-digit bank
card number is valid. For example:

```
> luhn 1 7 8 4
True

> luhn 4 7 8 3
False
```
