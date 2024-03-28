% Define facts about fruits and their colors
fruit(apple, red).
fruit(banana, yellow).
fruit(grape, purple).
fruit(orange, orange).
fruit(watermelon, green).

% Define a predicate to query the color of a fruit
fruit_color(Fruit, Color) :-
    fruit(Fruit, Color).

% Demonstrate backtracking by querying for all fruits and their colors
?- fruit_color(Fruit, Color).
