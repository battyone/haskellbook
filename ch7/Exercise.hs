module Exercise where

-- 1

tensDigit :: Integral a => a -> a
tensDigit x = d
    where xLast = x `div` 10
          d     = xLast `mod` 10

tensDigit_ :: Integral a => a -> a
tensDigit_ = snd . ((flip divMod) 10) . fst . ((flip divMod) 100)

digit :: Integral a => a -> a -> a
digit pos =
    snd . ((flip divMod) 10) . fst . ((flip divMod) pos)

hunsD = digit 100

-- 2

foldBool :: a -> a -> Bool -> a
foldBool = error "placeholder"

foldBool1 :: a -> a -> Bool -> a
foldBool1 x y t =
    case t of
        True -> x
        False -> y

foldBool2 :: a -> a -> Bool -> a
foldBool2 x y t
    | t = x
    | otherwise = y

-- 3

g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (f a, c)
