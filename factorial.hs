-- Using recursion
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Using fold (alternative approach)
factorial' :: Integer -> Integer
factorial' n = foldl (*) 1 [1..n]

main :: IO ()
main = do
    putStrLn "Factorial of 5 (Recursion):"
    print (factorial 5)

    putStrLn "Factorial of 5 (Fold):"
    print (factorial' 5)