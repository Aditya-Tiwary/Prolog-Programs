small(rat).
small(cat).
large(lion).
color(dog, black).
color(rabbit, white).

color(X, dark) :-
    (color(X, black); color(X, brown)).
