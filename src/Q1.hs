{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeSynonymInstances #-}

module Q1
    ( q1
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

getGender :: Student -> String
getGender (Student _ gender) = gender

q1 :: IO ()
q1 = putStrLn $ "q1. " ++ (show $ map getGender students)
