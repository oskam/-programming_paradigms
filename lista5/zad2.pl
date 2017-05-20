%% jednokrotnie(X, L) :- 
%% select(X,L,Z),
%% \+ member(X,Z).

%% dwukrotnie(X, L) :-
%% select(X,L,Y),
%% jednokrotnie(X,Y).

jednokrotnie(X,[X|Z]) :- 
\+ member(X,Z).

jednokrotnie(X,[Y|Z]) :-
\+ X=Y,
member(X,Z),
jednokrotnie(X,Z).

