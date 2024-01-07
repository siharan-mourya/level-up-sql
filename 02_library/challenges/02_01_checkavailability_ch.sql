-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT COUNT(*) BookCount FROM Books
WHERE Title='Dracula';

SELECT COUNT(*) BookCount 
FROM Loans L
JOIN Books B
ON L.BookID = B.BookID
WHERE B.Title = 'Dracula' AND L.ReturnedDate IS NULL;

SELECT 
(SELECT COUNT(*) BookCount FROM Books
WHERE Title='Dracula')
-
(SELECT COUNT(*) BookCount 
FROM Loans L
JOIN Books B
ON L.BookID = B.BookID
WHERE B.Title = 'Dracula' AND L.ReturnedDate IS NULL)
AS AvailableCopies;