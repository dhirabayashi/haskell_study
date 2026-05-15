grid m n = [(x, y) | x <- [0..m], y <- [0..n]]

square n = [(x, y) | (x, y) <- grid n n, x /= y]
