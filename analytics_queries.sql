------------------------------------------------------
-- Query 1: Currency-wise Transaction Summary

Select Currency, 
  sum(amount) as total_transaction_amount 
  from Transactions 
  GROUP BY Currency ;
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

