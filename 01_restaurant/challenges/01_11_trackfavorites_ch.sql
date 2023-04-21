-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT FirstName, LastName, FavoriteDish FROM Customers
Where FirstName = 'Cleo' AND Lastname = 'Goldwater';

SELECT * FROM Dishes
WHERE Name = 'Quinoa Salmon Salad';

-- OR
SELECT DishID
FROM Dishes
WHERE Name = 'Quinoa Salmon Salad';

UPDATE Customers
SET FavoriteDish = 9 WHERE FirstName = 'Cleo' AND Lastname = 'Goldwater';
