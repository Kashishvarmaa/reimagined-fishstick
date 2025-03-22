-- Apply a Discount to a Price


-- applyDiscount :: Double -> Double -> Double
-- applyDiscount discount price = price - (price * discount / 100)

-- main :: IO ()
-- main = print (applyDiscount 10 200) 


applyDiscount :: Double -> (Double -> Double)
applyDiscount discount =  \price -> price - (price * discount / 100)