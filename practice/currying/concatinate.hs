-- Concatenate Two Strings


-- concatStrings :: String -> String -> String
-- concatStrings s1 s2 = s1 ++ " " ++ s2

-- main :: IO ()
-- main = print (concatStrings "Hello" "Haskell")  


concatStrings :: String -> (String -> String)
concatStrings s1 = \s2 -> s1 ++ " " ++ s2