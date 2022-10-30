module Codewars.G964.FindEven where

-- WARNING: DOESN'T WORK


-- find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.
findEvenIndex :: [Int] -> Int
findEvenIndex arr = findEvenIndex' arr 0 (sum arr)

findEvenIndex' :: [Int] -> Int -> Int -> Int
findEvenIndex' [] _ _ = -1
findEvenIndex' (x:xs) leftSum rightSum
    | leftSum == rightSum - x = 0
    | otherwise = 1 + findEvenIndex' xs (leftSum + x) (rightSum - x)
