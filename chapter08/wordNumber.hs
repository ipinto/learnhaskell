module WordNumber where

import Data.List (intersperse, intercalate)

digitToWord :: Int -> String
digitToWord n
   | n == 0 = "zero"
   | n == 1 = "one"
   | n == 2 = "two"
   | n == 3 = "three"
   | n == 4 = "four"
   | n == 5 = "five"
   | n == 6 = "six"
   | n == 7 = "seven"
   | n == 8 = "eight"
   | n == 9 = "nine"
   | otherwise = error "Only single digits supported in digitToWord function"

digits :: Int -> [Int]
digits n = go n [] :: [Int]
   where go n' acc
          | n' < 10 = [n'] ++ acc
          | otherwise = go (div n' 10) ([mod n' 10] ++ acc)

wordNumber :: Int -> String
wordNumber n = concat $ intersperse "-" $ map digitToWord $ digits n

wordNumber' :: Int -> String
wordNumber' n = intercalate "-" $ map digitToWord $ digits n

main = do
   print $ wordNumber 0823590250
   print $ wordNumber' 0823590250
