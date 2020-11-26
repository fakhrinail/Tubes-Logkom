% Use gacha equipment
storeGacha(OutputGacha) :-
    OutputGacha = 16,
    storeItem(armor(robe)),
    write('Kamu mendapatkan robe !').

storeGacha(OutputGacha) :-
    OutputGacha = 17,
    storeItem(armor(brassarmor)),
    write('Kamu mendapatkan brassarmor !').

storeGacha(OutputGacha) :-
    OutputGacha = 18,
    storeItem(armor(chainmail)),
    write('Kamu mendapatkan chainmail !').

storeGacha(OutputGacha) :-
    OutputGacha = 19,
    storeItem(armor(silverarmor)),
    write('Kamu mendapatkan silverarmor !').

storeGacha(OutputGacha) :-
    OutputGacha = 20,
    storeItem(armor(dragonarmor)),
    write('Kamu mendapatkan dragonarmor !').

storeGacha(OutputGacha) :-
    OutputGacha = 21,
    storeItem(armor(bloodarmor)),
    write('Kamu mendapatkan bloodarmor !').

storeGacha(OutputGacha) :-
    OutputGacha = 22,
    storeItem(armor(dreamrobe)),
    write('Kamu mendapatkan dreamrobe !').
