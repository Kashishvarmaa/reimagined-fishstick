{-1. Define a function f1 :: [Int] -> [[Int]] which takes a list l of integer values as input, and replaces (l!!i) by a list l' consisting of i copies of (l!!i). 
(If i == 0, the list l' is empty.) 

Examples:
    f1 []                 = []
    f1 [0,1,2,3,4]        = [[],[1],[2,2],[3,3,3],[4,4,4,4]]
    f1 [0,0,0,0,0]        = [[],[0],[0,0],[0,0,0],[0,0,0,0]]
    f1 [5,4,3,2,1,0]      = [[],[4],[3,3],[2,2,2],[1,1,1,1],[0,0,0,0,0]]
    f1 [-5,-4,-3,-2,-1,0] = [[],[-4],[-3,-3],[-2,-2,-2],[-1,-1,-1,-1],[0,0,0,0,0]]}

-}


-- replicate: create i copies of (l !! i)
f1 :: [Int] -> [[Int]]
f1 l = [replicate i (l !! i) | i <- [0..length l-1]]







