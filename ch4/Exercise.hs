module Exercise where

--
-- Writing Code
--

awesome :: [String]
awesome = ["Papuchon", "curry", ":)"]

alsoAwesome :: [String]
alsoAwesome = ["Quake", "The Simons"]

allAwesome = [awesome, alsoAwesome]

-- 1. naively, length :: [a] -> Int
--    in reality, length :: Foldable t => t a -> Int
-- 2. a. 5
--    b. 3
--    c. 2
--    d. 5
-- 3. second expression results in an error, length does not return a Fractional
-- 4. use integer division `div`
-- 5. Bool, True
-- 6. Bool, False
-- 7. a. will work, we can compare two Ints => True
--    b. will not work, list cannot be heterogeneous in type
--    c. will work, can add two Ints => 5
--    d. will work, can logically AND two Bool expressions => False
--    e. will not work, Num class cannot be "truthy"

-- 8
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

-- 9
myAbs :: Integer -> Integer
myAbs n = if n > 0 then n else negate n

-- 10
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))

--
-- Correcting Syntax
--

-- 1
(x) = (+)

f' :: [a] -> Int
f' xs = w `x` 1
       where w = length xs

-- 2
id' = \x -> x

-- 3
head' = \(x:xs) -> x

-- 4
f'' (a, b) = a

--
-- Matching function name to type
--

-- 1. c => show :: Show a => a -> String
-- 2. b => (==) :: Eq a => a -> a -> Bool
-- 3. a => fst :: (a, b) -> a
-- 4. d => (+) :: Num a => a -> a -> a
