myDropWhile _ [] = []
myDropWhile f (x:xs) | not (f x) = x : xs
                   | otherwise = myDropWhile f xs