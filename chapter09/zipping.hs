module Zipping where

-- 1. Write your own version of zip, and ensure it behaves the same as the original:

myZip :: [a] -> [b] -> [(a, b)]
myZip [] _ = []
myZip _ [] = []
myZip (x:xs) (y:ys) = (x, y) : myZip xs ys

-- 2. Do what you did for zip but now for zipWith:

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith _ [] _ = []
myZipWith _ _ [] = []
myZipWith f (x:xs) (y:ys) = f x y : myZipWith f xs ys

-- 3. Rewrite your zip in terms of the zipWith you wrote.

myZip' :: [a] -> [b] -> [(a, b)]
myZip' = myZipWith (,)

main = do
   print $ myZip [1, 2, 3] [4, 5, 6, 7]
   print $ myZipWith (+) [1, 2, 3] [10, 11, 12, 13]
   print $ myZip' [1, 2, 3] [4, 5, 6, 7]
