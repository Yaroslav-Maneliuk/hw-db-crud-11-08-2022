--Задачи на SELECT
--Выбрать пиццу с id = 3.
SELECT *
FROM "pizzas"
WHERE "id" = 3;


--Выбрать пиццу с ценой менее 100грн.
SELECT *
FROM "pizzas"
WHERE "price" < 100;


--Выбрать пиццу с ценой НЕ равной 130грн.
SELECT *
FROM "pizzas"
WHERE "price" != 100;


--Узнайте цену и диаметр Пепперони.
SELECT "price", "diameter", "name"
FROM "pizzas"
WHERE "name" = 'Pepperoni';

--Выбрать пиццу с названием Маргарита.
SELECT *
FROM "pizzas"
WHERE "name" = 'Margarita';


--Выбрать все пиццы, кроме той, которая называется Карбонара .
SELECT *
FROM "pizzas"
WHERE "name" != 'Carbonara';


--Выбрать все пиццы диаметром 22 и ценой меньше 150грн.
SELECT *
FROM "pizzas"
WHERE "diameter" = 22 AND "price" < 150;


--Выбрать пиццы с диаметром от 25 до 33 включительно.
SELECT *
FROM "pizzas"
WHERE "diameter" BETWEEN 25 AND 33;


--Выбрать пиццы с диаметром от 25 до 33  или с ценой от 100 до 200 грн..
SELECT *
FROM "pizzas"
WHERE "diameter" BETWEEN 25 AND 33 OR "price" BETWEEN 100 AND 200;


--Выбрать все пиццы диаметром 22 или ценой 180грн.
SELECT *
FROM "pizzas"
WHERE "diameter" = 22 OR "price" = 180;