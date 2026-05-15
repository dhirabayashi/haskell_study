pairs xs = [(x, y) | (x, y) <- zip xs (tail xs)]
sorted xs = and [x <= y | (x, y) <- pairs xs]
