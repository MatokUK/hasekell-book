-- 01:
halve :: [a] -> ([a],[a])
halve ns = if even (length ns) then (x, y) else error "List is not even-lenghted!"
    where
        x = take hl ns
        y = drop hl ns
        hl = (length ns) `div` 2

-- 02:
third1 :: [a] -> a
third1 = head . tail . tail

third2 :: [a] -> a
third2 xs = xs !! 2

third3 :: [a] -> a
third3 (_:_:x:_) = x

-- 03:
safetail1 :: [a] -> [a]
safetail1 xs = if null xs then xs else tail xs

safetail2 :: [a] -> [a]
safetail2 xs | null xs = xs
             | otherwise = tail xs

safetail3 :: [a] -> [a]
safetail3 [] = []
safetail3 xs = tail xs

-- 05:
conjunction1 a b = if a then (if b then True else False) else False

-- 06:
conjunction2 a b = if a then b else False
