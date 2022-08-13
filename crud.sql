DROP TABLE "pizzas";

--cоздайте таблицу “pizzas” (“id”, “name”, “price”, “diameter”).
CREATE TABLE "pizzas"(
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(32) NOT NULL CHECK("name" != ''),
  "price" NUMERIC(4, 1) NOT NULL CHECK("price" > 0),
  "diameter" INTEGER NOT NULL CHECK("diameter" > 0)
);


--Задачи на INSERT
--добавьте новую пиццу Маргарита, диаметр 18, цена 50,4грн.
INSERT INTO "pizzas" ("name", "price", "diameter")
VALUES ('Margarita', 50.4, 18);


--добавьте новую пиццу Карбонара, диаметр 28, цена 81грн.
INSERT INTO "pizzas" ("name", "price", "diameter")
VALUES ('Carbonara', 81, 28);


--добавьте две новые пиццы одним запросом: Цезарь , диаметр 38, цена 149грн, Пепперони , диаметр 32, цена 116грн
INSERT INTO "pizzas" ("name", "price", "diameter")
VALUES
('Cezar', 149, 38),
('Pepperoni', 116, 32);


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
