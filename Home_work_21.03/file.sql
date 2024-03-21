 --1 уровень сложности: ## В рамках БД "онлайн-магазин" напишите след/запросы:
-- Вывести ко-во поставщиков не из UK и не из China
-- Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5
-- Вывести общую сумму проданных товаров
-- Вывести данные о заказах (номерзаказа, имяклиента, странаклиента, фамилияменеджера, названиекомпанииперевозчика)
-- Вывести сумму, на которую было отправлено товаров клиентам в Germany



-- Задача 1.  Вывести ко-во поставщиков не из UK и не из China
SELECT 
COUNT(*)
FROM Suppliers
where Country not in ('UK', 'China') 


-- Задача 2. Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5
SELECT 
AVG(Price) AS avg_price 
MAX(Price) AS max_price
MIN(Price) AS min_price
FROM Products
where 
CategoryID = 3 or CategoryID = 5
-- не знаю почему, но этот запрос не работает 



-- Задача 3. Вывести общую сумму проданных товаров
SELECT 
COUNT(*)
FROM OrderDetails



--  Задача 4. Вывести данные о заказах (номерзаказа, имяклиента, странаклиента, фамилияменеджера, названиекомпанииперевозчика)
SELECT  
Orders.OrderID,
Customers.CustomerName,
Customers.Country,
Employees.LastName,
Suppliers.SupplierName
FROM Orders
join Customers ON Orders.CustomerID = Customers.CustomerID
join Employees ON Orders.EmployeeID = Employees.EmployeeID
join Shippers ON Orders.ShipperID = Shippers.ShipperID
-- этот запрос так же не сработал 



-- Задача 5. Вывести сумму, на которую было отправлено товаров клиентам в Germany
SELECT 
SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) AS total_amount_sent_to_Germany
FROM Orders
join OrderDetails ON Orders.OrderID = OrderDetails.OrderID
join Customers ON Orders.CustomerID = Customers.CustomerID
where Customers.Country = 'Germany'
-- и с этой задачей без помощи интернета не обошлось 
