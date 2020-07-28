module GivenTypeWriteFunction where

-- 1. There is only one function definition that type checks and doesn’t
-- go into an infinite loop when you run it:
i :: a -> a
i x = x

-- 2. There is only one version that works: 
c :: a -> b -> a
c x y = x

-- 3. Given alpha equivalence, are the variables c'' and c
-- (from the previous exercise) the same thing?
c'' :: b -> a -> b
c'' x y = x

-- 4. Only one version works:
c' :: a -> b -> b
c' x y = y

-- 5. There are multiple possibilities, at least two of which you’ve seen in previous chapters:
r :: [a] -> [a]
r x = x
r' :: [a] -> [a]
r' x = x ++ x

-- 6. Only one version will type check:
co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB a = bToC $ aToB a

-- 7. One version will type check:
a :: (a -> c) -> a -> a
a xToC x = x


-- 8. One version will type check:
a' :: (a -> b) -> a -> b
a' aToB a = aToB a
