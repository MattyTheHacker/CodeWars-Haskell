module Codewars.Parentheses where

-- function to check if a string is a valid parentheses sequence
validParentheses :: String -> Bool
validParentheses str = validParentheses' str 0

-- helper function to check if a string is a valid parentheses sequence
validParentheses' :: String -> Int -> Bool
validParentheses' [] 0 = True
validParentheses' [] _ = False
validParentheses' (x:xs) n
    | n < 0 = False
    | x == '(' = validParentheses' xs (n + 1)
    | x == ')' = validParentheses' xs (n - 1)
    | otherwise = validParentheses' xs n
