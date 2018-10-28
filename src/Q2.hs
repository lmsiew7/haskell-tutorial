{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeSynonymInstances #-}

module Q2
    ( q2
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
filterGender (Student _ gender) = gender == "M"

q2 :: IO ()
q2 = putStrLn $ "q2. " ++ (show $ filter filterGender students)
