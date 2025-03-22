-- Check if a Number is Even


-- isEven :: Int -> Bool
-- isEven x = x `mod` 2 == 0

-- main :: IO ()
-- main = print (isEven 4)  

isEven :: Int -> Bool
isEven = \x -> x `mod` 2 == 0