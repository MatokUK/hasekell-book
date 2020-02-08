# Unbeatable tic-tac-toe

### 01
Using the function `gametree` verify that there are 549946 nodes in the
complete game tree fro a 3x3 tic-tac-toe game starting from the empty grid
and the maximum depth of this tree is 9.

---

### 02
Out tic-tac-toe program always chooses the first move from the list of best moves.
Modify the final program to choose a random move from the list of
best moves, using the function `randomRIO :: (Int,Int) -> IO Int` from
`System.Random` to generate a random integer in the given range. 

---

### 03
Alternatively, modify the final program to choose a move that attempts
to take the quickest route to win by calculation the depths of resulting
game trees and selecting the move that results in a tree with the smallest depth.

---

### 04
Modify the final program to:

a. let the user decide if they wish to play first or second;

b. allow the length of winning line also to be changed;

c. generate the game tree once rather than for each move;

d. reduce the size of game tree using alpha-beta pruning; 
