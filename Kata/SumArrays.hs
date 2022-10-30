module Sum where
import Prelude hiding (sum)

sum :: Num a => [a] -> a
sum [] = 0
sum (x : []) = x
sum (x : xs) = x + sum xs

sumBetter :: Num a => [a] -> a
sumBetter = foldl (+) 0