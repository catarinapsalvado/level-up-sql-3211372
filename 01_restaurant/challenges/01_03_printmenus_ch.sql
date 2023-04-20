-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT * FROM Dishes;

SELECT Type, Name, Description, Price FROM Dishes
ORDER BY PRICE;

SELECT Type, Name, Description, Price FROM Dishes
WHERE Type = 'Beverage' OR Type='Appetizer'
ORDER BY Type;

SELECT * FROM Dishes
WHERE NOT Type ='Beverage'
ORDER BY Type;