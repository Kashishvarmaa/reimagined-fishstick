{-4. Define a function f4 :: [Int] -> [Int] that removes adjacent duplicates.
i.e. if the same element occurs n times contiguously, we retain only one copy.

Examples:
  f4 [1, 1, 1, 2, 2, 3, 3, 3, 3] = [1, 2, 3]
  f4 [1, 2, 1, 2, 3, 1, 1, 2, 2] = [1, 2, 1, 2, 3, 1, 2]
  f4 [1, 2, 2, 1, 3, 3, 4, 1, 2, 2] = [1, 2, 1, 3, 4, 1, 2]
  f4 [1..10] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  f4 [1, 1, 1, 2, 2, 3, 3, 3, 3, 4, 4, 5, 5, 5, 5, 5] = [1, 2, 3, 4, 5]
  f4 [5, 4, 1, 2, 3, 4, 3, 4, 1, 2, 0] = [5,4,1,2,3,4,3,4,1,2,0]
  f4 [1, 2, 3, 2, 1] = [1, 2, 3, 2, 1]
-}


-- dropWhile - it will drop the elements that are equal to x and then the rest is added to xs and recurssion 
f4 :: [Int] -> [Int]
f4 [] = [] 
f4 (x:xs) = x : f4 (dropWhile (== x) xs)


-- shortcut
import Data.List(nub)
f4 :: [Int] -> [Int]
f4 [] = [] 
f4 s = nub s


