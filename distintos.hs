-- Este programa identifica se um número está repetido em um vetor

main :: IO ()
main = 
  do 
    putStrLn "==========================="
    let f = repete [1 .. 10]
    let g = repete ([1 .. 5] ++ [2])
    let h = repete ([1 .. 3] ++ [2])
    let i = repete [1 .. 50]
    putStrLn ("repete [1 .. 10] = " ++ show f)
    putStrLn ("repete [1 .. 5] ++ [2] = " ++ show g)
    putStrLn ("repete [1 .. 3] ++ [2] = " ++ show h)
    putStrLn ("repete [1 .. 50] = " ++ show i)

repete :: [Int] -> Bool
repete [] = False
repete (a:x)
  |x /= [b | b <- x, b /= a] = True
  |otherwise = repete x