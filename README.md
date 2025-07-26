# Online Retail Store Management System Using Oracle Database

## Project Overview:
This project simulates the database management of an Online Retail Store, which
involves managing customers, products, orders, payments, and inventory. It
covers DDL, DML, DQL, joins, PL/SQL (functions and procedures), views,
indexes, and analytical queries.

## Database Schema:
### **1. Customers Table**  
| Column Name       | Data Type      | Constraints                    | Description                              |
|-------------------|---------------|--------------------------------|------------------------------------------|
| `customer_id`     | NUMBER        | PK, Auto Increment             | Unique ID for each customer.             |
| `first_name`      | VARCHAR2(50)  | NOT NULL                       | Customer's first name.                   |
| `last_name`       | VARCHAR2(50)  | NOT NULL                       | Customer's last name.                    |
| `email`           | VARCHAR2(100) | UNIQUE, NOT NULL               | Customer's email (must be unique).       |
| `phone`           | VARCHAR2(15)  | NULL                           | Customer's phone number.                 |
| `city`            | VARCHAR2(50)  | NULL                           | City where the customer resides.         |
| `registration_date` | DATE        | DEFAULT SYSDATE                | Date of customer registration.           |

---

### **2. Products Table**  
| Column Name       | Data Type      | Constraints                    | Description                              |
|-------------------|---------------|--------------------------------|------------------------------------------|
| `product_id`      | NUMBER        | PK, Auto Increment             | Unique ID for each product.              |
| `product_name`    | VARCHAR2(100) | NOT NULL                       | Product name.                            |
| `category`        | VARCHAR2(50)  | NULL                           | Product category (e.g., Electronics).    |
| `price`           | NUMBER(10,2)  | CHECK (price > 0)              | Price of the product.                    |
| `stock_quantity`  | NUMBER(5)     | CHECK (stock_quantity >= 0)    | Quantity available in stock.             |

---

### **3. Orders Table**  
| Column Name       | Data Type      | Constraints                    | Description                              |
|-------------------|---------------|--------------------------------|------------------------------------------|
| `order_id`        | NUMBER        | PK, Auto Increment             | Unique ID for each order.                |
| `customer_id`     | NUMBER        | FK → Customers(customer_id)     | Customer who placed the order.           |
| `order_date`      | DATE          | DEFAULT SYSDATE                | Date when the order was placed.          |
| `total_amount`    | NUMBER(10,2)  | NULL                           | Total amount of the order.               |

---

### **4. OrderDetails Table**  
| Column Name       | Data Type      | Constraints                    | Description                              |
|-------------------|---------------|--------------------------------|------------------------------------------|
| `order_id`        | NUMBER        | FK → Orders(order_id)          | References the order.                    |
| `product_id`      | NUMBER        | FK → Products(product_id)      | References the product in the order.     |
| `quantity`        | NUMBER(5)     | CHECK (quantity > 0)           | Quantity of product ordered.             |
| **Primary Key**   | Composite Key | (order_id, product_id)         | Ensures unique product entry per order.  |

---

### **5. Payments Table**  
| Column Name       | Data Type      | Constraints                    | Description                              |
|-------------------|---------------|--------------------------------|------------------------------------------|
| `payment_id`      | NUMBER        | PK, Auto Increment             | Unique ID for each payment.              |
| `order_id`        | NUMBER        | FK → Orders(order_id)          | References the order paid.               |
| `payment_date`    | DATE          | DEFAULT SYSDATE                | Date of payment.                         |
| `payment_method`  | VARCHAR2(20)  | NULL                           | Mode of payment (Credit Card, UPI, etc.) |
| `amount`          | NUMBER(10,2)  | NULL                           | Amount paid for the order.               |

---

### **Schema Relationships**
- **Customers ↔ Orders:** One-to-Many.
- **Orders ↔ OrderDetails:** One-to-Many.
- **Products ↔ OrderDetails:** One-to-Many.
- **Orders ↔ Payments:** One-to-One.

---

## Key SQL Concepts Implemented
- **DDL:** Table creation with constraints (PK, FK, UNIQUE, CHECK).
- **DML:** Insert, Update, and Delete operations.
- **DQL:** Advanced queries using `WHERE`, `GROUP BY`, `HAVING`, etc.
- **Indexes & Views:** Performance optimization and abstraction.
- **PL/SQL:** Functions and Procedures.
