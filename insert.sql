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