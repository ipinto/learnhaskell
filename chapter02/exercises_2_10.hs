module Exercises_2_10 where
-- let --> where exercises

-- let x = 3; y = 1000 in x * 3 + y
one = x * 3 + y
  where x = 3
        y = 1000

-- let y = 10; x = 10 * 5 + y in x * 5
two = x * 5
  where x = 10 * 5 + y
        y = 10

-- let x = 7
--     y = negate x
--     z = y * 10
-- in z / x + y
three = z / x + y
  where x = 7
        y = negate x
        z = y * 10
