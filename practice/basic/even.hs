-- Write a function to check if a number is even.
    evenN :: Int -> Bool
    evenN n 
        | n `mod` 2 == 0 = True
        | otherwise = False
         