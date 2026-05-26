myDrop 0 xs = xs
myDrop _ [] = []
myDrop n (x:xs) = myDrop (n-1) xs

{-
myDrop 3 [1, 2, 3, 4, 5]
=
    myDrop 2 [2, 3, 4, 5]
=
    myDrop 1 [3, 4, 5]
=
    myDrop 0 [4, 5]
=
    [4, 5]
-}
