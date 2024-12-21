avgMarks :: [Int] -> Float
avgMarks [] = 0
avgMarks xs = fromIntegral (sum xs) / fromIntegral (length xs)

readStudent :: IO (String, Int, [Int])
readStudent = do
    putStrLn "Enter student name:"
    name <- getLine
    putStrLn "Enter roll number:"
    roll <- getLine
    putStrLn "Enter number of subjects:"
    n <- getLine
    let nInt = read n :: Int
    putStrLn $ "Enter " ++ show nInt ++ " marks (space-separated):"
    marks <- getLine
    return (name, read roll :: Int, map read (words marks) :: [Int])

readStudents :: Int -> IO [(String, Int, [Int])]
readStudents 0 = return []
readStudents n = do
    student <- readStudent
    rest <- readStudents (n - 1)
    return (student : rest)

main :: IO ()
main = do
    putStrLn "Enter number of students:"
    nStr <- getLine
    let n = read nStr :: Int
    students <- readStudents n
    let avgResults = [(name, avgMarks marks) | (name, _, marks) <- students]
    mapM_ (\(name, avg) -> putStrLn $ name ++ ": " ++ show avg) avgResults

