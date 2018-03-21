-- 1. Išrinkite visus įrašus, tiek iš knygų tiek iš autorių lentelių, išrinkdami pasirinktinai du stulpelius.
SELECT `authorId`, `name` FROM `Authors` UNION SELECT `title`, `authorId` FROM `Books`;
