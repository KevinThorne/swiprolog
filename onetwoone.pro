%Exercises 1.2
%
%
%Exercise 1.2.1
% Includes 1 fact, 1 rule, 1 clause, 1-place predicate, predicate
% w/arity:2


thorne(kevin).
name(kevin, thorne).

in_thorne_family(X) :- in_thornejohnson_family(X).
in_thornejohnson_family(kevin).


%Exercise 1.2.2
% Includes "fact that represents "in" as a relation between Atlanta and
% Georgia

state(georgia).
city(atlanta, georgia).

%Exercise 1.2.3
% Includes representing latitude 34 north and longitude 84 west as the
% location of Atlanta

longitude(west,east).
latitude(north,south).
atlanta_location(latitude/1, 34, longitude/1, 84).

%Exercise 1.4.* is located in geo.pl
%
%
