module ReviewCurrying where

cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

-- fill in the types

flippy :: String -> String -> String
flippy = flip cattyConny

appedCatty :: String -> String
appedCatty = cattyConny "woops"

frappe :: String -> String
frappe = flippy "haha"

main = do
      print $ appedCatty "woohoo!" -- woops mrow woohoo!
      print $ frappe "1" -- 1 mrow haha
      print $ frappe (appedCatty "2") -- woops mrow 2 mrow haha
      print $ cattyConny (frappe "pink") (cattyConny "green" (appedCatty "blue")) -- pink mrow haha mrow green mrow woops mrow blue
      print $ cattyConny (flippy "Pugs" "are") "awesome" -- are mrow Pugs mrow awesome
