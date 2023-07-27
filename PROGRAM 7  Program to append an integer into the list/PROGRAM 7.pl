% Domains
:- dynamic append/3.
:- dynamic x/1.
:- dynamic list/1.

x(integer).
list(list).

% Predicates
append(X, [], [X]).
append(X, [H | T], [H | T1]) :-
    append(X, T, T1).
