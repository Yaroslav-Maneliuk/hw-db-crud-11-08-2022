DROP TABLE "pizzas";

--cоздайте таблицу “pizzas” (“id”, “name”, “price”, “diameter”).
CREATE TABLE "pizzas"(
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(32) NOT NULL CHECK("name" != ''),
  "price" NUMERIC(4, 1) NOT NULL CHECK("price" > 0),
  "diameter" INTEGER NOT NULL CHECK("diameter" > 0)
);
