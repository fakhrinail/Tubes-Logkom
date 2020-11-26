:- dynamic(isOnQuest/1).
:- dynamic(jmlGoblin/1).
:- dynamic(jmlSlime/1).
:- dynamic(jmlWolf/1).
:- dynamic(jmlWitch/1).
:- dynamic(jmlArmoredGoblin/1).
:- dynamic(jmlCubicSlime/1).
:- dynamic(jmlWerewolf/1).
:- dynamic(jmlOgre/1).
:- dynamic(jmlCursedKnight/1).
:- dynamic(jmlUltimaDragon/1).
:- dynamic(rewardGold/1).
:- dynamic(rewardExp/1).

(jmlGoblin(0)).
(jmlSlime(0)).
(jmlWolf(0)).
(jmlWitch(0)).
(jmlArmoredGoblin(0)).
(jmlCubicSlime(0)).
(jmlWerewolf(0)).
(jmlOgre(0)).
(jmlCursedKnight(0)).
(jmlUltimaDragon(0)).

isOnQuest(0). % tanda gaada quest

quest :- 
    isOnQuest(Status),
    Status is 0,
    write("Berhasil ambil quest"),
    lvl(Lvl),
    Lvl =< 5,
    random(1,4,X),
    retract(jmlGoblin(_)),
    asserta(jmlGoblin(X)),
    random(1,4,Y),
    retract(jmlSlime(_)),
    asserta(jmlSlime(Y)),
    retract(rewardGold(_)),
    RewardGold is (X+Y)*10,
    asserta(rewardGold(RewardGold)),
    retract(rewardGExp(_)),
    RewardExp is (X+Y)*10,
    asserta(rewardExp(RewardExp)),
    retract(isOnQuest(_)),
    asserta(isOnQuest(1)),
    write("Selamat Anda beruntung! Kalahkan "), write(X), write(" Slime dan "), write(Y), write(" Goblin untuk dapatkan reward").
quest :- 
    isOnQuest(Status),
    Status is 0,
    lvl(Lvl),
    Lvl =< 10,
    random(1,4,X),
    retract(jmlGoblin(_)),
    asserta(jmlGoblin(X)),
    random(1,4,Y),
    retract(jmlSlime(_)),
    asserta(jmlSlime(Y)),
    random(1,4,Z),
    retract(jmlWolf(_)),
    asserta(jmlWolf(Z)),
    retract(rewardGold(_)),
    RewardGold is (X+Y+Z)*15,
    asserta(rewardGold(RewardGold)),
    retract(rewardGExp(_)),
    RewardExp is (X+Y+Z)*15,
    asserta(rewardExp(RewardExp)),
    retract(isOnQuest(_)),
    asserta(isOnQuest(1)),
    write("Selamat Anda beruntung! Kalahkan "), write(X), write(" Slime, "), write(Y), write(" Goblin dan "), write(Z), write(" Wolf untuk dapatkan reward").
quest :- 
    isOnQuest(Status),
    Status is 0,
    lvl(Lvl),
    Lvl =< 15,
    random(1,4,X),
    retract(jmlWolf(_)),
    asserta(jmlWolf(X)),
    random(1,4,Y),
    retract(jmlWitch(_)),
    asserta(jmlWitch(Y)),
    retract(rewardGold(_)),
    RewardGold is (X+Y)*20,
    asserta(rewardGold(RewardGold)),
    retract(rewardGExp(_)),
    RewardExp is (X+Y)*20,
    asserta(rewardExp(RewardExp)),
    retract(isOnQuest(_)),
    asserta(isOnQuest(1)),
    write("Selamat Anda beruntung! Kalahkan "), write(X), write(" Wolf dan "), write(Y), write(" Witch untuk dapatkan reward").
quest :- 
    isOnQuest(Status),
    Status is 0,
    lvl(Lvl),
    Lvl =< 20,
    random(1,4,W),
    retract(jmlWitch(_)),
    asserta(jmlWitch(W)),
    random(1,4,X),
    retract(jmlArmoredGoblin(_)),
    asserta(jmlArmoredGoblin(X)),
    random(1,4,Y),
    retract(jmlCubicSlime(_)),
    asserta(jmlCubicSlime(Y)),
    random(1,4,Z),
    retract(jmlWerewolf(_)),
    asserta(jmlWerewolf(Z)),
    retract(rewardGold(_)),
    RewardGold is (W+X+Y+Z)*25,
    asserta(rewardGold(RewardGold)),
    retract(rewardGExp(_)),
    RewardExp is (W+X+Y+Z)*25,
    asserta(rewardExp(RewardExp)),
    retract(isOnQuest(_)),
    asserta(isOnQuest(1)),
    write("Selamat Anda beruntung! Kalahkan "), write(W), write(" Witch, "), write(X), write(" Armored Goblin, "), write(Y), write(" Cubic Slime dan "), write(Z), write(" Werewolf untuk dapatkan reward").
