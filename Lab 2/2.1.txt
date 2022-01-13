%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Knowledge Based Family Tree

female(pam).
female(liz).
female(pat).
female(ann).

male(jim).
male(bob).
male(tom).
male(peter).

parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
parent(bob,peter).
parent(peter,jim).

mother(X,Y):- parent(X,Y),female(X).
father(X,Y):- parent(X,Y),male(X).
haschild(X):- parent(X,_).
sister(X,Y):- parent(Z,X),parent(Z,Y),female(X),X\==Y.
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\==Y.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/*
ᄀ?- female(X).
X = pam ;
X = liz ;
X = pat ;
X = ann.

?- male(X).
X = jim ;
X = bob ;
X = tom ;
X = peter.

?- parent(X,Y).
X = pam,
Y = bob ;
X = tom,
Y = bob ;
X = tom,
Y = liz ;
X = bob,
Y = ann ;
X = bob,
Y = pat ;
X = pat,
Y = jim ;
X = bob,
Y = peter ;
X = peter,
Y = jim.

?- mother(X,Y).
X = pam,
Y = bob ;
X = pat,
Y = jim ;
false.

?- father(A,B).
A = tom,
B = bob ;
A = tom,
B = liz ;
A = bob,
B = ann ;
A = bob,
B = pat ;
A = bob,
B = peter ;
A = peter,
B = jim.

?- haschild(V).
V = pam ;
V = tom ;
V = tom ;
V = bob ;
V = bob ;
V = pat ;
V = bob ;
V = peter.

ఀ?- sister(X,Y).
X = liz,
Y = bob ;
X = ann,
Y = pat ;
X = ann,
Y = peter ;
X = pat,
Y = ann ;
X = pat,
Y = peter ;
false.

?- brother(X,Y).
X = bob,
Y = liz ;
X = peter,
Y = ann ;
X = peter,
Y = pat ;
false.
*/
