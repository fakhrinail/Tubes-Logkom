

/****************** BATTLE MECHANISM ***********************/

:- dynamic(spcAttTurn/1).       % untuk menghitung turn supaya bisa menggunakan special att (lagi)
:- dynamic(enemy_spawned/1).    % menandakan ada enemy yang muncul atau tidak

/* (inisiasi) */
spcAttTurn(4). % specialattturn harus > 3 agar bisa digunakan

/************************** Modifier HP and Spwaner **************************/
/* untuk memodifikasi nilai nilai variabel dynamic */
despawn_enemy :-
    retract(enemy_spawned(_)),
    retract(enemy_currHP(_)).

modifyplayerHP(X) :-
    currHP(HP),
    ModHP is HP + X,
    retract(currHP(_)),
    asserta(currHP(ModHP)).

modifyplayerexp(X) :-
    expr(Exp),
    ModExp is Exp + X,
    retract(expr(_)),
    asserta(expr(ModExp)).

modifyplayergold(X) :-
    gold(Gold),
    ModGold is Gold + X,
    retract(gold(_)),
    asserta(gold(ModGold)).

setspcAttTurn(X) :-
    retract(spcAttTurn(_)),
    asserta(spcAttTurn(X)).

modifyspcAttTurn(X) :-
    spcAttTurn(A),
    A1 is A + X,
    retract(spcAttTurn(_)),
    asserta(spcAttTurn(A1)).

modifyenemyHP(X) :-
    enemy_currHP(HP),
    ModEnemyHP is HP + X,
    retract(enemy_currHP(_)),
    asserta(enemy_currHP(ModEnemyHP)).

init_battle(Enemy) :-
    create_enemy(Enemy),
    enemy_lvl(Enemy,Lvl),
    enemy_maxHP(Enemy,HP),
    enemy_ATK(Enemy,Att),
    enemy_DEF(Enemy,Def),
    asserta(enemy_spawned(Enemy)),
    nl,
    write('Level : '), write(Lvl),nl,
    write('Health : '), write(HP),nl,
    write('Attack : '), write(Att),nl,
    write('Defence : '), write(Def),nl,
    write('What will you do?'),nl.

/******************************** Checking Condition ********************************/ 
check_condition_enemy :-
    enemy_spawned(Enemy),
    battle_gold(Enemy, Gold),
    battle_exp(Enemy, Exp),
    enemy_currHP(X),
    X =< 0,
    write('Enemy Defeated!'),nl,
    modifyplayerexp(Exp),
    modifyplayergold(Gold),
    format('You earn ~p gold and ~p exp !!',[Gold, Exp]),nl,
    questCompleted,
    despawn_enemy,
    levelUp,!.

check_condition_enemy.

check_condition_player :-
    currHP(X),
    X =< 0,
    write('You DIED !!!'),nl,
    write('Game Over.....'),nl,
    game_Over,!.    % memanggil mekanise game over

check_condition_player.

/******************************** RUN!!!! ************************************/
run :-
    enemy_spawned(Enemy),
    def(Player_def),
    enemy_ATK(Enemy,Enemy_att),
    Damage is Enemy_att - Player_def,
    modifyplayerHP(-Damage),
    format('You took ~p damages!!\n',[Damage]),
    random(0,101,Chance),                   % untuk chance gagal run
    Chance < 90,                            % chance gagal 10 persen
    write('You run for your life....'),
    modifyspcAttTurn(1),
    despawn_enemy,!.

run :-
    \+(enemy_spawned(_)),
    write('There is no enemy'),nl,!.

run :-  % run failed
    write('The enemy bloked your path!!'),nl,
    modifyspcAttTurn(1),!.

/******************************** Attack ********************************/ 

attack :-
    enemy_spawned(Enemy),
    att(Player_att),
    enemy_DEF(Enemy,Enemy_def),
    DamagetoEnemy is Player_att - Enemy_def,
    format('You deal ~p damages !',[DamagetoEnemy]),nl,
    modifyenemyHP(-DamagetoEnemy),
    check_condition_enemy,
    modifyspcAttTurn(1),
    enemy_turn,!.

attack :-
    \+(enemy_spawned(_)),
    write('There is no enemy'),nl,!.

enemy_turn :-
    enemy_spawned(Enemy),
    def(Player_def),
    enemy_ATK(Enemy,Enemy_att),
    DamagetoPlayer is Enemy_att - Player_def,
    format('You took ~p damages !',[DamagetoPlayer]),nl,
    modifyplayerHP(-DamagetoPlayer),
    check_condition_player,!.

enemy_turn :-
    \+(enemy_spawned(_)).

/******************************** Special Attack ********************************/


specialAttack :-
    spcAttTurn(T),
    T > 3,
    enemy_spawned(Enemy),
    att(Player_att),
    enemy_DEF(Enemy,Enemy_def),
    DamagetoEnemy is Player_att - Enemy_def,
    write('You use Special Atack'),nl,
    format('You deal ~p damages !',[DamagetoEnemy]),nl,
    modifyenemyHP(-DamagetoEnemy),
    check_condition_enemy,
    setspcAttTurn(0),
    enemy_turn,!.

specialAttack :-
    \+(enemy_spawned(_)),
    write('There is no enemy'),nl,!.

specialAttack :-
    spcAttTurn(T),
    T =< 3,
    write('Cant use Special attack'),nl,!.
