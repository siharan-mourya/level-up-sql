-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT C.FirstName, C.LastName, R.Date, R.PartySize
FROM Reservations R
JOIN Customers C
ON R.CustomerID = C.CustomerID
WHERE C.LastName LIKE 'St%' AND R.PartySize = 4
ORDER BY R.Date DESC;

-- or:

SELECT C.FirstName, C.LastName, R.Date, R.PartySize
FROM Reservations R
JOIN Customers C
ON R.CustomerID = C.CustomerID
WHERE C.LastName LIKE 'St%' AND R.Date LIKE '%-06-14%';