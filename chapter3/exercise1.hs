module Exercise1 where

-- d is not in the scope of r function
area d = pi * (r * r)
r = d / 2

-- d is in the scope of r function
area d = pi * (r * r)
   where r = d / 2
