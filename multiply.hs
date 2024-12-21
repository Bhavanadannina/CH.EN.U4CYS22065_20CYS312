
multiplyElements :: Num a => [a] -> a -> [a]
multiplyElements xs n = [x * n | x <- xs]


main :: IO ()
main = do
    
    putStrLn "No of values in the list"
    numStr <- getLine
    let num = read numStr :: Int  
    
    
    putStrLn $ "Enter " ++ show num ++ " numbers:"
    input <- getLine
    let numList = take num $ map read (words input)  :: [Int]
    
    putStrLn "Enter a multiplier:"
    multiplierStr <- getLine
    let multiplier = read multiplierStr :: Int
    
    let result = multiplyElements numList multiplier
   
    putStrLn $ "Result: " ++ show result

