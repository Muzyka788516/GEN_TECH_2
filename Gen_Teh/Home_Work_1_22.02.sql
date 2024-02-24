--  1.Приведите десять типовых бизнес-процессов для предметной области ВИДЕО-ХОСТИНГ (Youtube), а также их соответствие по CRUD.
1. Регистрация пользователя (CREATE)
2. Ввод запроса (READ)
3. Поиск видео (READ)
4. Просмотр видео(READ)
5. Добавление в "понравившиеся" (UPDATE)
6. Покупка премиум версии (UPDATE)
7. Загрузка видео (CREATE)
8. Подписка на канал(UPDATE)
9. Удаление видео(DELETE)
10.Реакции(UPDATE)

-- В рамках БД "песочница" напишите след/запросы:

1. Вывести название и стоимость товаров от 20 до 150 EUR.
SELECT ProductName,Price FROM Products
where Price >=20 and Price <=150

2. Вывести телефоны поставщиков из Japan и Spain.
SELECT Phone FROM Suppliers 
where Country = 'Japan' or Country = 'Spain'

3. Вывести название и стоимость товаров от всех поставщиков, кроме поставщика 1.
(в базе данных не нашла категорию СТОИМОСТИ в ПОСТАВЩИКАХ товаров. Возможно это нужно искать в ПРОДУКТАХ )
SELECT ProductName,Price FROM Products
where not ProductID = 1

4. Вывести контактные имена клиентов, кроме тех, что из Germany и Brazil.
SELECT ContactName FROM Customers
where not Country = 'Germany' and not Country = 'Brazil'
