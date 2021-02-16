import Data.List
import System.IO

-- Num, Eq, Ord and Show are type classes
-- Type classes correspond to sets of types which have certain operations 
-- defined for them.
-- Polymorphic functions, which work with multiple parameter types, define
-- the types it works with through the use of type classes
-- For example (+) works with parameters of the type Num
-- :t (+) = Num a => a -> a -> a
-- This says that for any type a, as long as a is an instance of Num, + can take
-- 2 values and return an a of type Num

-- Create an Employee and add the ability to check if they are equal
data Employee = Employee { name :: String,
                            position :: String,
                            idNum :: Int
                            } deriving (Eq, Show)

samSmith = Employee {name = "Sam Smith", position = "Manager", idNum = 1000}
pamMarx = Employee {name = "Pam Marx", position = "Sales", idNum = 1001}

isSamPam = samSmith == pamMarx

-- We can print out data because of show
samSmithData = show samSmith

-- Make a type instance of the typeclass Eq and Show
data ShirtSize = S | M | L

instance Eq ShirtSize where
	S == S = True
	M == M = True
	L == L = True
	_ == _ = False

instance Show ShirtSize where
	show S = "Small"
	show M = "Medium"
	show L = "Large"
	
-- Check if S is in the list
smallAvail = S `elem` [S, M, L]

-- Get string value for ShirtSize
theSize = show S

-- | --------------------------------------------------
-- | --------------------------------------------------
-- Define a custom typeclass that checks for equality
-- a represents any type that implements the function areEqual
class MyEq a where
    areEqual :: a -> a -> Bool

-- Allow Bools to check for equality using areEqual
instance MyEq ShirtSize where
    areEqual S S = True
    areEqual M M = True
    areEqual L L = True
    areEqual _ _ = False

newSize = areEqual M M
