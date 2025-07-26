-- Query Records from Customers, Products, Orders, OrderDetails, Payments Table

SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM OrderDetails;
SELECT * FROM Payments;

-- Find all products priced above 20000
SELECT product_id, product_name, price 
FROM Products
WHERE price>20000;

-- Get customers from the city 'Delhi'
SELECT customer_id, first_name, last_name FROM Customers 
WHERE City = 'Delhi';

-- Find products in Electronics category priced above 10,000
SELECT * FROM Products
WHERE price>10000 AND Category='Electronics';

-- List customers who live in Delhi OR Mumbai
SELECT * FROM Customers
WHERE City='Delhi' OR City='Mumbai';

-- Get all customers not from Mumbai
SELECT * FROM Customers
WHERE NOT City='Mumbai';

-- Find customers whose first name starts with 'J'
SELECT customer_id, first_name, last_name FROM Customers
WHERE first_name LIKE 'J%';

-- Find customers whose last name ends with 'z'
SELECT customer_id, first_name, last_name FROM Customers
WHERE last_name LIKE '%z';

-- Find the products that contain the word 'on'
SELECT * FROM Products
WHERE product_name LIKE '%on%';

-- Find customers whose second letter in first_name is 'o'
SELECT * FROM Customers
WHERE last_name LIKE '_o%';

-- Find customers whose second last letter in first_name is 'o'
SELECT * FROM Customers
WHERE last_name LIKE '%o_';

-- Find total number of orders placed by each customer
SELECT c.first_name, COUNT(o.order_id) AS total_orders
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.first_name;

-- Find the count, maximum, minimum, and average price of each category of product
SELECT Category, COUNT(price), MAX(price), MIN(price), AVG(price) 
FROM Products 
GROUP BY Category;

-- Find categories with total inventory value greater than 100,000
SELECT category, SUM(price * stock_quantity) total_value
FROM Products
GROUP BY Category
HAVING SUM(price * stock_quantity) > 100000;

-- Find the top 5 customers (by total order amount) from Delhi or Mumbai
SELECT c.first_name, c.last_name, c.city, SUM(o.total_amount) total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE c.city IN ('Delhi', 'Mumbai')
GROUP BY c.first_name, c.last_name, c.city
HAVING SUM(o.total_amount) > 20000
ORDER BY total_spent DESC
FETCH FIRST 5 ROWS ONLY;

