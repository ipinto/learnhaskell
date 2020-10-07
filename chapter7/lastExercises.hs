module LastExercises where

-- 1.

tensDigit :: Integral a => a -> a
tensDigit x = d
    where xLast = x `div` 10
          d     = xLast `mod` 10

-- using divMod
tensDigit' x = d
    where xLast = fst $ x `divMod` 10
          d     = snd $ xLast `divMod` 10

-- 2. Implement the following function of the type a -> a -> Bool -> a once using a case expression and once with a guard:

foldBool :: a -> a -> Bool -> a
foldBool x y z = case z of
    True -> y
    _ -> x
foldBool' x y z
    | z = y
    | otherwise = x

-- 3 . Fill in the definition

g :: (a -> b) -> (a, c) -> (b, c)
g f x = (f . fst $ x, snd x)

-- 4.

roundTrip :: (Show a, Read a) => a -> a
roundTrip a = read (show a)

-- 5. Write a point-free version of roundTrip

roundTrip' :: (Show a, Read a) => a -> a
roundTrip' = read . show

-- 6. Change the roundTrip types to (Show a, Read b) => a -> b

roundTrip'' :: (Show a, Read b) => a -> b
roundTrip'' = read . show

main = do
  print (roundTrip' 4 :: Int)
  print (roundTrip'' 4 :: Int)
