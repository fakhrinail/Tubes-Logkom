/* fakta pemain */
:- dynamic(job/1).
:- dynamic(att/1).
:- dynamic(specialatt/2). % parameter 1 buat jumlah damage, parameter 2 buat cooldown
:- dynamic(def/1).
:- dynamic(currHP/1).
:- dynamic(maxHP/1).
:- dynamic(expr/1).
:- dynamic(gold/1).
:- dynamic(lvl/1).
:- dynamic(gamestate/1). % buat indikator lagi ngapain (jalan2 di map, battle, mati, dkk)

start :- write('Pilih Job yang diinginkan: '), nl,
        write('1. Swordsman'), nl,
        write('2. Sorcerer'), nl,
        write('3. Archer'), nl,
        write('Masukkan job yang diinginkan'), nl,
        read(InputJob), 
        assignJob(InputJob),!.

assignJob(InputJob) :- 
        InputJob = 1, 
        retractall(job(_)),
        asserta(job(swordsman)),
        asserta(usedSpace(0)),
        storeItem(weapon(longsword, swordsman)),
        storeItem(potion(medicine)),
        storeItem(potion(medicine)),
        storeItem(potion(medicine)),
        storeItem(potion(medicine)),
        storeItem(potion(medicine)),
        write('Job Anda adalah Swordsman'), inputStats(swordsman), !.
assignJob(InputJob) :- 
        InputJob = 2, 
        retractall(job(_)),
        asserta(job(sorcerer)),
        asserta(usedSpace(0)),
        storeItem(weapon(magestaff, sorcerer)),
        storeItem(potion(medicine)),
        storeItem(potion(medicine)),
        storeItem(potion(medicine)),
        storeItem(potion(medicine)),
        storeItem(potion(medicine)),
        write('Job Anda adalah Sorcerer'), 
        inputStats(sorcerer), !.
assignJob(InputJob) :- 
        InputJob = 3, 
        retractall(job(_)),
        asserta(job(archer)), 
        asserta(usedSpace(0)),
        storeItem(weapon(woodenbow, archer)),
        storeItem(potion(medicine)),
        storeItem(potion(medicine)),
        storeItem(potion(medicine)),
        storeItem(potion(medicine)),
        storeItem(potion(medicine)),
        write('Job Anda adalah Archer'), 
        inputStats(archer), !.
assignJob(_) :- write('Salah input'),!.

inputStats(JobName) :- 
        JobName = swordsman,
        asserta(att(50)), 
        asserta(specialatt(75,3)),
        asserta(def(50)), 
        asserta(currHP(100)), 
        asserta(maxHP(100)), 
        asserta(gold(100)), 
        asserta(lvl(1)), 
        asserta(expr(0)).
inputStats(JobName) :- 
        JobName = sorcerer, 
        asserta(att(40)), 
        asserta(specialatt(100,3)),
        asserta(def(25)), 
        asserta(currHP(75)), 
        asserta(maxHP(75)), 
        asserta(gold(100)), 
        asserta(lvl(1)), 
        asserta(expr(0)).
inputStats(JobName) :- 
        JobName = archer, 
        asserta(att(60)), 
        asserta(specialatt(75,3)),
        asserta(def(30)), 
        asserta(currHP(100)), 
        asserta(maxHP(100)), 
        asserta(gold(100)),
        asserta(lvl(1)), 
        asserta(expr(0)).

levelUp :-
        expr(Exp),
        lvl(Lvl),
        ReqExp is Lvl*25,
        write(ReqExp), nl,
        write(Exp), nl,
        Exp >= ReqExp,
        NewLevel is Lvl+1,
        NewExp is Exp-ReqExp,
        inputStatsLvlUp,
        retract(lvl(_)),
        asserta(lvl(NewLevel)),
        retract(expr(_)),
        asserta(expr(NewExp)),
        levelUp,
        !.

inputStatsLvlUp :-
        job(JobName),
        lvl(Lvl),
        JobName = swordsman,
        att(Att),
        specialatt(SpAtt),
        def(Def),
        MaxHP(MaxHP),
        NewAtt is Att+10,
        NewSpAtt is SpAtt+4,
        NewDef is Def+10,
        NewMaxHP is MaxHP+65,
        retract(att(_)),
        asserta(att(NewAtt)),
        retract(specialatt(_)),
        asserta(specialatt(NewSpAtt)),
        retract(def(_)),
        asserta(def(NewDef)),
        retract(maxHP(_)),
        asserta(maxHP(NewMaxHP)),
        write ("Anda naik level menjadi "), write(Lvl).
inputStatsLvlUp :-
        job(JobName),
        lvl(Lvl),
        JobName = sorcerer,
        att(Att),
        specialatt(SpAtt),
        def(Def),
        MaxHP(MaxHP),
        NewAtt is Att+8,
        NewSpAtt is SpAtt+20,
        NewDef is Def+3,
        NewMaxHP is MaxHP+50,
        retract(att(_)),
        asserta(att(NewAtt)),
        retract(specialatt(_)),
        asserta(specialatt(NewSpAtt)),
        retract(def(_)),
        asserta(def(NewDef)),
        retract(maxHP(_)),
        asserta(maxHP(NewMaxHP)),
        write ("Anda naik level menjadi "), write(Lvl).
inputStatsLvlUp :-
        job(JobName),
        lvl(Lvl),
        JobName = archer,
        att(Att),
        specialatt(SpAtt),
        def(Def),
        MaxHP(MaxHP),
        NewAtt is Att+15,
        NewSpAtt is SpAtt+5,
        NewDef is Def+3,
        NewMaxHP is MaxHP+50,
        retract(att(_)),
        asserta(att(NewAtt)),
        retract(specialatt(_)),
        asserta(specialatt(NewSpAtt)),
        retract(def(_)),
        asserta(def(NewDef)),
        retract(maxHP(_)),
        asserta(maxHP(NewMaxHP)),
        write ("Anda naik level menjadi "), write(Lvl).

stats :-
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
