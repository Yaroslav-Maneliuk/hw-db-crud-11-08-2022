--Задачи на UPDATE
--Поставьте цену Маргарите 53грн.
UPDATE "pizzas"
SET "price" = 53
WHERE "name" = 'Margarita';


--Пицце с id=4 поставьте диаметр 30.
UPDATE "pizzas"
SET "diameter" = 30
WHERE "id" = 4;


--Всем, чья цена больше 100грн сделайте ее 130грн, верните результат.
UPDATE "pizzas"
SET "price" = 130
WHERE "price" > 100
RETURNING *;


--Пиццам с id больше 2 и меньше 5 включительно поставьте диаметр 22, верните результат.
UPDATE "pizzas"
SET "diameter" = 22
WHERE "id" BETWEEN 2 AND 5
RETURNING *;


--Измените Цезарь на 4 сыра и поставьте цену 180.
UPDATE "pizzas"
SET "name" = '4 Cheeses', "price" = 180
WHERE "name" = 'Cezar';