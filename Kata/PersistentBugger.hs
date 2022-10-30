module Codewars.G.Persistence where

-- persistence takes a positive integer and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.
persistence :: Int -> Int
persistence n
    | n < 10 = 0
    | otherwise = 1 + persistence (product $ map (read . return) $ show n)


persistenceBetter :: Int -> Int
persistenceBetter n = if n < 10 then 0 else 1 + persistence (product (map digitToInt (show n)))