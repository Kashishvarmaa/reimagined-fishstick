-- Write a function to calculate the factorial of a number.

factT :: Int -> Int
factT n = if n<=1 then 1 else n* factT(n-1)


