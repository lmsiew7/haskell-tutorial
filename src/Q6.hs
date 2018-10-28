module Q6
    ( q6
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

getName :: Student -> String
getName (Student n _ _) = n

getNames :: [String] -> String
getNames xs = foldr (\x y -> x ++ ", " ++ y) "" xs

q6 :: IO ()
q6 = putStrLn $ "q6. " ++ (show $ getNames (map getName students))

