module Reading where

-- Small exercises throughout chapter reading

--
-- Type Matching
--
-- a. not => c (_ :: Bool -> Bool)
-- b. length => d (_ :: [a] -> Int)
-- c. concat => b (_ :: [[a]] -> [a])
-- d. head => a (_ :: [a] -> a)
-- e. (<) => e (_ :: Ord a => a -> a -> Bool)

--
-- Type Arguments
--
-- 1. f x :: Char -> Char -> Char
-- 2. g 0 'c' "woot" :: Char
-- 3. h 1.0 2 :: Num b => b
-- 4. h 1 (5.5 :: Double) :: Double
-- 5. jackal "keyboard" "has the word jackal in it" :: [Char]
-- 6. jackal "keyboard" :: Eq b => b -> [Char]
-- 7. kessel 1 2 :: (Num a, Ord a) => a
-- 8. kessel 1 (2 :: Integer) :: (Num a, Ord a) => a
-- 9. kessel (1 :: Integer) 2 :: Integer

--
-- Parametricity
--
-- 1. can't be done, son
-- 2. f :: a -> a -> a
--    f x y = x
--    f' :: a -> a -> a
--    f' x y = y
-- 3. g :: a -> b -> b
--    g _ x = x
--    (this is the only implementation possible, behavior is consistent across types)

--
-- Apply Yourself
--
-- 1. now bound to [Char], myConcat :: [Char] -> [Char]
myConcat :: [Char] -> [Char]
myConcat x = x ++ " yo"

-- 2
myMult :: Fractional a => a -> a
myMult x = (x / 3) * 5

-- 3
myTake :: Int -> [Char]
myTake x = take x "hey you"

-- 4
myCom :: Int -> Bool
myCom x = x > (length [1..10])

-- 5
myAlph :: Char -> Bool
myAlph x = x < 'z'
