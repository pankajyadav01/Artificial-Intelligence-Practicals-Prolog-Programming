canget(state(_,_,_,has)) :- !.
canget(S1) :-
			move(S1, Move, S2),
			write(['(', S1,') -> (', S2,',']),nl,
			canget(S2).

move(state(middle, onbox, middle, hasnot),
	grasp,
    state(middle, onbox, middle, has)).
move(state(P, onfloor, P, H),
	climb,
    state(P, onbox, P, H)).
move(state(P1, onfloor, P1, H),
	push(P1, P2),
    state(P2, onfloor, P2, H)).
move(state(P1, onfloor, P2, H),
	walk(P1, P2),
    state(P2, onfloor, P2, H)).