# Interactive programming

### 01
Redefine `outStr :: String -> IO ()` using a list comprehension amd the
library function `sequence_ :: [IO a] -> IO ()`.

### 02
Using recursion, define a version of `putBoard :: Board -> IO ()` that
displays nim board of any size, rather than being specific to boards with just
five rows of stars.
Hint: first define an auxiliary function that takes the current
row number as an additional argument.

### 03
In similar manner to the first exercise, redefine the generalised version of
`putBoard` using a list comprehensions and `sequence_`

### 04
Define an action `adder :: IO ()` that reads a given number of integers
from the keyboard, one pet line, and displays their sum. For example:

```
> adder
How many numbers? 5
1
3
5
7
9
The total is 25
``` 

Hint: start by defining an auxiliary function that takes the current total and
how manny numbers remain to be read as arguments. You will also likely need
to use library functions `read` and `show`.

### 05
Redefine `adder` using the function `sequence :: [IO a] -> IO [a]` that performs
a list of actions and returns a list of resulting values.

### 06
Using `getCh`, define an action `readLine :: IO String` that behaves in the same way
as `getLine`, except that it also permits the delete key to be used to remove
characters.
Hint: the delete character `\DEL`, and the control character for moving the cursor back
one space is `\b`.
