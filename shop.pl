:- include('inventory.pl').
:- include('items.pl').
:- include('buyshop.pl').
:- include('storeGachaArmor.pl').
:- include('storeGachaWeapon.pl').
:- include('storeGachaAccessory.pl').
:- use_module(library(random)).

init_shop :-
    write('7777777777777777777777777777777'), nl,
    write('                               '), nl,
    write('    88888  8  8  8888  88888   '), nl,                     
    write('   88      8  8  8  8  8   8   '), nl,                    
    write('    8888   8888  8  8  88888   '), nl,            
    write('       88  8  8  8  8  8       '), nl,                  
    write('   88888   8  8  8888  8       '), nl,          
    write('                               '), nl,
    write('7777777777777777777777777777777'), nl, !.

shop :-
    init_shop, nl,
    write('Selamat datang di Secret Shop ! owo)7 '), nl,
    write('Apa yang ingin kamu beli?'), nl,
    write('1. gacha         (1000 gold)'), nl,
    write('2. medicine      (125 gold)'), nl,
    write('3. highmedicine  (250 gold)'), nl,
    write('4. megamedicine  (500 gold)'), nl,
    write('5. xtramedicine  (1000 gold)'), nl,
    write('6. ether         (125 gold)'), nl,
    write('7. highether     (250 gold)'), nl,
    write('8. megaether     (500 gold)'), nl,
    write('9. xtraether     (1000 gold)'), nl,
    write('10. elixir       (250 gold)'), nl,
    write('11. highelixir   (500 gold)'), nl,
    write('12. megaelixir   (1000 gold)'), nl,
    write('13. xtraelixir   (2000 gold)'), nl,
    write('14. quit'), nl,
    read(Input_Items), buyshop(Input_Items), !.