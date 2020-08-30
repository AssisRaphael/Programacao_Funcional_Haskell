-- Este programa calcula uma potência

main :: IO ()
main = 
  do 
    putStrLn "==========================="
    let f = potencia 2 3
    let g = potencia 3 3
    let h = potencia 4 10
    let i = potencia 5 3
    putStrLn ("2 ^ 3 = " ++ show f)
    putStrLn ("3 ^ 3 = " ++ show g)
    putStrLn ("4 ^ 10 = " ++ show h)
    putStrLn ("5 ^ 3 = " ++ show i)

potencia :: Int -> Int -> Int
potencia x 0 = 1
potencia x y = x * potencia x (y-1)