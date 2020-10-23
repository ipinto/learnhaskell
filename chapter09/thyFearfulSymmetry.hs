module ThyFearfulSymmetry where

-- 1. Using takeWhile and dropWhile, write a function that takes a string and returns a list of strings,
-- using spaces to separate the elements of the string into words, as in the following sample:
-- Prelude> myWords "sheryl wants fun"
-- ["sheryl", "wants", "fun"]

myWords :: String -> [String]
myWords a = go a [] :: [String]
   where go a' acc
          | dropWhile (/=' ') a' == "" = acc ++ [a']
          | otherwise = go (tail $ dropWhile (/=' ') a') (acc ++ [takeWhile (/=' ') a'])

myWords' :: String -> [String]
myWords' "" = []
myWords' (' ' : xs) = myWords' xs
myWords' phrase = takeWhile (/= ' ') phrase : myWords' (dropWhile (/= ' ') phrase)

main1 = do
      print $ myWords "This is a test"
      print $ myWords' "This is a test"

-- 2. Next, write a function that takes a string and returns a list of strings, using newline separators
-- to break up the string

firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful\
            \ symmetry?"
sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen

myLines :: String -> [String]
myLines a = go a [] :: [String]
   where go a' acc
          | dropWhile (/='\n') a' == "" = acc ++ [a']
          | otherwise = go (tail $ dropWhile (/='\n') a') (acc ++ [takeWhile (/='\n') a'])

myLines' :: String -> [String]
myLines' "" = []
myLines' ('\n' : xs) = myLines' xs
myLines' phrase = takeWhile (/= '\n') phrase : myLines' (dropWhile (/= '\n') phrase)

shouldEqual = 
      [ "Tyger Tyger, burning bright"
      , "In the forests of the night"
      , "What immortal hand or eye"
      , "Could frame thy fearful symmetry?"
      ]

main2 = do
      print $ "Are they equal? " ++ show (myLines sentences == shouldEqual)
      print $ "Are they equal? " ++ show (myLines' sentences == shouldEqual)

-- 3. Try writing a new function that parameterizes the character you’re breaking the string
-- argument on and rewrite myWords and myLines using that parameter.

myGeneric :: Char -> String -> [String]
myGeneric c a = go a [] :: [String]
   where go a' acc
          | dropWhile (/=c) a' == "" = acc ++ [a']
          | otherwise = go (tail $ dropWhile (/=c) a') (acc ++ [takeWhile (/=c) a'])

myGeneric' :: Char -> String -> [String]
myGeneric' _ "" = []
myGeneric' a (x : xs)
  | x == a = myGeneric' a xs
  | otherwise = takeWhile (/= a) (x : xs) : myGeneric' a (dropWhile (/= a) (x : xs))

main3 = do
   print $ myGeneric ' ' "This is a test"
   print $ "Are they equal? " ++ show (myGeneric '\n' sentences == shouldEqual)
   print $ myGeneric' ' ' "This is a test"
   print $ "Are they equal? " ++ show (myGeneric' '\n' sentences == shouldEqual)
