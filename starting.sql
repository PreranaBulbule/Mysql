CREATE DATABASE CHAIR;
USE CHAIR;

CREATE TABLE customers (
    customer_id INT(20),
    customer_name VARCHAR(100),  
    email VARCHAR(100),
    contact_number VARCHAR(20),  
    home_address VARCHAR(255),  
    city VARCHAR(100),
    zip_code VARCHAR(10),
    created_at DATE,
    is_active BOOLEAN,
    sex VARCHAR(10),  
    birth_date DATE,  
    reward_points INT  
);

INSERT INTO customers VALUES 
(1, 'Prerana', 'prerana@example.com', '1234567890', '123 MG Road', 'Bangalore', '560001', '2024-01-10', TRUE, 'Female', '1998-07-25', 500),
(2, 'Bhoomika R K', 'bhoomi@example.com', '9876543210', '456 Brigade Rd', 'Mysore', '570001', '2024-01-15', TRUE, 'Female', '1999-04-15', 300);

CREATE TABLE products (
    product_id INT(20),
    item_name VARCHAR(100),  
    category VARCHAR(100),
    price DECIMAL(10, 2),
    inventory_count INT, 
    product_brand VARCHAR(100),  
    manufacture_date DATE,
    expiry_date DATE,
    supplier_id INT,
    weight DECIMAL(6,2),  
    product_material VARCHAR(100),  
    color VARCHAR(50),  
    rating FLOAT  
);

INSERT INTO products VALUES 
(101, 'Wooden Door', 'Furniture', 1200.00, 10, 'DecorWood', '2023-12-01', '2026-12-01', 201, 15.5, 'Wood', 'Brown', 4.5),
(102, 'Glass Door', 'Furniture', 1500.00, 8, 'Glassify', '2023-11-01', '2026-11-01', 202, 12.3, 'Glass', 'Transparent', 4.2);

CREATE TABLE orders (
    order_id INT(20),
    customer_id INT,
    product_id INT,
    order_quantity INT,  
    placed_on DATE,  
    status VARCHAR(50),
    amount_paid DECIMAL(10,2),  
    payment_mode VARCHAR(50),
    shipping_address VARCHAR(255),
    is_delivered BOOLEAN,
    discount_applied DECIMAL(5,2),  
    order_tax DECIMAL(5,2), 
    expected_delivery DATE  
);

INSERT INTO orders VALUES 
(1001, 1, 101, 2, '2024-04-01', 'Shipped', 2400.00, 'Credit Card', '123 MG Road, Bangalore', FALSE, 50.00, 10.00, '2024-04-05'),
(1002, 2, 102, 1, '2024-04-03', 'Delivered', 1500.00, 'UPI', '456 Brigade Rd, Mysore', TRUE, 30.00, 5.00, '2024-04-06');


CREATE TABLE suppliers (
    supplier_id INT(20),
    vendor_name VARCHAR(100),  
    email VARCHAR(100),
    phone_number VARCHAR(20),  
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    zip_code VARCHAR(10),
    rating FLOAT,
    is_verified BOOLEAN,
    primary_contact VARCHAR(100),  
    gst_id VARCHAR(20),  
    registration_date DATE  
);

INSERT INTO suppliers VALUES 
(201, 'DecorWood Suppliers', 'wood@suppliers.com', '9988776655', 'Timber Street 5', 'Bangalore', 'Karnataka', '560002', 4.7, TRUE, 'John Doe', '29AAYPS1234D1ZV', '2023-05-15'),
(202, 'Glassify India', 'glass@suppliers.com', '8877665544', 'Glass Market 12', 'Mysore', 'Karnataka', '570002', 4.3, TRUE, 'Sita Patel', '29AAYPS5678D1ZV', '2023-04-20');

CREATE TABLE employees (
    emp_id INT(20),
    employee_name VARCHAR(100),  
    email VARCHAR(100),
    phone VARCHAR(20),
    dept_name VARCHAR(100),  
    job_title VARCHAR(100),  
    hire_date DATE,
    salary DECIMAL(10,2),
    city VARCHAR(100),
    is_active BOOLEAN,
    supervisor_name VARCHAR(100),  
    office_location VARCHAR(100)  
);

INSERT INTO employees VALUES 
(1, 'Ravi Kumar', 'ravi@store.com', '9008007006', 'Sales', 'Sales Executive', '2023-06-01', 30000.00, 'Bangalore', TRUE, 'N/A', 'Bangalore Office'),
(2, 'Divya Sharma', 'divya@store.com', '9019018019', 'Support', 'Customer Support', '2022-09-01', 28000.00, 'Mysore', TRUE, 'N/A', 'Mysore Office');

