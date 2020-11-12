module MyStandardFunctions where

-- 1. myOr returns True if any Bool in the list is True:

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x : xs)
   | x = True
   | otherwise = myOr xs

mainMyOr = do
   print $ myOr []
   print $ myOr [True]
   print $ myOr [False]
   print $ myOr [False, True]
