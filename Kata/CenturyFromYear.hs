module Century where

-- Given a year, return the century it is in.
century :: Int -> Int
century year = ((year + 99) `div` 100)