-- Dados dois vetores, este programa os intercala

main :: IO ()
main = 
  do 
    putStrLn "==========================="
    let f = intercalar [11 .. 16] [1 .. 10]
    let g = intercalar [4 .. 8] [1 .. 7]
    let h = intercalar [7,8,10,19,32] [1 .. 3]
    putStrLn ("intercalar [11 .. 16] [1 .. 10] = " ++ show f)
    putStrLn ("intercalar [4 .. 8] [1 .. 7] = " ++ show g)
    putStrLn ("intercalar [7,8,10,19,32] [1 .. 3] = " ++ show h)

intercalar :: [Int] -> [Int] -> [Int]
intercalar [] [] = []
intercalar [] y = y
intercalar x [] = x
intercalar (a:x) (b:y)
  |a < b = [a] ++ [b] ++ (intercalar x y)
  |b < a = [b] ++ [a] ++ (intercalar x y)
