-- Dado um número N este programa retorna quais moedas compõem
-- o menor troco possível. As moedas são de 100, 50, 10, 5 e 1.

main :: IO ()
main = 
  do 
    putStrLn "==========================="
    let f = troco 5
    let g = troco 201
    let h = troco 256
    let i = troco 69
    putStrLn ("troco 5 = " ++ show f)
    putStrLn ("troco 201 = " ++ show g)
    putStrLn ("troco 256 = " ++ show h)
    putStrLn ("troco 69 = " ++ show i)

troco :: Int -> [Int]
troco 0 = []
troco x 
  |x >= 100 = troco (x-100) ++ [100]
  |x >= 50 = troco (x-50) ++ [50]
  |x >= 10 = troco (x-10) ++ [10]
  |x >= 5 = troco (x-5) ++ [5]
  |x >= 1 = troco (x-1) ++ [1]