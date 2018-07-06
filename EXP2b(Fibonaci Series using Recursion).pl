/*
Pankaj Yadav (15CSU145)
Experiment 2b
Fibonaci Series using Recursion
*/

fib(0, 0).
fib(1, 1).
fib(A, F) :-
        A > 1,
        A1 is A-1,
        A2 is A-2,
        fib(A1, F1),
        fib(A2, F2),
        F is F1+F2.

/* 
OUTPUT:
?- fib(5,F).
F = 5 .
*/