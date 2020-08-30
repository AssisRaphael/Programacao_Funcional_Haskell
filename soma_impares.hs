-- Dada uma sequencia este programa calcula a soma de seus números ímpares

main :: IO ()
main = 
  do 

    putStrLn "==========================="
    let f = somatorioImpar [1 .. 10]
    let g = somatorioImpar [1 .. 20]
    let h = somatorioImpar [1 .. 30]
    let i = somatorioImpar [1 .. 40]
    putStrLn ("somatorioImpar [1 .. 10] = " ++ show f)
    putStrLn ("somatorioImpar [1 .. 20] = " ++ show g)
    putStrLn ("somatorioImpar [1 .. 30] = " ++ show h)
    putStrLn ("somatorioImpar [1 .. 40] = " ++ show i)

impar :: Int -> Bool
impar x 
  | x `mod` 2 == 0 = False
  | otherwise = True

somatorioImpar :: [Int] -> Int
somatorioImpar [] = 0
somatorioImpar (a:x)
  |impar a = a + somatorioImpar x
  |otherwise = somatorioImpar x