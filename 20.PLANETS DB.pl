% Database of planets with characteristics
planet(mercury, rocky, 0.39, 0.24).
planet(venus, rocky, 0.72, 0.62).
planet(earth, rocky, 1.00, 1.00).
planet(mars, rocky, 1.52, 1.88).
planet(jupiter, gas_giant, 5.20, 11.86).
planet(saturn, gas_giant, 9.58, 29.46).
planet(uranus, ice_giant, 19.22, 84.01).
planet(neptune, ice_giant, 30.05, 164.8).

% Predicate to retrieve characteristics of a planet
planet_characteristics(Planet, Type, Distance_from_sun, Orbital_period) :-
    planet(Planet, Type, Distance_from_sun, Orbital_period).

% Predicate to retrieve rocky planets
rocky_planet(Planet) :-
    planet(Planet, rocky, _, _).

% Predicate to retrieve gas giant planets
gas_giant_planet(Planet) :-
    planet(Planet, gas_giant, _, _).

% Predicate to retrieve ice giant planets
ice_giant_planet(Planet) :-
    planet(Planet, ice_giant, _, _).

% Predicate to retrieve planets with given orbital period range
planet_in_orbital_period_range(MinPeriod, MaxPeriod, Planet) :-
    planet(Planet, _, _, Period),
    Period >= MinPeriod,
    Period =< MaxPeriod.
