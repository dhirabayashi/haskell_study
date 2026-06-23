myFilter f = foldr ((++) . g) []
             where
                g x = [x | f x]
