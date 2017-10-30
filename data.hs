--data Shape = Circle Float Float Float | Rectangle Float Float Float Float
--    deriving (Show)

--area :: Shape -> Float
--area (Circle _ _ r) = pi * r ^ 2
--area (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)

data Point = Point Float Float deriving (Show)
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)

area :: Shape -> Float
area (Circle _ r) = pi * r ^ 2
area (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)