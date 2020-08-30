-- Este programa converte um número para binário

main :: IO ()
main = 
  do 
    putStrLn "Converte para binario"
    putStrLn "==========================="
    let f = binario 5
    let g = binario 10
    let h = binario 28
    let i = binario 4
    putStrLn ("binario 5 = " ++ show f)
    putStrLn ("binario 10 = " ++ show g)
    putStrLn ("binario 28 = " ++ show h)
    putStrLn ("binario 4 = " ++ show i)

binario :: Int -> [Int]
binario 0 = [0]
binario 1 = [1]
binario n = binario (n `div` 2) ++ [n `mod` 2]