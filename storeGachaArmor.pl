% Use gacha armor
storeGacha(TypeGacha, RateGacha, Level, _) :-
    TypeGacha = 2,
    Level > 0,
    RateGacha = 1,
    storeItem(armor(robe)),
    write('Kamu mendapatkan robe !').

storeGacha(TypeGacha, RateGacha, Level, _) :-
    TypeGacha = 2,
    Level > 9,
    RateGacha = 2,
    storeItem(armor(brassarmor)),
    write('Kamu mendapatkan brassarmor !').

storeGacha(TypeGacha, RateGacha, Level, _) :-
    TypeGacha = 2,
    Level > 19,
    RateGacha = 3,
    storeItem(armor(chainmail)),
    write('Kamu mendapatkan chainmail !').

storeGacha(TypeGacha, RateGacha, Level, _) :-
    TypeGacha = 2,
    Level > 29,
    RateGacha = 4,
    storeItem(armor(silverarmor)),
    write('Kamu mendapatkan silverarmor !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 2,
    Jobname = swordsman,
    Level > 39,
    RateGacha = 5,
    storeItem(armor(dragonarmor)),
    write('Kamu mendapatkan dragonarmor !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 2,
    Jobname = archer,
    Level > 39,
    RateGacha = 5,
    storeItem(armor(bloodarmor)),
    write('Kamu mendapatkan bloodarmor !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 2,
    Jobname = sorcerer,
    Level > 39,
    RateGacha = 5,
    storeItem(armor(dreamrobe)),
    write('Kamu mendapatkan dreamrobe !').
