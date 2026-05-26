myInit [_] = []
myInit (x:xs) = x : myInit xs

{-
myInit [1, 2, 3]
=
    1 : myInit [2, 3]
=
    1 : 2 : myInit [3]
=
    1 : 2 : []
=
    [1, 2]
-}
