{-Write a function xLetters :: String -> String -> Int such that xLetters s1 s2 returns the number of letters that occur exclusively in s1 or s2 (not counting duplicates).

Test cases:

xLetters "aardvark" "dwarf" = 4
xLetters "abc" "def" = 6
xLetters "abcd" "def" = 5
xLetters "aaa" "b" = 2
xLetters "" "bbbccc" = 2
xLetters "students" "minister"= 5-}


-- nub: it removes duplicates for the given string
-- \\: return unique letters 
-- ++: concatinate 

import Data.List (nub, (\\))
xLetters :: String -> String -> Int
xLetters s1 s2 = length ((nub s1 \\ s2) ++ (nub s2 \\ s1))

-- traditional 
import Data.List (nub, (\\))

xLetters :: String -> String -> Int
xLetters s1 s2 =
    let one = nub s1        -- Remove duplicates from s1
        two = nub s2        -- Remove duplicates from s2
        diff1 = one \\ s2   -- Elements in uniqueS1 but not in s2
        diff2 = two \\ s1   -- Elements in uniqueS2 but not in s1
        combinedDiff = diff1 ++ diff2 -- Combine both sets of differing elements
    in length combinedDiff       -- Count the total number of differing elements