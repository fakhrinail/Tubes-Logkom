buyshop(Input_Items) :-
    Input_Items = 'gacha',
    gold(Gold),
    Gold >= 125,
    usedSpace(SpaceItems),
    SpaceItems < 100,
    Gold_remaining is Gold - 125,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    gachaSystem, !.

buyshop(Input_Items) :-
    Input_Items = 'gacha',
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl, !.

% Buy potion
buyshop(Input_Items) :-
    Input_Items = 'medicine', 
    gold(Gold),
    Gold >= 125,
    usedSpace(SpaceItems),
    SpaceItems < 100,
    Gold_remaining is Gold - 125,
    retractall(gold(_)),
    storeItem(medicine),
    asserta(gold(Gold_remaining)),
    write('Terima kasih sudah membeli !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'medicine',
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'highmedicine', 
    gold(Gold),
    Gold >= 250,
    usedSpace(SpaceItems),
    SpaceItems < 100,
    Gold_remaining is Gold - 250,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(highmedicine),
    write('Terima kasih sudah membeli !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'highmedicine',
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'megamedicine', 
    gold(Gold),
    Gold >= 500,
    usedSpace(SpaceItems),
    SpaceItems < 100,
    Gold_remaining is Gold - 500,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(megamedicine),
    write('Terima kasih sudah membeli !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'megamedicine',
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'xtramedicine', 
    gold(Gold),
    Gold >= 1000,
    usedSpace(SpaceItems),
    SpaceItems < 100,
    Gold_remaining is Gold - 1000,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(xtramedicine),
    write('Terima kasih sudah membeli !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'xtramedicine',
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'ether', 
    gold(Gold),
    Gold >= 125,
    usedSpace(SpaceItems),
    SpaceItems < 100,
    Gold_remaining is Gold - 125,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(ether),
    write('Terima kasih sudah membeli !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'ether',
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'highether', 
    gold(Gold),
    Gold >= 250,
    usedSpace(SpaceItems),
    SpaceItems < 100,
    Gold_remaining is Gold - 250,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(highether),
    write('Terima kasih sudah membeli !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'highether',
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'megaether', 
    gold(Gold),
    Gold >= 500,
    usedSpace(SpaceItems),
    SpaceItems < 100,
    Gold_remaining is Gold - 500,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(megaether),
    write('Terima kasih sudah membeli !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'megaether',
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'xtraether', 
    gold(Gold),
    Gold >= 1000,
    usedSpace(SpaceItems),
    SpaceItems < 100,
    Gold_remaining is Gold - 1000,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(xtraether),
    write('Terima kasih sudah membeli !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'xtraether',
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'elixir', 
    gold(Gold),
    Gold >= 250,
    usedSpace(SpaceItems),
    SpaceItems < 100,
    Gold_remaining is Gold - 250,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(elixir),
    write('Terima kasih sudah membeli !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'elixir',
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'highelixir', 
    gold(Gold),
    Gold >= 500,
    usedSpace(SpaceItems),
    SpaceItems < 100,
    Gold_remaining is Gold - 500,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(highelixir),
    write('Terima kasih sudah membeli !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'highelixir',
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'megaelixir', 
    gold(Gold),
    Gold >= 1000,
    usedSpace(SpaceItems),
    SpaceItems < 100,
    Gold_remaining is Gold - 1000,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(megaelixir),
    write('Terima kasih sudah membeli !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'megaelixir',
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'xtraelixir', 
    gold(Gold),
    Gold >= 2000,
    usedSpace(SpaceItems),
    SpaceItems < 100,
    Gold_remaining is Gold - 2000,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(xtraelixir),
    write('Terima kasih sudah membeli !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'xtraelixir',
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl, !.

buyshop(Input_Items) :-
    Input_Items = 'quit', 
    write('Terima kasih telah mengunjungi shop !'), !.

buyshop(_) :- 
    write('Items tidak ada di dalam shop menu'), !.
    
gachaSystem :-
    lvl(Level),
    Level < 10,
    job(Jobname),
    random(1, 3, TypeGacha),
    RateGacha is 1,
    storeGacha(TypeGacha, RateGacha, Level, Jobname).

gachaSystem :-
    lvl(Level),
    Level < 20,
    job(Jobname),
    random(1, 3, TypeGacha),
    random(1, 2, RateGacha),
    storeGacha(TypeGacha, RateGacha, Level, Jobname).

gachaSystem :-
    lvl(Level),
    Level < 30,
    job(Jobname),
    random(1, 3, TypeGacha),
    random(1, 3, RateGacha),
    storeGacha(TypeGacha, RateGacha, Level, Jobname).

gachaSystem :-
    lvl(Level),
    Level < 40,
    job(Jobname),
    random(1, 3, TypeGacha),
    random(1, 4, RateGacha),
    storeGacha(TypeGacha, RateGacha, Level, Jobname).

gachaSystem :-
    lvl(Level),
    Level < 50,
    job(Jobname),
    random(1, 3, TypeGacha),
    random(1, 5, RateGacha),
    storeGacha(TypeGacha, RateGacha, Level, Jobname).
