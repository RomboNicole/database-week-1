-- Question 1: Get firstName, lastName, email, and officeCode of all employees using INNER JOIN
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o
ON e.officeCode = o.officeCode;

-- Question 2: Get productName, productVendor, and productLine using LEFT JOIN
SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines pl
ON p.productLine = pl.productLine;

-- Question 3: Get orderDate, shippedDate, status, and customerNumber for the first 10 orders using RIGHT JOIN
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o
ON c.customerNumber = o.customerNumber
LIMIT 10;

