halve :: [a] -> ([a],[a])
halve xs = ( firstOnes, lastOnes )
           where
              middle = length xs `div` 2
              firstOnes = take middle xs
              lastOnes = drop middle xs

third1 :: [a] -> a
third1 xs = head (tail (tail xs))

third2 xs = xs !! 2

third3 (_:_:x:_) = x

safetail1 :: [a] -> [a]
safetail1 xs = if null xs then [] else tail xs 

safetail2 xs | null xs   = []
             | otherwise = tail xs

safetail3 [] = []
safetail3 [x] = []
safetail3 (x:xs) = xs

(||) :: Bool -> Bool -> Bool
True || _ = True
_ || True = True
False || False = False

or :: Bool -> Bool -> Bool
or a b = if a && b then True 
         else False

mult :: Int -> (Int -> (Int -> Int))
mult = \x -> (\y -> (\z -> x*y*z))

luhnDouble :: Int -> Int
luhnDouble n | n * 2 > 9 = n * 2 -9
             | otherwise = n * 2 

luhn :: Int -> Int -> Int -> Int -> Bool
luhn x y z v = result `mod` 10 > 0
               where
                  result = resultX + resultY + resultZ
                  resultX = luhnDouble x
                  resultY = luhnDouble y
                  resultZ = luhnDouble z
