CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    product_id INT,
    amount DECIMAL(10, 2),
    order_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Laptop', 50000),
(2, 'Mobile', 15000),
(3, 'Tablet', 20000),
(4, 'Headphones', 3000),
(5, 'Charger', 1000),
(6, 'Smartwatch', 10000);

INSERT INTO orders (order_id, product_id, amount, order_date) VALUES
(1, 1, 50000, '2023-01-01'),
(2, 2, 15000, '2023-01-02'),
(3, 1, 50000, '2023-01-03'),
(4, 3, 20000, '2023-01-04'),
(5, 1, 50000, '2023-01-05'),
(6, 2, 15000, '2023-01-06'),
(7, 4, 3000, '2023-01-07'),
(8, 5, 1000, '2023-01-08'),
(9, 3, 20000, '2023-01-09'),
(10, 6, 10000, '2023-01-10');


SELECT * FROM PRODUCTS
SELECT * FROM ORDERS

/*
Write a SQL query to find the top 5 products by total sales amount.
*/


SELECT P.PRODUCT_NAME,
	   SUM(O.AMOUNT) AS TOTAL_SALES_AMOUNT
FROM PRODUCTS P 
JOIN ORDERS O
ON P.PRODUCT_ID = O.PRODUCT_ID
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5