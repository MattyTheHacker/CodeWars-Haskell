module TopWords (top3) where

import Data.List (sortOn)
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Char (toLower)

-- WARNING: DOES NOT WORK

-- returns an array of the top-3 most occurring words, in descending order of the number of occurrences.
-- If less than 3 unique words are present, then either the top-2 or top-1 words should be returned, or an empty array if a text contains no words.
top3 :: [Char] -> [[Char]]
top3 s
    | length s == 0 = []