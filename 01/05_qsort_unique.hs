qsort_un [] = []
qsort_un (x:xs) = qsort_un smaller ++ [x] ++ qsort_un larger
    where smaller = [ a | a <- xs, a < x]
          larger = [ a | a <- xs, a > x]
