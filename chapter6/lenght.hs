myLength [] = 0
myLength(_:xs) = 1 + myLength xs

{-
myLength [1, 2, 3]
=
    1 + myLength [2, 3]
=
    1 + 1 + myLength [3]
=
    1 + 1 + 1 + myLength []
=
    1 + 1 + 1 + 0
=
    4
-}
