CREATE TABLE customers (customer_id INT PRIMARY KEY, customer_name VARCHAR(100), city VARCHAR(50));
CREATE TABLE orders (order_id INT PRIMARY KEY, customer_id INT, order_date DATE, amount DECIMAL(10,2));
INSERT INTO customers VALUES (1, 'Ramesh Kumar', 'Mumbai'), (2, 'Sita Sharma', 'Delhi'), (3, 'Anil Verma', 'Mumbai');
INSERT INTO orders VALUES (1, 1, '2023-06-12', 1500.00), (2, 3, '2023-07-15', 2000.00);

SELECT * FROM CUSTOMERS

SELECT * FROM ORDERS

/*
List all orders from the customers who belong to Mumbai.
*/

SELECT C.CUSTOMER_NAME,
       C.CITY
FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID
WHERE C.CITY = 'Mumbai'