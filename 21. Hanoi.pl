% Define the predicate to solve Towers of Hanoi problem
% hanoi(N, Source, Target, Auxiliary)
hanoi(1, Source, Target, _) :-
    % If there's only one disk, move it directly from source to target
    write('Move top disk from '), write(Source), write(' to '), write(Target), nl.

hanoi(N, Source, Target, Auxiliary) :-
    % For N disks, move N-1 disks from source to auxiliary, 
    % then move the largest disk from source to target,
    % and finally move the N-1 disks from auxiliary to target.
    N > 1,
    M is N - 1,
    hanoi(M, Source, Auxiliary, Target), % Move N-1 disks to auxiliary
    hanoi(1, Source, Target, _), % Move the largest disk to target
    hanoi(M, Auxiliary, Target, Source). % Move N-1 disks from auxiliary to target

% Example query:
% hanoi(3, left, right, center).
