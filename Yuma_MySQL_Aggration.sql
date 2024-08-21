-- Create DataBase Yuma.
create database Yuma;

-- Use Database Yuma.
use Yuma;

-- create table 
CREATE TABLE transactions (
    TransactionID INT PRIMARY KEY,
    CustomerID INT,
    TransactionDate DATE,
    ProductID INT,
    ProductCategory VARCHAR(255),
    Quantity INT,
    PricePerUnit DECIMAL(10, 2),
    TotalAmount DECIMAL(10, 2),
    TrustPointsUsed INT,
    PaymentMethod VARCHAR(255),
    DiscountApplied DECIMAL(10, 2)
);

-- Check Table transactions
select * from transactions;

-- Total Sales by Product Category:
SELECT ProductCategory, SUM(TotalAmount) as TotalSales
FROM transactions
GROUP BY ProductCategory;

-- Average Discount Applied by Payment Method:
SELECT PaymentMethod, AVG(DiscountApplied) as AvgDiscount
FROM transactions
GROUP BY PaymentMethod;

-- Total Quantity Sold by Product ID:
SELECT ProductID, SUM(Quantity) as TotalQuantity
FROM transactions
GROUP BY ProductID;


