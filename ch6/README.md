Chapter 6: Typeclasses
======================

> A blank cheque kills creativity. - Mokokoma Mokhonoana

## Reading Exercises

### Writing typeclass instances

writing of basic `Eq` typeclass, using days of the week and simple dates - see [`Week.hs`](Week.hs)

### Eq Instances

writing Eq instances for custom types - see [`Eq.hs`](Eq.hs)

### Tuple Experiment

```haskell
quotRem :: a -> a -> (a, a)
quotRem x y = (quot x y, rem x y)
```

```haskell
divMod :: a -> a -> (a, a)
divMod x y = (div x y, mod x y)
```

```haskell
Prelude> let ones x = snd (divMod x 10)
Prelude> ones 10
0
Prelude> ones 8
8
Prelude> let _divMod x y = (div x y, mod x y)
Prelude> :t _divMod
_divMod :: Integral t => t -> t -> (t, t)
Prelude> let ones x = snd (_divMod x 10)
Prelude> ones 8
8
```

### Will They Work?

1. yes, `max` expects a constraint of `Ord`, and length returns an `Int`,
which is a subset of `Ord`. Returns `5`
2. yes, same as above. Returns `LT`
3. no, compare expects `Ord`, whose parametric constraints must be the same type when realized
4. yes, same as 1 and 2. Returns `False`

## Chapter Exercises

### Multiple Choice

1. The `Eq` class, `c. makes equality tests possible`
2. The typeclass `Ord`, `b. is a subclass of Eq`
3. `a. (>) :: Ord a => a -> a -> Bool`
4. `c. the type of x is a tuple`
5. `a. Int and Integer numbers`

### Does it typecheck?

1. no, this does not typecheck. `Bool` has an instance of `Show`, but the
"wrapping" datatype `Person`, does not
2. no, `x == Woot` will fail since `Mood` does not derive `Eq`
3. a. `Blah` and `Woot`
   b. compiler will complain that there is no way to compare (with `==`) `9` and `Woot`
   c. compiler will complain there is no instance of `Ord` for `Blah` (recall `Ord` implies `Eq`),
   not the other way around
4. yes, this typechecks. `s1` can't be shown, but simply defining it here like so is fine

### Given a datatype declaration, what can we do?

See [`Papu.hs`](Papu.hs)

### Match the types

1. no, cannot substitute
2. no, cannot cast to `Num` since `Num` cannot assume to be a fractional in all cases
3. yes, `Fractional` is a generalized `Float`
4. yes, `1.0` is both `Real` and `Fractional`, the constraint conjunction on `RealFrac`
5. yes, just because `Ord` is a constraint, doesn't mean we have to use it's methods
6. yes, nothing stops us from constraining the signature to `Int -> Int`, regardless of how
useless the function is
7. no, `sigmund` is constrained to return `Int` because of `myX`
8. no, `sigmund'` is fixed to return an `Int`, so we cannot say any `Num` is a valid return type
9. yes, we can always constrain to a more specific instance of the typeclass.
10. yes, this will reduce the set of opertions over the input, but will typecheck
11. no, the use of `mySort` limits the caller's signature

### Type-Kwon-Do Two

See [`KwonDo.hs`](KwonDo.hs)
