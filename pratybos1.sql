-- 1. Išrinkite visus įrašus iš Knygų lentelės
SELECT * FROM `Books`;

-- 2. Išrinkite tik Knygų pavadinimus abėcėles tvarka.
SELECT `title` FROM `Books` ORDER BY `title`;

-- 3. Suskaičiuokite kiek knygų kiekvieno autoriaus yra knygų lentelėje.
SELECT `authorId`, count(*) FROM `Books` GROUP BY `authorId`;