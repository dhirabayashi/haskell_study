myAll _ []     = True
myAll f (x:xs) = f x && myAll f xs
