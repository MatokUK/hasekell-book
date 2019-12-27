qsort_rev [] = []
qsort_rev (x:xs) = qsort_rev larger ++ [x] ++ qsort_rev smaller
	where smaller = [ a | a <- xs, a <= x]
	      larger = [ a | a <- xs, a > x]
