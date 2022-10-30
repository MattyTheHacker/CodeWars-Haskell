module Tribonacci where

-- fibonacci sequence but with the last 3 digits as opposed to the last 2
-- tribonacci [1, 1, 1] 10 `shouldBe` [1, 1, 1, 3, 5, 9, 17, 31, 57, 105]
tribonacci :: Num a => (a, a, a) -> Int -> [a]
tribonacci _ n | n < 1 = []
tribonacci (a, b, c) n = take n $ a : tribonacci (b, c, a + b + c) n