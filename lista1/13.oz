% fun {Append L1 L2}
%	case L1
%	of nil then L2
%	[] H1|T1 then H1|{Append T1 L2}
%  	end
% end
%
% fun {Reverse L}
%	case L 
%	of nil then nil
%	[] H|T then {Append {Reverse T} [H]}
%	end
% end

declare
fun {Append L1 L2}
   {FoldR L1 fun {$ H T} H|T end L2}
end

fun {Reverse L}
   {FoldR L fun {$ H T} {Append T [H]} end nil}
end

{Browse {Reverse {Append [1 2 3] [4 5 6]}}}