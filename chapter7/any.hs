myAny _ []     = False
myAny f (x:xs) = f x || myAny f xs
