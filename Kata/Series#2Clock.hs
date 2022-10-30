module Kata (past) where

past :: Int -> Int -> Int -> Int
past h m s = 1000 * (s + 60 * (m + 60 * h))


