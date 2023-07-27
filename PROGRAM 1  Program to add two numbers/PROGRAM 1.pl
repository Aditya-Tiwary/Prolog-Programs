add :-
    write("Input first number: "),
    read_number(X),
    write("Input second number: "),
    read_number(Y),
    Z is X + Y,
    write("Output = "),
    write(Z).

read_number(Number) :-
    read_line_to_codes(user_input, Codes),
    number_codes(Number, Codes).