% Define the initial state
initial_state(state(at_door, on_floor, at_window, has_not)).

% Define the final state
final_state(state(at_window, on_floor, at_window, has)).

% Actions the monkey can take
action(grab, state(_, on_box, _, has_not), state(_, on_box, _, has)).
action(climb, state(_, on_floor, _, has_not), state(_, on_box, _, has_not)).
action(push, state(M, on_floor, M, H), state(M, on_box, M, H)).

% Recursively search for a solution
solve(State, []) :-
    final_state(State).

solve(State1, [Action | Actions]) :-
    action(Action, State1, State2),
    solve(State2, Actions).

% Print the list of actions to reach the final state
print_actions([]).
print_actions([Action | Actions]) :-
    write(Action), nl,
    print_actions(Actions).

% Query to solve the Monkey Banana Problem
?- initial_state(InitialState), solve(InitialState, Actions), print_actions(Actions).
