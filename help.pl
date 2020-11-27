help :-
        write('Can I help you?'), nl,
        write('1. getstarted'), nl,
        write('2. input'), nl,
        write('3. cmdgame'), nl,
        write('4. shop'), nl,
        write('5. inventory'), nl,
        write('6. equipment'), nl,
        write('7. items'), nl,
        write('8. move'), nl,
        write('9. map'), nl,
        write('10. quest'), nl,
        write('11. battle'), nl,
        read(Input_help), show_help(Input_help), !.

show_help(Input_help) :-
        Input_help = 'getstarted',
        write(' Welcome Adventurer !'), nl, nl,
        write(' - Untuk memulai permainan, user dapat input [start.] tanpa []'), nl,
        write(' - Pilih job yang kalian ingin mainkan dengan input berupa angka (1. | 2. | 3.)'), nl,
        write(' - Setelah masuk game, pemain dapat membuka general in-game menu dengan input [gameMenu.] tanpa []'), nl,
        write(' - Untuk membuka map game, user dapat input [map.] tanpa []'), nl,
        write(' - Untuk bergerak dalam game, user dapat input (w. | a. | s. | d.)'), nl,
        write(' - Waspada monster - monster akan bar-bar menghadangmu untuk mencapai main quest ! Bersiaplah untuk bar bar !'), nl,
        write(' - Jika current HP pemain <= 0, permainan akan berakhir dengan bad ending '), nl,
        write(' - Main quest dari game ini adalah mengalahkan boss dungeon tugasBesar [D] '), nl,
        write(' - Selamat berjuang dan selamat menikmati game dari kami ! '), nl, !.

show_help(Input_help) :-
        Input_help = 'input',
        write('- Setiap command diakhiri dengan tanda titik (.)'), nl,
        write('- Input yang diterima oleh command pilih job adalah input angka (1, 2, 3, ...) '), nl,
        write(' Pilihan : 1. tubes 2. tubes 3. rebahan | Input : 3. '), nl,
        write('- Input yang diterima oleh command selain pilih job adalah input string sesuai pilihan '), nl,
        write(' Pilihan : 1. tubes 2. tubes 3. rebahan | Input : rebahan. '), nl, !.

show_help(Input_help) :-
        Input_help = 'cmdgame',
        write(' [ Command In-game ]'), nl,
        write(' 1. start                        : untuk memulai petualanganmu'), nl,
        write(' 2. help                         : menampilkan segala bantuan'), nl,
        write(' 3. map                          : menampilkan peta'), nl,
        write(' 4. stats                        : menampilkan status pemain'), nl,
        write(' 5. inventory                    : menampilkan inventory dibawa pemain'), nl,
        write(' 6. checkEquipment               : menampilkan equipment yang dipakai pemain'), nl,
        write(' 7. shop                         : mengunjungi shop / store'), nl,
        write(' 8. gameMenu                     : menampilkan menu in-game'), nl,
        write(' 9. usePotion(Item)              : menggunakan potion | Item : nama potion'), nl,
        write(' 10. equipWeapon(Item)           : memakai weapon | Item : nama weapon'), nl,
        write(' 11. equipArmor(Item)            : memakai armor | Item : nama armor'), nl,
        write(' 12. equipAccessory(Item)        : memakai accessory | Item : nama accessory'), nl,
        write(' 13. unequipWeapon(Item)         : melepas weapon | Item : nama weapon'), nl,
        write(' 14. unequipArmor(Item)          : melepas armor | Item : nama armor'), nl,
        write(' 15. unequipAccessory(Item)      : melepas accessory | Item : nama accessory'), nl, !. 

show_help(Input_help) :-
        Input_help = 'shop',
        write(' - Untuk membeli item yang banyak, dapat menginput kembali command pilihan menu shop'), nl, 
        write(' - Untuk keluar dari shop, input command [quit] tanpa [] '), nl,
        write(' - [Troubleshoot] '), nl,
        write(' 1. [ShopKeeper] Not enough space or gold to buy this items ! '), nl, 
        write('         Ada kemungkinan pemain tidak mempunyai cukup gold untuk membeli item '), nl, 
        write('         Ada kemungkinan space inventory pemain sudah penuh 100/100 '), nl, 
        write('         Cek kembali space inventory dan jumlah gold pemain ! '), nl, 
        write(' 2. [ShopKeeper] There is no such item in shop menu ! '), nl, 
        write('         Input yang dimasukan user tidak ada di dalam pilihan menu shop '), nl, 
        write('         Jangan lupa input diakhiri dengan tanda titik (.) ! '), nl, !.

