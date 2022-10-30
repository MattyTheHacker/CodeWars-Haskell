module Roman where

data ParseState = ParseState Int String

solution :: String -> Int
solution ('C':'M':t) = 900 + solution t
solution ('C':'D':t) = 400 + solution t
solution ('X':'C':t) = 90 + solution t
solution ('X':'L':t) = 40 + solution t
solution ('I':'X':t) = 9 + solution t
solution ('I':'V':t) = 4 + solution t
solution ('M':t) = 1000 + solution t
solution ('D':t) = 500 + solution t
solution ('C':t) = 100 + solution t
solution ('L':t) = 50 + solution t
solution ('X':t) = 10 + solution t
solution ('V':t) = 5 + solution t
solution ('I':t) = 1 + solution t
solution "" = 0