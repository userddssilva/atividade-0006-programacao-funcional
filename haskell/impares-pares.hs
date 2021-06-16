func:: Int -> [Int] -> [Int]
func x xs = [x | x<-xs, odd x]
