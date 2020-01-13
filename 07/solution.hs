all' :: (a -> Bool) -> [a] -> Bool
all' p xs = and (map (p) xs)

-- 03:
map_foldr :: (a -> b) -> [a] -> [b]
map_foldr f xs = foldr (\x xs -> f x : xs) [] xs

filter_foldr :: (a -> Bool) -> [a] -> [a]
filter_foldr f xs = foldr (\x xs -> if f x then x : xs else xs) [] xs

-- 04:
dec2int :: [Int] -> Int
dec2int = foldl (\x y -> x*10+y) 0

-- 05:
curry' :: ((a,b) -> c) -> a -> b -> c
curry' f x y = f (x,y)

uncurry' :: (a -> b -> c) -> (a,b) -> c
uncurry' f (x,y) = f x y
