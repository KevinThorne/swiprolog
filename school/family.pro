% File FAMILY.PRO
% Part of a family expressed in Prolog

%In father/2, mother/2, and parent/2,
%first arg. is parent and second arg. is child


father(michael, cathy).
father(michael,sharon).
father(charles_gordon,michael).
father(charles_gordon,julie).
father(charles,charles_gordon).
father(jim,melody).
father(jim,crystal).
father(elmo,jim).
father(greg,stephanie).
father(greg,danielle).

mother(melody,cathy).
mother(melody, sharon).
mother(hazel, michael).
mother(hazel, julie).
mother(eleanor,melody).
mother(eleanor,crystal).
mother(crystal, stephanie).
mother(crystal,danielle).

parent(X,Y) :- father(X,Y).
parent(X,Y) :- mother(X,Y).
grandfather(G,C) :- father(F,C), father(G,F).
grandfather(G,C) :- mother(M,C), father(G,M).
grandmother(G,C) :- mother(M,C), mother(G,M).
grandmother(G,C) :- father(F,C), mother(G,F).
grandparent(X,Y) :- grandmother(X,Y).
grandparent(X,Y). :- grandfather(X,Y).

