-- 02:
sumdown :: Int -> Int
sumdown 0 = 0
sumdown n = n + sumdown (n-1)

-- 03:
pow :: Integral a => a -> a -> a
pow _ 0 = 1
pow n x = n * pow n (x-1)

-- 04:
euclid :: Int -> Int -> Int
euclid a b | a == b = a
           | a > b = euclid (a-b) b
           | otherwise = euclid a (b-a)


-- 06:
and' :: [Bool] -> Bool
and' [] = True
and' (False:bs) = False
and' (_:bs) = and' bs

--concat' :: [[a]] -> [a]
--concat' (x:[]) = x
--concat' (x:xs) = x : concat' [xs]

replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' n x = x : replicate' (n-1) x

nth :: [a] -> Int -> a
nth (x:xs) 0 = x
nth (_:xs) n = nth xs (n-1)

elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' n (x:xs) | n == x = True
               | otherwise = elem' n xs

-- 07:
merge :: Ord a => [a] -> [a] -> [a]
merge [] bs = bs
merge as [] = as
merge (a:as) (b:bs) | a < b = a : merge as (b:bs)
                    | otherwise = b : merge (a:as) bs

