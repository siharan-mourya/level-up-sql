-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT * FROM Reservations R
JOIN Customers C
ON R.CustomerID = C.CustomerID
WHERE FirstName ='Norby' AND R.Date > '2022-07-24';

DELETE FROM Reservations
WHERE ReservationID = 2000;

-- the step below removes the record and 
-- hence can affect related tables and their record
-- so while deleting a record future requirements 
-- should be considered as well
SELECT * FROM Reservations 
ORDER BY ReservationID DESC;

-- added the record again
INSERT INTO Reservations (CustomerID,Date,PartySize)
VALUES (64,NULL,4);

-- another way of cancelling a reservation is updating
-- the required fields as NULL while still maintaining the record
UPDATE Reservations
SET Date = NULL
WHERE ReservationID = 2000;


 