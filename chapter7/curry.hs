myCurry :: ((a, b) -> c) -> (a -> b -> c)
myCurry f = \a b -> f (a, b)

myUncurry :: (a -> b -> c) -> ((a, b) -> c)
myUncurry f = \(a, b) -> f a b
