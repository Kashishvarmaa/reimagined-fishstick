-- Write a function to get the first element of a list.
firstE :: [Int] -> Int
firstE [] = error "empty"
firstE (x:_) = x
