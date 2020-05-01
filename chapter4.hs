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
