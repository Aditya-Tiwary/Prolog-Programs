del(X, [X|T], T).
del(X, [H|T], [H|T1]) :-
    del(X, T, T1).
