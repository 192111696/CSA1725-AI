% Base case: If N is 1, the sum is 1
sum(1, 1).

% Recursive case: Sum the integers from 1 to N
sum(N, Sum) :-
    N > 1,
    Prev is N - 1,
    sum(Prev, PrevSum),
    Sum is PrevSum + N.
