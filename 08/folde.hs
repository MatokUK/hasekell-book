-- 05:

data Expr = Val Int | Add Expr Expr

folde :: (Int -> a) -> (a -> a -> a) -> Expr -> a
folde f g (Val x) = f x
folde f g (Add x y) = (folde f g x) `g` (folde f g y)


-- 06:
eval :: Expr -> Int
eval exp = folde (id) (+) exp

size :: Expr -> Int
size (Val x) = 1
size (Add x y) = size x + size y
