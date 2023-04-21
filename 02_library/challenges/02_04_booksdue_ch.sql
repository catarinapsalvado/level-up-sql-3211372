-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT * FROM Loans 
WHERE DueDate = '2022-07-13'

SELECT Books.Title, Loans.DueDate, Patrons.FirstName, Patrons.Email FROM Books
JOIN Loans
ON Books.BookID = Loans.BookID
JOIN Patrons
ON Loans.PatronID = Patrons.PatronID
WHERE DueDate = '2022-07-13'
AND Loans.ReturnedDate IS NULL;