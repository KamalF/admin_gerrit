submit_filter(In, Out) :-
    In =.. [submit | I],
    gerrit:max_with_block(-1, 1, 'Code-Review', CR),
    Out =.. [submit, CR | I].
