factors n = [x | x <- [1..n], n `mod` x == 0]

perfects n = [c | (c, d) <- zip [1..n] [sum b - a == a | (a, b) <- [(x, factors x) | x <- [1..n]]], d]
