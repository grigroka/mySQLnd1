-- 1. Suskaičiuokite kiek knygų kiekvieno autoriaus yra duomenų bazėje (įtraukdami autorius kurie neturi knygų, bei neįtraukdami šių autorių).
SELECT `Authors`.`name`, `Authors`.`authorId`, COUNT(`Books`.`bookId`) FROM `Authors` INNER JOIN `Books` ON `Authors`.`authorId` = `Books`.`authorId` GROUP BY `authorId`;

SELECT `Authors`.`name`, `Authors`.`authorId`, COUNT(`Books`.`bookId`) FROM `Authors` LEFT JOIN `Books` ON `Authors`.`authorId` = `Books`.`authorId` GROUP BY `authorId`;

-- 2. Pašalinkite autorius, kurie neturi knygų.
DELETE FROM `Books` WHERE `authorId` IS NULL;
