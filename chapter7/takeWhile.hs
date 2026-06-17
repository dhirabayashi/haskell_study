myTakeWhile _ [] = []
myTakeWhile f (x:xs) | not (f x) = []
                     | otherwise = x : myTakeWhile f xs