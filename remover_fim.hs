-- Este programa remove o N últimos números de uma lista

main :: IO ()
main = 
  do 
    putStrLn "==========================="
    let f = removerFim 4 [1 .. 10]
    let g = removerFim 2 [1,2,3,2,1]
    let h = removerFim 1 [1 .. 3]
    putStrLn ("removerFim 4 [1 .. 10] = " ++ show f)
    putStrLn ("removerFim 2 [1,2,3,2,1] = " ++ show g)
    putStrLn ("removerFim 1 [1 .. 3] = " ++ show h)

inverte :: [Int] -> [Int]
inverte [] = []
inverte (a:x) = inverte x ++ [a]

removerFim :: Int -> [Int] -> [Int]
removerFim a x = inverte (removerFimInvertido a (inverte x))

removerFimInvertido :: Int -> [Int] -> [Int]
removerFimInvertido 0 x = x
removerFimInvertido a [] = []
removerFimInvertido a (b:x) = removerFimInvertido (a-1) x