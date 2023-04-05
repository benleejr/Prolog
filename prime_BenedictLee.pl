isPrime(2).
isPrime(3).

isPrime(X):-
    X =\= 1,
    X mod 2 =\= 0,
    sqrt(X,Z),
    primeChecker(X,3,Z).
primeChecker(X,Y,Z) :-
    Y > Z;
    X mod Y =\= 0,
    (W is Y + 2,
    primeChecker(X,W,Z)).
