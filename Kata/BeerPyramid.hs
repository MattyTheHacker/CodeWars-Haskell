module Beer where
import Data.List
beeramid :: Double -> Double -> Int
beeramid b p = length $ takeWhile (<=b) $ scanl1 (+) [p*n^2 | n<-[1..]]