show_help(Input_help) :-
        Input_help = 'inventory',
        write('  '), nl,
        write(' - Pemain mempunyai 100 space untuk mengisi inventory '), nl,
        write(' - Type item yang dapat disimpan dalam inventory : potion / weapon / armor / accessory '), nl, nl,
        write(' [ Command inventory ]'), nl,
        write(' 1. inventory               : menampilkan inventory dibawa pemain '), nl,
        write(' 2. discardItem(Item, X)    : Membuang sejumlah item | Item : Nama item inventory | X : Jumlah item yang ingin dibuang '), nl, !.

show_help(Input_help) :-
        Input_help = 'equipment',
        write(' - Pemain mendapatkan equipment dari gacha (1000 gold) dalam shop'), nl,
        write(' - Equipment akan menambah base stats (ATK, DEF, SP. ATK, MaxHP) dari pemain '), nl, nl,
        write(' [ Command equipment ]'), nl,
        write(' 1. equipWeapon(Item)           : memakai weapon | Item : nama weapon '), nl,
        write(' 2. equipArmor(Item)            : memakai armor | Item : nama armor '), nl,
        write(' 3. equipAccessory(Item)        : memakai accessory | Item : nama accessory '), nl,
        write(' 4. unequipWeapon(Item)         : melepas weapon | Item : nama weapon '), nl,
        write(' 5. unequipArmor(Item)          : melepas armor | Item : nama armor '), nl,
        write(' 6. unequipAccessory(Item)      : melepas accessory | Item : nama accessory '), nl, !.

show_help(Input_help) :-
        Input_help = 'items',
        write(' - Pemain dapat menggunakan potion di dalam / luar battle (kecuali shop) '), nl, nl,
        write(' [ Command items ]'), nl,
        write(' 1. usePotion(Item)              : menggunakan potion | Item : nama potion '), nl,
        write(' 2. discardItem(Item, X)    : Membuang sejumlah item | Item : Nama item inventory | X : Jumlah item yang ingin dibuang '), nl, !.

show_help(Input_help) :-
        Input_help = 'move',
        write(' [ Command movement ]'), nl,
        write(' 1. w    : gerak ke utara 1 langkah '), nl,
        write(' 2. s    : gerak ke selatan 1 langkah '), nl,
        write(' 3. d    : gerak ke ke timur 1 langkah '), nl,
        write(' 4. a    : gerak ke barat 1 langkah '), nl, !.

show_help(Input_help) :-
        Input_help = 'map',
        write(' - Pemain tidak dapat melewati batas dari map (#) '), nl,
        write(' - Untuk bisa interact lokasi, pemain harus berada 1 tile di atas / bawah / kanan / kiri '), nl,
        write(' - Khusus untuk boss dungeon, saat pemain berjarak 1 tile, pemain otomatis akan battle dengan boss dungeon '), nl, nl,
        write(' [ Simbol - simbol di map ]'), nl,
        write(' 1. P  : Posisi pemain utama '), nl,
        write(' 2. #  : Batas dari map '), nl,
        write(' 3. S  : Lokasi dari shop / store '), nl,
        write(' 4. D  : Bos Akhir / Boss Dungeon '), nl,
        write(' 5. Q  : Lokasi Side-quest '), nl, !.

show_help(Input_help) :-
        Input_help = 'quest',
        write(' - Side quest dapat diambil saat pemain berada 1 tile dari simbol [Q]'), nl,
        write(' - Side quest dapat diselesaikan dengan mengalahkan enemy atau lainnya'), nl,
        write(' - Pemain yang menyelesaikan side quest akan mendapat exp dan gold'), nl, nl,
        write(' [ Command quest ]'), nl,
        write('  1. assignQuest : mengambil side quest '), nl, !.

show_help(Input_help) :-
        Input_help = 'battle',
        write(' - Pemain akan mendapatkan exp setelah pertarungan'), nl, nl,
        write(' [ Command battle ]'), nl,
        write(' 1. attack               : menyerang musuh '), nl,
        write(' 2. specialAttack        : menggunakan special attack pemain '), nl,
        write(' 3. stats                : melihat current HP dari pemain '), nl,
        write(' 4. run                  : melarikan diri dari battle '), nl, !. 