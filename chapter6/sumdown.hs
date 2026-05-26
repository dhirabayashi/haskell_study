sumdown 0 = 0
sumdown n | n < 0 = n
          | otherwise = n + sumdown (n-1)
