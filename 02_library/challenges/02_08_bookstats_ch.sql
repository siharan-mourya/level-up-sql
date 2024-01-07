-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

SELECT Published, COUNT(DISTINCT (Title)) PubCount,
GROUP_CONCAT(DISTINCT(Title))
FROM Books
GROUP BY Published
ORDER BY PubCount DESC;

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT Count(L.LoanID) LoanCount, B.Title
FROM Loans L
JOIN Books B
ON L.BookID = B.BookID
GROUP BY Title
ORDER BY LoanCount DESC
LIMIT 5; 



