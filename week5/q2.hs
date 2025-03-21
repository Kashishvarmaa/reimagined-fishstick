{-Define a function subWord :: String -> String -> Bool which checks whether the first argument is a subword of the second. 
A subword is obtained by deleting some number (possibly 0) of letters at the left end and right end in a string and retaining the other characters in the same order.

Test cases:

subWord "ab" "abc" = True
subWord "ab" "acb" = False
subWord "ca" "bca" = True
subWord "" "bea" = True
subWord "ba" "ba" = True
subWord "ba" "" = False
-}

subWord :: String -> String -> Bool
subWord [] _ = True
subWord _ [] = False
subWord s1 (x:xs) -- pattern matching, here s2 is split into (x:xs)
    | head s1 == x = subWord (tail s1) xs -- if it matches then the new s is tail of s1 and s2 is xs 
    | otherwise    = subWord s1 xs -- s2 will now be only xs as x is not matching



-- shortcut
{-
tails: generates all the suffixs of the given word
    ex: "abc" = ["abc", "bc", "c", []]
isPrefixOf: it checks if the given s is a prefix (starting elements) of another string (tails)
any: it will check if any element in the given list satisfies the condition --- stop when it finds True 
-}
import Data.List (isPrefixOf, tails)
subWord :: String -> String -> Bool
subWord s w = any (s `isPrefixOf`) (tails w)