quest :- 
    isOnQuest(Status),
    Status is 0,
    lvl(Lvl),
    Lvl =< 30,
    random(1,4,W),
    retract(jmlArmoredGoblin(_)),
    asserta(jmlArmoredGoblin(W)),
    random(1,4,X),
    retract(jmlCubicSlime(_)),
    asserta(jmlCubicSlime(X)),
    random(1,4,Y),
    retract(jmlWerewolf(_)),
    asserta(jmlWerewolf(Y)),
    random(1,4,Z),
    retract(jmlOgre(_)),
    asserta(jmlOgre(Z)),
    retract(rewardGold(_)),
    RewardGold is (W+X+Y+Z)*30,
    asserta(rewardGold(RewardGold)),
    retract(rewardGExp(_)),
    RewardExp is (W+X+Y+Z)*30,
    asserta(rewardExp(RewardExp)),
    retract(isOnQuest(_)),
    asserta(isOnQuest(1)),
    write("Selamat Anda beruntung! Kalahkan "), write(W), write(" Armored Goblin, "), write(X), write(" Cubic Slime, "), write(Y), write(" Werewolf dan "), write(Z), write(" Ogre untuk dapatkan reward").
quest :- 
    isOnQuest(Status),
    Status is 0,
    lvl(Lvl),
    Lvl =< 40,
    random(1,4,X),
    retract(jmlWerewolf(_)),
    asserta(jmlWerewolf(X)),
    random(1,4,Y),
    retract(jmlOgre(_)),
    asserta(jmlOgre(Y)),
    random(1,4,Z),
    retract(jmlCursedKnight(_)),
    asserta(jmlCursedKnight(Z)),
    retract(rewardGold(_)),
    RewardGold is (X+Y+Z)*50,
    asserta(rewardGold(RewardGold)),
    retract(rewardGExp(_)),
    RewardExp is (X+Y+Z)*50,
    asserta(rewardExp(RewardExp)),
    retract(isOnQuest(_)),
    asserta(isOnQuest(1)),
    write("Selamat Anda beruntung! Kalahkan "), write(X), write(" Werewolf, "), write(Y), write(" Ogre dan "), write(Z), write(" Cursed Knight untuk dapatkan reward").
quest :- 
    isOnQuest(Status),
    Status is 0,
    lvl(Lvl),
    Lvl =< 50,
    random(1,4,X),
    retract(jmlOgre(_)),
    asserta(jmlOgre(X)),
    random(1,4,Y),
    retract(jmlCursedKnight(_)),
    asserta(jmlCursedKnight(Y)),
    random(1,4,Z),
    retract(jmlUltimaDragon(_)),
    asserta(jmlUltimaDragon(Z)),
    retract(rewardGold(_)),
    RewardGold is (X+Y+Z)*100,
    asserta(rewardGold(RewardGold)),
    retract(rewardGExp(_)),
    RewardExp is (X+Y+Z)*100,
    asserta(rewardExp(RewardExp)),
    retract(isOnQuest(_)),
    asserta(isOnQuest(1)),
    write("Selamat Anda beruntung! Kalahkan "), write(X), write(" Ogre, "), write(Y), write(" Cursed Knight dan "), write(Z), write(" Ultima Dragon untuk dapatkan reward").
quest :- 
    isOnQuest(Status),
    Status is 0,
    lvl(Lvl),
    Lvl > 50,
    write("Udah OP langsung bantai boss").

% ngasih reward quest
questCompleted :-
    isOnQuest(Status),
    Status is 0,
    isQuestCompleted,
    gold(Gold),
    expr(Expr),
    rewardGold(RewardGold),
    rewardExp(RewardExp),
    NewGold is Gold+RewardGold,
    NewExpr is Expr+RewardExp,
    retract(gold(_)),
    asserta(gold(NewGold)),
    retract(expr(_)),
    asserta(expr(NewExpr)),
    retract(isOnQuest(_)),
    asserta(isOnQuest(0)).

% cek isQuestCompleted tiap habis battle
isQuestCompleted :-
    (jmlGoblin(targetGoblin)),
    (jmlSlime(targetSlime)),
    (jmlWolf(targetWolf)),
    (jmlWitch(targetWitch)),
    (jmlArmoredGoblin(targetArmoredGoblin)),
    (jmlCubicSlime(targetCubicSlime)),
    (jmlWerewolf(targetWerewolf)),
    (jmlOgre(targetOgre)),
    (jmlCursedKnight(targetCursedKnight)),
    (jmlUltimaDragon(targetUltimaDragon)),
    targetGoblin is 0,
    targetSlime is 0,
    targetWolf is 0,
    targetWerewolf is 0,
    targetWitch is 0,
    targetArmoredGoblin is 0,
    targetCubicSlime is 0,
    targetOgre is 0,
    targetCursedKnight is 0,
    targetUltimaDragon is 0.