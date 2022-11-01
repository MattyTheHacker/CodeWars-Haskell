module ReverseLonger where

reverseLonger :: String -> String -> String
reverseLonger a b
    | length a > length b = b ++ reverse a ++ b
    | length b > length a = a ++ reverse b ++ a
    | otherwise = b ++ reverse a ++ b
