# Types and Classes

### 01 
What are the types of the following values?

```
['a', 'b', 'c']
('a', 'b', 'c')
[(False, '0'), (True, '1')]
([False, True], ['0', '1'])
[tail, init, reverse]
```

#### Solution

```
['a', 'b', 'c'] :: [Char]
('a', 'b', 'c') :: (Char, Char, Char)
[(False, '0'), (True, '1')] :: [(Bool, Char)]
([False, True], ['0', '1']) :: ([Bool], [Char])
[tail, init, reverse] :: :: [[a] -> [a]]
```

---
### 02
Write down definitions that have the following types; it does not matter what the
definitions actually do as long as they are type correct.

```
bool :: [Bool]
nums :: [[Int]]
add :: Int -> Int -> Int -> Int
copy :: a -> (a, a)
apply :: (a -> b) -> a -> b
```

#### Solution
```
bool :: [Bool]
bool = [True]

nums :: [[Int]]
nums = [[1..20], [1..20], [1..30]]

add :: Int -> Int -> Int -> Int
add x y z = x + y + z

copy :: a -> (a, a)
copy x = (x,x)

apply :: (a -> b) -> a -> b
apply f a = f a
```
---

### 03

What are the types of the following functions?

```
second xs = head (tail xs)
swap (x,y) = (y,x)
pair y x = (x,y)
double x = x*2
palindrome xs = reverse xs == xs
twice f x = f (f x)
```

Hint: take case to include the necessary class constraints in the types if 
the functions are defined using overloaded operators.

#### Solution
```
second :: [a] -> a
swap :: (a, b) -> (b, a)
pair :: b -> a -> (a, b)
double :: Num a => a -> a
palindrome :: Eq a => [a] -> Bool
twice :: (a -> a) -> a -> a
```
---

### 04

Check your answers to the preceding three questions using GHCi.

---

### 05

Why is it not feasible in general for function types to be 
instances of the `Eq` class? When it is feasible?
Hint: two functions are equal if they always return equal results
for equal arguments.
