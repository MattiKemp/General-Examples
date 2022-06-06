-- Problem: Create a function elem that returns True if an element is in a given list and returns False otherwise
import Data.List
elem::(Eq a) => a -> [a] -> Bool
elem a [] = False
elem a (x:xs) 
    | x==a = True
    | otherwise =  False || Main.elem a xs

-- Video Sol:
-- elem::(Eq a) => a -> [a] -> Bool
-- elem _ [] = False
-- elem e (x:xs) = (e==x) || (elem e xs)

-- Problem: Create a function num that removes all duplicates from a given list
nub::(Eq a) => [a] -> [a]
nub [] = []
nub (x:xs)
    | True == Main.elem x xs = Main.nub xs
    | otherwise = x:Main.nub xs 

-- Problem: Create a function isAsc that returns True if the list given to it is a list of ascending order
isAsc::[Int] -> Bool
isAsc [] = True
isAsc (x:xs) = aux x (x:xs)
    where
        aux::(Ord a, Num a) =>  a -> [a] -> Bool
        aux _ [] = True
        aux a (x:xs)
            | a<=x = True && aux x xs
            | otherwise = False 

-- Given Sol: 
-- isAsc::[Int] -> Bool
-- isAsc [] = True
-- isAsc [x] = True
-- isAsc (x:y:xs) = (x <= y) && isAsc (y:xs)

-- Problem: Create a function hasPath that determines if a path from one node to another exists within a directed graph.
-- hasPath::[(Int,Int)] -> Int -> Int -> Bool 
-- hasPath (x:xs) a b
--    | 

-- Given Sol:
-- hasPath::[(Int,Int)] -> Int -> Int -> Bool
-- hasPath [] x y = x == y
-- hasPath xs x y
-- | x == y = True
-- | otherwise = 
--  let xs' = [(n,m) | (n,m) <- xs, n /= x] in or [hasPath xs' m y | (n,m) <- xs, n == x]
hasPath::[(Int,Int)] -> Int -> Int -> Bool
hasPath [] x y = x == y
hasPath xs x y
    | x == y = True
    | otherwise = 
    let xs' = [(n,m) | (n,m) <- xs, n /= x] in or [hasPath xs' m y | (n,m) <- xs, n == x]

main = do
    putStrLn "list excerise main"
    putStrLn "5 in [1,2,3,4,5]:"
    let test1 = if Main.elem 5 [1,2,3,4,5] then "TRUE" else "FALSE"
    putStrLn ("result: " ++ test1 ++ ".")
    let test2 = if Main.elem 6 [1,2,3,4,5] then "TRUE" else "FALSE"
    putStrLn ("result: " ++ test2 ++ ".")

    putStrLn "remove duplicates of [1,1,2,3,4,5,3]"
    let test3 = Main.nub [1,1,2,3,4,5,3]
    putStrLn $ show test3

    putStrLn "is [1,1,2,2,2,3,4] ascending order"
    let test4 = Main.isAsc [1,1,2,2,2,3,4]
    putStrLn $ show test4
    putStrLn "is [1,1,2,2,2,3,4,2] ascending order"
    let test5 = Main.isAsc [1,1,2,2,2,3,4,2]
    putStrLn $ show test5

    putStrLn "path from 1->3 in [(1,2),(2,3),(3,2),(4,3),(4,5)]"
    let test6 =  if Main.hasPath [(1,2),(2,3),(3,2),(4,3),(4,5)] 1 3 then "TRUE" else "FALSE"
    putStrLn ("result: " ++ test6 ++ ".")
    putStrLn "path from 5->4 in [(1,2),(2,3),(3,2),(4,3),(4,5)]"
    let test7 =  if Main.hasPath [(1,2),(2,3),(3,2),(4,3),(4,5)] 5 4 then "TRUE" else "FALSE"
    putStrLn ("result: " ++ test7 ++ ".")

