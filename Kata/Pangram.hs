module Pangram where

import Data.Char
import Data.Set (fromList, isSubsetOf)

-- Determine if a sentence is a pangram, ignoring case.
isPangram :: String -> Bool
isPangram str = alphabet `isSubsetOf` (fromList $ map toLower str)
  where alphabet = fromList ['a'..'z']


isPangramBetter :: String -> Bool
isPangram str = all (`elem` (map toLower str)) ['a'..'z']