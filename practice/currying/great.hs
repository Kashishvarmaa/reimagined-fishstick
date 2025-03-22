-- Check if a Number is Greater than Another


-- isGreater :: Int -> Int -> Bool
-- isGreater x y = x > y

-- main :: IO ()
-- main = print (isGreater 10 5)  

isGreater :: Int -> (Int -> Bool)
isGreater x = \y -> x > y