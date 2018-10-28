module Q7
    ( q7
    ) where

import Data.List (sortBy)
import Data.Ord (comparing)

data Student = Student
    String String Int
    deriving (Show)

students :: [Student]
students = [Student "A" "M" 12,
           Student "B" "F" 13,
           Student "C" "F" 14,
           Student "D" "M" 15,
           Student "E" "M" 16,
           Student "F" "F" 14,
           Student "G" "F" 15,
           Student "H" "F" 12,
           Student "I" "M" 13]

compareAge :: Student -> Student -> Ordering
compareAge (Student _ _ a) (Student _ _ b)
     | a < b     = LT
     | a == b    = EQ
     | otherwise = GT

getAge :: Student -> Int
getAge (Student _ _ age) = age

q7 :: IO ()
q7 = putStrLn $ "q7. " ++ (show $ map getAge (sortBy compareAge students))

