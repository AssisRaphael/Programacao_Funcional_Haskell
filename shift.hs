-- Este programa desloca os ítens de um vetor em N posições

main :: IO ()
main = 
  do 
    putStrLn "==========================="
    let f = shift 4 [1 .. 10]
    let g = shift 2 [1,2,3,2,1]
    let h = shift 1 [1 .. 3]
    putStrLn ("shift 4 [1 .. 10] = " ++ show f)
    putStrLn ("shift 2 [1,2,3,2,1] = " ++ show g)
    putStrLn ("shift 1 [1 .. 3] = " ++ show h)

shift :: Int -> [Int] -> [Int]
shift 0 x = x
shift a [] = []
shift a (b:x) = shift (a-1) (x ++ [b])