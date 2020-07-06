module Exercises where

-- "Hello world" --> "ello world"
exercise1 :: String -> String
exercise1 x = tail x

exercise1Other :: [Char] -> String
exercise1Other x = drop 1 x

-- "Curry is awesome" --> "Curry is awesome!"
exercise2 :: [Char] -> [Char]
exercise2 x = x ++ "!"

exercise2Other :: String -> [Char]
exercise2Other x = (++) x "!"

-- "Curry is awesome!" --> "y"
exercise3 :: [Char] -> Char
exercise3 x = x !! 4

exercise3Other :: String -> Char
exercise3Other x = head (drop 4 x)

exercise3Infix :: [Char] -> Char
exercise3Infix x = head $ drop 4 $ x

exercise3OtherMore :: [Char] -> [Char]
exercise3OtherMore x = drop 4 (take 5 x)

-- "Curry is awesome!" --> "awesome!"
exercise4 :: String -> String
exercise4 x = drop 9 x

thirdLetter :: String -> Char
thirdLetter x = x !! 2

letterIndex :: Int -> Char
letterIndex x = "Curry is awesome" !! x
