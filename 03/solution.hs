bool :: [Bool]
bool = [True]

nums :: [[Int]]
nums = [[1..20], [1..20], [1..30]]

add :: Int -> Int -> Int -> Int
add x y z = x + y + z

copy :: a -> (a, a)
copy x = (x,x)

apply :: (a -> b) -> a -> b
apply f a = f a
