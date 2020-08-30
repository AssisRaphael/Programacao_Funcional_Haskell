-- Este programa identifica se um número é perfeito

main :: IO ()
main = 
  do 
    putStrLn "==========================="
    let f = perfeito 5
    let g = perfeito 10
    let h = perfeito 28
    let i = perfeito 4
    putStrLn ("perfeito 5 = " ++ show f)
    putStrLn ("perfeito 10 = " ++ show g)
    putStrLn ("perfeito 28 = " ++ show h)
    putStrLn ("perfeito 4 = " ++ show i)

divisivel :: Int -> [Int] -> [Int]
divisivel n [] = []
divisivel n (a:x)
  |n `mod` a == 0 = a:(divisivel n x)
  |otherwise = divisivel n x

somatorio :: [Int] -> Int
somatorio [] = 0
somatorio (a:x) = a + somatorio x

perfeito :: Int -> Bool
perfeito x
  |x == somatorio(divisivel x [1 .. x-1]) = True
  |otherwise = False