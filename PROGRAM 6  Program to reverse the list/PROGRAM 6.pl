:- module(program6, [append/3, rev/2]).

append(X, [], [X]).
append(X, [H|T], [H|T1]) :- append(X, T, T1).

rev([], []).
rev([H|T], Rev) :- rev(T, L), append([H], L, Rev).
