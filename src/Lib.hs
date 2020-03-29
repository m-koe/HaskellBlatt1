-- | A Lib module.
module Lib
    (   someFunc,
        square,
        ggT
    )   where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- | Calculate the square of a number
square 
    :: Num a => a -- ^ the number 
    -> a -- ^ the square
square n = n^2

-- | Calculate the gcd of two given numbers using Euclid's Algorithm.
-- Implementation help: https://lettier.github.io/posts/2016-04-22-fibonacci-lcm-and-gcd-in-haskell.html
ggT :: Integer -> Integer -> Integer
ggT x 0 = abs x
ggT x y = ggT b (mod a b)
   where a = abs x
         b = abs y