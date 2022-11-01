male("Sokol").
male("Sam").
male("Dev").
male("Tani").
male("Manu").
male("Adi").
male("Luli").
male("Baba").
male("Veseli").

female("Liri").
female("Xhevia").
female("Lejda").
female("Egla").
female("Stela").
female("Era").
female("Gera").
female("Teuta").

parent("Sokol", "Sam").
parent("Sokol", "Dev").
parent("Lejda", "Sam").
parent("Lejda", "Dev").
parent("Tani", "Manu").
parent("Tani", "Stela").
parent("Tani", "Era").
parent("Egla", "Manu").
parent("Egla", "Stela").
parent("Egla", "Era").
parent("Adi", "Luli").
parent("Adi", "Gera").
parent("Liri", "Sokol").
parent("Liri", "Tani").
parent("Liri", "Teuta").
parent("Veseli", "Sokol").
parent("Veseli", "Tani").
parent("Veseli", "Teuta").
parent("Xhevia", "Lejda").
parent("Xhevia", "Adi").
parent("Baba", "Lejda").
parent("Baba", "Adi").

father(X, Y) :-
  male(X),
  parent(X, Y).

mother(X, Y) :- 
  female(X),
  parent(X, Y).

sibling(S1, S2) :-
  parent(P, S1),
  parent(P, S2),
  S1 \= S2.

brother(B, S) :-
  male(B),
  sibling(B, S).

sister(F, S) :-
  female(F),
  sibling(F, S).

uncle(X, Y) :-
  brother(X, Z),
  parent(Z, Y).

aunt(X, Y) :-
  sister(X, Z),
  parent(Z, Y).

grandparent(X, Y) :-
  parent(X, Z),
  parent(Z, Y).

grandfather(X, Y) :-
  male(X),
  grandparent(X, Y).

grandmother(X, Y) :-
  female(X),
  grandparent(X, Y).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :-
  parent(X, Z),
  ancestor(Z, Y).