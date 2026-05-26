euclid m n | m == n = m
           | otherwise = euclid smaller (larger - smaller)
             where
                larger = max m n
                smaller = min m n
