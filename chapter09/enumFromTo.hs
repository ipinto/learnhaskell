module EnumFromTo where

-- Write your own enumFromTo definitions for the types provided.

eftBool :: Bool -> Bool -> [Bool]
eftBool True True = [True]
eftBool True _ = []
eftBool False False = [False]
eftBool False _ = False : True : []

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd a b
      | a > b = []
      | a == b = [a]
      | otherwise = a : eftOrd (succ a) b

eftInt :: Int -> Int -> [Int]
eftInt a b
      | a > b = []
      | a == b = [a]
      | otherwise = a : eftInt (succ a) b

eftChar :: Char -> Char -> [Char]
eftChar a b
      | a > b = []
      | a == b = [a]
      | otherwise = a : eftChar (succ a) b

eft :: (Ord a, Enum a) => a -> a -> [a]
eft a b
  | a > b = []
  | a == b = [b]
  | otherwise = a : eft (succ a) b
