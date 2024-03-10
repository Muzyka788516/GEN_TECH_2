-- 1. Вывести данные о товарах (название, цена со скидкой в 0.5%).
SELECT ProductName, Price * 0.95 AS Price_down
FROM Products

-- 2. Вывести самый дорогой товар в диапазоне от 1 до 100 EUR.
SELECT * FROM Products
where Price Between 1 and 100
Order By Price Asc

-- 3. Вывести два самых дешевых товара из категории 4.
SELECT * FROM Products
where CategoryID = 4
Order By Price Asc
Limit 2

-- 4. Вывести один товар, который находится на пятом месте среди самых дорогих.
SELECT * FROM Products
Order By Price Desc
limit 1 Offset 4


-- 5. Вывести товары, названия которых заканчиваются на букву a
SELECT * FROM Products
where ProductName
Like '%a'

