myAnd [] = True
myAnd (False:_) = False
myAnd (True:xs) = myAnd xs
