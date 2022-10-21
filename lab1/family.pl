male("Liam").
male("Noah").
male("Oliver").
male("Elijah").
male("James").
male("William").
male("Benjamin").
male("Lucas").
male("Henry").

female("Rose").
female("Abbie").
female("Eden").
female("Elsa").
female("Ellen").
female("Liza").
female("Tiffany").
female("Aisha").

parent("Liam", "Noah").
parent("Liam", "Oliver").
parent("Eden", "Noah").
parent("Eden", "Oliver").
parent("Elijah", "James").
parent("Elijah", "Ellen").
parent("Elijah", "Liza").
parent("Elsa", "James").
parent("Elsa", "Ellen").
parent("Elsa", "Liza").
parent("William", "Benjamin").
parent("William", "Tiffany").
parent("Rose", "Liam").
parent("Rose", "Elijah").
parent("Rose", "Aisha").
parent("Henry", "Liam").
parent("Henry", "Elijah").
parent("Henry", "Aisha").
parent("Abbie", "Eden").
parent("Abbie", "William").
parent("Lucas", "Eden").
parent("Lucas", "William").

father(X, Y) :-
  male(X),
  parent(X, Y).

mother(X, Y) :- 
  female(X),
  parent(X, Y).

grandparent(X, Y) :-
  parent(X, Z),
  parent(Z, Y).

grandfather(X, Y) :-
  male(X),
  grandparent(X, Y).

grandmother(X, Y) :-
  female(X),
  grandparent(X, Y).
