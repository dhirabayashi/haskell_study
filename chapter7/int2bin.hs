unfold p h t x | p x = []
               | otherwise = h x : unfold p h t (t x)

int2bin = unfold (== 0) (`mod` 2) (`div` 2)

chop8 [] = []
chop8 bits = take 8 bits : chop8 (drop 8 bits)

