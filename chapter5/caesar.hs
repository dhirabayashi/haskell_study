import Data.Char

table = [8.1, 1.5, 2.8, 4.2, 12.7, 2.2, 2.0, 6.1, 7.0,
         0.2, 0.8, 4.0, 2.4, 6.7, 7.5, 1.9, 0.1, 6.0,
         6.3, 9.0, 2.8, 1.0, 2.4, 0.2, 2.0, 0.1]

let2int c = ord c - ord 'a'

int2let n = chr (ord 'a' + n)

shift n c | isLower c = int2let ((let2int c + n) `mod` 26)
          | otherwise = c

encode n s = [shift n c | c <- s]

lowers s = length [c | c <- s, 'a' <= c && c <= 'z']

count x xs = length [x' | x' <- xs, x' == x]

percent n m = (fromIntegral n / fromIntegral m) * 100

freqs s = [percent (count c s) n | c  <- ['a'..'z']]
          where n = lowers s

chisqr os es = sum [((o-e)^2)/e | (o, e) <- zip os es]

rotate n xs = drop n xs ++ take n xs

positions x xs = [i | (i, x') <- zip [0..] xs, x' == x]

crack xs = encode (-factor) xs
           where
            factor = head (positions (minimum chitab) chitab)
            chitab = [chisqr (rotate n table') table | n <- [0..25]]
            table' = freqs xs
