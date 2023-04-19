-- Create a new database called "myDatabase"
CREATE DATABASE myDatabase;

-- Use the new database
USE myDatabase;

-- Create a new table called "customers"
CREATE TABLE customers (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255)
);

-- Insert some data into the "customers" table
INSERT INTO customers (id, name, email) VALUES
  (1, 'John Doe', 'john.doe@example.com'),
  (2, 'Jane Smith', 'jane.smith@example.com'),
  (3, 'Bob Johnson', 'bob.johnson@example.com');

-- Select all customers from the "customers" table
SELECT * FROM customers;

-- Select customers whose name is "John Doe"
SELECT * FROM customers WHERE name = 'John Doe';

-- Update the email address of the customer with ID 2
UPDATE customers SET email = 'jane.smith2@example.com' WHERE id = 2;

-- Delete the customer with ID 3
DELETE FROM customers WHERE id = 3;
