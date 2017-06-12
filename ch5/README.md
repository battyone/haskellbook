Chapter 5: Types
=========

> "Knowing is not enough; we must apply."

## Multiple Choice

1. `c`, a list whoe elements are all of the samet type
2. `a`, take a list of strings as an argument
3. `b`, returns an elemtns of type `a` from the list
4. `c`, takes a type argument and returns the first value

## Determine the type

See [`DetermineTheType.hs`](DetermineTheType.hs)

## Does it compile?

1. `wahoo` expression will not compile, bigNum is not a function at this point, it is fully reduced
2. all expressions are valid
3. last 2 fail, `Num a => a` is not a function
4. will not compile, `c` is not in scope

## Type variable or specific type constructor?

Choices: fully polymorphic, constrained polymorphic, concrete

```
f :: zed -> Zed -> Blah
     [0]    [1]    [2]

[0] fully polymorphic
[1] concrete
[2] concrete
```

```
f :: Enum b => a -> b -> C
               [0]  [1]  [2]

[0] full
[1] constrained (Enum)
[2] concrete
```

```
f :: f -> g -> C
     [0]  [1]  [2]

[0], [1] full
[2] concrete
```

## Write a type signature

```haskell
functionH :: [a] -> a
functionH (x:_) = x
```

```haskell
functionC :: Ord a => a -> a -> Bool
functionC x y = if (x > y) then True else False
```

```haskell
functionS :: (a, b) -> b
functionS (x, y) = y
```

## Given a type, write the function

```haskell
-- (rewritten with function composition)
myFunc :: (x -> y) -> (y -> z) -> c -> (a, x) -> (a, z)
myFunc xToY yToZ _ (a, x) = (a, (yToZ . xToY) x)
```

```haskell
-- 1
i :: a -> a
i = id
```

```haskell
-- 2
c :: a -> b -> a
c = curry fst
```

```haskell
-- 3
c'' :: b -> a -> b
c'' = c
-- yes, these expressions are the same due to alpha equivalence
```

```haskell
-- 4
c' :: a -> b -> b
c' = curry snd
```

```haskell
-- 5
r :: [a] -> [a]
r = reverse
```

```haskell
-- 6
co :: (b -> c) -> (a -> b) -> a -> c
co f g a = (f . g) a
```

```haskell
-- 7
a :: (a -> c) -> a -> a
a _ x = x
```

```haskell
-- 8
a' :: (a -> b) -> a -> b
a' f = f
```

## Fix it

See [`Sing.hs`](Sing.hs)

See [`Arith3Broken.hs`](Arith3Broken.hs)

## Type-Kwon-Do

See [`KwonDo.hs`](KwonDo.hs)
