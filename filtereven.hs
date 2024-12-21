filterEven :: [Int] -> [Int]
filterEven xs = filter (not . even) xs

main :: IO ()
main = do
    putStrLn "No of values in the list:"
    numStr <- getLine
    let num = read numStr :: Int
    
    putStrLn $ "Enter " ++ show num ++ " numbers:"
    input <- getLine
    let numList = take num $ map read (words input) :: [Int]
    
    let result = filterEven numList
    putStrLn $ "Filtered list : " ++ show result

