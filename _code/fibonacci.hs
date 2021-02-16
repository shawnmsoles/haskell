import Data.List
import System.IO

-- Calculate the Fibonacci Sequence
-- 1, 1, 2, 3, 5, 8, ...

-- 1 : 1 : says to add two 1s to the beginning of a list
-- | for every (a, b) add them
-- <- stores a 2 value tuple in a and b
-- tail : get all list items minus the first
-- zip creates pairs using the contents from 2 lists being the lists fib and the 
-- list (tail fib)

fib = 1 : 1 : [a + b | (a, b) <- zip fib (tail fib) ]

-- First time through fib = 1 and (tail fib) = 1
-- The list is now [1, 1, 2] because a: 1 + b: 1 = 2

-- The second time through fib = 1 and (tail fib) = 2
-- The list is now [1, 1, 2, 3] because a: 1 + b: 2 = 3

fib300 = fib !! 300 -- Gets the value stored in index 300 of the list

-- take 20 fib returns the first 20 Fibonacci numbers
