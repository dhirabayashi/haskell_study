unfold p h t x | p x = []
               | otherwise = h x : unfold p h t (t x)

myMap f = unfold null (f . head) tail
