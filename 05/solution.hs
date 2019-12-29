-- 02:
grid :: Int -> Int -> [(Int, Int)]
grid x y = [ (m,n) | m <- [0..x], n <- [0..y] ]

-- 03:
square :: Int -> [(Int,Int)]
square n = [ (x,y) | (x,y) <- grid n n, x /= y ]

-- 04:
replicate' :: Int -> a -> [a]
replicate' n x = [ x | k <- [1..n] ]

-- 05:
pyths :: Int -> [(Int,Int,Int)]
pyths n = [ (x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2 ]

-- 06:
factors :: Int -> [Int]
factors n = [ x | x <- [1..n], n `mod` x == 0 ]

perfect :: Int -> [Int]
perfect n = [ x | x <- [1..n], sum (factors x) == 2*x ]

-- 08:
find :: Eq a => a -> [(a,b)] -> [b]
find k t = [v | (k',v) <- t, k == k']

positions :: Eq a => a -> [a] -> [Int]
positions n ns = [ x | x <- find n (zip ns [0..])]

-- 09:
scalarproduct :: [Int] -> [Int] -> Int
scalarproduct xs ys = sum [ x*y | (x, y) <- zip xs ys ]
