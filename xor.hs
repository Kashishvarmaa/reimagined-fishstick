import Data.Bits (xor)  -- Import must be at the top

-- XOR function using boolean logic
xorBool :: Bool -> Bool -> Bool
xorBool True  False = True
xorBool False True  = True
xorBool _     _     = False

-- XOR for integers using bitwise XOR
xorInt :: Int -> Int -> Int
xorInt a b = a `xor` b  -- Bitwise XOR

main :: IO ()
main = do
    putStrLn "XOR of True and False:"
    print (xorBool True False)

    putStrLn "XOR of 5 and 3 (Bitwise):"
    print (xorInt 5 3) -- 5 (101) XOR 3 (011) = 6 (110)