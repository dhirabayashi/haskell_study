merge [] [] = []
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) | x <= y    = x : merge xs (y:ys)
                    | otherwise = y : merge (x:xs) ys

halve xs = ([snd x | x <- withIndex, fst x <= half], [snd x | x <- withIndex, fst x > half])
           where
              withIndex = zip [1..] xs
              half      = length xs `div` 2

msort [] = []
msort [x] = [x]
msort xs = merge (msort firstHalf) (msort latterHalf)
           where
              (firstHalf, latterHalf) = halve xs
