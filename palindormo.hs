-- Este programa identifica se uma lista é um palindromo

main :: IO ()
main = 
  do 
    putStrLn "==========================="
    let f = palindromo [1 .. 10]
    let g = palindromo [1,2,3,2,1]
    let h = palindromo [1 .. 3]
    putStrLn ("palindromo [1 .. 10] = " ++ show f)
    putStrLn ("palindromo [1,2,3,2,1] = " ++ show g)
    putStrLn ("palindromo [1 .. 3] = " ++ show h)

inverte :: [Int] -> [Int]
inverte [] = []
inverte (a:x) = inverte x ++ [a]

palindromo :: [Int] -> Bool
palindromo x = (inverte x) == x