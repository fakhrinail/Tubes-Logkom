% Use gacha weapon
storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = swordsman,
    Level > 0,
    RateGacha = 1,
    storeItem(weapon(longsword)),
    write('Kamu mendapatkan longsword !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = swordsman,
    Level > 9,
    RateGacha = 2,
    storeItem(weapon(shiningsword)),
    write('Kamu mendapatkan shiningsword !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = swordsman,
    Level > 19,
    RateGacha = 3,
    storeItem(weapon(imperialsword)),
    write('Kamu mendapatkan imperialsword !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = swordsman,
    Level > 29,
    RateGacha = 4,
    storeItem(weapon(excalibur)),
    write('Kamu mendapatkan excalibur !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = swordsman,
    Level > 39,
    RateGacha = 5,
    storeItem(weapon(ultimaweapon)),
    write('Kamu mendapatkan ultimaweapon !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = archer,
    Level > 0,
    RateGacha = 1,
    storeItem(weapon(woodenbow)),
    write('Kamu mendapatkan woodenbow !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = archer,
    Level > 9,
    RateGacha = 2,
    storeItem(weapon(platinumbow)),
    write('Kamu mendapatkan platinumbow !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = archer,
    Level > 19,
    RateGacha = 3,
    storeItem(weapon(izanami)),
    write('Kamu mendapatkan izanami !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = archer,
    Level > 29,
    RateGacha = 4,
    storeItem(weapon(omegabow)),
    write('Kamu mendapatkan omegabow !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = archer,
    Level > 39,
    RateGacha = 5,
    storeItem(weapon(savetheking)),
    write('Kamu mendapatkan savetheking !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = sorcerer,
    Level > 0,
    RateGacha = 1,
    storeItem(weapon(magestaff)),
    write('Kamu mendapatkan magestaff !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = sorcerer,
    Level > 9,
    RateGacha = 2,
    storeItem(weapon(wizardstaff)),
    write('Kamu mendapatkan wizardstaff !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = sorcerer,
    Level > 19,
    RateGacha = 3,
    storeItem(weapon(darkstaff)),
    write('Kamu mendapatkan darkstaff !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = sorcerer,
    Level > 29,
    RateGacha = 4,
    storeItem(weapon(fantasia)),
    write('Kamu mendapatkan fantasia !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = sorcerer,
    Level > 39,
    RateGacha = 5,
    storeItem(weapon(savethequeen)),
    write('Kamu mendapatkan savethequeen !').
