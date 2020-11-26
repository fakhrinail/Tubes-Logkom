/* include file .pl */
:- include('batle.pl').
:- include('buyshop.pl').
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

gameMenu :-
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