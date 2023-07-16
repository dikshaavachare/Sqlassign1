
SELECT COUNT(*) AS CountOfSalespersons
FROM SalesPeople
WHERE Sname LIKE 'A%';

-- Display all the Salespersons whose orders' worth is more than Rs. 2000
SELECT S.*
FROM SalesPeople AS S
INNER JOIN Orders AS O ON S.Snum = O.Snum
GROUP BY S.Snum, S.Sname, S.City, S.Comm
HAVING SUM(O.Amt) > 2000;

-- Count the number of Salespersons belonging to Newyork
SELECT COUNT(*) AS CountOfSalespersons
FROM SalesPeople
WHERE City = 'Newyork';

-- Display the number of Salespeople belonging to London and Paris
SELECT City, COUNT(*) AS CountOfSalespersons
FROM SalesPeople
WHERE City IN ('London', 'Paris')
GROUP BY City;

-- Display the number of orders taken by each Salesperson and their date of orders
SELECT S.Snum, S.Sname, COUNT(*) AS OrderCount
FROM SalesPeople AS S
INNER JOIN Orders AS O ON S.Snum = O.Snum
GROUP BY S.Snum, S.Sname;
