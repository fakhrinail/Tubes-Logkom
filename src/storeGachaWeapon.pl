% Use gacha weapon
storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = swordsman,
    Level > 0,
    RateGacha = 1,
    storeItem(longsword),
    write('Kamu mendapatkan longsword !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = swordsman,
    Level > 9,
    RateGacha = 2,
    storeItem(shiningsword),
    write('Kamu mendapatkan shiningsword !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = swordsman,
    Level > 19,
    RateGacha = 3,
    storeItem(imperialsword),
    write('Kamu mendapatkan imperialsword !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = swordsman,
    Level > 29,
    RateGacha = 4,
    storeItem(excalibur),
    write('Kamu mendapatkan excalibur !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = swordsman,
    Level > 39,
    RateGacha = 5,
    storeItem(ultimaweapon),
    write('Kamu mendapatkan ultimaweapon !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = archer,
    Level > 0,
    RateGacha = 1,
    storeItem(woodenbow),
    write('Kamu mendapatkan woodenbow !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = archer,
    Level > 9,
    RateGacha = 2,
    storeItem(platinumbow),
    write('Kamu mendapatkan platinumbow !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = archer,
    Level > 19,
    RateGacha = 3,
    storeItem(izanami),
    write('Kamu mendapatkan izanami !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = archer,
    Level > 29,
    RateGacha = 4,
    storeItem(omegabow),
    write('Kamu mendapatkan omegabow !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = archer,
    Level > 39,
    RateGacha = 5,
    storeItem(savetheking),
    write('Kamu mendapatkan savetheking !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = sorcerer,
    Level > 0,
    RateGacha = 1,
    storeItem(magestaff),
    write('Kamu mendapatkan magestaff !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = sorcerer,
    Level > 9,
    RateGacha = 2,
    storeItem(wizardstaff),
    write('Kamu mendapatkan wizardstaff !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = sorcerer,
    Level > 19,
    RateGacha = 3,
    storeItem(darkstaff),
    write('Kamu mendapatkan darkstaff !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = sorcerer,
    Level > 29,
    RateGacha = 4,
    storeItem(fantasia),
    write('Kamu mendapatkan fantasia !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 1,
    Jobname = sorcerer,
    Level > 39,
    RateGacha = 5,
    storeItem(savethequeen),
    write('Kamu mendapatkan savethequeen !').
