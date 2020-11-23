/* inventory.pl */

:- dynamic(usedSpace/1).
:- dynamic(stored/2).

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