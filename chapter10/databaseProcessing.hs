module DatabaseProcessing where

import Data.Time

data DatabaseItem
  = DbString String
  | DbNumber Integer
  | DbDate UTCTime
  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
  [ DbDate (UTCTime (fromGregorian 1911 5 1) (secondsToDiffTime 34123)),
    DbNumber 9001,
    DbString "Hello, world!",
    DbDate (UTCTime (fromGregorian 1921 5 1) (secondsToDiffTime 34123))
  ]

-- 1. Write a function that filters for DbDate values and returns a list of the UTCTime values inside them:

filterUTCTime :: DatabaseItem -> [UTCTime] -> [UTCTime]
filterUTCTime (DbDate x) xs = xs ++ [x]
filterUTCTime _ xs = xs

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate = foldr filterUTCTime []

doFilterDbDate = do
   print $ filterDbDate theDatabase

-- 2. Write a function that filters for DbNumber values and returns a list of the Integer values inside them:

filterInteger :: DatabaseItem -> [Integer] -> [Integer]
filterInteger (DbNumber x) xs = xs ++ [x]
filterInteger _ xs = xs

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber = foldr filterInteger []

doFilterDbNumber = do
   print $ filterDbNumber theDatabase

-- 3. Write a function that gets the most recent date:

mostRecent :: [DatabaseItem] -> UTCTime
mostRecent = maximum . filterDbDate

doMostRecent = do
   print $ mostRecent theDatabase

-- 4. Write a function that sums all of the DbNumber values:

sumDb :: [DatabaseItem] -> Integer
sumDb = foldr (+) 0 . filterDbNumber

doSumDb = do
   print $ sumDb theDatabase

-- 5. Write a function that gets the average of the DbNumber values:

avgDb :: [DatabaseItem] -> Double
avgDb xs = (fromIntegral $ sumDb xs) / (fromIntegral . length $ filterDbNumber xs)

doAvgDb = do
   print $ avgDb theDatabase
