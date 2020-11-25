/* fakta enemy */
:- dynamic(job/1).
:- dynamic(att/1).
:- dynamic(specialatt/2). % parameter 1 buat jumlah damage, parameter 2 buat cooldown
:- dynamic(def/1).
:- dynamic(currHP/1).
:- dynamic(maxHP/1).
:- dynamic(lvl/1).

% gold yang didapat setelah mengalahkan enemy
gold(goblin, 200).
gold(slime, 100).
gold(wolf, 150).
gold(knight, 500).
gold(witch, 550).
gold(ultimaDragon, 1000).

% exp yang didapat setelah mengalahkan enemy
exp(goblin, 40).
exp(slime, 25).
exp(wolf, 100).
exp(knight, 500).
exp(witch, 800).
exp(ultimaDragon, 2000).

% base stats enemy
enemy(goblin) :-
    asserta(att(8)), 
    asserta(def(8)), 
    asserta(currHP(50)), 
    asserta(maxHP(50)), 
    asserta(specialatt(20, 120)),
    asserta(lvl(5)).

enemy(slime) :-
    asserta(att(6)), 
    asserta(def(10)), 
    asserta(currHP(30)), 
    asserta(maxHP(30)),
    asserta(specialatt(10, 25)),
    asserta(lvl(5)).

enemy(wolf) :-
    asserta(att(50)), 
    asserta(def(40)), 
    asserta(currHP(150)), 
    asserta(maxHP(150)), 
    asserta(specialatt(300, 300)),
    asserta(lvl(15)).

enemy(knight) :-
    asserta(att(20)), 
    asserta(def(100)), 
    asserta(currHP(300)), 
    asserta(maxHP(300)), 
    asserta(specialatt(200, 180)),
    asserta(lvl(20)).

enemy(witch) :-
    asserta(att(200)), 
    asserta(def(580)), 
    asserta(currHP(750)), 
    asserta(maxHP(750)), 
    asserta(specialatt(75, 15)),
    asserta(lvl(30)).

enemy(ultimaDragon) :-
    asserta(att(500)), 
    asserta(def(200)), 
    asserta(currHP(5000)), 
    asserta(maxHP(5000)), 
    asserta(specialatt(2500, 600)),
    asserta(lvl(75)).
