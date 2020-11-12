module ExerciseSyntaxErrors where

printOne = ([1, 2, 3] ++ [4, 5, 6])

printTwo :: IO ()
printTwo = do
    putStrLn two where
        two = "<3" ++ " Haskell"

printThree :: IO ()
printThree = do
    putStrLn three where
        three = concat ["<3", " Haskell"]
