use HM_11_04_24;
--  В рамках БД "интернет-магазин (песочница)" напишите следующие запросы:

-- Задача 1
-- Вывести компании-перевозчиков, 
-- которые доставили клиентам более 250 заказов (проекция: название_компании, ко-во заказов)

SELECT 
  Shippers.ShipperName, 
  COUNT(Orders.OrderID) AS NumberOfOrders
FROM Shippers

JOIN Orders ON Shippers.ShipperID = Orders.ShipperID

GROUP BY Shippers.ShipperID

HAVING COUNT(Orders.OrderID) > 250;

-- Задача 2
-- Вывести заказы, где количество товаров 3 
-- и более (проекция: номер заказа, количество товаров в заказе)

SELECT 
 OrderID, 
 COUNT(OrderDetailID) AS NumberOfProducts
FROM OrderDetails

GROUP BY OrderID

HAVING COUNT(OrderDetailID) >= 3;

-- Задача 3
-- Вывести минимальную стоимость товара для каждой категории, 
-- кроме категории 2 (проекция: название категории, минимальная стоимость товара)

SELECT 
 Categories.CategoryName, 
 MIN(Products.Price) AS MinPrice
FROM Products

JOIN Categories ON Products.CategoryID = Categories.CategoryID

WHERE Categories.CategoryID != 2

GROUP BY Categories.CategoryID;

-- Задача 4
-- Вывести менеджера, который находится на 4 месте 
-- по количеству созданных заказов (проекция: фамилия менеджера, количество созданных заказов)

SELECT 
 Employees.LastName, 
 COUNT(Orders.OrderID) AS NumberOfOrders
FROM Employees

JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID

GROUP BY Employees.EmployeeID

ORDER BY NumberOfOrders DESC

LIMIT 1 OFFSET 3;

-- Задача 5
-- Вывести данные о товарах от поставщиков 4 и 8 
-- (проекция: все имеющиеся поля, цена со скидкой 1.5 процента, цена с наценкой 0.5 процента)

SELECT *,
    Price * 0.985 AS DiscountedPrice,
    Price * 1.005 AS MarkupPrice
FROM Products
WHERE SupplierID IN (4, 8);



