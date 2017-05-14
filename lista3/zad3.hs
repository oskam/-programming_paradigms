import Data.List (delete)

main = print (permutacje [1..3])

permutacje :: Eq a => [a] -> [[a]]
permutacje [] = [[]]
permutacje xs = [ x : ys | x <- xs, ys <- permutacje (delete x xs)]
