arc(a, b).
arc(a, d).
arc(b, c).
arc(b, e).
arc(c, f).
arc(d, e).
arc(d, g).
arc(e, f).
arc(e, h).
arc(f, i).
arc(g, h).
arc(h, i).
arc(g, a).

path(A,B) :-   
  travel(A,B,[]) 
  .            

travel(A,B,Visited) :-       
  arc(A,X) ,
  \+(member(X,Visited)) ,
  (                  
    B = X;
    travel(X,B,[A|Visited]) 
  )                  
  .

