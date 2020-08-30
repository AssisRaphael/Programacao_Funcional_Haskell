-- Este programa identifica se dois conjuntos são disjuntos

main :: IO ()
main = 
  do 
    putStrLn "==========================="
    let f = disjunta [1 .. 10] [1 .. 5]
    let g = disjunta [1 .. 5] [6 .. 10]
    let h = disjunta [1 .. 3] [3 .. 5]
    let i = disjunta [1 .. 3] [2]
    putStrLn ("disjunta [1 .. 10] [1 .. 5] = " ++ show f)
    putStrLn ("disjunta [1 .. 5] [6 .. 10] = " ++ show g)
    putStrLn ("disjunta [1 .. 3] [3 .. 5] = " ++ show h)
    putStrLn ("disjunta [1 .. 3] [2] = " ++ show i)

repete :: [Int] -> Bool
repete [] = False
repete (a:x)
  |x /= [b | b <- x, b /= a] = True
  |otherwise = repete x

disjunta :: [Int] -> [Int] -> Bool
disjunta a b = not (repete (a ++ b))