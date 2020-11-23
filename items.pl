/* items.pl */

/* weapon(name, jobs required, attack, defend) */
weapon(longsword, swordsman, 10, 0).
weapon(shiningsword, swordsman, 20, 5).
weapon(imperialsword, swordsman, 30, 10).
weapon(excalibur, swordsman, 50, 25).
weapon(ultimaweapon, swordsman, 100, 100).

weapon(woodenbow, archer, 7, 3).
weapon(platinumbow, archer, 15, 10).
weapon(izanami, archer, 25, 10).
weapon(omegabow, archer, 40, 20).
weapon(savetheking, archer, 100, 100).

weapon(magestaff, sorcerer, 5, 5).
weapon(wizardstaff, sorcerer, 10, 10).
weapon(darkstaff, sorcerer, 20, 20).
weapon(fantasia, sorcerer, 40, 40).
weapon(savethequeen, sorcerer, 100, 100).

/* armor(nama, jobs required, max HP added, defend) */
armor(robe, swordsman, 0, 5).
armor(robe, archer, 0, 5).
armor(robe, sorcerer, 0, 5).
armor(brassarmor, swordsman, 20, 15).
armor(brassarmor, archer, 20, 15).
armor(brassarmor, sorcerer, 20, 15).
armor(chainmail, swordsman, 50, 25).
armor(chainmail, archer, 50, 25).
armor(chainmail, sorcerer, 50, 25).
armor(silverarmor, swordsman, 100, 50).
armor(silverarmor, archer, 100, 50).
armor(silverarmor, sorcerer, 100, 50).
armor(dragonarmor, swordsman, 500, 200).
armor(bloodarmor, archer, 1000, 200).
armor(dreamrobe, sorcerer, 500, 100).

/* accessory(nama, jobs required, max HP added, attack, defend) */
accessory(bandanna, swordsman, 5, 0, 0).
accessory(bandanna, archer, 5, 0, 0).
accessory(bandanna, sorcerer, 5, 0, 0).
accessory(cape, swordsman, 5, 5, 5).
accessory(cape, archer, 5, 5, 5).
accessory(cape, sorcerer, 5, 5, 5).
accessory(goldemblem, swordsman, 10, 5, 10).
accessory(goldemblem, archer, 10, 5, 10).
accessory(goldemblem, sorcerer, 10, 5, 10).
accessory(spiritbelt, swordsman, 10, 10, 10).
accessory(spiritbelt, archer, 10, 10, 10).
accessory(spiritbelt, sorcerer, 10, 10, 10).
accessory(fullhelmet, swordsman, 25, 20, 25).
accessory(windhat, archer, 25, 15, 15).
accessory(elementalhat, sorcerer, 30, 20, 15).

/* potion(nama, HP refill, attack, defense) */
potion(medicine, 50, 0, 0).
potion(ether, 0, 1, 1).
potion(elixir, 100, 1, 1).
potion(highmedicine, 100, 0, 0).
potion(highether, 0, 2, 2).
potion(highelixir, 200, 2, 2).
potion(megamedicine, 200, 0, 0).
potion(megaether, 0, 3, 3).
potion(megaelixir, 400, 3, 3).
potion(xtramedicine, 500, 0, 0).
potion(xtraether, 0, 5, 5).
potion(xtraelixir, 1000, 5, 5).