-- Задача 1. Вывести ко-во поставщиков не из UK и не из China
SELECT
    COUNT(*) AS Suppliers_notInUKandChina
FROM Suppliers

WHERE
    not Country in ('UK','China')

-- Задача 2. Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5
SELECT
    AVG(Price) AS avg_price,
    MIN(Price) AS min_price,
    MAX(Price) AS max_price,
    COUNT(*) AS total_products
FROM Products
where CategoryID in (3,5)

-- Задача 3. Вывести общую сумму проданных товаров
SELECT  
    SUM(Price*Quantity) as Saled_products_sum
FROM  OrderDetails
join Products on Products.ProductID=OrderDetails.ProductID

-- Задача 4. Вывести данные о заказах (номер_заказа, имя_клиента, страна_клиента, фамилия_менеджера, название_компании_перевозчика

SELECT OrderID, CustomerName, Country,LastName, ShipperName FROM [Orders]
join Customers on Customers.CustomerID=Orders.CustomerID
join Employees on Employees.EmployeeID=Orders.EmployeeID
join Shippers on Shippers.ShipperID=Orders.ShipperID

-- Задача 5. Вывести сумму, на которую было отправлено товаров клиентам в Germany
SELECT  
    SUM(Price*Quantity) as de_products_sum
FROM  OrderDetails
join Products on Products.ProductID=OrderDetails.ProductID
join Orders on Orders.OrderID=OrderDetails.OrderID
join Customers on Customers.CustomerID=Orders.CustomerID