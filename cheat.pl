/* cheat.pl */
teleport :- write('   X 1 2 3 4 5 6 7 8 9 10'), nl,
            write(' Y # # # # # # # # # # # #'), nl,
            write(' 1 # _ _ _ _ _ _ _ _ _ _ #'), nl,
            write(' 2 # _ _ _ _ _ _ _ _ _ _ #'), nl,
            write(' 3 # _ _ _ _ _ _ _ _ _ _ #'), nl,
            write(' 4 # _ _ _ _ _ _ _ _ _ _ #'), nl,
            write(' 5 # _ _ _ # # _ _ _ _ _ #'), nl,
            write(' 6 # _ _ _ _ # # _ _ _ _ #'), nl,
            write(' 7 # _ _ _ _ # # _ _ _ _ #'), nl,
            write(' 8 # _ _ _ _ _ # # _ _ _ #'), nl,
            write(' 9 # _ _ _ _ _ _ _ _ _ _ #'), nl,
            write('10 # _ _ _ _ _ _ _ _ _ _ #'), nl,
            write('11 # _ _ _ _ _ _ _ _ _ _ #'), nl,
            write('12 # _ _ _ _ _ _ _ _ _ _ #'), nl,
            write('   # # # # # # # # # # # #'), nl, nl,
            write('Where do you want to teleport?'), nl,
            write('X = '), read(NewX), nl,
            write('Y = '), read(NewY), nl,
            initmap(M),
            position(player,X,Y),
            replace_elmt('_',M,M1,X+1,Y+1),
            replace_elmt('P',M1,M2,NewX+1,NewY+1),
            retract(initmap(_)),
            asserta(initmap(M2)),
            retract(position(player,_,_)),
            asserta(position(player,NewX,NewY)),
            write('Teleporting to ('), write(NewX), write(','), write(NewY), write(').'), nl, !.

pleasegivemegodkit :-   job(Class),
                        (Class == swordsman ->
                        storeItem(ultimaweapon), weaponEquipped(Weapon),
                        (Weapon == none -> equipWeapon(ultimaweapon);
                        unequipWeapon(Weapon),equipWeapon(ultimaweapon)),
                        storeItem(dragonarmor), armorEquipped(Armor),
                        (Armor == none -> equipArmor(dragonarmor);
                        unequipArmor(Armor),equipArmor(dragonarmor)),
                        storeItem(fullhelmet), accessoryEquipped(Accessory),
                        (Accessory == none -> equipAccessory(fullhelmet);
                        unequipWeapon(Accessory),equipAccessory(fullhelmet));

                        Class == archer ->
                        storeItem(savetheking), weaponEquipped(Weapon),
                        (Weapon == none -> equipWeapon(savetheking);
                        unequipWeapon(Weapon),equipWeapon(savetheking)),
                        storeItem(bloodarmor), armorEquipped(Armor),
                        (Armor == none -> equipArmor(bloodarmor);
                        unequipArmor(Armor),equipArmor(bloodarmor)),
                        storeItem(windhat), accessoryEquipped(Accessory),
                        (Accessory == none -> equipAccessory(windhat);
                        unequipWeapon(Accessory),equipAccessory(windhat));

                        Class == sorcerer ->
                        storeItem(savethequeen), weaponEquipped(Weapon),
                        (Weapon == none -> equipWeapon(savethequeen);
                        unequipWeapon(Weapon),equipWeapon(savethequeen)),
                        storeItem(dreamrobe), armorEquipped(Armor),
                        (Armor == none -> equipArmor(dreamrobe);
                        unequipArmor(Armor),equipArmor(dreamrobe)),
                        storeItem(elementalhat), accessoryEquipped(Accessory),
                        (Accessory == none -> equipAccessory(elementalhat);
                        unequipWeapon(Accessory),equipAccessory(elementalhat));
                        write('No job')),

                        storeItem(xtraelixir),
                        storeItem(xtraelixir),
                        storeItem(xtraelixir),
                        storeItem(xtraelixir),
                        storeItem(xtraelixir),
                        storeItem(xtraelixir),
                        storeItem(xtraelixir),
                        storeItem(xtraelixir),
                        storeItem(xtraelixir),
                        write('You are equipped with god equipments.').

moneymoneymoney :-  retract(gold(Gold)),
                    asserta(gold(999999999)),
                    write('You are hella rich.').

iamgod :-   retract(maxHP(MaxHP)), asserta(maxHP(9999)),
            retract(currHP(CurrentHP)), asserta(currHP(9999)),  
            retract(att(Attack)), asserta(att(9999)),
            retract(def(Defense)), asserta(def(9999)),
            retract(expr(Exp)), asserta(expr(999999)),
            levelUp,
            write('You are GOD.').