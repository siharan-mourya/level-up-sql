-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT * FROM Loans
WHERE DueDate = '2022-07-13';

SELECT L.DueDate, B.Title, P.FirstName, P.Email
FROM Loans L
JOIN Books B ON L.BookID = B.BookID
JOIN Patrons P ON P.PatronID = L.PatronID
WHERE DueDate = '2022-07-13'AND ReturnedDate IS NULL;