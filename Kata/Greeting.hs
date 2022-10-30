module Greeting where

greeting :: String
greeting name = "Hello, " ++ name ++ " how are you doing today?"

greeting :: String -> String
greeting = printf "Hello, %s how are you doing today?"