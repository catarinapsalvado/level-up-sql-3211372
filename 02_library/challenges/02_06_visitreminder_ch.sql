-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT COUNT(Loans.PatronID) as BooksChecked, Patrons.PatronID, Patrons.FirstName, Patrons.LastName FROM Patrons
JOIN Loans ON Patrons.PatronID = Loans.PatronID
GROUP BY Patrons.PatronID
ORDER BY BooksChecked ASC
LIMIT 10;