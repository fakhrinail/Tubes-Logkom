/* include file .pl */
:- include('status.pl').
:- include('help.pl').
:- include('map.pl').
:- include('inventory.pl').
:- include('items.pl').
:- initialization(nl).
:- initialization(write('                        [ Welcome to My World ]                     ')).
:- initialization(nl).
:- initialization(nl).
:- initialization(write('####################################################################')).
:- initialization(nl).
:- initialization(write('# 1. start       : untuk memulai petualanganmu                     #')).
:- initialization(nl).
:- initialization(write('# 2. continue    : melanjutkan permainan terakhir                  #')).
:- initialization(nl).
:- initialization(write('# 3. load        : memuat data permainan                           #')).
:- initialization(nl).
:- initialization(write('# 4. help        : menampilkan segala bantuan                      #')).
:- initialization(nl).
:- initialization(write('####################################################################')).
:- initialization(nl).

game_Menu :-
        write('####################################################################'), nl,
        write('# 1. map         : menampilkan peta                                #'), nl,
        write('# 2. condition   : menampilkan kondisi pemain terkini              #'), nl,
        write('# 3. stats       : menampilkan status pemain                       #'), nl,
        write('# 4. rucksack    : menampilkan inventory pemain                    #'), nl,
        write('# 5. shop        : mengunjungi shop                                #'), nl,
        write('# 6. save        : menyimpan data permainan                        #'), nl,
        write('# 7. load        : memuat data permainan                           #'), nl,
        write('# 8. help        : menampilkan segala bantuan                      #'), nl,
        write('####################################################################'), nl.

shop_Menu :-
        write('####################################################################'), nl,
        write('# 1. gacha                      200  gold                          #'), nl,
        write('# 2. potion                     50  gold                           #'), nl,
        write('# 3. ether                      50  gold                           #'), nl,
        write('# 4. antidote                   75  gold                           #'), nl,
        write('# 5. anti paralyze              75 gold                            #'), nl,
        write('# 6. x-Attack                   100 gold                           #'), nl,
        write('# 7. x-Defense                  100 gold                           #'), nl,
        write('# 8. exitShop                                                      #'), nl,
        write('####################################################################'), nl.