halve :: [a] -> ([a],[a])
halve ns = if even (length ns) then (x, y) else error "List is not even-lenghted!"
    where
        x = take hl ns
        y = drop hl ns
        hl = (length ns) `div` 2
