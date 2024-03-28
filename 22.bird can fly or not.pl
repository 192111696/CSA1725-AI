% Define birds and their flying capabilities
bird(canary, true).
bird(ostrich, false).
bird(penguin, false).
bird(sparrow, true).
bird(eagle, true).

% Query to check if a bird can fly
can_fly(Bird) :-
    bird(Bird, CanFly),
    CanFly = true,
    format('~w can fly.~n', [Bird]).

can_fly(Bird) :-
    bird(Bird, CanFly),
    CanFly = false,
    format('~w cannot fly.~n', [Bird]).
