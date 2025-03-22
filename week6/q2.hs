{-Define a function moreZeroes :: Int -> Bool with the following behaviour.
For any non-negative number n, moreZeroes n returns True exactly when the binary representation (without leading zeroes) of n has strictly more 0s than 1s.

Test cases:
moreZeroes 0 = True
moreZeroes 1 = False
moreZeroes 2 = False
moreZeroes 3 = False
moreZeroes 24 = True
moreZeroes 31 = False
moreZeroes 32 = True
moreZeroes 585762 = True-}

{- let is used for temp calculations
format let <declaration> in <something> -}

import Numeric (showIntAtBase) -- showIntAtBase: it is used to convert numbers to different bases
import Data.Char (intToDigit)
moreZeros :: Int -> Bool
moreZeros m =
    let binRep = showIntAtBase 2 intToDigit m "" --2 cuz binary 
        count0 = length (filter (== '0') binRep) -- filter all the 0 and count them 
        count1 = length (filter (== '1') binRep)
    in count0>count1


-- shortcut 
import Numeric (showIntAtBase) -- showIntAtBase: it is used to convert numbers to different bases
import Data.Char (intToDigit)
moreZeros :: Int -> Bool
moreZeros m = 
    let binRep = showIntAtBase 2 intToDigit m "" --2 cuz binary 
    in length (filter (== '0') binRep) > length binRep `div` 2



