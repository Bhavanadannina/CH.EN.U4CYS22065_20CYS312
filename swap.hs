
swapTuple :: (a, b) -> (b, a)
swapTuple (x, y) = (y, x)

main :: IO ()
main = do
    
    putStrLn "Enter the first value:"
    firstValue <- getLine
    
    putStrLn "Enter the second value:"
    secondValue <- getLine
    
    let secondInt = read secondValue :: Int
    
    let first = firstValue
   
    let swapped = swapTuple (first, secondInt)
    
    putStrLn $ "Swapped tuple: " ++ show swapped

