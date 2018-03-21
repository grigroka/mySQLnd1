-- 1. Papildykite autorių lentelę 2 įrašais;
INSERT INTO `Authors` SET `name` = 'Jonas Jonaitis';
INSERT INTO `Authors` SET `name` = 'Antanas Antanaitis';

-- 2. Papildykite knygų lentelę, 3 įrašais apie knygas, kurių autorius įrašėte prieš tai.
INSERT INTO `Books` SET `authorId` = 8, `title` = 'mySql ABC', `year` = 2011;
INSERT INTO `Books` SET `authorId` = 9, `title` = 'PHP Basics', `year` = 2016;
INSERT INTO `Books` SET `authorId` = 8, `title` = 'NFQ Academy Guidebook', `year` = 2018;

-- 3. Pakeiskite vienos knygos autorių į kitą.
UPDATE `Books` SET `authorId` = 9 WHERE `bookId` = 11;