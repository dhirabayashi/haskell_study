fact 0 = 1
fact n | n < 0 =  n
       | otherwise = n * fact (n-1)
