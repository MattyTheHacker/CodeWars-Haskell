module BoolToString where

booleanToString :: Bool -> String
booleanToString True = "True"
booleanToString False = "False"

booleanToStringBetter :: Bool -> String
booleanToStringBetter = show