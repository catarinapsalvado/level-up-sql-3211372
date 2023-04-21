-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT Orders.CustomerID, 
COUNT (*) AS OrdersByCustomers 
FROM Orders  GROUP BY CustomerID 
ORDER BY OrdersByCustomers DESC;

SELECT COUNT  Orders.OrdersByCustomers, Orders.CustomerID, Customers.FirstName, Customers.LastName
FROM Orders
JOIN Customers
ON Customers.CustomerID = Orders.CustomerID
WHERE customers.CustomerID -- faltava o GROUP BY E TENHA DE FAZER O COUNT AQUI

SELECT COUNT (Orders.OrderID) as OrdersByCustomers, Customers.FirstName, Customers.LastName, Customers.Email
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Orders.CustomerID
ORDER BY OrdersByCustomers DESC
LIMIT 15;