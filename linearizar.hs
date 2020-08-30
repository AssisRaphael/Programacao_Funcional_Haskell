--Este programa concatena um conjunto de listas de N dimensões em uma única lista de 1 dimensão

main :: IO ()
main = 
  do 
    putStrLn "==========================="
    let f = linearizar [[1],[2,3,1,2]]
    let g = linearizar [[2,3,5],[0],[5]]
    let h = linearizar [[25,3,6,9]]
    putStrLn ("linearizar [[1],[2,3,1,2]] = " ++ show f)
    putStrLn ("linearizar [[2,3,5],[0],[5]] = " ++ show g)
    putStrLn ("linearizar [[25,3,6,9]] = " ++ show h)

linearizar :: [[Int]] -> [Int]
linearizar [] = []
linearizar (a:x) = a ++ linearizar x