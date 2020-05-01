n = a `div` length xs
    where
       a = 10
       xs = [1,2,3,4,5]

myLast [] = []
myLast [x] = [x]
myLast (_:xs) = myLast xs

myLast1 xs = head( reverse xs )

myInit xs = take xsLen xs
            where
              xsLen = (length xs)- 1

myInit1 [] = []
myInit1 [_] = []
myInit1 (x:xs) = [x] ++ myInit1 xs 
