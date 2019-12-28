# Recursive Functions

### 01
How does the recursive version of the factorial function behave if applied
to a negative argument, such as (-1)? Modify the definition to prohibit
negative arguments by adding a guard to the recursive case.

---
### 02 ☑
Define a recursive function `sumdown :: Int -> Int` that returns the sum of non-negative
integers from a given value down to zero. For example, `sumdown 3` should 
return the result `3+2+1+0 = 6`.

---
### 03
Define the exponentiation operator `^` for non-negative integers using the same
pattern of recursion as the multiplication operator `*`, and show how the expression
`2^3` is evaluated using your definition.

---
### 04 ☑
Define a recursive function `euclid :: Int -> Int -> Int` that implements
_Euclid's algorithm_ for calculating the greatest common divisor of two non-negative
integers: if two numbers are equals, this number is the result; otherwise, the smaller
number is subtracted from the larger, and the same process is then repeated. For example:

```
> euclid 6 27
3
```

---
### 05
Using the recursive definitions given in this chapter, show how 
`length [1,2,3]`, `drop 3 [1,2,3,4,5]` and `init [1,2,3]` are evaluated.

---
### 06
Without looking at the definitions from the standard prelude define the following
library functions on lists using recursion.

a. Decide if all logical values in a list are `True`:

`and :: [Bool] -> Bool`

b. Concatenate a list of lists:

`concat :: [[a]] -> [a]`

c. Produce a list with `n` identical elements:

`replicate :: Int -> a -> [a]`

d. Select the _nth_ element of a list:

`(!!) :: [a] -> Int -> a`

e. Decide if a value is an element of a list:

`elem :: Eq a => a -> [a] -> Bool`

---
### 07
Define a recursive function `merge :: Ord a => [a] -> [a] -> [a]` that 
merges two sorted lists to give a single sorted list. For example:

```
> merge [2,5,6] [1,3,4]
[1,2,3,4,5,6]
```

Note: your definition should not use other functions on sorted lists such as
`isert` or `isort`, but should be defined using explicit recursion.

---
### 08
Using `merge` define a function `msort :: Ord a => [a] -> [a]` that implements 
_merge sort_, in which the empty list and singleton list are already sorted,
and any other list is sorted by merging together the two lists that result
from sorting the two halves of the list separately. 

Hint: first define a function `halve :: [a] -> ([a],[a])` that splits a list
into two halves whose length differ by at most one.

---
### 09
Using five-steps process, construct the library functions that:
calculate the `sum` of a list of numbers;
`take` a given number of elements from the start of a list;
select the `last` element of non-empty list.
