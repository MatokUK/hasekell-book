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

### 05
Without looking at the definition from the standard prelude, define the 
higher-order library function `curry` that converts a function on pairs into
a curried function, and, conversely, the function `uncurry` that converts a 
curried function with two arguments into a function on pairs.

Hint: first write down the types of two functions.

### 06
A higher-order function `unfold` that encapsulates a simple pattern of reccursion
for producing a list can be defined as follows:

```
unfold p h t x | p x = []
               | otherwise = h x : unfold p h t (t x) 
```

That is, the function `unfold p h t` produces the empty list if the predicate `p`
is true of the argument value, and otherwise produces a non-empty list by
applying the function `h` to this value to give the head, and the function `t`
to generate another argument that is recursively processed in the same way
to produce the tail of the list. For example, the function `int2bin` can
be rewritten more compactly using `unfold` as follows:

```
int2bin = unfols (==0) (`mod` 2) (`div` 2)
```

Redefine the function `chop8`, `map f` and `iterate f` using `unfold`.
### 07

