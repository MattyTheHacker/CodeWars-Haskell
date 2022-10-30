module Codewars.Kata.Count where

countBy :: Integer -> Int -> [Integer]
countBy x n = [x, x * 2 .. x * fromIntegral n]

countByBetter :: Integer -> Int -> [Integer]
countByBetter x n = take n [x, x * 2 ..]