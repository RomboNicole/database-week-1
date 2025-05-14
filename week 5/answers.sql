-- Question 1: Drop an index named 'IdxPhone' from the 'customers' table
DROP INDEX IdxPhone ON customers;

-- Question 2: Create a user 'bob' with password 'S$cu3r3!', restricted to localhost
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';

-- Question 3: Grant the INSERT privilege to 'bob' on the 'salesDB' database
GRANT INSERT ON salesDB.* TO 'bob'@'localhost';

-- Question 4: Change the password for user 'bob' to 'P$55!23'
sALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';
