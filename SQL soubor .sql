-- TOP 10 prodávané produkty 
SELECT 
	Description,
	SUM(Quantity) AS total_qountity 
FROM NewTable nt 
GROUP BY Description
ORDER BY total_qountity DESC
LIMIT 10 ;

-- TOP 10 nejvíce prodělávající produkty 

SELECT 
	Description,
	SUM(Quantity) AS total_qountity,
	StockCode 
FROM NewTable nt 
GROUP BY Description, StockCode 
ORDER BY total_qountity ASC
;

-- Jaké jsou nejvíce výdělečné produkty 

SELECT 
	Description,
	SUM(Quantity) AS total_qountity,
	SUM(UnitPrice * Quantity) AS total_price
FROM NewTable nt
GROUP BY Description  
ORDER BY total_price DESC
LIMIT 10 ;

-- Jaký den, se prodalo nejvíce položek 

SELECT 
	InvoiceDate,
	SUM(Quantity) AS total_qountity,
	SUM(UnitPrice) AS total_price
FROM NewTable nt 
GROUP BY InvoiceDate
ORDER BY total_qountity DESC
LIMIT 10 ;

-- Jaké položky se nejvíce prodávaly v tento den (2011-10-05)

SELECT 
	InvoiceDate,
	Description,
	Quantity,
	SUM(UnitPrice*Quantity) AS total_price
FROM NewTable nt 
WHERE Description IS NOT NULL AND InvoiceDate =' 2011-10-05'
GROUP BY Description, InvoiceDate, Quantity 
ORDER BY Quantity  DESC
 ;

-- Jaké položky nejvíce vydělaly v tento den a v jakém množství (2011-10-05)

SELECT 
	InvoiceDate,
	Description,
	Quantity,
	SUM(UnitPrice*Quantity) AS total_price
FROM NewTable nt 
WHERE Description IS NOT NULL AND InvoiceDate =' 2011-10-05'
GROUP BY Description, InvoiceDate, Quantity 
ORDER BY total_price  DESC
 ;

-- Jaký den byla největší tržba 

SELECT 
	InvoiceDate,
	SUM(Quantity) AS total_qountity,
	SUM(UnitPrice) AS total_price
FROM NewTable nt 
GROUP BY InvoiceDate
ORDER BY total_price DESC
LIMIT 10 ;

-- Jaké položky se v tento den nejvíce prodávaly (2010-12-07)

SELECT 
	InvoiceDate,
	Description,
	Quantity,
	SUM(UnitPrice*Quantity) AS total_price
FROM NewTable nt 
WHERE Description IS NOT NULL AND InvoiceDate =' 2010-12-07'
GROUP BY Description, InvoiceDate, Quantity 
ORDER BY total_price  DESC
 ;

-- Jaká země, má nejvíce objednávek a za kolik peněz

SELECT 
	Country,
	SUM(Quantity) AS total_quantity,
	SUM(UnitPrice) AS total_price
FROM NewTable nt 
GROUP BY Country
ORDER BY total_quantity  DESC 


-- Jaký zákazník, má nejvíce objednávek a za kolik peněz

SELECT 
	CustomerID,
	SUM(Quantity) AS total_quantity,
	SUM(UnitPrice) AS total_price
FROM NewTable nt 
GROUP BY CustomerID 
ORDER BY total_quantity  DESC 




 