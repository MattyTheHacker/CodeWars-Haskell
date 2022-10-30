module GetSum where

getSum :: Int -> Int -> Int
getSum a b
    | a == b = a
    | a < b = a + getSum (a+1) b
    | a > b = a + getSum (a-1) b

getSumBetter :: Int -> Int -> Int
getSumBetter a b 
    | a > b = sum [b..a]
    | otherwise = sum [a..b]