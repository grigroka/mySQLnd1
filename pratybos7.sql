-- 1. Knygos gali turėti vieną ir daugiau autorių.
CREATE TABLE `AuthorsBooks` (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
bookId INT(11) UNSIGNED NOT NULL,
authorId INT(11) UNSIGNED NOT NULL
);

-- 2. Sutvarkyti duomenų bazės duomenis, jei reikia papildykite naujais.
INSERT INTO `AuthorsBooks` (`bookId`, `authorId`) SELECT `bookId`, `authorId` FROM `Books`;
ALTER TABLE `Books` DROP COLUMN `authorId`;
UPDATE `AuthorsBooks` SET `authorId` = 1 WHERE `bookId` = 9;
UPDATE `AuthorsBooks` SET `authorId` = 5 WHERE `bookId` = 10;
UPDATE `AuthorsBooks` SET `authorId` = 2 WHERE `bookId` = 11;
INSERT INTO `AuthorsBooks` SET `bookId` = 9, `authorId` = 2;
INSERT INTO `AuthorsBooks` SET `bookId` = 4, `authorId` = 3;

-- 3. Išrinkite visas knygas su jų autoriais. (autorius, jei jų daugiau nei vienas atskirkite kableliais)
SELECT `Books`.`title`, GROUP_CONCAT(`Authors`.`name` SEPARATOR ', ') FROM `Books` INNER JOIN `AuthorsBooks` ON `Books`.`bookId` = `AuthorsBooks`.`bookId` INNER JOIN `Authors` ON `Authors`.`authorId` = `AuthorsBooks`.`authorId` GROUP BY `Books`.`bookId`;

-- 4. Sutvarkykite knygų lentelę, kad galėtumėte išsaugoti originalų knygos pavadinimą. (Pavadinime išsaugokite, lietuviškas raides kaip ą,ė,š ir pan.)
ALTER TABLE `Books` CONVERT TO CHARACTER SET utf8, COLLATE utf8_lithuanian_ci;
INSERT INTO `Books` SET `title` = 'Lietuviškos raidės ąčęėįšųūž', `year` = 2018;