imparpar xs = [[x | x <-xs, mod x 2 /= 0], [x | x <-xs, mod x 2 == 0]]
