-- Задача 1. Вывести название и стоимость в USD одного самого дорогого проданного товара (не используя агрегацию)
SELECT ProductName, Price * 1.06 AS Price_usd FROM Products
Join OrderDetails on OrderDetails.ProductID=Products.ProductID
order by Price Desc
limit 1

-- Задача 2. Вывести два самых дорогих товара из категории Beverages из USA
SELECT *  FROM Products
Join Categories on Products.CategoryID=Categories.CategoryID
Join Suppliers on Products.SupplierID=Suppliers.SupplierID
where CategoryName='Beverages' and Country="USA"
order by Price Desc
limit 2

-- Задача 3. Удалить товары с ценой менее 50 EUR
DELETE FROM Products
where Price<50

-- Задача 4. Вывести список стран, которые поставляют морепродукты
SELECT Country FROM Categories
JOIN Products ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers  ON Products.SupplierID = Suppliers.SupplierID
WHERE Categories.CategoryName = 'Seafood'

-- Задача 5. Очистить поле ContactName у всех клиентов не из China 
UPDATE Customers
SET 
ContactName = NULL
WHERE Country != 'China'