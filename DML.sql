-- Insert Records in Customers, Products, Orders, OrderDetails, Payments Table

INSERT INTO Customers (customer_id, first_name, last_name, email, phone, city) VALUES (1, 'John', 'Doe', 'john.doe@example.com', '9876543210', 'Delhi');
INSERT INTO Customers (customer_id, first_name, last_name, email, phone, city) VALUES (2, 'Jane', 'Smith', 'jane.smith@example.com', '9876543211', 'Mumbai');
INSERT INTO Customers (customer_id, first_name, last_name, email, phone, city) VALUES (3, 'Alice', 'Johnson', 'alice.j@example.com', '9876543212', 'Bangalore');
INSERT INTO Customers (customer_id, first_name, last_name, email, phone, city) VALUES (4, 'Bob', 'Williams', 'bob.w@example.com', '9876543213', 'Chennai');
INSERT INTO Customers (customer_id, first_name, last_name, email, phone, city) VALUES (5, 'Charlie', 'Brown', 'charlie.b@example.com', '9876543214', 'Kolkata');
INSERT INTO Customers (customer_id, first_name, last_name, email, phone, city) VALUES (6, 'Diana', 'Miller', 'diana.m@example.com', '9876543215', 'Hyderabad');
INSERT INTO Customers (customer_id, first_name, last_name, email, phone, city) VALUES (7, 'Eve', 'Davis', 'eve.d@example.com', '9876543216', 'Pune');
INSERT INTO Customers (customer_id, first_name, last_name, email, phone, city) VALUES (8, 'Frank', 'Garcia', 'frank.g@example.com', '9876543217', 'Ahmedabad');
INSERT INTO Customers (customer_id, first_name, last_name, email, phone, city) VALUES (9, 'Grace', 'Rodriguez', 'grace.r@example.com', '9876543218', 'Jaipur');
INSERT INTO Customers (customer_id, first_name, last_name, email, phone, city) VALUES (10, 'Henry', 'Martinez', 'henry.m@example.com', '9876543219', 'Lucknow');

INSERT INTO Products (product_id, product_name, category, price, stock_quantity) VALUES (1, 'Laptop', 'Electronics', 55000, 20);
INSERT INTO Products (product_id, product_name, category, price, stock_quantity) VALUES (2, 'Smartphone', 'Electronics', 32000, 50);
INSERT INTO Products (product_id, product_name, category, price, stock_quantity) VALUES (3, 'Wireless Headphones', 'Audio', 8500, 100);
INSERT INTO Products (product_id, product_name, category, price, stock_quantity) VALUES (4, 'Smartwatch', 'Wearable Tech', 12000, 30);
INSERT INTO Products (product_id, product_name, category, price, stock_quantity) VALUES (5, 'Gaming Console', 'Electronics', 40000, 15);
INSERT INTO Products (product_id, product_name, category, price, stock_quantity) VALUES (6, 'External Hard Drive', 'Storage', 6000, 75);
INSERT INTO Products (product_id, product_name, category, price, stock_quantity) VALUES (7, 'Bluetooth Speaker', 'Audio', 4500, 120);
INSERT INTO Products (product_id, product_name, category, price, stock_quantity) VALUES (8, 'Tablet', 'Electronics', 25000, 40);
INSERT INTO Products (product_id, product_name, category, price, stock_quantity) VALUES (9, 'Monitor', 'Electronics', 18000, 25);
INSERT INTO Products (product_id, product_name, category, price, stock_quantity) VALUES (10, 'Webcam', 'Accessories', 3000, 200);

INSERT INTO Orders (order_id, customer_id, total_amount) VALUES (1, 1, 55000);
INSERT INTO Orders (order_id, customer_id, total_amount) VALUES (2, 2, 32000);
INSERT INTO Orders (order_id, customer_id, total_amount) VALUES (3, 3, 8500);
INSERT INTO Orders (order_id, customer_id, total_amount) VALUES (4, 4, 12000);
INSERT INTO Orders (order_id, customer_id, total_amount) VALUES (5, 5, 40000);
INSERT INTO Orders (order_id, customer_id, total_amount) VALUES (6, 6, 6000);
INSERT INTO Orders (order_id, customer_id, total_amount) VALUES (7, 7, 4500);
INSERT INTO Orders (order_id, customer_id, total_amount) VALUES (8, 8, 25000);
INSERT INTO Orders (order_id, customer_id, total_amount) VALUES (9, 9, 18000);
INSERT INTO Orders (order_id, customer_id, total_amount) VALUES (10, 10, 3000);

INSERT INTO OrderDetails (order_id, product_id, quantity) VALUES (1, 1, 1);
INSERT INTO OrderDetails (order_id, product_id, quantity) VALUES (2, 2, 2);
INSERT INTO OrderDetails (order_id, product_id, quantity) VALUES (3, 3, 1);
INSERT INTO OrderDetails (order_id, product_id, quantity) VALUES (4, 4, 3);
INSERT INTO OrderDetails (order_id, product_id, quantity) VALUES (5, 5, 1);
INSERT INTO OrderDetails (order_id, product_id, quantity) VALUES (6, 6, 2);
INSERT INTO OrderDetails (order_id, product_id, quantity) VALUES (7, 7, 1);
INSERT INTO OrderDetails (order_id, product_id, quantity) VALUES (8, 8, 1);
INSERT INTO OrderDetails (order_id, product_id, quantity) VALUES (9, 9, 2);
INSERT INTO OrderDetails (order_id, product_id, quantity) VALUES (10, 10, 4);

INSERT INTO Payments (payment_id, order_id, payment_method, amount) VALUES (1, 1, 'Credit Card', 55000);
INSERT INTO Payments (payment_id, order_id, payment_method, amount) VALUES (2, 2, 'Debit Card', 32000);
INSERT INTO Payments (payment_id, order_id, payment_method, amount) VALUES (3, 3, 'Net Banking', 8500);
INSERT INTO Payments (payment_id, order_id, payment_method, amount) VALUES (4, 4, 'UPI', 12000);
INSERT INTO Payments (payment_id, order_id, payment_method, amount) VALUES (5, 5, 'Credit Card', 40000);
INSERT INTO Payments (payment_id, order_id, payment_method, amount) VALUES (6, 6, 'Debit Card', 6000);
INSERT INTO Payments (payment_id, order_id, payment_method, amount) VALUES (7, 7, 'Net Banking', 4500);
INSERT INTO Payments (payment_id, order_id, payment_method, amount) VALUES (8, 8, 'UPI', 25000);
INSERT INTO Payments (payment_id, order_id, payment_method, amount) VALUES (9, 9, 'Credit Card', 18000);
INSERT INTO Payments (payment_id, order_id, payment_method, amount) VALUES (10, 10, 'Debit Card', 3000);

-- Use of Insert, Update and Delete an existing record
INSERT INTO Customers (customer_id, first_name, last_name, email, phone, city) VALUES (11, 'Rifat', 'Zaidi', 'rifat.zaidi@example.com', '7081536945', 'Lucknow');
SELECT * FROM Customers;

-- Update the email address of existing record
UPDATE Customers SET email='rifat.zaidi@gmail.com' WHERE customer_id = 11;
SELECT * FROM Customers;

-- Delete an existing record
DELETE FROM Customers WHERE customer_id = 11;
SELECT * FROM Customers;