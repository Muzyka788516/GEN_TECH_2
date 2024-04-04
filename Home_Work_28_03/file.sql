
-- 1. Вывести стоимость заказа 10258
SELECT SUM(OrderDetails.Quantity * Products.Price) AS TotalCost
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE OrderDetails.OrderID = 10258;

-- 2. Вывести кол/распределение заказов по клиентам (проекция: имяклиента, ко-возаказов)
SELECT Customers.CustomerName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName;

-- 3. Вывести кол/распределение заказов по менеджерам (проекция: фамилияменеджера, ко-возаказов)
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Employees.LastName;

-- 4. Вывести минимальную стоимость товаров для каждой категории (проекция: названиекатегории, минстоимость_товаров)
SELECT Categories.CategoryName, MIN(Products.Price) AS MinProductPrice
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
GROUP BY Categories.CategoryName;


-- 5. Вывести данные о заказах (проекция: номерзаказа, стоимостьзаказа)

-- 6. Вывести доход каждого менеджера за весь период, исходя из ставки в 5% от суммы его заказов (проекция: фамилия_менеджера, доход)

-- 7. Завершите описание приложенной схемы БД "аудио-хостинг" функционалом плейлистов и групповых чатов
https://dbdiagram.io/d/homework_211123-659c4eeaac844320ae7b9797



