# Write your MySQL query statement below
SELECT Customers.Name AS Customers
FROM Customers
LEFT JOIN Orders ON Orders.CustomerId = Customers.Id
WHERE Orders.Id IS NULL
