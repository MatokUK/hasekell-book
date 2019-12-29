# Higher-Order Functions

### 01
Show how the list comprehensions `[f x | x <- xs, p x]` can be re-expressed using
the higher-order functions `map` and `filter`.

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

### 04
Using `foldl`, define a function `dec2int :: [Int] -> Int` that converts a
decimal number into as integer. For example:

```
> dec2int [2,3,4,5]
2345
```
