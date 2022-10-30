module Codewars.Kata.SplitStrings where

-- split strings into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').
-- splitStrings "abc" `shouldBe` ["ab", "c_"]
-- splitStrings "abcdef" `shouldBe` ["ab", "cd", "ef"]
splitStrings :: String -> [String]
splitStrings [] = []
splitStrings [x] = [[x, '_']]
splitStrings (x:y:xs) = [x, y] : splitStrings xs