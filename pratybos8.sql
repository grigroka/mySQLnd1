-- 1. Paruoškite duomenų bazės atnaujinimo skriptą. (tik struktūros).

CREATE TABLE `AuthorsBooks` (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
bookId INT(11) UNSIGNED NOT NULL,
authorId INT(11) UNSIGNED NOT NULL
);
INSERT INTO `AuthorsBooks` (`bookId`, `authorId`) SELECT `bookId`, `authorId` FROM `Books`;
ALTER TABLE `Books` DROP COLUMN `authorId`;
ALTER TABLE `Books` CONVERT TO CHARACTER SET utf8, COLLATE utf8_lithuanian_ci;