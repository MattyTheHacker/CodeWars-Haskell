module Codewars.G964.Longestconsec where

longestConsec :: [String] -> Int -> String
longestConsec strs x | x > length strs = ""
                     | otherwise       = pickLongest $ concat' strs x
  where concat' [] n = []
        concat' s n = [concat $ take n s] ++ concat' (tail s) n
        pickLongest (s:ss) | length s >= length longest = s
                           | otherwise                  = longest
          where longest = pickLongest ss
        pickLongest [] = []

import Data.List.Split (divvy)
import Data.List (maximumBy)
import Data.Ord (comparing)

longestConsecBetter :: [String] -> Int -> String
longestConsecBetter ss k
  | k <= 0 || k > length ss = ""
  | otherwise = maximumBy (comparing length)
              . reverse . fmap concat
              . divvy k 1 $ ss