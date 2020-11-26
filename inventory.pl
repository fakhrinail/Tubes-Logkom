/* inventory.pl */

:- dynamic(usedSpace/1).
:- dynamic(stored/2).
:- dynamic(weaponEquipped/1).
:- dynamic(armorEquipped/1).
:- dynamic(accessoryEquipped/1).

inventory(X) :- usedSpace(X).

isInInventory(X) :- stored(X,Y), Y > 0.

countItemInventory(Item, Count) :- stored(Item, Count).

storeItem(X) :- (inventory(UsedSpace), UsedSpace < 100 ->
                (stored(X,Y) -> retract(stored(X,Y)), Z is Y+1, 
                asserta(stored(X,Z)), retract(usedSpace(UsedSpace)), 
                NewUsedSpace is UsedSpace + 1, asserta(usedSpace(NewUsedSpace));
                asserta(stored(X,1)), retract(usedSpace(UsedSpace)), 
                NewUsedSpace is UsedSpace + 1, asserta(usedSpace(NewUsedSpace))),
                write('Item telah ditambahkan ke inventory.'), nl;
                write('Inventory Anda sudah penuh.'), nl).

discardItem(Item, X) :- (isInInventory(Item) -> stored(Item, Y), Z is Y-X, 
                        (Z =< 0 -> retract(stored(Item, Y)), retract(usedSpace(UsedSpace)),
                        NewUsedSpace is UsedSpace - Y, asserta(usedSpace(NewUsedSpace));
                        retract(stored(Item, Y)), asserta(stored(Item, Z)), retract(usedSpace(UsedSpace)),
                        NewUsedSpace is UsedSpace - X, asserta(usedSpace(NewUsedSpace))),
                        write('Item telah dibuang.'), nl;
                        write('Anda tidak memiliki item yang mau dibuang.'), nl).

inventory :- write('Kapasitas inventory : '), inventory(X), write(X), write('/'), write('100.'), nl,
             write('Daftar barang : '), nl, nl,
             forall((isInInventory(Item)), 
             (countItemInventory(Item, CountItem), write(Item), write(' ('), write(CountItem), write(') '), nl)), nl.

equipWeapon(Item) :-    (isInInventory(Item), weapon(Item, Class, Attack, Defense),
                        job(Class) -> 
                        (weaponEquipped(Equipped), Equipped \== none -> unequipWeapon(_);
                        retract(weaponEquipped(none))), 
                        asserta(weaponEquipped(Item)), retract(stored(Item,X)), 
                        Y is X-1, asserta(stored(Item,Y)),
                        retract(att(CurrentAttack)), NewAttack is CurrentAttack + Attack,
                        asserta(att(NewAttack)),
                        retract(def(CurrentDefense)), NewDefense is CurrentDefense + Defense,
                        asserta(def(NewDefense)),
                        retract(usedSpace(UsedSpace)), NewUsedSpace is UsedSpace - 1,
                        asserta(usedSpace(NewUsedSpace)), write(Item), write(' digunakan.'), nl;
                        \+(isInInventory(Item)) -> write('Senjata ini tidak ada di inventory Anda.'), nl;
                        write('Senjata ini tidak bisa digunakan dengan job Anda.'), nl).

unequipWeapon(Item) :-  (weaponEquipped(Item) -> (weapon(Item, Class, Attack, Defense),
                        retract(att(CurrentAttack)), NewAttack is CurrentAttack - Attack,
                        asserta(att(NewAttack)),
                        retract(def(CurrentDefense)), NewDefense is CurrentDefense - Defense,
                        asserta(def(NewDefense))),
                        (stored(Item,X) -> retract(stored(Item,X)), 
                        Y is X + 1, asserta(stored(Item, Y));
                        asserta(stored(Item,1))), asserta(weaponEquipped(none)),
                        inventory(UsedSpace), UsedSpace < 100,
                        retract(weaponEquipped(Item)), retract(usedSpace(UsedSpace)),
                        NewUsedSpace is UsedSpace + 1, asserta(usedSpace(NewUsedSpace)),
                        write(Item), write(' dilepas.'), nl;
                        write('Anda sedang tidak menggunakan senjata ini.'), nl).

equipArmor(Item) :-    (isInInventory(Item), armor(Item, Class, MaxHP, Defense),
                        job(Class) -> 
                        (armorEquipped(Equipped), Equipped \== none -> unequipAmor(_);
                        retract(armorEquipped(none))), 
                        asserta(armorEquipped(Item)), retract(stored(Item,X)), 
                        Y is X-1, asserta(stored(Item,Y)),
                        retract(maxHP(CurrentMaxHP)), NewMaxHP is CurrentMaxHP + MaxHP,
                        asserta(maxHP(NewMaxHP)),
                        retract(def(CurrentDefense)), NewDefense is CurrentDefense + Defense,
                        asserta(def(NewDefense)),
                        retract(usedSpace(UsedSpace)), NewUsedSpace is UsedSpace - 1,
                        asserta(usedSpace(NewUsedSpace)), write(Item), write(' digunakan.'), nl;
                        \+(isInInventory(Item)) -> write('Armor ini tidak ada di inventory Anda.'), nl;
                        write('Armor ini tidak bisa digunakan dengan job Anda.'), nl).

