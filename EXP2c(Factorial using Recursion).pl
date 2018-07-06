/*
Pankaj Yadav (15CSU145)
Experiment 2c
Factorial using Recursion
*/

factorial(0,1). 

factorial(A,F) :-  
   			A>0, 
   			A1 is A-1, 
  		 	factorial(A1,F1), 
   			F is A * F1.

/*
OUTPUT:
?- factorial(5,F).
F = 120 .
*/