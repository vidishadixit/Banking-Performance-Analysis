use bankinganalytics;

select * from transactions;

select
	date_format(date, '%Y-%m') as Month,
    round(sum(case when type = 'Withdrawal' then amount else 0 end),2) as Total_Withdrawal,
    round(sum(case when type = 'Deposit' then amount else 0 end),2) as Total_Deposits
from Transactions
group by Month
order by month;