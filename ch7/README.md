Chapter 7: More functional patterns
===================================

> I would like to be able to always... divide the things up into as many pieces as I can,
> each of which I understand separately. I would like to understand the way of adding things up,
> indepedently of what it is I'm adding up. - Gerald Sussman

## Reading Exercises

### Grab Bag

1. they are all equivalent functions, leading up to the full curried version
2. d `Num a => a -> a -> a`
3. a. `f = \n -> n + 1`
   b. `addFive = \x -> \y -> (if x > y then y else x) + 5`
   c. `mFlip f x y = f y x`

### Variety Pack

1. a. `k :: (a, b) -> a`
   b. `String`, no `k1` and `k3` are of type `Num a => a`
   c. `k1` and `k3`
2. pattern matching practice
```haskell
f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f (a, _, c) (d, _, f) = ((a, d), (c, f))
```

### Case Practice

```haskell
-- 1
functionC x y =
    case (x > y) of
        True -> x
        False -> y
```

```haskell
-- 2
ifEvenAdd2 n =
    case (even n) of
        True -> n + 2
        False -> n
```

```haskell
-- 3
nums x =
    case (compare x 0) of
        LT -> -1
        GT -> 1
        EQ -> 0
```

### Artful Dodgy

1. `dodgy 1 0 == 1`
2. `dodgy 1 1 == 11`
3. `dodgy 2 2 == 22`
4. `dodgy 1 2 == 21`
5. `dodgy 2 1 == 12`
6. `oneIsOne 1 == 11`
7. `oneIsOne 2 == 21`
8. `oneIsTwo 1 == 21`
9. `oneIsTwo 2 == 22`
10. `oneIsOne 3 == 31`
11. `oneIsTwo 3 == 23`

### Guard Duty

1. Setting `otherwise` as the top-most guard forces all input to evaluate
to that case. Here, that case is `F`
2. Moving guards type-checks, but breaks the functionality. For instance,
in the original function `avgGrade 70 = 'C'`, but if we move the case for `'C'`
below the case for `'D'`, we get `avgGrade_ 70 = 'D'`, which is incorrect.
3. (b) `True` when `xs` is a palindrome.
4. Any list structure.
5. `pal :: Eq a => [a] -> Bool`
6. (c) indiction of positive, negative, or zero
7. `Num`
8. `numbers :: (Ord a, Num a, Num t) => a -> t`

## Chapter Exercises

### Multiple Choice

1. (d) may resolve to values of different types, depending on inputs
2. (b) `Char -> [String]`
3. (d) `(Ord a, Num a) => a -> Bool`
4. (b) higher-order function
5. (a) `f True :: Bool`

### Writing Code

See [`Exercise.hs`](Exercise.hs) and [`Arith4.hs`](Arith4.hs)
