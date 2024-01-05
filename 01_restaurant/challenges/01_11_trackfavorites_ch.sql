-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT * FROM Customers
WHERE FirstName = 'Cleo' AND LastName = 'Goldwater';

UPDATE Customers
SET FavoriteDish = (
  SELECT DishID FROM Dishes WHERE Name = 'Quinoa Salmon Salad')
WHERE CustomerID = 42;

SELECT C.FirstName, C.LastName, C.FavoriteDish, D.Name
FROM Customers C
JOIN Dishes D
ON C.FavoriteDish = D.DishID
ORDER BY C.FirstName;