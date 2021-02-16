import Data.List
import System.IO

-- Stores list of multiple data types, but has a fixed size

randTuple = (1,"Random tuple")

-- A tuple pair stores 2 values
bobSmith = ("Bob Smith",52)

-- Get the first value
bobsName = fst bobSmith

-- Get the second value
bobsAge = snd bobSmith

-- zip can combine values into tuple pairs 
names = ["Bob","Mary","Tom"]
addresses = ["123 Main","234 North","567 South"]

namesNAddress = zip names addresses 
