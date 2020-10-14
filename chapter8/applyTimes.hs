module ApplyTimes where

-- Write out the evaluation of the following:
-- applyTimes 5 (+1) 5

applyTimes :: (Eq a, Num a) => a -> (a -> a) -> a -> a
applyTimes 0 f b = b
applyTimes n f b = f (applyTimes (n-1) f b)

applyTimes' :: (Eq a, Num a) => a -> (a -> a) -> a -> a
applyTimes' 0 f b = b
applyTimes' n f b = f . applyTimes (n-1) f $ b

main = do
      print $ applyTimes 5 (+1) 5
      print $ applyTimes' 5 (+1) 5
