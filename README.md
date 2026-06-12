# Financial Reporting & Analytics System

## Overview

The Financial Reporting & Analytics System is a SQL-based project designed to manage customer accounts, transactions, and multi-currency financial data. The project demonstrates database design, data modeling, reporting, and analytical query development using Oracle SQL.
The system enables transaction tracking, account-level analysis, customer reporting, currency conversion, and financial insights through structured SQL queries.

---

## Objectives

* Design a relational database for financial transaction management.
* Store and manage customer, account, and transaction data.
* Support multi-currency transactions using exchange rates.
* Generate business reports and analytical insights using SQL.
* Demonstrate practical use of joins, aggregations, grouping, filtering, and conditional logic.

---

## Database Schema

The database consists of four core tables:

### Customers

Stores customer information.

### Accounts

Stores account details and links Accounts to Customers.

### Transactions

Stores financial transactions, including credits, debits, amounts, and currencies.

### Exchange_Rates

Stores currency conversion rates relative to INR.

### Entity Relationship Flow

Customers → Accounts → Transactions

Exchange_Rates → Currency Conversion Reporting

---

## Technologies Used

* Oracle SQL
* Relational Database Design
* SQL Analytics & Reporting

---

## Key Features

* Customer and account management
* Multi-currency transaction tracking
* Account balance calculation
* Customer transaction analysis
* Country-wise transaction reporting
* Currency conversion to INR
* Financial analytics and reporting

---

## Analytics Reports

The project includes the following analytical reports:

1. Currency-wise Transaction Summary
2. Total Transaction Amount per Account
3. Customer Transaction Details
4. Customers with Multiple Accounts
5. Account Balance Calculation
6. Transaction Volume by Country
7. Top Customers by Transaction Volume
8. Transaction Conversion to INR
9. Currency Exposure Analysis

---

## Skills Demonstrated

* SQL Querying
* Joins
* Aggregate Functions
* GROUP BY and HAVING
* CASE Expressions
* Relational Database Design
* Financial Data Analysis
* Business Reporting

---

## Sample Outputs

Sample query outputs are available in the screenshots folder.
