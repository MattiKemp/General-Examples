main = do
    putStrLn "folding excerises"
    putStrLn "reverse [1,2,3,4,5]"
    let test1 = Main.rev [1,2,3,4,5]
    putStrLn $ show test1

    putStrLn "test map [1,2,3]"
    let test3 = Main.testmap [1,2,3]
    putStrLn $ show test3
    
    
    putStrLn "prefixes [1,2,3]"
    let test2 = Main.prefixes [1,2,3]
    putStrLn $ show test2

    putStrLn "lagrange interpol [(1,1),(2,2),(3,3)] 4"
    let test4 = Main.lagrange [(1,1),(2,2),(3,3)] 4
    putStrLn $ show test4

    putStrLn "lagrange interpol x^2 [(-3,9),(-2,4),(-1,1),(0,0),(1,1),(2,4),(3,9)] 5"
    let test5 = Main.lagrange [(-3,9),(-2,4),(-1,1),(0,0),(1,1),(2,4),(3,9)] 5
    putStrLn $ show test5

    putStrLn "lagrange interpol sin(x) [(0,0),(.5,.479),(1.5707,1),(3.141,0),(4,-.757),(4.7123,-1)] 5"
    let test6 = Main.lagrange [(0,0),(0.5,0.479),(1.5707,1),(3.141,0),(4,(-0.757)),(4.7123,(-1))] 5
    putStrLn $ show test6

--Create a function rev that reverses a list
rev :: [a] -> [a]
rev = foldl (\acc elem -> elem : acc) []

--Create a function prefixes that returns all the prefixes of a given list
--prefixes [1,2,3] -> [[1],[1,2],[1,2,3]]
testmap :: (Num a) => [a] -> [[a]]
testmap e = map (\x -> x : e) e 
prefixes :: [a] -> [[a]]
-- I have no idea how the (:) operator works in this
-- answer 
prefixes = foldr (\elem acc -> [elem] : (map ((:) elem)  acc)) []

--Create interpolation polynomial in the lagrange form
lagrange :: [(Float, Float)] -> Float -> Float
lagrange k xp = foldr (\(x,y) acc -> acc + y * foldr(\(x1,_) acc1 -> if x/=x1 then acc1 * (xp-x1)/(x-x1) else acc1) 1 k) 0 k

-- Create a fold on preorder traversal on prefix tree
data Trie a = Leaf a | Node a [Trie a]
foldtrie :: (b -> a -> b) -> b -> Trie a -> b
-- Answer
foldtrie f acc (Leaf x) = f acc x
foldtrie f acc (Node x xs) = foldl f' (f acc x) xs
    where
        f' acc t = foldtrie f acc t
        
