% Define parent relationships
parent(john, mary).
parent(john, steve).
parent(mary, anne).
parent(mary, tom).
parent(steve, emma).

% Define gender
male(john).
male(steve).
male(tom).

female(mary).
female(anne).
female(emma).

% Define sibling relationship
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

% Define mother and father relationships
mother(Mother, Child) :-
    parent(Mother, Child),
    female(Mother).

father(Father, Child) :-
    parent(Father, Child),
    male(Father).

% Define grandparent relationship
grandparent(Grandparent, Grandchild) :-
    parent(Grandparent, Parent),
    parent(Parent, Grandchild).

% Define ancestor relationship (transitive closure of parent)
ancestor(Ancestor, Descendant) :-
    parent(Ancestor, Descendant).

ancestor(Ancestor, Descendant) :-
    parent(Ancestor, Intermediate),
    ancestor(Intermediate, Descendant).
