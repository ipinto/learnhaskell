module AnonymousFunctions where

-- 1. Rewrite

addOneIfOdd n = case odd n of
    True -> f n
    False -> n
    where f n = n + 1

addOneIfOdd' n = case odd n of
    True -> f n
    False -> n
    where f = \n -> n + 1

-- 2. Rewrite

addFive x y = (if x > y then y else x) + 5

addFive' = \x -> \y -> (if x > y then y else x) + 5

-- 3. Rewrite not to use anonymous

mflip f = \x -> \y -> f y x

mflip' f x y = f y x
