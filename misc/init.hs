-- myInit xs = take (length xs - 1) xs
myInit xs = reverse (tail (reverse xs))
