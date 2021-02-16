import Data.List
import System.IO

-- Int -2^63 to 2^63
maxInt = maxBound :: Int
-- 9223372036854775807
minInt = minBound :: Int
-- -9223372036854775808

-- Integer : unbounded whole number

-- float : single precision floating point number
-- double : double precision floating point number (11 point precision)
bigFloat = 3.99999999999 + 0.00000000005
-- bigFloat = 3.999999999909 + 0.000000000105

-- Bool : True or False
-- Char : Single unicode character denoted with single quotes
-- Tuple : Can store a list made up of many data types

-- You declare the permanent value of a variable like this
always5 :: Int
always5 = 5 