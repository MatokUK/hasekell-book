# Intro

### 01 

Give another possible calculation fro the result of `double (double 2)`.

---

### 02

Show that `sum [x] = x` for any number `x`.

#### Solution
```
    sum [x]
=        { applying sum }
    x + sum []
=        { applying sum }
    x + 0
=        { applying addition }
    x  
```
---

### 03

Define a function `product` that produces the product of a list of numbers,
and show using your definition that `product [2,3,4] = 24`.

#### Solution
defined `product' :: Num a => [a] -> a`

```
    product [2,3,4]
=        { applying product }
    2 * product [3,4]
=        { applying product }
    2 * 3 * product [4]
=        { applying product }
    2 * 3 * 4 * product [] 
=        { applying product }
    2 * 3 * 4 * 1
=        { applying * }
    24
```

---

### 04

How should the definition of the function `qsort` be modified so that in produces a
_reverse_ sorted version of a list?

#### Solution
defined `qsort_rev`

---
### 05
What would be the effect of replacing `<=` by `<` in the original definition of
`qsort`? 

#### Solution
defined `qsort_un`; result is unique 
