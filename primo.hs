-- Este programa identifica se um número é primo

main :: IO ()
main = 
  do 
    putStrLn "==========================="
    let f = primo 5
    let g = primo 10
    let h = primo 17
    let i = primo 4
    putStrLn ("primo 5 = " ++ show f)
    putStrLn ("primo 10 = " ++ show g)
    putStrLn ("primo 17 = " ++ show h)
    putStrLn ("primo 4 = " ++ show i)

primu :: [Int] -> Int -> Bool
primu x 3 = True
primu x 2 = True
primu x 1 = True
primu [] n = True
primu (a:x) n
  |n `mod` a == 0 = False
  |otherwise = primu x n

primo :: Int -> Bool
primo n = primu [2 .. n-1] n