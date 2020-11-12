-- REPL exercise

-- Rewrite the following expressions

-- (^) 10 $ 1 + 1
*Prelude> (^) 10 $ 1 + 1
100
*Prelude> 10 ^ (1 + 1)
100
Prelude> (10^)(1 + 1)
100
*Prelude> ((^) 10 )(1 + 1)
100
Prelude> (^(1 + 1)) 10
100

-- 2 ^ 2 * 4 ^ 5 + 1
Prelude> 2 ^ 2 * 4 ^ 5 + 1
4097
Prelude> (2 ^ 2) * (4 ^ 5) + 1
4097
Prelude> (+1) ((2 ^ 2) * (4 ^ 5))
4097
Prelude> (+1) ((*) (2 ^ 2) (4 ^ 5))
4097
Prelude> (+) ((*) (2 ^ 2) (4 ^ 5)) 1
4097
Prelude> (^2) 2 * (^5) 4 + 1
4097
Prelude> (+1) ((^2) 2 * (^5) 4)
4097
Prelude> (*((^2) 2)) ((^5) 4) + 1
4097
Prelude> (+ (*((^2) 2)) ((^5) 4)) 1
4097
