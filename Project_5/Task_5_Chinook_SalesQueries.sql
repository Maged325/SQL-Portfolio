USE Chinook;
------------------------------------------------------------------
-- Q1. Top-Selling Products(TOP 10 tracks based on quantity sold):
SELECT TOP 10 
t.Name AS Product,  SUM(il.Quantity) AS TotalSold
FROM InvoiceLine AS il
JOIN track AS t ON il.TrackId =t.TrackId
GROUP BY t.Name
ORDER BY TotalSold DESC;

------------------------------------------------------------------
--  Q2. Revenue Per Region (Total revenue per customer country):
SELECT c.Country, ROUND(SUM(il.UnitPrice * il.Quantity),2) AS Revenue
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY c.Country
ORDER BY Revenue DESC;

------------------------------------------------------------------
-- Q3. Year and Month Performance (Monthly and Yearly revenue over time):
SELECT 
  DATEPART(YEAR, i.InvoiceDate) AS Year,
  DATEPART(MONTH, i.InvoiceDate) AS Month,
  ROUND(SUM(il.UnitPrice * il.Quantity),2) AS Monthly_Revenue
FROM Invoice i
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY DATEPART(YEAR, i.InvoiceDate), DATEPART(MONTH, i.InvoiceDate)
ORDER BY Year, Month;

--------------------------------------------------------------------------
-- Q4. Join Product & Sales Table
SELECT 
    t.Name AS Product, ROUND(il.UnitPrice,2), il.Quantity,
    ROUND((il.UnitPrice * il.Quantity),2) AS Total,
    i.InvoiceDate
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Invoice i ON il.InvoiceId = i.InvoiceId;

--------------------------------------------------------------------------
-- Q5. Use a Window Function (Rank customers by total purchase value):
SELECT 
  c.FirstName + ' ' + c.LastName AS Customer,
  ROUND(SUM(il.UnitPrice * il.Quantity),2) AS Total_Spent,
  RANK() OVER (ORDER BY SUM(il.UnitPrice * il.Quantity) DESC) AS SpendingRank
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY c.FirstName, c.LastName;

-- ------------------------------------------------------------
-- End of SQL Queries | Task 5: SQL-Based Product Sales Analysis
-- Author: Maged Fouad| Elevvo Internship | July 2025
-- ------------------------------------------------------------
