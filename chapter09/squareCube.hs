module SquareCube where

-- Given the following

mySqr :: [Integer]
mySqr = [x^2 | x <- [1..5]]
myCube :: [Integer]
myCube = [y^3 | y <- [1..5]]


-- 1. First write an expression that will make tuples of the outputs of mySqr and myCube.

myTuples1 :: [(Integer, Integer)]
myTuples1 = [(x, y) | x <- mySqr, y <- myCube]

-- 2. Now, alter that expression so that it only uses the x and y values that are less than 50.

myTuples2 :: [(Integer, Integer)]
myTuples2 = [(x, y) | x <- mySqr, y <- myCube, x < 50, y < 50]

-- 3. Apply another function to that list comprehension to determine how many tuples inhabit your
-- output list.

myTuplesLength :: [(Integer, Integer)] -> Int
myTuplesLength ts = length ts

main = do
   print myTuples1
   print $ myTuplesLength myTuples1
   print myTuples2
   print $ myTuplesLength myTuples2
