import Data.List
import System.IO

-- We can generate a list from 1 to 10 to the power of 3
pow3List = [3^n | n <- [1..10]]

-- We can filter the results to only show values divisible by 9
pow3ListDiv9 = [3^n | n <- [1..10], 3^n `mod` 9 == 0]

-- Generate a multiplication table by multiplying x * y where y has the values
-- 1 through 10 and where x does as well
multTable = [[x * y | y <- [1..10]] | x <- [1..10]]
