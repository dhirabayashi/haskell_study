mySum :: Num a => [a] -> a
mySum [] = 0
mySum (x:xs) = x + sum xs
