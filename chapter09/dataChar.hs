module DataChar where

import Data.Char

filterUppercase :: [Char] -> [Char]
filterUppercase = filter isUpper

capitalize :: [Char] -> [Char]
capitalize [] = []
capitalize (x : xs) = toUpper x : xs

upperize :: [Char] -> [Char]
upperize [] = []
upperize (x : xs) = toUpper x : upperize xs

capitalizedHead :: [Char] -> Char
capitalizedHead = toUpper . head

main = do
   print $ filterUppercase "aEiOJuytTr"
   print $ capitalize "julie"
   print $ upperize "woot"
   print $ capitalizedHead "test"
