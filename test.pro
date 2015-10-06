#!/usr/bin/pl -q -t main -f

eval :-
        current_prolog_flag(argv, Argv),
        append(_, [--|Args], Argv),
        concat_atom(Args, ' ', SingleArg),
        term_to_atom(Term, SingleArg),
        Val is Term,
        format('~w~n', [Val]).

main :-
        catch(eval, E, (print_message(error, E), fail)),
        halt.
main :-
        halt(1).
