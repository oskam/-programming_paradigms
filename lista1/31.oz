decal
    fun {NewPortObject Proc}
        Sin
    in
        thread for Msg in Sin do {Proc Msg} end end
        {NewPort Sin}
    end
    fun {Rozmowca Fun Interlokutor}
        {NewPortObject
            proc {$ Msg}
                {Browse Msg}
                {Delay 1000}
                {Send Interlokutor {Fun Msg}}
            end
        }
    end
    R1 R2

    R1 = {Rozmowca fun {$ X} X+1 end R2}
    R2 = {Rozmowca fun {$ X} X-1 end R1}
    {Send R1 0}
