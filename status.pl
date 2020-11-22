/* fakta pemain */
:- dynamic()
:- dynamic(job/1).
:- dynamic(att/1).
:- dynamic(def/1).
:- dynamic(currHP/1).
:- dynamic(maxHP/1).
:- dynamic(expr/1).
:- dynamic(gold/1).
:- dynamic(lvl/1).

job(jobname).
att(attawal).
def(defawal).
currHP(hpawal).
maxHP(hpawal).
expr(expawal).
gold(goldawal).
lvl(1).


daftar :- write('Pilih Job yang diinginkan: '), nl,
        write('1. Swordsman'), nl,
        write('2. Sorcerer'), nl,
        write('3. Archer'), nl,
        write('Masukkan job yang diinginkan'), nl,
        read(InputJob), assignJob(InputJob),!.

assignJob(InputJob) :- 
        InputJob = 1, 
        asserta(job(swordsman)), 
        write('Job Anda adalah Swordsman'), inputStats(swordsman), !.
assignJob(InputJob) :- 
        InputJob = 2, 
        asserta(job(sorcerer)), 
        write('Job Anda adalah Sorcerer'), 
        inputStats(sorcerer), !.
assignJob(InputJob) :- 
        InputJob = 3, 
        asserta(job(archer)), 
        write('Job Anda adalah Archer'), 
        inputStats(archer), !.
assignJob(InputJob) :- write('Salah input'),!.

inputStats(JobName) :- 
        JobName = swordsman, 
        asserta(att(50)), 
        asserta(def(50)), 
        asserta(currHP(100)), 
        asserta(maxHP(100)), 
        asserta(gold(100)), 
        asserta(expr(0)).
inputStats(JobName) :- 
        JobName = sorcerer, 
        asserta(att(75)), 
        asserta(def(25)), 
        asserta(currHP(75)), 
        asserta(maxHP(75)), 
        asserta(gold(100)), 
        asserta(expr(0)).
inputStats(JobName) :- 
        JobName = archer, 
        asserta(att(75)), 
        asserta(def(50)), 
        asserta(currHP(100)), 
        asserta(maxHP(100)), 
        asserta(gold(100)), 
        asserta(expr(0)).

status :-
        job(JobName), 
        write('Job: '), 
        write(JobName), nl,
        currHP(CurrentHP), 
        maxHP(MaxHP), 
        write('Health: '), 
        write(CurrentHP), 
        write('/'), 
        write(MaxHP), nl,
        att(Attack), 
        write('Attack: '), 
        write(Attack), nl,
        def(Defense), 
        write('Defense: '), 
        write(Defense), nl,
        expr(Exp), 
        write('Exp: '), 
        write(Exp), nl,
        gold(Gold), 
        write('Gold: '), 
        write(Gold), !.
