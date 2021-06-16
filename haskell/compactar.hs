numTimesFound x xs = ((length . filter (== x)) xs, x) 

compactar:: [t] -> [t]
compactar l = [numTimesFound x l | x <- l]
