-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT CustomerID,FirstName, LastName, Phone, Address
FROM Customers
WHERE Address LIKE '6939 Elka Place';

INSERT INTO Orders (CustomerID, OrderDate)
VALUES (70,'2022-09-20 14:00:00');

SELECT * FROM Orders ORDER BY OrderID DESC;

INSERT INTO OrdersDishes (OrderID,DishID)
VALUES 
(1001,(SELECT DishID FROM Dishes WHERE Name = 'House Salad')),
(1001,(SELECT DishID FROM Dishes WHERE Name = 'Mini Cheeseburgers')),
(1001,(SELECT DishID FROM Dishes WHERE Name = 'Tropical Blue Smoothie'));

SELECT * FROM OrdersDishes ORDER BY OrdersDishesID DESC;

SELECT * 
FROM Dishes D
JOIN OrdersDishes OD
ON D.DishID= OD.DishID
WHERE OD.OrderID= 1001;

SELECT SUM(D.Price) Total_Amount
FROM Dishes D
JOIN OrdersDishes OD
ON D.DishID= OD.DishID
WHERE OD.OrderID= 1001;