import Data.List
import System.IO

-- You can store multiple values sort of like a struct
-- to create custom types
data Customer = Customer String String Double
    deriving Show

-- Define Customer and its values
tomSmith :: Customer
tomSmith = Customer "Tom Smith" "123 Main St" 20.50

-- Define how we'll find the right customer (By Customer)
-- and the return value
getBalance :: Customer -> Double
getBalance (Customer _ _ b) = b

tomSmithBal = print (getBalance tomSmith)

-- We can define a type with all possible values
data RPS = Rock | Paper | Scissors

shoot :: RPS -> RPS -> String
shoot Paper Rock = "Paper Beats Rock"
shoot Rock Scissors = "Rock Beats Scissors"
shoot Scissors Paper = "Scissors Beat Paper"
shoot Scissors Rock = "Scissors Loses to Rock"
shoot Paper Scissors = "Paper Loses to Scissors"
shoot Rock Paper = "Rock Loses to Paper"
shoot _ _ = "Error"

-- We could define 2 versions of a type
-- First 2 floats are center coordinates and then radius for Circle
-- First 2 floats are for upper left hand corner and bottom right hand corner 
-- for the Rectangle
data Shape = Circle Float Float Float | Rectangle Float Float Float Float
    deriving (Show)

-- :t Circle = Float -> Float -> Float -> Shape

-- Create a function to calculate area of shapes
area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x y x2 y2) = (abs (x2 - x)) * (abs (y2 -y))

-- Could also be area (Rectangle x y x2 y2) = (abs $ x2 - x) * (abs $ y2 -y)
-- $ means that anything that comes after it will take precedence over anything 
-- that comes before (Alternative to adding parentheses)

-- The . operator allows you to chain functions 
-- to pass output on the right to
-- the input on the left
-- sumValue = putStrLn (show (1 + 2)) becomes
sumValue = putStrLn . show $ 1 + 2

-- Get area of shapes
areaOfCircle = area (Circle 50 60 20)
areaOfRectangle = area $ Rectangle 10 10 100 100
