-- myLast xs = xs !! (length xs - 1)
myLast xs = drop (length xs - 1) xs
