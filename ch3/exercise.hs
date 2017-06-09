module Exercise where

thirdLetter :: String -> Char
thirdLetter s = s !! 2

letterIndex :: Int -> Char
letterIndex i = "Curry is awesome!" !! i

rvrs :: String
rvrs = concat [drop 9 s, " ", take 2 s', " ", take 5 s]
       where s  = "Curry is awesome"
             s' = drop 6 s
