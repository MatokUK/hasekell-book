-- 01:
data Nat = Zero | Succ Nat

nat2int :: Nat -> Int
nat2int Zero = 0
nat2int (Succ n) = 1 + nat2int n

int2nat :: Int -> Nat
int2nat 0 = Zero
int2nat n = Succ (int2nat (n-1))

add :: Nat -> Nat -> Nat
add m n = int2nat (nat2int m + nat2int n)

mul :: Nat -> Nat -> Nat
mul _ Zero = Zero
mul Zero _ = Zero
mul (Succ Zero) b = b
mul a (Succ Zero) = a
mul a b = add a (mul a prev_b)
  where prev_b = int2nat ((nat2int b) - 1)

-- 02:
data Tree a = Leaf a | Node (Tree a) a (Tree a)

occurs :: Ord a => a -> Tree a -> Bool
occurs x (Leaf y) = x == y
occurs x (Node l y r) | x == y = True
                      | x > y = occurs x l
                      | x < y = occurs x r

-- 03:
data Tree3 a = Leaf3 a | Node3 (Tree3 a) (Tree3 a)

nodes :: Tree3 a -> Int
nodes (Leaf3 x) = 0
nodes (Node3 l r) = 1 + max (nodes l) (nodes r)

balanced :: Tree3 a -> Bool
balanced (Leaf3 x) = True
balanced (Node3 l r) = abs (nodes l - nodes r) <= 1

-- 04:



