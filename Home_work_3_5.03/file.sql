-- 1. Вывести данные о товарах не из категорий 2 и 4 и не от поставщиков 2 и 3 с ценой от 20 до 90 EUR (проекция: название, ценаснаценкой_6%)
SELECT Price * 1.6 AS Price_up
FROM Products
where (CategoryID not in (2,4) and 
 SupplierID not in (2,3))
 and Price Between 20 and 90;


-- 2. Вывести клиентов не из Germany, имена которых не заканчиваются на букву t
SELECT * FROM Customers
where 
Country != 'Germany' and CustomerName not Like '%t'

-- 3. Вывести два самых дешевых товара с ценой от 10 EUR и более (проекция: название, ценасоскидкой_20%)
SELECT ProductName, Price * 0.80 AS Price_down
FROM Products
where Price >= 10
Order By Price Asc



