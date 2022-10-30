module PickPeak.JorgeVS.Kata where

import Data.Tuple
import Data.List
import Data.Function

data PickedPeaks = PickedPeaks { pos :: [Int], peaks :: [Int]} deriving (Eq, Show)

pickPeaks :: [Int] -> PickedPeaks
pickPeaks ls = [b | (a,b,c) <- zip3 xs (tail xs) (drop 2 xs), a<b && b>c] & unzip & swap & uncurry PickedPeaks
    where xs = zip ls [0..] & groupBy (on (==) fst) & map head