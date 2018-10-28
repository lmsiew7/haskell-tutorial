module Q3
    ( q3
    ) where

data Student = Student
    String String
    deriving (Show)

students :: [Student]
students = [Student "A" "M",
           Student "B" "F",
           Student "C" "F",
           Student "D" "M",
           Student "E" "M",
           Student "F" "F",
           Student "G" "F",
           Student "H" "F",
           Student "I" "M"]

filterGender :: Student -> Bool
filterGender (Student _ gender) = gender == "F"

q3 :: IO ()
q3 = putStrLn $ "q3. " ++ (show $ length $ filter filterGender students)

