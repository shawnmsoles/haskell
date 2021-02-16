import Data.List
import System.IO

-- Comparison Operators : < > <= >= == 
-- /= (not equal to)
-- Logical Operators : && || not

-- Every if statement must contain an else
doubleEvenNumber y = 
    if (y `mod` 2 /= 0)
        then y
        else y * 2

-- We can use case statements 
getClass :: Int -> String
getClass n = case n of
    5 -> "Go to Kindergarten"
    6 -> "Go to elementary school"
    _ -> "Go some place else"
