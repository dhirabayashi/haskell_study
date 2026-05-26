myElem _ [] = False
myElem y (x:xs) | x == y = True
                | otherwise = myElem y xs
