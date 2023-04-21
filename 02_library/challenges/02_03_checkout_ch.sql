-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

SELECT Books.BookId, Books.Title, Books.Barcode FROM Books
WHERE Books.Barcode = 2855934983 OR Books.Barcode = 4043822646;

SELECT Patrons.PatronID, Patrons.Email FROM Patrons
WHERE Patrons.Email = 'jvaan@wisdompets.com';

INSERT INTO Loans (BookID, PatronID,LoanDate, DueDate)
VALUES 
(11,
(SELECT Patrons.PatronID FROM Patrons
WHERE Patrons.Email = 'jvaan@wisdompets.com'),
'2022-08-25', '2022-09-08'),
(
(SELECT Books.BookId FROM Books
WHERE Books.Barcode = 4043822646),
50,'2022-08-25', '2022-09-08');

DELETE FROM Loans
WHERE LoanID = 2001 OR LoanID = 2002

SELECT * FROM Loans
ORDER BY LoanDate DESC

SELECT * FROM Loans
JOIN Books ON Loans.BookID = Books.BookID
WHERE PatronID = (
SELECT PatronID 
FROM Patrons
WHERE Email = 'jvaan@wisdompets.com');
PATRON ID - 50 

BOOK PICTURE 11
GREAT 93