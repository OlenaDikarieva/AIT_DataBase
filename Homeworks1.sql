--Приведите десять типовых бизнес-процессов для предметной области ВИДЕО-ХОСТИНГ (Youtube), 
--а также их соответствие по CRUD.
Регистрация пользователя Create
Авторизация пользователя Read
Добавить видео Create
Просмотр видео Read
Удалить видео Delete
Редактировать описание Update
Добавить комментарий Create
Удалить комментарий Delete
Поставить 'нравиться' Update
Обновить количество просмотров Update
Вывести статистику о просмотрах Aggregation


-- Задача 2. Вывести название и стоимость товаров от 20 EUR.
SELECT ProductName, Price
FROM [Products]
WHERE Price>=20

-- Задача 3. Вывести страны поставщиков.
SELECT DISTINCT Country FROM [Suppliers]

-- Задача 4. В упорядоченном по стоимости виде вывести название и стоимость товаров со скидкой в 9% от всех поставщиков, кроме поставщика 1.
SELECT ProductName, Price*.91 as Price_Down
FROM [Products]
WHERE SupplierID!=1
ORDER BY PRICE

-- Задача 5. Вывести контактные имена клиентов, кроме тех, что из France и USA.
SELECT CustomerName FROM [Customers]
where Country not in ('France' ,'USA')