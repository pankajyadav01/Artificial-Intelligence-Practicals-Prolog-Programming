length([], 0).
length([H|T], Length) :-
						length(T, Length_T),
						Length is Length_T + 1.

append([],L,L).
append([M|X], K,[M|Y]):- append(X, K, Y).