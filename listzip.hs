listZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
listZipWith _ [] [] = []
listZipWith f (x:xs) (y:ys) = f x y : listZipWith f xs ys
listZipWith _ _ _ = []

readLst :: Int -> IO [Int]
readLst n = do
    putStrLn $ "Enter " ++ show n ++ " numbers (space-separated):"
    input <- getLine
    let numList = take n $ map read (words input) :: [Int]
    return numList

main :: IO ()
main = do
    putStrLn "Enter number of elements for the first list:"
    n1Str <- getLine
    let n1 = read n1Str :: Int

    l1 <- readLst n1

    putStrLn "Enter number of elements for the second list:"
    n2Str <- getLine
    let n2 = read n2Str :: Int

    l2 <- readLst n2
    
    if n1 == n2
        then do
            let res = listZipWith (+) l1 l2
            putStrLn $ "Result: " ++ show res
        else
            putStrLn "The lists have different lengths."

