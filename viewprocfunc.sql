-- Views for top selling products 
CREATE VIEW topselling AS 
SELECT p.product_name, SUM(od.quantity) AS total_sold
FROM Products p
JOIN OrderDetails od ON p.product_id = od.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

SELECT * FROM topselling;

-- Create index on product name for faster search
CREATE INDEX idx_product_name ON Products(product_name);

-- Create a function which returns total number of products based on category
CREATE OR REPLACE FUNCTION Gettotalproducts(categ VARCHAR)
RETURN NUMBER IS
number_of_products NUMBER;
BEGIN
SELECT COUNT(*) INTO number_of_products FROM products WHERE Category=categ;
RETURN number_of_products;
END;

SELECT gettotalproducts('Electronics') FROM dual;

-- Create a procedure to update the stock in products table
CREATE OR REPLACE PROCEDURE Updatestock (p_id NUMBER, qty NUMBER) AS
BEGIN
    UPDATE Products SET stock_quantity = stock_quantity - qty WHERE product_id = p_id; 
END;

EXEC updatestock(1,10);

SELECT * FROM products;

