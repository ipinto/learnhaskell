module DayOfWeekExercise where

data DayOfWeek = Mon | Tue | Weds | Thu | Fri | Sat | Sun deriving Show

-- day of week and numerical day of month

data Date = Date DayOfWeek Int deriving Show

instance Eq DayOfWeek where
    (==) Mon Mon = True
    (==) Tue Tue = True
    (==) Weds Weds = True
    (==) Thu Thu = True
    (==) Fri Fri = True
    (==) Sat Sat = True
    (==) Sun Sun = True
    (==) _ _ = False

instance Eq Date where
    (==) (Date weekday dayOfMonth) (Date weekday' dayOfMonth') =
        weekday == weekday' && dayOfMonth == dayOfMonth'

-- Exercises: Eq instances

-- 1

data TisAnInteger = TisAn Integer deriving Show

instance Eq TisAnInteger where
    (==) (TisAn anInteger) (TisAn anInteger') = anInteger == anInteger'

-- 2

data TwoIntegers = Two Integer Integer deriving Show

instance Eq TwoIntegers where
    Two a b == Two a' b' = a == a' && b == b'

-- 3

data StringOrInt = TisAnInt Int | TisAString String deriving Show

instance Eq StringOrInt where
    (==) (TisAnInt a) (TisAnInt a') = a == a'
    (==) (TisAString a) (TisAString a') = a == a'
    (==) _ _ = False

-- 4

data Pair a = Pair a a deriving Show

instance Eq a => Eq (Pair a) where
    (==) (Pair a b) (Pair a' b') = a == a' && b == b'

-- 5

data Tuple a b = Tuple a b deriving Show

instance (Eq a, Eq b) => Eq (Tuple a b) where
    (==) (Tuple a b) (Tuple a' b') = a == a' && b == b'

-- 6

data Which a = ThisOne a | ThatOne a deriving Show

instance Eq a => Eq (Which a) where
    (==) (ThisOne a) (ThisOne a') = a == a'
    (==) (ThatOne a) (ThatOne a') = a == a'
    (==) (ThisOne a) (ThatOne a') = a == a'
    (==) (ThatOne a) (ThisOne a') = a == a'

-- 7

data EitherOr a b = Hello a | Goodbye b deriving Show

instance (Eq a, Eq b) => Eq (EitherOr a b) where
    (==) (Hello a) (Hello a') = a == a'
    (==) (Goodbye b) (Goodbye b') = b == b'
    (==) _ _ = False
