{-Define a function dropEvens :: Int -> Int with the following behaviour.
For any non-negative number m, dropEvens m is got by dropping all the even digits in m. 
(If all the digits in the number are even, the answer should be 0.)

Test cases:
dropEvens 0 = 0
dropEvens 1 = 1
dropEvens 2 = 0
dropEvens 3 = 3
dropEvens 234 = 3
dropEvens 585762 = 557-}

{-
show m: this converts the given number into string
filter: filters by keeping only `elem` 13579
-}

{- let is used for temp calculations
format let <declaration> in <something> -}

dropEvens :: Int -> Int
dropEvens 0 = 0
dropEvens m = 
    let oddDigits = filter ( `elem` "13579") (show m)
    in if null oddDigits then 0 -- check if oddDigits is empty
        else read oddDigits  -- convert srting back to number



-- shortcut
dropEvens :: Int -> Int
dropEvens = read . filter (`elem` "13579") . show


