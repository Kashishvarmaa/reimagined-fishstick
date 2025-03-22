-- Write a function to find the maximum of two numbers.
maxN :: Int -> (Int -> Int)
maxN x = \y -> if x>y then x else y