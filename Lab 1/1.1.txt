%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Knowledge Based System

orbits(mercury, sun).
orbits(venus, sun).
orbits(earth, sun).
orbits(mars, sun).
orbits(jupiter, sun).
orbits(saturn, sun).
orbits(uranus, sun).
orbits(neptune, sun).

orbits(moon,earth).

orbits(phobos,mars).
orbits(deimos,mars).

planet(P):- orbits(P,sun).
satellite(S):-orbits(S,P), planet(P).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/*

?- orbits(X,Y).
X = mercury,
Y = sun ;
X = venus,
Y = sun ;
X = earth,
Y = sun ;
X = mars,
Y = sun ;
X = jupiter,
Y = sun ;
X = saturn,
Y = sun ;
X = uranus,
Y = sun ;
X = neptune,
Y = sun ;
X = moon,
Y = earth ;
X = phobos,
Y = mars ;
X = deimos,
Y = mars.

?- planet(X).
X = mercury ;
X = venus ;
X = earth ;
X = mars ;
X = jupiter ;
X = saturn ;
X = uranus ;
X = neptune.

?- satellite(Y).
Y = moon ;
Y = phobos ;
Y = deimos ;

*/







