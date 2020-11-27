/* fakta enemy */
:- dynamic(enemy_currHP/1).

% deklarasi enemy
% enemy(variabel_enemy,nama_enemy indeks_enemy);
enemy(goblin,'a Goblin',1).
enemy(slime,'a Slime',2).
enemy(wolf,'a Wolf',3).
enemy(witch,'a Witch',4).
enemy(armoredGoblin,'an Armored Goblin',5).
enemy(cubicSlime,'a Cubic Slime',6).
enemy(werewolf,'a Werewolf',7).
enemy(ogre,'an Ogre',8).
enemy(cursedKnight,'a Cursed Knight',9).
enemy(ultimaDragon,'an Ultima Dragon',10).
enemy(tugasBesar,'Dungeon Boss',11).

% maxHP enemy
enemy_maxHP(goblin, 100).
enemy_maxHP(slime, 60).
enemy_maxHP(wolf, 400).
enemy_maxHP(witch, 800).
enemy_maxHP(armoredGoblin, 1200).
enemy_maxHP(cubicSlime, 1000).
enemy_maxHP(werewolf, 2000).
enemy_maxHP(ogre, 4000).
enemy_maxHP(cursedKnight, 8000).
enemy_maxHP(ultimaDragon, 12000).
enemy_maxHP(tugasBesar, 25000). % final boss

% ATK enemy
enemy_ATK(goblin, 65).
enemy_ATK(slime, 75).
enemy_ATK(wolf, 120).
enemy_ATK(witch, 250).
enemy_ATK(armoredGoblin, 400).
enemy_ATK(cubicSlime, 650).
enemy_ATK(werewolf, 750).
enemy_ATK(ogre, 1000).
enemy_ATK(cursedKnight, 1200).
enemy_ATK(ultimaDragon, 1500).
enemy_ATK(tugasBesar, 2500). % final boss

% DEF enemy
enemy_DEF(goblin, 30).
enemy_DEF(slime, 25).
enemy_DEF(wolf, 35).
enemy_DEF(witch, 35).
enemy_DEF(armoredGoblin, 200).
enemy_DEF(cubicSlime, 150).
enemy_DEF(werewolf, 300).
enemy_DEF(ogre, 500).
enemy_DEF(cursedKnight, 900).
enemy_DEF(ultimaDragon, 600).
enemy_DEF(tugasBesar, 900). % final boss

% lvl enemy
enemy_lvl(goblin, 5).
enemy_lvl(slime, 5).
enemy_lvl(wolf, 10).
enemy_lvl(witch, 15).
enemy_lvl(armoredGoblin, 20).
enemy_lvl(cubicSlime, 20).
enemy_lvl(werewolf, 25).
enemy_lvl(ogre, 30).
enemy_lvl(cursedKnight, 40).
enemy_lvl(ultimaDragon, 50).
enemy_lvl(tugasBesar, 60). % final boss

% battle_gold yang didapat setelah mengalahkan enemy
battle_gold(goblin, 200).
battle_gold(slime, 100).
battle_gold(wolf, 300).
battle_gold(witch, 600).
battle_gold(armoredGoblin, 1000).
battle_gold(cubicSlime, 800).
battle_gold(werewolf, 2000).
battle_gold(ogre, 4500).
battle_gold(cursedKnight, 7500).
battle_gold(ultimaDragon, 10000).
battle_gold(tugasBesar, 1000000). % final boss

% battle_exp yang didapat setelah mengalahkan enemy
battle_exp(goblin, 250).
battle_exp(slime, 100).
battle_exp(wolf, 800).
battle_exp(witch, 1000).
battle_exp(armoredGoblin, 1600).
battle_exp(cubicSlime, 1300).
battle_exp(werewolf, 3100).
battle_exp(ogre, 6250).
battle_exp(cursedKnight, 12500).
battle_exp(ultimaDragon, 25000).
battle_exp(tugasBesar, 50000). % final boss

% game combat
create_enemy(goblin) :-
    asserta(enemy_currHP(100)).

create_enemy(slime) :-
    asserta(enemy_currHP(60)).

create_enemy(wolf) :-
    asserta(enemy_currHP(400)).

create_enemy(witch) :-
    asserta(enemy_currHP(800)).

create_enemy(armoredGoblin) :-
    asserta(enemy_currHP(1200)).

create_enemy(cubicSlime) :-
    asserta(enemy_currHP(1000)).

create_enemy(werewolf) :-
    asserta(enemy_currHP(2000)).

create_enemy(ogre) :-
    asserta(enemy_currHP(4000)).

create_enemy(cursedKnight) :-
    asserta(enemy_currHP(8000)).

create_enemy(ultimaDragon) :-
    asserta(enemy_currHP(12000)).

create_enemy(tugasBesar) :-
    asserta(enemy_currHP(25000)).
