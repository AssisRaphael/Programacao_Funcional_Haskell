-- Dados dois números x,y e uma lista, este programa substitui todas as
-- ocorrências de x por y.

main :: IO ()
main = 
  do 
    putStrLn "==========================="
    let f = substituir 5 3 [1 .. 10]
    let g = substituir 1 3 [1,2,3,1,2,3]
    let h = substituir 2 3 [1 .. 10]
    let i = substituir 0 1 [1,0,1,0,1,0]
    putStrLn ("substituir 5 3 [1 .. 10] = " ++ show f)
    putStrLn ("substituir 1 3 [1,2,3,1,2,3 = " ++ show g)
    putStrLn ("substituir 2 3 [1 .. 10] = " ++ show h)
    putStrLn ("substituir 0 1 [1,0,1,0,1,0] = " ++ show i)

substituir :: Int -> Int -> [Int] -> [Int]
substituir n m [] = []
substituir n m (a:x)
  |a == n = m : (substituir n m x)
  |otherwise = a : (substituir n m x)