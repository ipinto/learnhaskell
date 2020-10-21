module ThyFearfulSymmetry where

-- 1. Using takeWhile and dropWhile, write a function that takes a string and returns a list of strings,
-- using spaces to separate the elements of the string into words, as in the following sample:
-- Prelude> myWords "sheryl wants fun"
-- ["sheryl", "wants", "fun"]

myWords :: [Char] -> [[Char]]
myWords a = go a [] :: [[Char]]
   where go a' acc
          | dropWhile (/=' ') a' == "" = acc ++ [a']
          | otherwise = go (tail $ dropWhile (/=' ') a') (acc ++ [takeWhile (/=' ') a'])
