module Filtering where

-- 1. How might we write a filter function that would give us all the multiples
-- of 3 out of a list from 1–30?

threeMultipliers :: (Integral a) => [a] -> [a]
threeMultipliers xs = filter (\x -> (rem x 3) == 0) xs

-- 2. Recalling what we learned about function composition, how could we compose
-- the above function with the length function to tell us how many multiples of 3 there are between 1 and 30?

-- 3. We’re going to work on removing all articles (“the,” “a,” and “an”) from sentences.

isAnArticle :: String -> Bool
isAnArticle x = elem x ["the", "a", "an"]

removeArticles :: String -> [String]
removeArticles = filter (not . isAnArticle) . words

main = do
   print $ threeMultipliers [1..30]
   print $ length . threeMultipliers $ [1..33]
   print $ removeArticles "the brown dog was a goof"
