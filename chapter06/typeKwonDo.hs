module TypeKwonDo where

-- 1.
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f a b = b == f a

-- 2.
arith :: Num b
      => (a -> b)
      -> Integer
      -> a
      -> b

arith f x y = f y + fromInteger x
