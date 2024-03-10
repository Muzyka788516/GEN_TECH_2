-- 1. Вывести данные о товарах (проекция: названиетовара, цена, названиекатегории, названиекомпаниипоставщика)
SELECT Products.ProductName,
Products.Price,
Categories.CategoryName,
Suppliers.CompanyName
FROM Products
Join Categories ON Products.CategoryID = Categories.CategoryID
Join Suppliers ON Products.SupplierID = Suppliers.SupplierID
-- Это не работает. Я не знаю как сделать по другому.


-- 2. Вывести заказы клиентов не из France  (номерзаказа, имяклиента, страна_клиента)
SELECT Orders.OrderID,
Customers.CustomerName,
Customers.Country
FROM Orders
Join Customers ON Orders.CustomerID = Customers.CustomerID
WHERE Customers.Country != 'France'


-- 3. Вывести название и стоимость в USD одного самого дорогого проданного товара
-- не понимаю как решить эту задачу 

-- 4. Вывести список стран, которые поставляют морепродукты
SELECT DISTINCT Suppliers.Country
FROM Suppliers
Join Products ON Suppliers.SupplierID = Products.SupplierID
WHERE Products.CategoryID = 'Seafood';
-- без подсказок интернета не обошлось


-- 5. Вывести два самых дорогих товара из категории Beverages из USA
SELECT Products.ProductName, Products.Price
FROM Products
Join Suppliers ON Products.SupplierID = Suppliers.SupplierID
Join Categories ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName = 'Beverages'
and Suppliers.Country = 'USA'
Order By Products.Price Desc
Limit 2;

-- Эта тема оказалась для меня очень сложной. Я ее так и не поняла.
