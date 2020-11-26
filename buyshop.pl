buyshop(Input_Items) :-
    Input_Items = 'gacha',
    gold(Gold),
    Gold >= 125,
    usedSpace(spaceItems),
    spaceItems < 100 ->
    Gold_remaining is Gold - 125,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    random(1, 29, OutputGacha),
    storeGacha(OutputGacha);
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl.

% Buy potion
buyshop(Input_Items) :-
    Input_Items = 'medicine', 
    gold(Gold),
    Gold >= 125,
    usedSpace(spaceItems),
    spaceItems < 100 ->
    Gold_remaining is Gold - 125,
    storeItem(potion(medicine)),
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    write('Terima kasih sudah membeli !'), nl;
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl.

buyshop(Input_Items) :-
    Input_Items = 'highmedicine', 
    gold(Gold),
    Gold >= 250,
    usedSpace(spaceItems),
    spaceItems < 100 ->
    Gold_remaining is Gold - 250,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(potion(highmedicine)),
    write('Terima kasih sudah membeli !'), nl;
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl.

buyshop(Input_Items) :-
    Input_Items = 'megamedicine', 
    gold(Gold),
    Gold >= 500,
    usedSpace(spaceItems),
    spaceItems < 100 ->
    Gold_remaining is Gold - 500,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(potion(megamedicine)),
    write('Terima kasih sudah membeli !'), nl;
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl.

buyshop(Input_Items) :-
    Input_Items = 'xtramedicine', 
    gold(Gold),
    Gold >= 1000,
    usedSpace(spaceItems),
    spaceItems < 100 ->
    Gold_remaining is Gold - 1000,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(potion(xtramedicine)),
    write('Terima kasih sudah membeli !'), nl;
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl.

buyshop(Input_Items) :-
    Input_Items = 'ether', 
    gold(Gold),
    Gold >= 125,
    usedSpace(spaceItems),
    spaceItems < 100 ->
    Gold_remaining is Gold - 125,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(potion(ether)),
    write('Terima kasih sudah membeli !'), nl;
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl.

buyshop(Input_Items) :-
    Input_Items = 'highether', 
    gold(Gold),
    Gold >= 250,
    usedSpace(spaceItems),
    spaceItems < 100 ->
    Gold_remaining is Gold - 250,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(potion(highether)),
    write('Terima kasih sudah membeli !'), nl;
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl.

buyshop(Input_Items) :-
    Input_Items = 'megaether', 
    gold(Gold),
    Gold >= 500,
    usedSpace(spaceItems),
    spaceItems < 100 ->
    Gold_remaining is Gold - 500,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(potion(megaether)),
    write('Terima kasih sudah membeli !'), nl;
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl.

buyshop(Input_Items) :-
    Input_Items = 'xtraether', 
    gold(Gold),
    Gold >= 1000,
    usedSpace(spaceItems),
    spaceItems < 100 ->
    Gold_remaining is Gold - 1000,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(potion(xtraether)),
    write('Terima kasih sudah membeli !'), nl;
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl.

buyshop(Input_Items) :-
    Input_Items = 'elixir', 
    gold(Gold),
    Gold >= 250,
    usedSpace(spaceItems),
    spaceItems < 100 ->
    Gold_remaining is Gold - 250,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(potion(elixir)),
    write('Terima kasih sudah membeli !'), nl;
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl.

buyshop(Input_Items) :-
    Input_Items = 'highelixir', 
    gold(Gold),
    Gold >= 500,
    usedSpace(spaceItems),
    spaceItems < 100 ->
    Gold_remaining is Gold - 500,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(potion(highelixir)),
    write('Terima kasih sudah membeli !'), nl;
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl.

buyshop(Input_Items) :-
    Input_Items = 'megaelixir', 
    gold(Gold),
    Gold >= 1000,
    usedSpace(spaceItems),
    spaceItems < 100 ->
    Gold_remaining is Gold - 1000,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(potion(megaelixir)),
    write('Terima kasih sudah membeli !'), nl;
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl.

buyshop(Input_Items) :-
    Input_Items = 'xtraelixir', 
    gold(Gold),
    Gold >= 2000,
    usedSpace(spaceItems),
    spaceItems < 100 ->
    Gold_remaining is Gold - 2000,
    retractall(gold(_)),
    asserta(gold(Gold_remaining)),
    storeItem(potion(xtraelixir)),
    write('Terima kasih sudah membeli !'), nl;
    write('Tidak punya cukup ruang atau gold untuk membeli items ini !'), nl.

buyshop(Input_Items) :-
    Input_Items = 'quit', 
    write('Terima kasih telah mengunjungi shop !').

buyshop(_) :- 
    write('Items tidak ada di dalam shop menu').
    