unequipArmor(Item) :-  (armorEquipped(Item) -> (armor(Item, Class, MaxHP, Defense),
                        retract(maxHP(CurrentMaxHP)), NewMaxHP is CurrentMaxHP - MaxHP,
                        asserta(maxHP(NewMaxHP)),
                        retract(def(CurrentDefense)), NewDefense is CurrentDefense - Defense,
                        asserta(def(NewDefense))),
                        (stored(Item,X) -> retract(stored(Item,X)), 
                        Y is X + 1, asserta(stored(Item, Y));
                        asserta(stored(Item,1))), asserta(armorEquipped(none)),
                        inventory(UsedSpace), UsedSpace < 100,
                        retract(armorEquipped(Item)), retract(usedSpace(UsedSpace)),
                        NewUsedSpace is UsedSpace + 1, asserta(usedSpace(NewUsedSpace)),
                        write(Item), write(' dilepas.'), nl;
                        write('Anda sedang tidak menggunakan armor ini.'), nl).

equipAccessory(Item) :- (isInInventory(Item), accessory(Item, Class, MaxHP, Attack, Defense),
                        job(Class) -> 
                        (accessoryEquipped(Equipped), Equipped \== none -> unequipAccessory(_);
                        retract(accessoryEquipped(none))), 
                        asserta(accessoryEquipped(Item)), retract(stored(Item,X)), 
                        Y is X-1, asserta(stored(Item,Y)),
                        retract(maxHP(CurrentMaxHP)), NewMaxHP is CurrentMaxHP + MaxHP,
                        asserta(maxHP(NewMaxHP)),
                        retract(att(CurrentAttack)), NewAttack is CurrentAttack + Attack,
                        asserta(att(NewAttack)),
                        retract(def(CurrentDefense)), NewDefense is CurrentDefense + Defense,
                        asserta(def(NewDefense)),
                        retract(usedSpace(UsedSpace)), NewUsedSpace is UsedSpace - 1,
                        asserta(usedSpace(NewUsedSpace)), write(Item), write(' digunakan.'), nl;
                        \+(isInInventory(Item)) -> write('Aksesoris ini tidak ada di inventory Anda.'), nl;
                        write('Aksesoris ini tidak bisa digunakan dengan job Anda.'), nl).

unequipAccessory(Item) :-   (accessoryEquipped(Item) -> (accessory(Item, Class, MaxHP, Attack, Defense),
                            retract(maxHP(CurrentMaxHP)), NewMaxHP is CurrentMaxHP - MaxHP,
                            asserta(maxHP(NewMaxHP)),
                            retract(att(CurrentAttack)), NewAttack is CurrentAttack - Attack,
                            asserta(att(NewAttack)),
                            retract(def(CurrentDefense)), NewDefense is CurrentDefense - Defense,
                            asserta(def(NewDefense))),
                            (stored(Item,X) -> retract(stored(Item,X)), 
                            Y is X + 1, asserta(stored(Item, Y));
                            asserta(stored(Item,1))), asserta(accessoryEquipped(none)),
                            inventory(UsedSpace), UsedSpace < 100,
                            retract(accessoryEquipped(Item)), retract(usedSpace(UsedSpace)),
                            NewUsedSpace is UsedSpace + 1, asserta(usedSpace(NewUsedSpace)),
                            write(Item), write(' dilepas.'), nl;
                            write('Anda sedang tidak menggunakan aksesoris ini.'), nl).

usePotion(Item) :-  (isInInventory(Item), potion(Item, RefillHP, Attack, Defense)
                    -> retract(stored(Item,X)), Y is X-1, asserta(stored(Item, Y)),
                    retract(usedSpace(UsedSpace)), NewUsedSpace is UsedSpace-1, asserta(usedSpace(NewUsedSpace)),
                    retract(currHP(CurrentHP)), NewHPRefill is CurrentHP + RefillHP,
                    (NewHPRefill > MaxHP, NewHP is MaxHP, !;
                    NewHP is NewHPRefill, !),
                    asserta(currHP(NewHP)),
                    retract(att(CurrentAttack)), NewAttack is CurrentAttack + Attack,
                    asserta(att(NewAttack)),
                    retract(def(CurrentDefense)), NewDefense is CurrentDefense + Defense,
                    asserta(def(NewDefense))),
                    write(Item), write(' digunakan.'), nl;
                    \+(isInInventory(Item)) -> write('Potion tidak ada di inventory Anda.'), nl.

checkEquipment :-   write('Equipment Anda : '), nl,
                    weaponEquipped(Weapon), write('Weapon : '), write(Weapon), nl,
                    armorEquipped(Armor), write('Armor : '), write(Armor), nl,
                    accessoryEquipped(Accessory), write('Accessory : '), write(Accessory), nl.
