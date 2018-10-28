module Q4
    ( q4
    ) where

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

getAge :: Student -> Int
getAge (Student _ _ age) = age

q4 :: IO ()
q4 = putStrLn $ "q4. " ++ (show $ map getAge students)

