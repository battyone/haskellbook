{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

-- 1 a
a :: Num a => a
a = (* 9) 6

-- 1 b
b :: (Num a) => (a, [Char])
b = head [(0, "doge"), (1, "kitteh")]

-- 1 c
c :: (Integer, [Char])
c = head [(0 :: Integer, "doge"), (1, "kitteh")]

-- 1 d
d :: Bool
d = if False then True else False

-- 1 e
e :: Int
e = length [1, 2, 3, 4, 5]

-- 1 f
f :: Bool
f = (length [1, 2, 3, 4]) > (length "TACOCAT")

-- 2
x = 5
y = x + 5
w = y * 10 :: Num a => a

-- 3
x' = 5
y' = x' + 5

z' :: (Num a => a -> a)
z' y = y * 10

-- 4
x'' = 5
y'' = x'' + 5

f'' :: Fractional a => a
f'' = 4 / y''

-- 5
x''' = "Julie"
y''' = " <3 "
z''' = "Haskell"
f''' :: [Char]
f''' = x''' ++ y''' ++ z'''
