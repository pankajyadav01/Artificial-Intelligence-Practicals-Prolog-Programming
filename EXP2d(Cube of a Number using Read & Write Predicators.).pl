/*
Pankaj Yadav (15CSU145)
Experiment 2d
Cube of a Number using Read & Write Predicators.
*/

cube :- 
		write('Enter the Number please : '),
		read(X),
		process(X).

process(stop) :- !.

process(N) :-
		C is N*N*N,
		write(['cube of ', N, 'is', C]),
		nl,
		cube.

/*
OUTPUT:
?- cube.
Enter the Number please : 5.
[cube of ,5,is,125]
Enter the Number please : |: 6.
[cube of ,6,is,216]
Enter the Number please : |: 25.
[cube of ,25,is,15625]
Enter the Number please : |: stop.

true.

*/