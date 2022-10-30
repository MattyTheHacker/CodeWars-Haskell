module Codewars.Kata.Smash where

smash :: [String] -> String
smash [] = ""
smash (x : []) = x
smash (x : xs) = x ++ " " ++ smash xs

smashBetter :: [String] -> String
smashBetter = unwords