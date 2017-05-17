-module(pythag).
-export([pythag/1]).

pythag(D) ->
  [{A, B, C} ||
    A <- lists:seq(1,D div 3),     
    B <- lists:seq(A+1,D div 2),    
    C <- [D-A-B],
    A*A + B*B =:= C*C
].

% %działa ale powoli:
% pythag(N) -> 
%   [ {A, B, C} || A <- lists:seq(1,N), 
%                  B <- lists:seq(1,N), 
%                  C <- lists:seq(1,N),
%                  A < B,
% 				 B < C,
% 				 A + B + C =:= N,
% A*A + B*B =:= C*C ].

