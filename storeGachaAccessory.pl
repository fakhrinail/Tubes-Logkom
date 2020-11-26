% Use gacha equipment

storeGacha(OutputGacha) :-
    OutputGacha = 23,
    storeItem(accessory(bandanna)),
    write('Kamu mendapatkan bandanna !').

storeGacha(OutputGacha) :-
    OutputGacha = 24,
    storeItem(accessory(cape)),
    write('Kamu mendapatkan cape !').

storeGacha(OutputGacha) :-
    OutputGacha = 25,
    storeItem(accessory(goldemblem)),
    write('Kamu mendapatkan goldemblem !').

storeGacha(OutputGacha) :-
    OutputGacha = 26,
    storeItem(accessory(spiritbelt)),
    write('Kamu mendapatkan spiritbelt !').

storeGacha(OutputGacha) :-
    OutputGacha = 27,
    storeItem(accessory(fullhelmet)),
    write('Kamu mendapatkan fullhelmet !').

storeGacha(OutputGacha) :-
    OutputGacha = 28,
    storeItem(accessory(windhat)),
    write('Kamu mendapatkan windhat !').

storeGacha(OutputGacha) :-
    OutputGacha = 29,
    storeItem(accessory(elementalhat)),
    write('Kamu mendapatkan elementalhat !').