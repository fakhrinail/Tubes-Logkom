/************************* MAP *************************/
% Map rencana 10 * 12 aja dulu
% Memprint map
% map di representasikan dengan matriks
map :-
    initmap(M),
    print_matrix(M),
    write('Legend : '),nl,
    write('P : Player'),nl,
    write('Q : Quest'),nl,
    write('S : Shop'),nl,
    write('D : Dungeon Boss'),nl.


print_list([]).
print_list([H|T]) :- write(H), write(' '), print_list(T).

print_matrix([]).
print_matrix([H|T]) :- print_list(H),nl, print_matrix(T).

:- dynamic(initmap/1).   % map berubah ubah sesuai pergerakan player
:- dynamic(position/3). % posisi(Obj,X,Y), direpresentasikan dengan kordinat

% deklarasi map awal
initmap(
[
['#','#','#','#','#','#','#','#','#','#','#','#'],
['#','P','_','_','_','_','_','_','_','_','_','#'],
['#','_','Q','_','_','_','_','_','_','S','_','#'],
['#','_','_','_','_','_','_','_','_','_','_','#'],
['#','_','_','_','_','_','_','_','_','_','_','#'],
['#','_','_','_','#','#','_','_','_','_','_','#'],
['#','_','_','_','_','#','#','_','_','_','_','#'],
['#','_','_','_','_','#','#','_','_','_','_','#'],
['#','_','_','_','_','_','#','#','_','_','_','#'],
['#','_','_','_','_','_','_','_','_','_','_','#'],
['#','_','_','_','_','_','_','_','_','_','_','#'],
['#','_','_','_','_','_','_','_','_','_','_','#'],
['#','_','_','_','_','_','_','_','_','_','D','#'],
['#','#','#','#','#','#','#','#','#','#','#','#']
]
).

% Membuat prosedur untuk menggambar ulang map
replace_elmt(_,[],[],_,_).
replace_elmt(E,[[_|Xs]|Ys],[[E|Xs1]|Ys1],1,1) :-
                    !,replace_elmt(E,[Xs|Ys],[Xs1|Ys1],0,0).

replace_elmt(E,[[X]|Xs],[[X]|Xs1],0,0) :- 
                    replace_elmt(E,Xs,Xs1,0,0),!.

replace_elmt(E,[[X|Xs]|Ys],[[X|Xs1]|Ys1],0,0) :- 
                    replace_elmt(E,[Xs|Ys],[Xs1|Ys1],0,0).  

replace_elmt(E,[[X|Xs]|Ys],[[X|Xs1]|Ys1],N,1) :- 
                    N1 is N-1,
                    replace_elmt(E,[Xs|Ys],[Xs1|Ys1],N1,1).

replace_elmt(E,[Xs|Ys],[Xs|Ys1],N,M) :-
                    M1 is M-1,
                    replace_elmt(E,Ys,Ys1,N,M1),!.

% deklarasi objek-objek yang ada di map
object(pagar).
object(player).
object(shop).
object(quest).
object(dungeonboss).

% deklarasi posisi-posisi objek yang ada di map
position(player,1,1).
position(quest,2,2).
position(shop,2,9).
position(pagar,5,4).
position(pagar,5,5).
position(pagar,6,5).
position(pagar,6,6).
position(pagar,7,6).
position(pagar,7,7).
position(pagar,8,7).
position(pagar,8,8).
position(dungeonboss,10,12).

% prosedur berpindah
a :-
    position(player,X,Y),
    Xa is X-1,
    between(1,10,Xa),
    \+(is_berisi(Xa,Y)),
    left,
    retract(position(player,_,_)),
    asserta(position(player,Xa,Y)),
    write('You move west'),nl,!.
a :-
    write('Cant go there'),nl.

d :-
    position(player,X,Y),
    Xa is X+1,
    between(1,10,Xa),
    \+(is_berisi(Xa,Y)),
    right,
    retract(position(player,_,_)),
    asserta(position(player,Xa,Y)),
    write('You move east'),nl,!.
d :-
    write('Cant go there'),nl.

s :-
    position(player,X,Y),
    Ya is Y+1,
    between(1,12,Ya),
    \+(is_berisi(X,Ya)),
    down,
    retract(position(player,_,_)),
    asserta(position(player,X,Ya)),
    write('You move south'),nl,!.
s :-
    write('Cant go there'),nl.

w :-
    position(player,X,Y),
    Ya is Y-1,
    between(1,12,Ya),
    \+(is_berisi(X,Ya)),
    up,
    retract(position(player,_,_)),
    asserta(position(player,X,Ya)),
    write('You move north'),nl,!.
w :-
    write('Cant go there'),nl.

% prosedur untuk mengecek apakah ada objek di X,Y
is_berisi(X,Y) :-
    position(_,X1,Y1),
    X =:= X1,
    Y =:= Y1.

% prosedur untuk mengubah gambar map

left :-
    initmap(M),
    position(player,X,Y),
    replace_elmt('_',M,M1,X+1,Y+1),
    replace_elmt('P',M1,M2,X,Y+1),
    retract(initmap(_)),
    asserta(initmap(M2)).

right :-
    initmap(M),
    position(player,X,Y),
    replace_elmt('_',M,M1,X+1,Y+1),
    replace_elmt('P',M1,M2,X+2,Y+1),
    retract(initmap(_)),
    asserta(initmap(M2)).

up :-
    initmap(M),
    position(player,X,Y),
    replace_elmt('_',M,M1,X+1,Y+1),
    replace_elmt('P',M1,M2,X+1,Y),
    retract(initmap(_)),
    asserta(initmap(M2)).

down :-
    initmap(M),
    position(player,X,Y),
    replace_elmt('_',M,M1,X+1,Y+1),
    replace_elmt('P',M1,M2,X+1,Y+2),
    retract(initmap(_)),
    asserta(initmap(M2)).