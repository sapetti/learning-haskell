sum100PowNumbers = sum [n^2 | n <- [1..100]]

grid :: Int -> Int -> [(Int, Int)]
grid m n = [ (x, y) | x <- [0..m], y <- [0..n] ]

square :: Int -> [(Int, Int)]
square n = [(x, y) | x <- [0..n], y <- [0..n], x /= y]

replicate :: Int -> a -> [a]
replicate n a = [a | _ <- [0..n-1]]

pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], x == sum (init (factors x))]

find :: Eq a => a -> [(a,b)] -> [b]
find k t = [v | (k',v) <- t, k == k']
 
positions :: Eq a => a -> [a] -> [Int]
positions x xs = [i | i <- find x (zip xs [0..])]

scalarproduct :: [Int] -> [Int] -> Int
scalarproduct xs ys = sum [n*m | (n,m) <- (zip xs ys)] 
