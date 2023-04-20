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
WHERE OrderID = '1001'

INSERT INTO OrdersDishes (DishID)
VALUES (( SELECT Name FROM Dishes
WHERE 


