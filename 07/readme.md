# Higher-Order Functions

### 01
Show how the list comprehensions `[f x | x <- xs, p x]` can be re-expressed using
the higher-order functions `map` and `filter`.

#### Solution
```
map (f) (filter (p) xs)
```

### 02
Without looking at the definitions from the standard prelude, define the following
higher-order library functions on lists.

a. Decide if all elements of a list satisfy a predicate:

`all :: (a -> Bool) -> [Bool] -> Bool`

b. Decide if any element of a list satisfies a predicate:

`any :: (a -> Bool) -> [Bool] -> Bool`

c. Selects elements from a list while they satisfy a predicate:

`takeWhile :: (a -> Bool) -> [a] -> [a]`

d. Remove elements from a list while they satisfy a predicate:

`dropWhile :: (a -> Bool) -> [a] -> [a]`

### 03
Redefine the function `map f` and `filter p` using `foldr`.

### 04 ☑
Using `foldl`, define a function `dec2int :: [Int] -> Int` that converts a
decimal number into as integer. For example:

```
> dec2int [2,3,4,5]
2345
```

### 05
Without looking at the definition from standard prelude, define the higher-order
library function `curry` that converts a function on pairs into a curried function,
and, conversely, the function `uncurry` that converts a curried function with
two arguments into a function on pairs.

Hint: first write down the type of the two functions.

### 06

### 07
Modify the binary string transmitter example to detect simple transmissions errors
using the concept of parity bits. That is, each eight-bit binary number produced
during encoding is extended with a parity bit, set to `1` if the number contains
an odd number of ones, and to `0` otherwise. In turn, each resulting nine-bit binary
number consumed during decoding is checked to ensure that its parity bit is correct,
with the parity bit being discarted if is the case, and a parity error being reported
otherwise.

### 08
Test your new string trasmitter program from the previous exercise using a faulty 
communication channel that forgets  the first bit, wich can be modeled using
using the `tail` function on lists of bits.

### 09
Define a function `altMap :: (a -> b) -> (a -> b) -> [a] -> [b]` that alternately 
alllies its two argument functions to successive elements in a list, in turn
about order. For example:

```
> altMap (+10) (+100) [0,1,2,3,4]
[10,101,12,103,14]  
```
