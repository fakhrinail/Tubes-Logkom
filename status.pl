/* fakta pemain */
:- dynamic(job/1).
:- dynamic(att/1).
:- dynamic(def/1).
:- dynamic(maxHP/1).
:- dynamic(expr/1).
:- dynamic(lvl/1).

job(jobname).
attack(attawal).
defense(defawal).
maxHP(hpawal).
expr(expawal).
lvl(1).


daftar :- write('Pilih Job yang diinginkan: '), nl,
        write('1. Swordsman'), nl,
        write('2. Sorcerer'), nl,
        write('3. Archer'), nl,
        write('Masukkan job yang diinginkan'), nl,
        read(InputJob), assignJob(InputJob),!.

assignJob(InputJob) :- InputJob = 1, asserta(job(swordsman)), write('Job Anda adalah Swordsman'), inputStats(swordsman), !.
assignJob(InputJob) :- InputJob = 2, asserta(job(sorcerer)), write('Job Anda adalah Sorcerer'),!.
assignJob(InputJob) :- InputJob = 3, asserta(job(archer)), write('Job Anda adalah Archer'),!.
assignJob(InputJob) :- write('Salah input'),!.

inputStats(JobName) :- JobName = swordsman, asserta(att(50)), asserta(def(50)), asserta(maxHP(100)), asserta(expr(0)).
inputStats(JobName) :- JobName = sorcerer, asserta(att(75)), asserta(def(25)), asserta(maxHP(75)), asserta(expr(0)).
inputStats(JobName) :- JobName = archer, asserta(att(75)), asserta(def(50)), asserta(maxHP(100)), asserta(expr(0)).