ALTER TABLE customers
ADD COLUMN nationality VARCHAR(50),
ADD COLUMN preferred_language VARCHAR(50),
ADD COLUMN account_balance DECIMAL(10, 2),
ADD COLUMN newsletter_subscription BOOLEAN;

ALTER TABLE products
ADD COLUMN dimensions VARCHAR(100),
ADD COLUMN supplier_contact VARCHAR(100),
ADD COLUMN discount_price DECIMAL(10, 2),
ADD COLUMN warranty_period INT;

ALTER TABLE orders
ADD COLUMN delivery_method VARCHAR(50),
ADD COLUMN payment_status VARCHAR(50),
ADD COLUMN return_requested BOOLEAN,
ADD COLUMN gift_wrapping BOOLEAN;

ALTER TABLE suppliers
ADD COLUMN contact_email VARCHAR(100),
ADD COLUMN company_website VARCHAR(100),
ADD COLUMN supply_type VARCHAR(50),
ADD COLUMN average_delivery_time INT;

ALTER TABLE employees
ADD COLUMN emergency_contact VARCHAR(20),
ADD COLUMN job_location VARCHAR(100),
ADD COLUMN work_shift VARCHAR(50),
ADD COLUMN training_status VARCHAR(50);

ALTER TABLE customers
DROP COLUMN sex;

ALTER TABLE products
DROP COLUMN rating;

ALTER TABLE orders
DROP COLUMN order_tax;

ALTER TABLE suppliers
DROP COLUMN primary_contact;

ALTER TABLE employees
DROP COLUMN email;

ALTER TABLE customers
RENAME COLUMN customer_name TO full_name,
RENAME COLUMN contact_number TO phone_number,
RENAME COLUMN home_address TO address,
RENAME COLUMN reward_points TO loyalty_points;

ALTER TABLE products
RENAME COLUMN item_name TO product_name,
RENAME COLUMN product_brand TO brand,
RENAME COLUMN inventory_count TO stock_quantity,
RENAME COLUMN product_material TO material;

ALTER TABLE orders
RENAME COLUMN amount_paid TO total_amount,
RENAME COLUMN discount_applied TO discount_amount,
RENAME COLUMN placed_on TO order_date,
RENAME COLUMN expected_delivery TO delivery_date;

ALTER TABLE suppliers
RENAME COLUMN vendor_name TO supplier_name,
RENAME COLUMN phone_number TO supplier_phone,
RENAME COLUMN gst_id TO gst_number,
RENAME COLUMN registration_date TO registration_on;

ALTER TABLE employees
RENAME COLUMN employee_name TO emp_name,
RENAME COLUMN dept_name TO department,
RENAME COLUMN job_title TO position,
RENAME COLUMN supervisor_name TO manager_name;

ALTER TABLE customers
MODIFY COLUMN full_name VARCHAR(150),
MODIFY COLUMN phone_number VARCHAR(15),
MODIFY COLUMN address TEXT,
MODIFY COLUMN birth_date DATE;

ALTER TABLE products
MODIFY COLUMN product_name VARCHAR(200),
MODIFY COLUMN price DECIMAL(12, 2),
MODIFY COLUMN stock_quantity INT(11),
MODIFY COLUMN weight DECIMAL(8, 2);

-- Modify 4 columns in orders table
ALTER TABLE orders
MODIFY COLUMN total_amount DECIMAL(12, 2),
MODIFY COLUMN shipping_address TEXT,
MODIFY COLUMN order_date DATETIME,
MODIFY COLUMN delivery_date DATE;

ALTER TABLE suppliers
MODIFY COLUMN supplier_name VARCHAR(200),
MODIFY COLUMN supplier_phone VARCHAR(15),
MODIFY COLUMN gst_number VARCHAR(50),
MODIFY COLUMN registration_on DATE;

ALTER TABLE employees
MODIFY COLUMN emp_name VARCHAR(150),
MODIFY COLUMN phone VARCHAR(15),
MODIFY COLUMN department VARCHAR(150),
MODIFY COLUMN position VARCHAR(100);

SELECT * FROM customers;

SELECT * FROM products;

SELECT * FROM orders;

SELECT * FROM suppliers;

SELECT * FROM employees;