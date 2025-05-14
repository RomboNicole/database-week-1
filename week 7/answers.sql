-- Question 1: Achieving 1NF (First Normal Form)

-- The ProductDetail table contains a column 'Products' with multiple values.
-- To achieve 1NF, we need to separate the products into individual rows for each order.

-- Create a new table in 1NF where each row represents a single product for an order.
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(255),
    Product VARCHAR(255)
);

-- Insert data into the new table to ensure each product has its own row.
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product)
VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

-- Question 2: Achieving 2NF (Second Normal Form)

-- The OrderDetails table is already in 1NF, but it still contains partial dependencies (CustomerName depends only on OrderID).
-- To achieve 2NF, we need to remove the partial dependency by creating two tables.

-- Step 1: Create an Orders table to store unique OrderID and CustomerName
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

-- Step 2: Create an OrderDetails table to store OrderID, Product, and Quantity
CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)  -- Foreign key to enforce referential integrity
);

-- Step 3: Insert data into Orders table, ensuring each order has a unique customer
INSERT INTO Orders (OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Step 4: Insert data into OrderDetails table, associating each product with the order and quantity
INSERT INTO OrderDetails (OrderID, Product, Quantity)
VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);

-- Explanation:
-- In 2NF, we have eliminated the partial dependency by storing customer information in the 'Orders' table,
-- and product details in the 'OrderDetails' table. The primary key of 'OrderDetails' is the composite key
-- (OrderID, Product), and 'CustomerName' is now stored in a separate table linked by 'OrderID'.

