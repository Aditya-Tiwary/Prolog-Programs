% Predicates
:- discontiguous parent/2.
:- discontiguous male/1.
:- discontiguous female/1.
:- discontiguous child/2.
:- discontiguous mother/2.
:- discontiguous grandparent/2.
:- discontiguous brother/2.
:- discontiguous sister/2.

parent(symbol, symbol).
child(symbol, symbol).
mother(symbol, symbol).
brother(symbol, symbol).
sister(symbol, symbol).
grandparent(symbol, symbol).
male(symbol).
female(symbol).

% Facts
parent(a, b).
sister(a, c).
male(a).
female(b).

% Rules
child(X, Y) :- parent(Y, X).
mother(X, Y) :- female(X), parent(X, Y).
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
brother(X, Y) :- male(X), parent(V, X), parent(V, Y).
sister(X, Y) :- female(X), parent(V, X), parent(V, Y).
