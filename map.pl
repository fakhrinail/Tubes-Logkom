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
position(shop,9,2).
position(pagar,4,5).
position(pagar,5,5).
position(pagar,5,6).
position(pagar,6,6).
position(pagar,5,7).
position(pagar,6,7).
position(pagar,6,8).
position(pagar,7,8).
position(dungeonboss,10,12).

% prosedur berpindah
a :-
    \+(enemy_spawned(_)),
    position(player,X,Y),
    Xa is X-1,
    between(1,10,Xa),
    \+(is_berisi(Xa,Y)),
    left,
    retract(position(player,_,_)),
    asserta(position(player,Xa,Y)),
    write('You move west'),nl,
    set_enemy_random,!.

a :-
    enemy_spawned(_),
    write('There is an enemy nearby, Cant move !'),nl,!.

a :-
    write('Cant go there'),nl.

d :-
    \+(enemy_spawned(_)),
    position(player,X,Y),
    Xa is X+1,
    between(1,10,Xa),
    \+(is_berisi(Xa,Y)),
    right,
    retract(position(player,_,_)),
    asserta(position(player,Xa,Y)),
    write('You move east'),nl,
    set_enemy_random,!.
d :-
    enemy_spawned(_),
    write('There is an enemy nearby, Cant move !'),nl,!.

d :-
    write('Cant go there'),nl.

s :-
    \+(enemy_spawned(_)),
    position(player,X,Y),
    Ya is Y+1,
    between(1,12,Ya),
    \+(is_berisi(X,Ya)),
    down,
    retract(position(player,_,_)),
    asserta(position(player,X,Ya)),
    write('You move south'),nl,
    set_enemy_random,!.
s :-
    enemy_spawned(_),
    write('There is an enemy nearby, Cant move !'),nl,!.

s :-
    write('Cant go there'),nl.

w :-
    \+(enemy_spawned(_)),
    position(player,X,Y),
    Ya is Y-1,
    between(1,12,Ya),
    \+(is_berisi(X,Ya)),
    up,
    retract(position(player,_,_)),
    asserta(position(player,X,Ya)),
    write('You move north'),nl,
    set_enemy_random,!.
w :-
    enemy_spawned(_),
    write('There is an enemy nearby, Cant move !'),nl,!.
w :-
    write('Cant go there'),nl.

% prosedur untuk mengecek apakah ada objek di X,Y
is_berisi(X,Y) :-
    object(_),
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

% near(obj) true jika player berada 1 tile di samping atas/bawah/kiri/kanan obj.
% samping
near(Obj) :-
    position(Obj,X,Y),
    position(player,Xp,Yp),
    JarakX is Xp-X,
    Jarak is abs(JarakX),
    Jarak =:= 1,
    Yp =:= Y,!.

% atas/bawah
near(Obj) :-
    position(Obj,X,Y),
    position(player,Xp,Yp),
    JarakY is Yp-Y,
    Jarak is abs(JarakY),
    Jarak =:= 1,
    Xp =:= X.

% near_shop benar jika player berada 1 tile di samping Shop
% implementasi shop boleh di panggil jika near_shop bernilai true
near_shop :- near(shop).


% near_quest benar jika player berada 1 tile di samping Shop
% implementasi quest boleh di panggil jika near_quest bernilai true
near_quest :- near(quest).

% near_boss berarti benar jika player berada 1 tile di samping Boss
% seharusnya jadi auto serang
near_boss :- near(dungeonboss).

% set_enemy_random merupakan fungsi randomizer yang secara acak memanggil batle mechanism
% random_enemy untuk mengacak enemy yang muncul
% dipanggil setiap berpindah tile


set_enemy_random :-
    \+(near_boss),
    random(1,101,X),
    X < 33,
    random_enemy,!.

set_enemy_random :-
    near_boss,
    write('You feel being watched......'), 
    sleep(4),
    write('The Dungeon Boss appears !!!'),
    init_battle(tugasBesar),!.

set_enemy_random.

random_enemy :-
    lvl(Lvl),
    Lvl >= 1, Lvl =< 4,
    random(1,3,X),
    enemy(Enemy,Name,X),
    write('You find '), write(Name),write('!!'),
    init_battle(Enemy),
    nl,!.

random_enemy :-
    lvl(Lvl),
    Lvl >= 5, Lvl =< 9,
    random(1,4,X),
    enemy(Enemy,Name,X),
    write('You find '), write(Name),write('!!'), nl,
    init_battle(Enemy),
    nl,!.

random_enemy :-
    lvl(Lvl),
    Lvl >= 10, Lvl =< 14,
    random(3,5,X),
    enemy(Enemy,Name,X),
    write('You find '), write(Name),write('!!'), nl,
    init_battle(Enemy),
    nl,!.

random_enemy :-
    lvl(Lvl),
    Lvl >= 15, Lvl =< 19,
    random(4,8,X),
    enemy(Enemy,Name,X),
    write('You find '), write(Name),write('!!'), nl,
    init_battle(Enemy),
    nl,!.

random_enemy :-
    lvl(Lvl),
    Lvl >= 20 , Lvl =< 29,
    random(5,9,X),
    enemy(Enemy,Name,X),
    write('You find '), write(Name),write('!!'), nl,
    init_battle(Enemy),
    nl,!.

random_enemy :-
    lvl(Lvl),
    Lvl >= 30, Lvl =< 39,
    random(7,10,X),
    enemy(Enemy,Name,X),
    write('You find '), write(Name),write('!!'), nl,
    init_battle(Enemy),
    nl,!.

random_enemy :-
    lvl(Lvl),
    Lvl >= 40,
    random(8,11,X),
    enemy(Enemy,Name,X),
    write('You find '), write(Name),write('!!'), nl,
    init_battle(Enemy),
    nl,!.