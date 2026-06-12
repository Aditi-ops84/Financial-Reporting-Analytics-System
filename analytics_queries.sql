------------------------------------------------------
-- Query 1: Currency-wise Transaction Summary

Select Currency, 
  sum(amount) as total_transaction_amount 
  from Transactions 
  GROUP BY Currency;
-------------------------------------------------------

------------------------------------------------------
-- Query 2: Total transaction amount per account

 Select Account_ID, 
   sum(amount) as total_transaction_amount 
   from Transactions 
   GROUP BY Account_ID;
-------------------------------------------------------

-------------------------------------------------------
-- Query 3: Customer Transaction Details

 Select c.customer_name,
   t.transaction_id,
   t.account_id, 
   t.transaction_date, 
   t.transaction_type, 
   t.amount, 
   t.currency 
   from Customers c 
   JOIN Accounts a ON c.customer_id = a.customer_id 
   JOIN Transactions t ON t.account_id = a.account_id;
---------------------------------------------------------------

--------------------------------------------------
-- Query 4: Customers with Multiple Accounts
-- Business Question:
-- Which customers maintain more than one account?
--------------------------------------------------

SELECT c.customer_name,
       c.customer_id,
       COUNT(a.account_id) AS account_count
FROM Customers c
JOIN Accounts a
ON c.customer_id = a.customer_id
GROUP BY c.customer_name, c.customer_id
HAVING COUNT(a.account_id) > 1;
----------------------------------------------------------

--------------------------------------------------
-- Query 5: Account Balance Calculation
-- Business Question:
-- What is the current balance of each account?
--------------------------------------------------

SELECT account_id,
       SUM(
           CASE
               WHEN transaction_type = 'Credit'
               THEN amount
               ELSE -amount
           END
       ) AS balance
FROM Transactions
GROUP BY account_id;

-----------------------------------------------------

------------------------------------------------------
-- Query 6: Total Transaction Value by Country
-- Business Question:
-- Which countries generate the highest transaction value?
--------------------------------------------------

SELECT c.country,
       SUM(t.amount) AS total_transaction_amount
FROM Customers c
JOIN Accounts a
ON c.customer_id = a.customer_id
JOIN Transactions t
ON a.account_id = t.account_id
GROUP BY c.country;

-----------------------------------------------------------

------------------------------------------------------
-- Query 7: Top Customers by Transaction Value
-- Business Question:
-- Which customers generated the highest transaction volume?
--------------------------------------------------

SELECT c.customer_name,
       c.customer_id,
       SUM(t.amount) AS total_transaction_volume
FROM Customers c
JOIN Accounts a
ON c.customer_id = a.customer_id
JOIN Transactions t
ON a.account_id = t.account_id
GROUP BY c.customer_name, c.customer_id
ORDER BY total_transaction_volume DESC;

-------------------------------------------------------------

------------------------------------------------------
-- Query 8: Multi-Currency Conversion to INR
-- Business Question:
-- What is the INR value of each transaction?
---------------------------------------------------------
SELECT t.transaction_id,
       t.amount,
       t.currency,
       e.rate_to_inr,
       t.amount * e.rate_to_inr AS amount_in_inr
FROM Transactions t
JOIN Exchange_Rates e
ON t.currency = e.currency;

----------------------------------------------------------


-----------------------------------------------------------------------------------------
--Query 9: Currency Exposure Analysis
--Business Question:
--What is the total transaction value for each currency after conversion to INR?
--------------------------------------------------------------------------------------------

SELECT t.currency,
       SUM(t.amount * e.rate_to_inr) AS amount_in_inr
FROM Transactions t
JOIN Exchange_Rates e
ON t.currency = e.currency
GROUP BY t.currency;

-------------------------------------------------------------------------------
