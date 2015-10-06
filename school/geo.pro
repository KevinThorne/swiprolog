%Excerpt from Prolog Programming in Depth
%
%File GEO.PRO
%Sample geographical knowledge base


/*Exercise 1.4.2 ->*/ located_in(south_jordan, utah).
/*Clause 1*/ located_in(atlanta,georgia).
/*Clause 2*/ located_in(housten,texas).
/*Clause 3*/ located_in(austin, texas).
/*Clause 4*/ located_in(toronto, ontario).
/*I think you get it by now*/ located_in(X,usa) :- located_in(X, georgia).
located_in(X,usa) :- located_in(X,texas).
/*Exercise 1.4.2 ->*/located_in(X, usa) :- located_in(X, utah).
located_in(X,canada) :- located_in(X, ontario).
located_in(X, north_america) :- located_in(X, usa).
located_in(X, north_america) :- located_in(X, canada).
