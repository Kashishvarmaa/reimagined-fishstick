{-An ABC-word is a word satisfying the following conditions:
The three letters 'a', 'b', 'c' occur in the word.
The first (leftmost) occurrence of 'a' is before the first occurrence of 'b', and the first occurrence of 'b' is before the first occurrence of 'c'.
Write a function isABC :: String -> Bool which checks whether the input is an ABC-word.

Test cases:
isABC "abc" = True
isABC "" = False
isABC "ab" = False
isABC "acb" = False
isABC "aabaaaabbbbcb" = True
isABC "crab" = False
-}
 

{- elemIndex: find the first occurances of the character in the string
    returns 2 things:
        Just - the result is found 
        Nothing - not found 

case <expression> of
    res1 -> ans
    ees2 -> ans2
    res3 -> ans3
    _ -> nothing        
        -}

import Data.List (elemIndex)
isABC :: String -> Bool
isABC s = case (elemIndex 'a' s, elemIndex 'b' s, elemIndex 'c' s) of
    (Just a, Just b, Just c) -> a < b && b < c -- ifthe result for all the 3 seraches is success then it does the comparision otherwise its f
    _                        -> False


