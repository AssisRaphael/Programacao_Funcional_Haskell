-- Dada uma lista de números, esse programa retorna uma lista em que cada itém contem a soma
-- De todos os números até aquela posição. Por exemplo: somaParcial [1 .. 10] = [1,3,6,10,15,21,28,36,45,55]

main :: IO ()
main = 
  do 
    putStrLn "==========================="
    let f = somaParcial [1 .. 10]
    let g = somaParcial [1,2,3,2,1]
    let h = somaParcial [1 .. 3]
    putStrLn ("somaParcial [1 .. 10] = " ++ show f)
    putStrLn ("somaParcial [1,2,3,2,1] = " ++ show g)
    putStrLn ("somaParcial [1 .. 3] = " ++ show h)

inverte :: [Int] -> [Int]
inverte [] = []
inverte (a:x) = inverte x ++ [a]

somaParcial :: [Int] -> [Int]
somaParcial [] = []
somaParcial x = inverte (somaParcialInvertido (inverte x))

somaParcialInvertido :: [Int] -> [Int]
somaParcialInvertido [] = []
somaParcialInvertido (a:x) = ([somatorio (a:x)] ++ somaParcialInvertido x)

somatorio :: [Int] -> Int
somatorio [] = 0
somatorio (a:x) = a + somatorio x