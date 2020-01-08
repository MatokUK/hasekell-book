all' :: (a -> Bool) -> [a] -> Bool
all' p xs = and (map (p) xs)

-- 04:
dec2int :: [Int] -> Int
dec2int = foldl (\x y -> x*10+y) 0

-- 05:
curry' :: ((a,b) -> c) -> a -> b -> c
curry' f x y = f (x,y)

uncurry' :: (a -> b -> c) -> (a,b) -> c
uncurry' f (x,y) = f x y
