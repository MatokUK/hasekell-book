-- 04:
replicate' :: Int -> a -> [a]
replicate' n x = [ x | k <- [1..n] ]

-- 05:
pyths :: Int -> [(Int,Int,Int)]
pyths n = [ (x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2 ]

-- 06:
perfect :: Int -> [Int]
perfect n = [ x | x <- [1..n] ]
