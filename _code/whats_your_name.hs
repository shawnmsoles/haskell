import Data.List
import System.IO

-- main is a function that can be called in the terminal with main
main = do
    -- Prints the string with a new line
    putStrLn "What's your name: "

    -- Gets user input and stores it in name
    -- <- Pulls the name entered from an IO action
    name <- getLine

    putStrLn ("Hello " ++ name)
