% is_a_list/1
% true if the argument is a list
is_a_list([]).
is_a_list([_ | _]).

% last_element/2 last_element(X, L)
% true when X is the last element of L
last_element(X, [X]).
last_element(X, [_ | Tail]) :- last_element(X, Tail).

% concatenate/3 concatenate(L1, L2, L3)
% true when L3 is the concatenation of L1 and L2.
concatenate([], L, L).
concatenate([X | Xs], L, [X | L2]) :- concatenate(Xs, L, L2).

% belongs/2 (member/2)      belongs(X, L)
% True when X is an element of L.
belongs(X, [X | _]).
belongs(X, [Y | Ys]) :- X \= Y, belongs(X, Ys).

% len/2   len(L, N)
% True when the second argument is the length of the first (a list).
len([], 0).
len([_ | Xs], N) :- M is N - 1, len(Xs, M).

% lref/3   lref(L, P, X)
% True when the third argument is the element of the first one (a list)
% that is found in position P (the second) argument.
lref([X | _], 0, X).
lref([_ | Xs], P, Y) :- P > 0, J is P - 1, lref(Xs, J, Y).

% remove/3  remove(X, L, R)
% True when R is a list just like L, but with all occurrences of X
% removed.
remove(_, [], []).
remove(X, [X | Xs], R) :- remove(X, Xs, R).
remove(X, [Y | Ys], [Y | Rs]) :- Y \= X, remove(X, Ys, Rs).

% ordered/1
% True when the argument (a list of numbers) is ordered in an increasing
% way.
ordered([]).
ordered([_]).
ordered([X1, X2 | Xs]) :- X1 =< X2, ordered([X2 | Xs]).

% list_reverse/2    list_reverse(L, R)
% True when R is the list in the reverse order of L
list_reverse(L, R) :- reverse(L, R, []).

reverse([], L, L).
reverse([L | Ls], R, Acc) :- reverse(Ls, R, [L | Acc]).

% is_palindrome/1     is_palindrome(L)
% True when L is a palindrome (read the same way in each direction)
is_palindrome(L) :- list_reverse(L, L).

% flatten/2     flatten(L, F)
% True when F is a 'flattened' version of L.
flatten([], []) :- !.
flatten([L | Ls], FlatL) :-
  !,
  flatten(L, NewL),
  flatten(Ls, NewLs),
  append(NewL, NewLs, FlatL).
flatten(L, [L]).

% substitute/4 substitute(Pattern, Replacement, L, SubL)
% True when the fourth argument (a list) is like the third (a list) but
% with elements unifying with the first argument substituted by the
% second one.
substitute(_, _, [], []) :- !.
substitute(Pattern, Replacement, [Pattern | Ls], SubL) :-
  !,
  SubL = [Replacement | SubL2],
  substitute(Pattern, Replacement, Ls, SubL2).
substitute(Pattern, Replacement, [L | Ls], SubL) :-
  Pattern \= L,
  SubL = [L | SubL2],
  substitute(Pattern, Replacement, Ls, SubL2).

% selecting/3 selecting(X, L1, L2)
% True when the second argument contains the first and the third has
% it removed.
% selecting(X, [X], []).

% permutation/2
% True when the second argument (a list) is a permutation of the first.

% partition/4
% True when the first argument (a list of numbers) is split in two with
% respect to the second argument N (a number); the third element will
% contain all the elements that are smaller than N, while the fourth
% argument will contain the elements that are bigger than N.
%
% Examples:
% ?- partition([], 42, [], []).
% true
%
% ?- partition([10, 2, 66, 12, 42, 1024], 42, [10, 12, 2], [1024 66]).
% true
%
% ?- partition([4, 19, 10], 42, [10, 4, 19], []).
% true
%
% Note that the order in the third and fourth arguments is arbitrary.


% quicksort/2
% True when the second argument is the ordered version (using quicksort)
% of the first.
%
% Note that you will need partition/4 and concatenate/3 (at least).