--------------------------------------------------
-- Customer Records
--------------------------------------------------

<Customers Insert>

INSERT ALL
    INTO Customers VALUES (1234, 'Lorenzo', 'Italy')
    INTO Customers VALUES (5678, 'Bella', 'Italy')
    INTO Customers VALUES (9012, 'Varun', 'India')
    INTO Customers VALUES (3456, 'Arun', 'India')
    INTO Customers VALUES (7890, 'Bob', 'Cuba')
    INTO Customers VALUES (4321, 'Alana', 'Australia')
    INTO Customers VALUES (8765, 'Alexander', 'Russia')
    INTO Customers VALUES (2109, 'Dimitri', 'Russia')
    INTO Customers VALUES (6543, 'Anna', 'Australia')
    INTO Customers VALUES (987, 'Dante', 'Italy')
SELECT * FROM dual;

COMMIT;
----------------------------------------------------------------------

--------------------------------------------------
-- Account Records
--------------------------------------------------

<Accounts Insert>

INSERT ALL
    INTO Accounts VALUES (101, 1234, 'Current')
    INTO Accounts VALUES (102, 1234, 'Savings')
    INTO Accounts VALUES (103, 5678, 'Current')
    INTO Accounts VALUES (104, 9012, 'Savings')
    INTO Accounts VALUES (105, 9012, 'Current')
    INTO Accounts VALUES (106, 3456, 'Current')
    INTO Accounts VALUES (107, 7890, 'Savings')
    INTO Accounts VALUES (108, 4321, 'Current')
    INTO Accounts VALUES (109, 4321, 'Savings')
    INTO Accounts VALUES (110, 8765, 'Current')
    INTO Accounts VALUES (111, 2109, 'Savings')
    INTO Accounts VALUES (112, 6543, 'Current')
    INTO Accounts VALUES (113, 987, 'Savings')
SELECT * FROM dual;

COMMIT;
-------------------------------------------------------------------------

--------------------------------------------------
-- Transaction Records
--------------------------------------------------

<Transactions Insert>

INSERT ALL
    INTO Transactions values (1001, 101, '01-JUN-2024', 'Credit', 5000, 'INR')
    INTO Transactions values (1002, 101, '09-JUN-2024', 'Debit', 1200, 'INR')
    INTO Transactions values (1003, 101, '11-JUN-2024', 'Credit', 1000, 'INR')
    INTO Transactions values (1004, 102, '15-JUN-2024', 'Credit', 200, 'USD')
    INTO Transactions values (1005, 102, '01-JUN-2024', 'Credit', 8000, 'USD')
    INTO Transactions VALUES (1006, 103, '03-JUN-2024', 'Debit', 3000, 'INR')
    INTO Transactions VALUES (1007, 103, '10-JUN-2024', 'Credit', 4500, 'INR')
    INTO Transactions VALUES (1008, 104, '05-JUN-2024', 'Credit', 150, 'EUR')
    INTO Transactions VALUES (1009, 104, '20-JUN-2024', 'Debit', 50, 'EUR')
    INTO Transactions VALUES (1010, 105, '08-JUN-2024', 'Credit', 2500, 'INR')
    INTO Transactions VALUES (1011, 105, '22-JUN-2024', 'Debit', 700, 'USD')
    INTO Transactions VALUES (1012, 106, '11-JUN-2024', 'Credit', 6000, 'INR')
    INTO Transactions VALUES (1013, 106, '25-JUN-2024', 'Debit', 2000, 'INR')
    INTO Transactions VALUES (1014, 107, '02-JUN-2024', 'Credit', 300, 'USD')
    INTO Transactions VALUES (1015, 107, '18-JUN-2024', 'Debit', 100, 'USD')
    INTO Transactions VALUES (1016, 108, '04-JUN-2024', 'Credit', 1200, 'EUR')
    INTO Transactions VALUES (1017, 108, '16-JUN-2024', 'Debit', 300, 'EUR')
    INTO Transactions VALUES (1018, 109, '07-JUN-2024', 'Credit', 7000, 'INR')
    INTO Transactions VALUES (1019, 109, '28-JUN-2024', 'Debit', 2500, 'INR')
    INTO Transactions VALUES (1020, 110, '06-JUN-2024', 'Credit', 400, 'USD')
    INTO Transactions VALUES (1021, 110, '21-JUN-2024', 'Credit', 250, 'EUR')
    INTO Transactions VALUES (1022, 111, '09-JUN-2024', 'Credit', 5000, 'INR')
    INTO Transactions VALUES (1023, 111, '24-JUN-2024', 'Debit', 1500, 'INR')
    INTO Transactions VALUES (1024, 112, '12-JUN-2024', 'Credit', 1800, 'USD')
    INTO Transactions VALUES (1025, 112, '26-JUN-2024', 'Debit', 600, 'USD')
    INTO Transactions VALUES (1026, 113, '14-JUN-2024', 'Credit', 900, 'EUR')
    INTO Transactions VALUES (1027, 113, '29-JUN-2024', 'Debit', 200, 'EUR')
    select * from dual;

COMMIT;
------------------------------------------------------------------------------------

--------------------------------------------------
-- Exchange Rate Records
--------------------------------------------------

<Exchange_Rates Insert>

INSERT ALL
    INTO Exchange_rates values ('INR',1)
    INTO Exchange_rates values ('USD',83)
    INTO Exchange_rates values ('EUR',95)
    select * from dual;

COMMIT;
------------------------------------------------------------------------------------
