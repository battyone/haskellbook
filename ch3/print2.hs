module Print2 where

main :: IO ()
main = do
    putStrLn "Count for four with me:"
    putStr   "one, two, "
    putStr   "three, and, "
    putStrLn "four!"
