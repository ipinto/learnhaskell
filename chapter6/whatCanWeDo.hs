module WhatCanWeDo where

data Rocks =
    Rocks String deriving (Eq, Show)

data Yeah =
    Yeah Bool deriving (Eq, Show)

data Papu =
    Papu Rocks Yeah
    deriving (Eq, Show)

-- Which of the following will type check? For the ones that don’t type check, why don’t they?

-- 1. -> It won't. It should be Papu (Rocks "chases") (Yeah True)
-- phew = Papu "chases" True

-- 2. -> Yes!
truth = Papu (Rocks "chomskydoz") (Yeah True)

-- 3. -> Yes!
equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'

-- 4. -> No because '>' requires an Ord and Papu has no instance of Ord
-- comparePapus :: Papu -> Papu -> Bool
-- comparePapus p p' = p > p'
