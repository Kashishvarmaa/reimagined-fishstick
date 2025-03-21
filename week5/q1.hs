{-Define a function subSeq :: String -> String -> Bool which checks whether the first argument is a subsequence of the second. 
A subsequence is obtained by deleting some letters in a string and retaining the other characters in the same order as in the original string.

Test cases:
subSeq "ab" "abc" = True
subSeq "ab" "acb" = True
subSeq "ab" "bca" = False
subSeq "" "bea" = True
subSeq "ba" "ba" = True
subSeq "ba" "" = False -}

subSeq :: String -> String -> Bool
subSeq [] _ = True
subSeq _ [] = False
subSeq (x:xs) (y:ys)
    | x == y = subSeq xs ys
    | otherwise = subSeq (x:xs) ys  -- now the y will just be from ys -- skip the first char
  
-- shortcut 
import Data.List (isSubsequenceOf)
subSeq :: String -> String -> Bool
subSeq = isSubsequenceOf