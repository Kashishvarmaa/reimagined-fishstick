--  Add Two Numbers

-- add :: Int -> Int -> Int
-- add x y = x + y

-- main :: IO ()
-- main = print (add 3 4) 

add :: Int -> (Int -> Int)
add x = \y -> x + y
