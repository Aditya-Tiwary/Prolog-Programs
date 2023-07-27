readaddress(address(Name, Street, City, State, Zip)) :-
    write("Name: "), readln(Name),
    write("Street: "), readln(Street),
    write("City: "), readln(City),
    write("State: "), readln(State),
    write("Zip: "), readln(Zip).

go :-
    readaddress(Address),
    nl, write(Address), nl,
    nl, write("Accept (y/n)?"),
    get_single_char(Reply),
    Reply = 121, !. % ASCII code for 'y' is 121.

go :-
    nl, write("Please re-enter"), nl,
    go.
