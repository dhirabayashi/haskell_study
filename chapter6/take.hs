myTake :: Int -> [a] -> [a]
myTake _ [] = []
myTake 0 xs = xs
myTake n (x:xs) = myTake (n-1) xs
