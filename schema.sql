--------------------------------------------------
-- Financial Reporting & Analytics System
-- Database Schema
--------------------------------------------------

--------------------------------------------------------------------------
--Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR2(100) NOT NULL,
    country VARCHAR2(50) NOT NULL
);

--------------------------------------------------------------------------

--------------------------------------------------------------------------
--Accounts Table
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    account_type VARCHAR2(50) NOT NULL,
    FOREIGN KEY (customer_id)
    REFERENCES Customers(customer_id)
);

-------------------------------------------------------------------------

-------------------------------------------------------------------------
--Transactions Table
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT NOT NULL,
    transaction_date DATE,
    transaction_type VARCHAR2(20),
    amount NUMBER(12,2),
    currency VARCHAR2(10),
    FOREIGN KEY (account_id)
    REFERENCES Accounts(account_id)
);

-------------------------------------------------------------------------

-------------------------------------------------------------------------
--Exchange_rates Table
CREATE TABLE Exchange_rates (
    currency VARCHAR2(10) PRIMARY KEY,
    rate_to_inr NUMBER(10,2) NOT NULL
);

-------------------------------------------------------------------------
