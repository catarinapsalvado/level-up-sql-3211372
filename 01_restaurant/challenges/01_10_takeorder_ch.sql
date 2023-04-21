-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

  SELECT * FROM Customers 
  WHERE LastName = 'Hundey';

  INSERT INTO Orders (CustomerID, OrderDate)
  VALUES(70, '2022-09-20 14:00:00');

  SELECT * FROM Orders 
  WHERE CustomerID = 70 AND OrderDate = '2022-09-20 14:00:00';

  INSERT INTO OrdersDishes (OrderID)
  VALUES ((
  SELECT OrderID FROM Orders
  WHERE CustomerID = 70 AND OrderDate = '2022-09-20 14:00:00') )

SELECT * FROM OrdersDishes 
WHERE OrderID = 1001

SELECT * FROM Dishes
WHERE Name = 'House Salad' OR Name = 'Mini Cheeseburgers' OR Name = 'Tropical Blue Smoothie'

UPDATE OrdersDishes
SET DishID = 4 WHERE OrderID= 1001; 

INSERT INTO OrdersDishes(OrderID, DishID)
VALUES (1001, (SELECT DishID FROM Dishes
WHERE Name = 'House Salad'));

INSERT INTO OrdersDishes(OrderID, DishID)
VALUES (1001, (SELECT DishID FROM Dishes
WHERE Name = 'Tropical Blue Smoothie'));

-- Solução dele

INSERT INTO OrdersDishes(OrderID, DishID)
VALUES (1001, (SELECT DishID FROM Dishes WHERE Name = 'Tropical Blue Smoothie')),
VALUES (1001, (SELECT DishID FROM Dishes WHERE Name = 'House Salad')),
VALUES (1001, (SELECT DishID FROM Dishes WHERE Name = 'Mini Cheeseburguers'));

--

SELECT SUM (Price)
FROM 
(SELECT OrdersDishes.OrdersDishesID, OrdersDishes.OrderID, OrdersDishes.DishID, Dishes.Price FROM OrdersDishes
JOIN Dishes ON OrdersDishes.DishID = Dishes.DishID)
WHERE OrderID = 1001;

-- 

SELECT *
FROM Dishes
JOIN Orders.Dishes ON Dishes.DishID = OrdersDishes.DishID
WHERE OrdersDishes.OrderID = 1001

SELECT SUM(Dishes.Price)
FROM Dishes
JOIN OrderDishes ON Dishes.DishID = OrdersDishes.DishID
WHERE OrdersDishes.OrderID = 1001;
