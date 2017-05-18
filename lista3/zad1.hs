main = print (scalarproduct [1,2] [3,4])

scalarproduct :: Num a => [a] -> [a] -> a
scalarproduct xs ys = sum (map times (zip xs ys))
           where times (x, y) = x * y

-- zip   :: [a] -> [b] -> [(a,b)]