-- Drop tables if they already exist
DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS orderdetails;

-- ============================
-- Customers Table
-- ============================
CREATE TABLE customers (
    customerNumber INT PRIMARY KEY,
    customerName VARCHAR(100),
    country VARCHAR(50),
    creditLimit DECIMAL(10,2)
);

INSERT INTO customers (customerNumber, customerName, country, creditLimit) VALUES
(1, 'Alice Johnson', 'USA', 5000.00),
(2, 'Bob Smith', 'Canada', 7000.00),
(3, 'Carlos Lopez', 'Mexico', 6000.00),
(4, 'Diana Wang', 'USA', 8000.00),
(5, 'Eva Müller', 'Germany', 6500.00);

-- ============================
-- Payments Table
-- ============================
CREATE TABLE payments (
    paymentID INT PRIMARY KEY AUTO_INCREMENT,
    customerNumber INT,
    checkNumber VARCHAR(20),
    paymentDate DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customerNumber) REFERENCES customers(customerNumber)
);

INSERT INTO payments (customerNumber, checkNumber, paymentDate, amount) VALUES
(1, 'CHK001', '2025-08-01', 1200.00),
(1, 'CHK002', '2025-08-10', 1800.00),
(2, 'CHK003', '2025-08-05', 2200.00),
(3, 'CHK004', '2025-08-02', 900.00),
(3, 'CHK005', '2025-08-15', 1500.00),
(4, 'CHK006', '2025-08-12', 3000.00),
(5, 'CHK007', '2025-08-20', 2500.00);

-- ============================
-- OrderDetails Table
-- ============================
CREATE TABLE orderdetails (
    orderID INT PRIMARY KEY AUTO_INCREMENT,
    productCode VARCHAR(20),
    quantityOrdered INT,
    priceEach DECIMAL(10,2)
);

INSERT INTO orderdetails (productCode, quantityOrdered, priceEach) VALUES
('P001', 5, 50.00),
('P002', 10, 30.00),
('P003', 3, 100.00),
('P001', 2, 50.00),
('P002', 7, 30.00),
('P004', 8, 75.00);
