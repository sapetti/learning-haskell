myProduct [] = 1
myProduct (n:ns) = n * myProduct(ns)

qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ larger
               where 
                   smaller = [ a | a <- xs, a < x ]
                   larger  = [ b | b <- xs, b > x ]
