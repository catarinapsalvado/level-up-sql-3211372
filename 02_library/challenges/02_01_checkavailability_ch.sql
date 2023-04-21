-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT DISTINCT BookID
FROM Books WHERE Title= 'Dracula'

SELECT COUNT (Books.BookID) as UnvailableBooks, Books.BookID, Books.Title, Loans.ReturnedDate
FROM Books
JOIN Loans ON Books.BookID = Loans.BookID
WHERE Books.Title = 'Dracula' AND Loans.ReturnedDate IS NOT NULL 
GROUP BY Books.BookID

SELECT 
(
SELECT COUNT (Books.Title)
FROM Books WHERE Books.Title= 'Dracula') -

(SELECT COUNT (Books.Title)
FROM Books
JOIN Loans ON Loans.BookID = Books.BookID
WHERE Books.Title = 'Dracula' 
AND Loans.ReturnedDate IS NULL)
AS AvailableCopies;



