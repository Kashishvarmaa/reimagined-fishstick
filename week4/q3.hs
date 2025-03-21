{-3. For a list l, define S(l) to be the set of all indices i of l (remember that indices start from 0) such that l!!i > l!!(i+1). 
Define a function f3 :: [Int] -> [Int] which takes a nonempty list l of integers as input and outputs a S(l) in order.

Examples:
  f3 [] = []
  f3 [1] = []
  f3 [1, 2, 3, 2, 1] = [2, 3]
  f3 [1, 2, 3, 4, 5, 6] = []
  f3 [6, 5, 4, 3, 2, 1] = [0, 1, 2, 3, 4]
  f3 [19, 29, 28, 38, 45] = [1]
  f3 [1, 1, 1, 2, 2, 3, 3, 3, 4, 4, 5, 5, 5] = []
  f3 [2, 1, 3, 1, 4, 1, 5, 1, 6, 1] = [0, 2, 4, 6, 8]
  f3 [5, 4, 1, 2, 3, 4, 3, 4, 1, 2, 0] = [0, 1, 5, 7, 9]-}


f3 :: [Int] -> [Int]
f3 [] = []
f3 [_] = []
f3 l = [i | i <- [0..length l-2], (l!!i) > (l!!(i+1))]
--[action |        length       , condition          ]


