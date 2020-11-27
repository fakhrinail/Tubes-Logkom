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
    Input_Items = 'gacha', nl,
    write('[ShopKeeper] Not enough space or gold to buy this items !'), nl,
    loopShop, !.

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
    loopShop, !.

buyshop(Input_Items) :-
    Input_Items = 'medicine', nl,
    write('[ShopKeeper] Not enough space or gold to buy this items !'), nl,
    loopShop, !.

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
    loopShop, !.

buyshop(Input_Items) :-
    Input_Items = 'highmedicine', nl,
    write('[ShopKeeper] Not enough space or gold to buy this items !'), nl,
    loopShop, !.

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
    loopShop, !.

buyshop(Input_Items) :-
    Input_Items = 'megamedicine', nl,
    write('[ShopKeeper] Not enough space or gold to buy this items !'), nl,
    loopShop, !.

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
    loopShop, !.

buyshop(Input_Items) :-
    Input_Items = 'xtramedicine', nl,
    write('[ShopKeeper] Not enough space or gold to buy this items !'), nl,
    loopShop, !.

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
    loopShop, !.

buyshop(Input_Items) :-
    Input_Items = 'ether', nl,
    write('[ShopKeeper] Not enough space or gold to buy this items !'), nl,
    loopShop, !.

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
    loopShop, !.

buyshop(Input_Items) :-
    Input_Items = 'highether', nl,
    write('[ShopKeeper] Not enough space or gold to buy this items !'), nl,
    loopShop, !.

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
    loopShop, !.

buyshop(Input_Items) :-
    Input_Items = 'megaether', nl,
    write('[ShopKeeper] Not enough space or gold to buy this items !'), nl,
    loopShop, !.

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
    loopShop, !.

buyshop(Input_Items) :-
    Input_Items = 'xtraether', nl,
    write('[ShopKeeper] Not enough space or gold to buy this items !'), nl,
    loopShop, !.

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
    loopShop, !.

buyshop(Input_Items) :-
    Input_Items = 'elixir', nl,
    write('[ShopKeeper] Not enough space or gold to buy this items !'), nl,
    loopShop, !.

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
    loopShop, !.

buyshop(Input_Items) :-
    Input_Items = 'highelixir', nl,
    write('[ShopKeeper] Not enough space or gold to buy this items !'), nl,
    loopShop, !.

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
    loopShop, !.

buyshop(Input_Items) :-
    Input_Items = 'megaelixir', nl,
    write('[ShopKeeper] Not enough space or gold to buy this items !'), nl,
    loopShop, !.

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
    loopShop, !.

buyshop(Input_Items) :-
    Input_Items = 'xtraelixir', nl,
    write('[ShopKeeper] Not enough space or gold to buy this items !'), nl,
    loopShop, !.

buyshop(Input_Items) :-
    Input_Items = 'quit', nl,
    write('[ShopKeeper] Thank you for visiting my shop !'), !.

buyshop(_) :- 
    nl,
    write('[ShopKeeper] There is no such item in shop menu !'), nl,
    loopShop, !.
    
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

loopShop :-
    nl,
    write('[ShopKeeper] Is there anything else do you want to buy?'), nl,
    read(Input_Items), 
    buyshop(Input_Items), !.