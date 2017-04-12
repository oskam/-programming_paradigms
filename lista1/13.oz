declare
    fun {Append L1 L2}
        {FoldR L1 fun {$ H T} H|T end L2}
    end
    fun {Reverse L}
        {FoldL L fun {$ H T} T|H end nil}
    end

    {Browse {Reverse {Append [1 2 3] [4 5 6]}}}
