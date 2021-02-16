import Data.List
import System.IO

-- Used when you want a list of possible types
-- Provide name, a list and then Show converts into a String for printing

data BaseballPlayer = Pitcher
                    | Catcher
                    | Infield
                    | Outfield
                deriving Show

barryBonds :: BaseballPlayer -> Bool
barryBonds Outfield = True

barryInOF = print(barryBonds Outfield)
