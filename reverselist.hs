revLst :: [a] -> [a]
revLst [] = []
revLst (x:xs) = revLst xs ++ [x]

readLst :: Int -> IO [Int]
readLst 0 = return []
readLst n = do
    x <- getLine
    xs <- readLst (n - 1)
    return (read x : xs)

main :: IO ()
main = do
    putStrLn "Enter list size:"
    nStr <- getLine
    let n = read nStr :: Int

    putStrLn $ "Enter " ++ show n ++ " numbers :"
    lst <- readLst n

    let result  = revLst lst
    putStrLn $ "Reversed list: " ++ show result

