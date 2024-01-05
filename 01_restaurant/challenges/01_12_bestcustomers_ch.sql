-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT COUNT(O.OrderID) OrdersCount, C.FirstName, C.LastName, C.Email
FROM Customers C
JOIN Orders O
ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerID
ORDER BY OrdersCount DESC;

-- to verify the query
SELECT COUNT(*),CustomerID FROM Orders
WHERE CustomerID = (SELECT MAX(CustomerID) FROM Orders);

SELECT CustomerID, FirstName, LastName
FROM Customers
WHERE CustomerID = (SELECT MAX(CustomerID) FROM Orders);