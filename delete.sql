--Задачи на DELETE
--Удалите пиццу с id=3, верните результат.
DELETE FROM "pizzas"
WHERE "id" = 3
RETURNING *;


--Удалите Пепперони.
DELETE FROM "pizzas"
WHERE "name" = 'Pepperoni';


--Удалите все пиццы, у которых диаметр 18, верните результат.
DELETE FROM "pizzas"
WHERE "diameter" = 18
RETURNING *;