% Use gacha accessory
storeGacha(TypeGacha, RateGacha, Level, _) :-
    TypeGacha = 3,
    Level > 0,
    RateGacha = 1,
    storeItem(accessory(bandanna)),
    write('Kamu mendapatkan bandanna !').

storeGacha(TypeGacha, RateGacha, Level, _) :-
    TypeGacha = 3,
    Level > 9,
    RateGacha = 2,
    storeItem(accessory(cape)),
    write('Kamu mendapatkan cape !').

storeGacha(TypeGacha, RateGacha, Level, _) :-
    TypeGacha = 3,
    Level > 19,
    RateGacha = 3,
    storeItem(accessory(goldemblem)),
    write('Kamu mendapatkan goldemblem !').

storeGacha(TypeGacha, RateGacha, Level, _) :-
    TypeGacha = 3,
    Level > 29,
    RateGacha = 4,
    storeItem(accessory(spiritbelt)),
    write('Kamu mendapatkan spiritbelt !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 3,
    Jobname = swordsman,
    Level > 39,
    RateGacha = 5,
    storeItem(accessory(fullhelmet)),
    write('Kamu mendapatkan fullhelmet !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 3,
    Jobname = archer,
    Level > 39,
    RateGacha = 5,
    storeItem(accessory(windhat)),
    write('Kamu mendapatkan windhat !').

storeGacha(TypeGacha, RateGacha, Level, Jobname) :-
    TypeGacha = 3,
    Jobname = sorcerer,
    Level > 39,
    RateGacha = 5,
    storeItem(accessory(elementalhat)),
    write('Kamu mendapatkan elementalhat !').