module HowGoodAreYou where

betterThanAverage :: [Int] -> Int -> Bool
betterThanAverage xs x
    | x > (sum xs) `div` (length xs) = True
    | otherwise = False

betterThanAverageBetter :: [Int] -> Int -> Bool
betterThanAverageBetter xs x = x > (sum xs) `div` (length xs)