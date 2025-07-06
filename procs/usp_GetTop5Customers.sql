CREATE OR ALTER PROCEDURE usp_GetTop5Customers
AS
BEGIN
    SELECT TOP 15 CustomerID, FirstName, LastName, EmailAddress
    FROM SalesLT.Customer
    ORDER BY CustomerID DESC;
END
