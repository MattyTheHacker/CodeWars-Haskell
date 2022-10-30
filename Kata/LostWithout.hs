module Codewars.Kata.LostWithout where

maps :: [Int] -> [Int]
maps xs = [x * 2 | x <- xs]

mapsBetter :: [Int] -> [Int]
mapsBetter = map (*2)