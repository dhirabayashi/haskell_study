qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort greater
               where
                 smaller = [a | a <- xs, a <= x]
                 greater = [a | a <- xs, a > x]
