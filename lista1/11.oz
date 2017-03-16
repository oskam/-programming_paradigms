define
  fun {Iteration Reversed Left}
    case Left
    of nil then Reversed
    [] Head|Tail then {Iteration Head|Reversed Tail}
    end
  end
in
  fun {Reverse L}
    {Iteration nil L}
  end
end

declare
L=[a b c d e]


{Browse {Reverse L}}
