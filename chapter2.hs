n = a `div` length xs
    where
       a = 10
       xs = [1,2,3,4,5]

myLast [] = []
myLast [x] = [x]
myLast (x:xs) = myLast xs

myLast1 xs = tail( reverse xs )

myInit xs = take xsLen xs
            where
              xsLen = (length xs)- 1
