module Exercises where

awesome = ["Papuchon", "curry", ":)"]
also = ["Quake", "The Simons"] 
allAwesome = [awesome, also]

fixFractionalOperator = div 6 $ length [1, 2, 3]

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

myAbs :: Integer -> Integer
myAbs x = if x > 0 then x else negate x

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))
