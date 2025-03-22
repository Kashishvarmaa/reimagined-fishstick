-- Write a function to reverse a list
rev :: [Int] -> [Int]
rev [] = []
rev (x:xs) = rev xs ++ [x]