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

start :- write('Choose your job: '), nl,
        write('1. Swordsman'), nl,
        write('2. Sorcerer'), nl,
        write('3. Archer'), nl,
        write('Input your job number'), nl,
        read(InputJob), 
        assignJob(InputJob),!.

assignJob(InputJob) :- 
        InputJob = 1, 
        retractall(job(_)),
        asserta(job(swordsman)),
        asserta(usedSpace(0)),
        asserta(isOnQuest(0)),
        asserta(jmlGoblin(0)),
        asserta(jmlSlime(0)),
        asserta(jmlWolf(0)),
        asserta(jmlWitch(0)),
        asserta(jmlArmoredGoblin(0)),
        asserta(jmlCubicSlime(0)),
        asserta(jmlWerewolf(0)),
        asserta(jmlOgre(0)),
        asserta(jmlCursedKnight(0)),
        asserta(jmlUltimaDragon(0)),
        asserta(rewardExp(0)),
        asserta(rewardGold(0)),
        storeItem(medicine),
        storeItem(medicine),
        storeItem(medicine),
        storeItem(medicine),
        storeItem(medicine),
        asserta(weaponEquipped(longsword)),
        asserta(armorEquipped(none)),
        asserta(accessoryEquipped(none)),
        write('Your Job is Swordsman'), inputStats(swordsman), !.
assignJob(InputJob) :- 
        InputJob = 2, 
        retractall(job(_)),
        asserta(job(sorcerer)),
        asserta(usedSpace(0)),
        asserta(isOnQuest(0)),
        asserta(jmlGoblin(0)),
        asserta(jmlSlime(0)),
        asserta(jmlWolf(0)),
        asserta(jmlWitch(0)),
        asserta(jmlArmoredGoblin(0)),
        asserta(jmlCubicSlime(0)),
        asserta(jmlWerewolf(0)),
        asserta(jmlOgre(0)),
        asserta(jmlCursedKnight(0)),
        asserta(jmlUltimaDragon(0)),
        asserta(rewardExp(0)),
        asserta(rewardGold(0)),
        storeItem(medicine),
        storeItem(medicine),
        storeItem(medicine),
        storeItem(medicine),
        storeItem(medicine),
        asserta(weaponEquipped(magestaff)),
        asserta(armorEquipped(none)),
        asserta(accessoryEquipped(none)),
        write('Your Job is Sorcerer'), 
        inputStats(sorcerer), !.
assignJob(InputJob) :- 
        InputJob = 3, 
        retractall(job(_)),
        asserta(job(archer)), 
        asserta(usedSpace(0)),
        asserta(isOnQuest(0)),
        asserta(jmlGoblin(0)),
        asserta(jmlSlime(0)),
        asserta(jmlWolf(0)),
        asserta(jmlWitch(0)),
        asserta(jmlArmoredGoblin(0)),
        asserta(jmlCubicSlime(0)),
        asserta(jmlWerewolf(0)),
        asserta(jmlOgre(0)),
        asserta(jmlCursedKnight(0)),
        asserta(jmlUltimaDragon(0)),
        asserta(rewardExp(0)),
        asserta(rewardGold(0)),
        storeItem(medicine),
        storeItem(medicine),
        storeItem(medicine),
        storeItem(medicine),
        storeItem(medicine),
        asserta(weaponEquipped(woodenbow)),
        asserta(armorEquipped(none)),
        asserta(accessoryEquipped(none)),
        write('Your Job is Archer'), 
        inputStats(archer), !.
assignJob(_) :- write('Wrong input'),!.

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
        Exp < ReqExp,
        !.
levelUp :-
        expr(Exp),
        lvl(Lvl),
        ReqExp is Lvl*25,
        Exp >= ReqExp,
        NewLevel is Lvl+1,
        NewExp is Exp-ReqExp,
        inputStatsLvlUp,
        retract(lvl(_)),
        asserta(lvl(NewLevel)),
        retract(expr(_)),
        asserta(expr(NewExp)),
        write('You leveled up! You are now level '),
        write(Lvl),
        levelUp,
        !.

inputStatsLvlUp :-
        job(JobName),
        JobName = swordsman,
        att(Att),
        specialatt(SpAtt),
        def(Def),
        maxHP(MaxHP),
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
        asserta(maxHP(NewMaxHP)).
inputStatsLvlUp :-
        job(JobName),
        JobName = sorcerer,
        att(Att),
        specialatt(SpAtt),
        def(Def),
        maxHP(MaxHP),
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
        asserta(maxHP(NewMaxHP)).
inputStatsLvlUp :-
        job(JobName),
        JobName = archer,
        att(Att),
        specialatt(SpAtt),
        def(Def),
        maxHP(MaxHP),
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
        asserta(maxHP(NewMaxHP)).

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
