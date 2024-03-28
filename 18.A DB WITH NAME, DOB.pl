% Database of names and dates of birth (DOB)
dob(john, date(1990, 5, 15)).
dob(amy, date(1985, 11, 3)).
dob(mark, date(1978, 7, 20)).
dob(lisa, date(1995, 3, 10)).
dob(mike, date(2000, 9, 28)).

% Predicate to retrieve date of birth given a name
get_dob(Name, DOB) :-
    dob(Name, DOB).

% Predicate to retrieve names born in a given year
born_in_year(Year, Names) :-
    findall(Name, (dob(Name, date(Year, _, _))), Names).

% Predicate to retrieve names born in a given month
born_in_month(Month, Names) :-
    findall(Name, (dob(Name, date(_, Month, _))), Names).

% Predicate to retrieve names born on a given day
born_on_day(Day, Names) :-
    findall(Name, (dob(Name, date(_, _, Day))), Names).
