/* '=' is used for '==' & 'is' is used for '='
',' checks both (AND) conditions to be true
';' checks any one condition to be true (OR) 

Pankaj Yadav (15CSU145)
Experiment 2a
GCD using Recursion
*/
gcd(X,Y,G):- 
			X=Y,
			G is X.
gcd(X,Y,G):- 
			X<Y,
			Y1 is Y-X,
			gcd(X,Y1,G).
gcd(X,Y,G):- 
			X>Y,
			gcd(Y,X,G).

/* 
OUTPUT:
?- gcd(10,5,G).
G = 5 .
*/