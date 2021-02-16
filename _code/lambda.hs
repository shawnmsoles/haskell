import Data.List
import System.IO

-- How we create functions without a name
-- \ represents lambda then you have the arguments -> and result

dbl1To10 = map (\x -> x * 2) [1..10]
