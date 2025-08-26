# week4.sql
📄 Sample SQL Database: Customers, Payments, and Orders
📄 Sample SQL Database: Customers, Payments, and Orders
📌 Overview

This project provides a sample relational database schema with three tables:

customers – Stores customer details and credit limits.

payments – Stores customer payment transactions.

orderdetails – Stores product order details with pricing.

The dataset is designed for practicing SQL queries, aggregations, and relationships between tables. It can be used to test assignments, run queries, and simulate real-world business data.

📚 Database Schema
🧑 Customers Table (customers)
Column	Type	Description
customerNumber	INT (PK)	Unique ID for each customer.
customerName	VARCHAR(100)	Customer’s full name.
country	VARCHAR(50)	Customer’s country.
creditLimit	DECIMAL(10,2)	Customer’s credit limit amount.
💳 Payments Table (payments)
Column	Type	Description
paymentID	INT (PK, Auto Increment)	Unique ID for each payment.
customerNumber	INT (FK)	References customers.customerNumber.
checkNumber	VARCHAR(20)	Payment reference/check number.
paymentDate	DATE	Date of payment.
amount	DECIMAL(10,2)	Amount paid.
📦 Order Details Table (orderdetails)
Column	Type	Description
orderID	INT (PK, Auto Increment)	Unique ID for each order.
productCode	VARCHAR(20)	Code representing a product.
quantityOrdered	INT	Number of units ordered.
priceEach	DECIMAL(10,2)	Price per unit.
🛠️ Sample Data
👥 Customers

5 customers across USA, Canada, Mexico, and Germany.

Each has a credit limit (e.g., Alice Johnson → $5000).

💵 Payments

7 payments linked to customers.

Includes check numbers, dates, and amounts.

📦 Order Details

6 orders with different products, quantities, and prices.

▶️ How to Use

Copy the SQL script into your MySQL/PostgreSQL editor.

Run the script to create and populate the database.

Verify the tables with:

SELECT * FROM customers;
SELECT * FROM payments;
SELECT * FROM orderdetails;


Use this data to practice SQL queries such as:

Aggregations (SUM, AVG, MAX)

Grouping (GROUP BY)

Sorting (ORDER BY)

Joins across customers, payments, and orderdetails.

🎯 Example Queries You Can Try
1. Find the total payment amount by customer:
SELECT c.customerName, SUM(p.amount) AS total_payments
FROM customers c
JOIN payments p ON c.customerNumber = p.customerNumber
GROUP BY c.customerName;

2. Find the highest order value:
SELECT productCode, MAX(quantityOrdered * priceEach) AS highest_order_value
FROM orderdetails;
