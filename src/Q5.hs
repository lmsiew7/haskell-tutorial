module Q5
    ( q5
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

q5 :: IO ()
q5 = putStrLn $ "q5. " ++ (show $ foldr (\x y -> x + y) 0 (map getAge students))

