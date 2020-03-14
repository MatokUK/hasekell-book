-- 03:
data Tree a = Leaf a | Node (Tree a) (Tree a) deriving Show

leaves :: Tree a -> Int
leaves (Leaf _) = 1
leaves (Node l r) = leaves l + leaves r

balanced :: Tree a -> Bool
balanced (Leaf _) = True
balanced (Node l r) = abs (leaves l - leaves r) <= 1 && balanced l && balanced r

-- 04:
halve :: [a] -> ([a], [a])
halve xs = (take n xs, drop n xs)
    where n = length xs `div` 2


balance :: [a] -> Tree a
balance [x] = Leaf x
balance xs = Node (balance (fst half)) (balance (snd half))
    where half = halve xs
