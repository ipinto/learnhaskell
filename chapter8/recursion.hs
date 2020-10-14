module Recursion where

-- 2. Write a function that recursively sums all numbers from 1 to n, n being
-- the argument. So if n is 5, you’d add 1 + 2 + 3 + 4 + 5 to get 15.
-- The type should be (Eq a, Num a) => a -> a.
sumAll :: (Eq a, Num a) => a -> a
sumAll 0 = 0
sumAll n = n + sumAll (n-1)

-- 3. Write a function that multiplies two integral numbers using recursive
-- summation. The type should be (Integral a) => a -> a -> a.
rMulti :: Integral a => a -> a -> a
rMulti 0 _ = 0
rMulti _ 0 = 0
rMulti x y = go y 1
   where go acc count
          | x == count = acc
          | otherwise = go (y + acc) (count + 1)

-- Take into account the 0 divisor in dividedBy
data DividedResult = Result (Integer, Integer) | DividedByZero deriving Show

dividedBy :: Integer -> Integer -> DividedResult
dividedBy _ 0 = DividedByZero
dividedBy num denom = go num denom 0
   where go n d count
          | n < d = Result (count, n)
          | otherwise = go (n - d) d (count + 1)

-- McCarthy 91 function
mc91 :: Integral a => a -> a
mc91 x
      | x > 100 = x - 10
      | otherwise = mc91 (mc91 (x + 11))

