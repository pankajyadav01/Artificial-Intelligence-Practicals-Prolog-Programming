

visited_state(int,int).

state(2,0) :-!.
    
state(X,Y):- X < 4,
        not(visited_state(4,Y)),
        assert(visited_state(X,Y)),            
        write(['(',X,',',Y,') -> (', 4,',',Y,')']),nl,
    	state(4,Y).

    
state(X,Y):- Y < 3,
        not(visited_state(X,3)),
        assert(visited_state(X,Y)),
        write(['(', X,',',Y,') -> (', X,',',3,')\n']),nl,
        state(X,3).
    
state(X,Y):- X > 0,
        not(visited_state(0,Y)),
        assert(visited_state(X,Y)),
        write(['(', X,',',Y,') -> (', 0,',',Y,')\n']),nl,
        state(0,Y).
    
state(X,Y):- Y > 0,
        not(visited_state(X,0)),
        assert(visited_state(X,Y)),
        write(['(', X,',',Y,') -> (', X,',',0,')\n']),nl,
        state(X,0).
            
state(X,Y):- X + Y >= 4,
        Y > 0,
        NEW_Y is Y - (4 - X),
        not(visited_state(4,NEW_Y)),
        assert(visited_state(X,Y)),
        write(['(', X,',',Y,') -> (', 4,',',NEW_Y,')\n']),nl,
        state(4,NEW_Y).
    
state(X,Y):- X + Y >=3,
        X > 0,
        NEW_X is X - (3 - Y),
        not(visited_state(NEW_X,3)),
        assert(visited_state(X,Y)),
        write(['(', X,',',Y,') -> (', NEW_X,',',3,')\n']),nl,
        state(NEW_X,3).
 
state(X,Y):- X + Y =<4,
        Y > 0,
        NEW_X is X + Y,
        not(visited_state(NEW_X,0)),
        assert(visited_state(X,Y)),
        write(['(', X,',',Y,') -> (', NEW_X,',',0,')\n']),nl,
        state(NEW_X,0).
   
state(X,Y):- X+Y=<3,
        X > 0,
        NEW_Y is X + Y,
        not(visited_state(0,NEW_Y)),
        assert(visited_state(X,Y)),
        write(['(', X,',',Y,') -> (', 0,',',NEW_Y,')\n']),nl,
        state(0,NEW_Y).
            
state(0,2):- not(visited_state(2,0)),
        assert(visited_state(X,Y)),
        write(['(', 0,',',2,') -> (', 2,',',0,')\n']),nl,
        state(2,0).

state(2,Y):- not(visited_state(0,Y)),
        assert(visited_state(X,Y)),
        write(['(', 2,',',Y,') --> (', 0,',',Y,')\n']),nl,
        state(0,Y).