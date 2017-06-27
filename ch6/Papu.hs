module Papu where

data Rocks
    = Rocks String
    deriving (Eq, Show)

data Yeah
    = Yeah Bool
    deriving (Eq, Show)

data Papu
    = Papu Rocks Yeah
    deriving (Eq, Show)

-- 1
-- > Does not typecheck. The values given to Papu are not fully specified constructors
-- phew = Papu "chases" True
phew = Papu (Rocks "chases") (Yeah True)

-- 2
-- > Typechecks.
truth = Papu (Rocks "chomskydoz") (Yeah True)

-- 3
-- > Typechecks.
equalityForAll :: Papu -> Papu -> Bool
equalityForAll p p' = p == p'

-- 4
-- > Does not typecheck. Eq does not imply Ord.
-- comparePapus :: Papu -> Papu -> Bool
-- comparePapus p p' = p > p'
