main :: IO ()
main = do
    putStrLn "Hello, Haskell!"  -- Prints a message
    let x = 5
    let y = 10
    putStrLn ("The sum of " ++ show x ++ " and " ++ show y ++ " is " ++ show (x + y))