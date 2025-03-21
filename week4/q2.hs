{-2. Define a function f2 :: [Int] -> [[Int]] which takes a list l of integer values as input, and replaces (l!!i) by a list l' as follows: 
    if (l!!i) <= 0, l' is []
    if (l!!i) > 0, l' is a list consisting of (l!!i) copies of i. 

Examples:
    f2 []                 = []
    f2 [0,1,2,3,4]        = [[],[1],[2,2],[3,3,3],[4,4,4,4]]
    f2 [0,0,0,0,0]        = [[],[],[],[],[]]
    f2 [5,4,3,2,1,0]      = [[0,0,0,0,0],[1,1,1,1],[2,2,2],[3,3],[4],[]]
    f2 [-5,-4,-3,-2,-1,0] = [[],[],[],[],[],[]]}
    -}

-- here cond is (l!!i)
f2 :: [Int] -> [[Int]]
f2 l = [if cond <=0 then []
        else replicate cond i | (i,cond) <- zip[0..] l]





