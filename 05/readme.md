# List Comprehensions

# TODO

Check The Code Book [7]


### 01
Using a list comprehensions, give an expression that calculated the sum
1<sup>2</sup> + 2<sup>2</sup> + ... 100<sup>2</sup> of the first one hundred integer squares.

#### Solution

```
sum [ x^2 | x <- [1..100] ]
```

---

### 02

Suppose that a coordinate grid of size m x n is given by the list of
all pairs (x,y) of integers such that 0 <= x <= m and 0 <= y <= n.
Using a list comprehensions, define a function
`grid :: Int -> Int -> [(Int, Int)]` that returns a coordinate grid of a given size.
For example:

```
> grid 1 2
[(0,0),(0,1),(0,2),(1,0),(1,1),(1,2)]
```

#### Solution

---

### 03

Using a list comprehensions and the function `grid` above, 
define a function `square :: Int -> [(Int,Int)]` that returns a
coordinate square of size _n_, excluding the diagonal from (0,0) to (n,n).
For example:

```
> square 2
[(0,1),(0,2),(1,0),(1,2),(2,0),(2,1)]
```

#### Solution

---

### 04

In a similar way to the function `length`, show how the library function
`replicate :: Int -> a -> [a]` that produces a list of identical elements can be defined
using a list comprehensions. For example:
 
```
> replicate 3 True
[True,True,True]
```
#### Solution
Defined `replicate'` in **solution.hs**

---
### 05

A triple (x,y,z) of positive integers is _Pythagorean_ if it satisfied
the equation x<sup>2</sup> + y<sup>2</sup> = z<sup>2</sup>. Using
a list comprehensions with three generators, define a function
`pyths :: Int -> [(Int,Int,Int)]` that returns the list of all such triples 
whose components are at most a given limit. For example:

```
> pyths 10
[(3,4,5),(4,3,5),(6,8,10),(8,6,10)]
```

#### Solution
Defined `pyths` in **solution.hs**

---
### 06
A positive integer is _perfect_ if it equals the sum of all of its factors,
excluding the number itself. Using a list comprehensions and the function
`factors`, define a function `perfect :: Int -> [Int]` that returns the list
of all perfect numbers up to a given limit. For example:
```
> perfect 500
[6,28,496]
```
#### Solution

---

### 07
Show how the list comprehensions `[(x,y) | x <- [1,2], y <- [3,4]]` with
two generators can be re-expressed using two comprehensions with single
generator.
Hint: nest one comprehension within the other and make use of the
library function `concat :: [[a]] -> [a]`

---

### 08
Redefine the function `positions` using the function `find`.

#### Solution

---

### 09

---

### 10
Modify the Caesar cipher program to also handle upper-case letters.


