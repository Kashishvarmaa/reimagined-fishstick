{-Define a function toppers :: [Int] -> [Int] with the following behaviour.
For any list l, toppers l is the sublist consisting of each element x that is strictly larger than all elements of l that precede x.

Test cases:
toppers [] = []
toppers [0] = [0]
toppers [25] = [25]
toppers [3,4,5,6,7,8] = [3,4,5,6,7,8]
toppers [8,7,6,5,4,3] = [8]
toppers [7,8,5,6,3,4] = [7,8]
toppers [4,3,6,5,8,7] = [4,6,8]-}

toppers :: [Int] -> [Int]
toppers [] = []  -- Base case: An empty list returns an empty list.
toppers (x:xs) =  -- Pattern matching: Splits the list into head `x` and tail `xs`.
    let 
        maxValue = scanl max x xs      -- Tracks the maximum value seen at each step.
        pairs = zip xs maxValue        -- Pairs each element in `xs` with its corresponding max value.
        filtered = [y | (y, maxSoFar) <- pairs, y > maxSoFar] -- Filters values greater than the previous max.
    in 
        x : toppers filtered           -- Adds `x` to the result and recursively processes the filtered list.

-- Shortcut 
toppers :: [Int] -> [Int]
toppers [] = []
toppers (x:xs) = x : toppers [y | (y, maxSoFar) <- zip xs (scanl max x xs), y > maxSoFar]
