main :: IO()
main = do
  [h1, h2, h3, w1, w2, w3] <- map read . words <$> getLine
  print (getAns h1 h2 h3 w1 w2 w3)


getAns :: Int -> Int -> Int -> Int -> Int -> Int -> Int
getAns h1 h2 h3 w1 w2 w3 = sum [1 | b <- bools, sum [1 | bb <- b, not bb] == 0]
       where table = [(i1, i2, h1 - (i1 + i2), i4, i5, h2 - (i4 + i5), w1 - (i1 + i4), w2 - (i2 + i5)) |
                       i1 <- [1 .. 30],
                       i2 <- [1 .. 30],
                       i4 <- [1 .. 30],
                       i5 <- [1 .. 30]]
             bools = [[i1 + i2 + i3 == h1, i4 + i5 + i6 == h2, i7 + i8 + w3 - (i3 + i6) == h3, i1 + i4 + i7 == w1, i2 + i5 + i8 == w2, i3 + i6 + w3 - (i3 + i6) == w3] | (i1, i2, i3, i4, i5, i6, i7, i8) <- table, i3 > 0, i6 > 0, i7 > 0, i8 > 0, w3 - (i3 + i6) > 0]
