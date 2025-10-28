create database BankingAnalytics;
use BankingAnalytics;

select * from customers;
select * from accounts;
select * from loans;
select * from transactions;

select 
	customer_id, 
    count(*) 
from customers
group by customer_id
having count(*) >1;
-- no duplicates

select * from customers
where customer_id is null
or name is null
or age is null
or gender is null
or income is null
or city is null
or account_open_date is null;
-- no nulls

select account_id, count(*)
from accounts
group by account_id
having count(*) > 1;

-- no duplicates
select * from accounts
where
	account_id is null
    or
    customer_id is null
    or
    account_type is null
    or
    balance is null
    or 
    branch is null;
-- no nulls

select distinct account_ty
pe, count(*) from accounts
group by account_type;

-- 91 current, 177 savings, 32 FD

select * from loans;
select loan_id, count(*) from loans
group by loan_id
having count(*)>1;

-- no duplicates

select * from loans
where loan_id is null
or customer_id is null
or loan_type is null
or loan_amount is null
or interest_rate is null
or status is null
or start_date is null
or end_date is null;

select loan_type, count(*) from loans
group by loan_type;
-- 'Personal Loan','37'
-- 'Home Loan','31'
-- 'Education Loan','11'
-- 'Car Loan','21'

select status, count(*) from loans
group by status;

-- 'Active','59'
-- ' Closed','31'
-- 'Defaulted','10'

select * from loans
where start_date > end_date;
-- no abnormal dates

select * from transactions;
select transaction_id, count(*) from transactions
group by transaction_id
having count(*)>1;
-- no duplicates

select * from transactions
where
	transaction_id is null
    or account_id is null
    or date is null
    or type is null
    or amount is null;
    
-- no nulls

select type, count(*) from transactions
group by type;

-- 'Withdrawal','1280'
-- 'Deposit','1720'
