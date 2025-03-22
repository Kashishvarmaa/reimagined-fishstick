{-
In this assignment you have to submit a standalone Haskell program (with a main) that can be compiled using the ghc compiler and run from the command line.
The input to the program will be multiple lines. 
Each input line is guaranteed to be an integer. 
On reading line number i, your program should print the running total of all numbers read so far (from line number 1 to line number i).
The program will exit on reading a blank line.

Sample run
Input
-5
50
22
0
-30
55
2
6

Output
-5
45
67
67
37
92
94
100 
-}

-- NORMAL FORM
import System.IO (isEOF) -- checks for end of file condition >> to determine when to stop 
main :: IO()
main = process 0

process :: Int -> IO ()
process total = do
    done <- isEOF
    if done then return ()
        else do
            line <- getLine
            if null line then return ()
            else do
                let num = read line :: Int
                    newTotal = total + num
                print newTotal
                process newTotal 

