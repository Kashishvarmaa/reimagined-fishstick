-- XOR function using boolean logic
xorBool :: Bool -> Bool -> Bool
xorBool True  False = True
xorBool False True  = True
xorBool _     _     = False

