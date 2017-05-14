main = print (split [1,2,3,4,5])

split :: Num a => [a] -> ([a], [a])
split xs =
    let xis = (zip xs (cycle [0,1])) in
        ([ fst xi | xi <- xis, snd xi == 0], [ fst xi | xi <- xis, snd xi == 1])
