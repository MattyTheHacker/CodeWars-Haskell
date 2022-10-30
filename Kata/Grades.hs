module GradeBook (getGrade) where

getGrade :: Double -> Double -> Double -> Char
getGrade x y z
    | ((x + y + z) / 3 ) >= 90 && ((x + y + z) / 3) <= 100 = 'A'
    | ((x + y + z) / 3 ) >= 80 && ((x + y + z) / 3) < 90 = 'B'
    | ((x + y + z) / 3 ) >= 70 && ((x + y + z) / 3) < 80 = 'C'
    | ((x + y + z) / 3 ) >= 60 && ((x + y + z) / 3) < 70 = 'D'
    | ((x + y + z) / 3 ) < 60 = 'F'
    | otherwise = 'F'

getGradeBetter :: Double -> Double -> Double -> Char
getGradeBetter x y z
    | avg >= 90 && avg <= 100 = 'A'
    | avg >= 80 && avg < 90 = 'B'
    | avg >= 70 && avg < 80 = 'C'
    | avg >= 60 && avg < 70 = 'D'
    | avg < 60 && <= 0 = 'F'
    | otherwise = 'F'
    where avg = (x + y + z) / 3