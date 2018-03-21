-- 1. Straipsniai saugomi lenteles News (newsId, text, date), straipsnio komentarai saugomi lentelėje Comments (commentId, text, date, newsId). Išrinkite naujausios 10 straipsnių su paskutiniu parašytu komentaru.

-- Suformuojam DB lenteles.
CREATE TABLE `News` (
newsId INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
text TEXT NOT NULL,
date DATE NOT NULL
);

CREATE TABLE `Comments` (
commentId INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
text TEXT NOT NULL,
date DATE NOT NULL,
newsId INT(6) UNSIGNED NOT NULL
);

-- Idedam fake data.
INSERT INTO `News` (`text`, `date`) VALUES
('Post One','2009-06-01'),
('Post Two','2010-09-01'),
('Post Three','2011-01-01'),
('Post Four','2012-08-01'),
('Post Five','2013-12-01'),
('Post Six','2014-12-01'),
('Post Seven','2015-12-01'),
('Post Eight','2016-12-01'),
('Post Nine','2017-12-01'),
('Post Ten','2018-01-01'),
('Post Eleven','2019-03-16');
INSERT INTO `Comments` (`text`, `date`, `newsId`) VALUES
('Comment 1 newest post 11 comment','2018-06-12', '11'),
('Comment 2 old post 11 comment','2017-09-20', '11'),
('Comment 3 newest post 10 comment','2018-01-01', '10'),
('Comment 4','2014-08-01', '9'),
('Comment 6','2006-12-03', '8'),
('Comment 7','2007-12-03', '7'),
('Comment 8','2008-12-03', '6'),
('Comment 9','2009-12-03', '5'),
('Comment 10','2010-12-03', '4'),
('Comment 11','2012-12-03', '3'),
('Comment 12','2011-12-03', '2'),
('Comment 13','2013-12-03', '1'),
('Comment 14 old post 10 comment','2014-12-03', '10');

-- Uzklausa
SELECT `News`.`text`, `News`.`date`, `Comments`.`text` FROM `News` INNER JOIN `Comments` ON `News`.`newsId` = `Comments`.`newsId` INNER JOIN (SELECT `Comments`.`newsId`, MAX(`Comments`.`date`) AS max_date FROM `Comments` GROUP BY `Comments`.`newsId`) x ON x.`newsId` = `Comments`.`newsId` AND x.max_date = `Comments`.`date` ORDER BY `News`.`date` DESC LIMIT 10;