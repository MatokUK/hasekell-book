# The Countdown Problem

### 01 
Redefine combinatorial function `choices` using a list comprehension rather than
using composition, `concat` and `map`.

#### Solution


---

### 02

Define a recursive function `isChoice :: Eq a => [a] -> [a] -> Bool` that decides
if one list is chosen from another, without using the combinatorial functions
`perms` and `subs`.

Hint: start by defining a function that removes the first occurrence of value from a list.  

---

### 03
What effect would generalising the function `split` to also return pairs containing the
empty list have on the behaviour of `solutions`?

---

### 04
Using the functions `choinces`, `exprs` and `eval` that there are possible **33665406** expressions
over the numbers **1**, **3**, **7**, **10**, **25**, **50**, and that only **4672540** of
these expressions evaluate successfully.

---

### 05
Similarly, verify that the number of expressions that evaluate successfully increases to 
**10839369** if the numeric domain is generalised to arbitrary integers.

Hint: modify the definition of `valid`.

---

### 06

Modify to final program to:

a, allow the use of exponentiation in expressions;

b, produce the nearest solutions if no exact solution is possible;

c, order the solutions using a suitable measure of simplicity.
