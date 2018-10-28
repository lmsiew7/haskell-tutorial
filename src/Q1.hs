{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeSynonymInstances #-}

module Q1
    ( q1
    ) where

data Student = Student
    String String
    deriving (Show)

foo :: Integer -> Integer
foo a =
  b where
    b = a * 2

xxx :: [Student]
xxx = [Student "A" "M",
       Student "B" "F",
       Student "C" "F",
       Student "D" "M",
       Student "E" "M",
       Student "F" "F",
       Student "G" "F",
       Student "H" "F",
       Student "I" "M"]

get :: Student -> String
get (Student _ gender) = gender

q1 :: IO ()
q1 = putStrLn $ show $ map get xxx
