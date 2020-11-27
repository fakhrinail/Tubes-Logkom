/* include file .pl */
:- include('battle.pl').
:- include('buyshop.pl').
:- include('cheat.pl').
:- include('enemy_Stats.pl').
:- include('shop.pl').
:- include('storeGachaAccessory.pl').
:- include('storeGachaArmor.pl').
:- include('storeGachaWeapon.pl').
:- include('status.pl').
:- include('help.pl').
:- include('map.pl').
:- include('inventory.pl').
:- include('items.pl').
:- include('quest.pl').
:- include('gameOver.pl').
:- include('saveload.pl').
:- initialization(nl).
:- initialization(write('                        [ Welcome to My World ]                     ')).
:- initialization(nl).
:- initialization(nl).
:- initialization(write('####################################################################')).
:- initialization(nl).
:- initialization(write('# 1. start       : untuk memulai petualanganmu                     #')).
:- initialization(nl).
:- initialization(write('# 2. loadgame    : untuk memuat data permainan yang disimpan       #')).
:- initialization(nl).
:- initialization(write('# 3. help        : menampilkan segala bantuan                      #')).
:- initialization(nl).
:- initialization(write('####################################################################')).
:- initialization(nl).

gameMenu :-
        write('####################################################################'), nl,
        write('# 1. map         : menampilkan peta                                #'), nl,
        write('# 2. stats       : menampilkan status pemain                       #'), nl,
        write('# 3. inventory   : menampilkan inventory pemain                    #'), nl,
        write('# 4. shop        : mengunjungi shop                                #'), nl,
        write('# 5. help        : menampilkan segala bantuan                      #'), nl,
        write('# 6. savegame    : menyimpan data permainan                        #'), nl,
        write('####################################################################'), nl.